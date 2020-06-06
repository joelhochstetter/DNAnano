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
	<24.442385, 35.084099, 35.322727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345091, 34.869476, 34.999508>,  <24.286715, 34.740704, 34.805576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345091, 34.869476, 34.999508>,  <24.442385, 35.084099, 35.322727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345091, 34.869476, 34.999508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007703, 0.834109, -0.551545,
		0.969937, -0.127930, -0.207018,
		-0.243234, -0.536559, -0.808048,
		24.272120, 34.708508, 34.757095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957762, 35.286507, 34.729023>,  <24.442385, 35.084099, 35.322727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957762, 35.286507, 34.729023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583328, 35.178516, 34.638813>,  <24.358667, 35.113724, 34.584686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583328, 35.178516, 34.638813>,  <24.957762, 35.286507, 34.729023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583328, 35.178516, 34.638813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177462, 0.915961, -0.359893,
		0.303729, -0.296869, -0.905327,
		-0.936085, -0.269972, -0.225521,
		24.302504, 35.097527, 34.571156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760740, 35.474838, 33.963737>,  <24.957762, 35.286507, 34.729023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760740, 35.474838, 33.963737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473602, 35.497410, 34.241302>,  <24.301319, 35.510952, 34.407841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473602, 35.497410, 34.241302>,  <24.760740, 35.474838, 33.963737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473602, 35.497410, 34.241302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128194, 0.968953, -0.211416,
		-0.684297, -0.240719, -0.688325,
		-0.717847, 0.056432, 0.693910,
		24.258247, 35.514339, 34.449474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452211, 35.544197, 33.209438>,  <24.760740, 35.474838, 33.963737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452211, 35.544197, 33.209438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811409, 35.434269, 33.346889>,  <25.026928, 35.368313, 33.429359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811409, 35.434269, 33.346889>,  <24.452211, 35.544197, 33.209438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811409, 35.434269, 33.346889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433509, 0.686288, -0.584019,
		-0.075331, 0.673413, 0.735419,
		0.897995, -0.274816, 0.343629,
		25.080807, 35.351826, 33.449978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804022, 36.155628, 33.476357>,  <24.452211, 35.544197, 33.209438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804022, 36.155628, 33.476357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062677, 35.876976, 33.352058>,  <25.217871, 35.709785, 33.277481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062677, 35.876976, 33.352058>,  <24.804022, 36.155628, 33.476357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062677, 35.876976, 33.352058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320234, 0.617661, -0.718293,
		0.692321, 0.364964, 0.622489,
		0.646638, -0.696631, -0.310746,
		25.256668, 35.667988, 33.258835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471521, 36.481346, 33.434231>,  <24.804022, 36.155628, 33.476357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471521, 36.481346, 33.434231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479034, 36.151676, 33.207821>,  <25.483541, 35.953873, 33.071976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479034, 36.151676, 33.207821>,  <25.471521, 36.481346, 33.434231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479034, 36.151676, 33.207821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374681, 0.530672, -0.760264,
		0.926964, -0.197800, 0.318769,
		0.018782, -0.824174, -0.566026,
		25.484669, 35.904423, 33.038013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094738, 36.531429, 33.138077>,  <25.471521, 36.481346, 33.434231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094738, 36.531429, 33.138077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927055, 36.262493, 32.894039>,  <25.826447, 36.101131, 32.747616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927055, 36.262493, 32.894039>,  <26.094738, 36.531429, 33.138077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927055, 36.262493, 32.894039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458487, 0.423236, -0.781449,
		0.783618, -0.607309, 0.130839,
		-0.419205, -0.672345, -0.610098,
		25.801294, 36.060791, 32.711010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622690, 36.369583, 32.703194>,  <26.094738, 36.531429, 33.138077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622690, 36.369583, 32.703194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275772, 36.274212, 32.528400>,  <26.067621, 36.216991, 32.423523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275772, 36.274212, 32.528400>,  <26.622690, 36.369583, 32.703194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275772, 36.274212, 32.528400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385818, 0.232755, -0.892732,
		0.314559, -0.942857, -0.109878,
		-0.867293, -0.238424, -0.436986,
		26.015585, 36.202686, 32.397305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812838, 36.082886, 32.009991>,  <26.622690, 36.369583, 32.703194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812838, 36.082886, 32.009991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426182, 36.182880, 31.987648>,  <26.194189, 36.242878, 31.974243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426182, 36.182880, 31.987648>,  <26.812838, 36.082886, 32.009991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426182, 36.182880, 31.987648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129773, 0.289946, -0.948204,
		-0.220842, -0.923818, -0.312714,
		-0.966637, 0.249985, -0.055855,
		26.136190, 36.257877, 31.970892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708426, 35.803391, 31.359894>,  <26.812838, 36.082886, 32.009991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708426, 35.803391, 31.359894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428991, 36.074444, 31.451794>,  <26.261332, 36.237076, 31.506933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428991, 36.074444, 31.451794>,  <26.708426, 35.803391, 31.359894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428991, 36.074444, 31.451794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021013, 0.301523, -0.953227,
		-0.715218, -0.670738, -0.196400,
		-0.698585, 0.677638, 0.229749,
		26.219416, 36.277737, 31.520718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279131, 35.712143, 30.741590>,  <26.708426, 35.803391, 31.359894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279131, 35.712143, 30.741590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250412, 36.073555, 30.910578>,  <26.233181, 36.290401, 31.011971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250412, 36.073555, 30.910578>,  <26.279131, 35.712143, 30.741590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250412, 36.073555, 30.910578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056473, 0.419201, -0.906135,
		-0.995819, -0.088917, 0.020927,
		-0.071798, 0.903529, 0.422470,
		26.228872, 36.344612, 31.037319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788326, 36.078835, 30.339527>,  <26.279131, 35.712143, 30.741590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788326, 36.078835, 30.339527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995987, 36.351269, 30.546061>,  <26.120583, 36.514729, 30.669981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995987, 36.351269, 30.546061>,  <25.788326, 36.078835, 30.339527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995987, 36.351269, 30.546061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049820, 0.578982, -0.813816,
		-0.853228, 0.448219, 0.266649,
		0.519153, 0.681087, 0.516334,
		26.151733, 36.555595, 30.700960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518959, 36.629684, 29.960665>,  <25.788326, 36.078835, 30.339527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518959, 36.629684, 29.960665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806717, 36.799099, 30.180878>,  <25.979372, 36.900749, 30.313005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806717, 36.799099, 30.180878>,  <25.518959, 36.629684, 29.960665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806717, 36.799099, 30.180878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073245, 0.741910, -0.666487,
		-0.690728, 0.519791, 0.502705,
		0.719396, 0.423541, 0.550530,
		26.022535, 36.926163, 30.346037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340401, 37.387150, 30.055702>,  <25.518959, 36.629684, 29.960665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340401, 37.387150, 30.055702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731615, 37.355892, 30.132992>,  <25.966345, 37.337139, 30.179365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731615, 37.355892, 30.132992>,  <25.340401, 37.387150, 30.055702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731615, 37.355892, 30.132992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195455, 0.665802, -0.720073,
		-0.072381, 0.742025, 0.666453,
		0.978038, -0.078142, 0.193224,
		26.025026, 37.332451, 30.190960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621084, 38.050377, 30.066387>,  <25.340401, 37.387150, 30.055702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621084, 38.050377, 30.066387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947542, 37.826096, 30.010509>,  <26.143417, 37.691528, 29.976982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947542, 37.826096, 30.010509>,  <25.621084, 38.050377, 30.066387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947542, 37.826096, 30.010509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345330, 0.667108, -0.660087,
		0.463304, 0.490488, 0.738086,
		0.816147, -0.560704, -0.139694,
		26.192387, 37.657883, 29.968601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199821, 38.540428, 30.129423>,  <25.621084, 38.050377, 30.066387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199821, 38.540428, 30.129423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322763, 38.222252, 29.920498>,  <26.396528, 38.031345, 29.795143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322763, 38.222252, 29.920498>,  <26.199821, 38.540428, 30.129423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322763, 38.222252, 29.920498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337736, 0.604332, -0.721607,
		0.889644, 0.045387, 0.454394,
		0.307357, -0.795439, -0.522311,
		26.414970, 37.983620, 29.763805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882919, 38.711956, 29.992002>,  <26.199821, 38.540428, 30.129423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882919, 38.711956, 29.992002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751186, 38.450375, 29.719566>,  <26.672148, 38.293427, 29.556105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751186, 38.450375, 29.719566>,  <26.882919, 38.711956, 29.992002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751186, 38.450375, 29.719566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280314, 0.621093, -0.731893,
		0.901646, -0.431953, -0.021231,
		-0.329330, -0.653957, -0.681089,
		26.652388, 38.254189, 29.515240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373428, 38.776264, 29.486300>,  <26.882919, 38.711956, 29.992002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373428, 38.776264, 29.486300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047859, 38.626446, 29.308653>,  <26.852518, 38.536552, 29.202065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047859, 38.626446, 29.308653>,  <27.373428, 38.776264, 29.486300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047859, 38.626446, 29.308653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127682, 0.630427, -0.765676,
		0.566764, -0.679909, -0.465298,
		-0.813926, -0.374548, -0.444115,
		26.803682, 38.514080, 29.175417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630701, 38.642086, 28.834736>,  <27.373428, 38.776264, 29.486300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630701, 38.642086, 28.834736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233320, 38.619808, 28.794844>,  <26.994892, 38.606441, 28.770908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233320, 38.619808, 28.794844>,  <27.630701, 38.642086, 28.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233320, 38.619808, 28.794844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074567, 0.345174, -0.935572,
		0.086534, -0.936885, -0.338761,
		-0.993455, -0.055698, -0.099730,
		26.935284, 38.603100, 28.764925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418507, 38.317154, 28.120806>,  <27.630701, 38.642086, 28.834736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418507, 38.317154, 28.120806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121706, 38.550751, 28.252497>,  <26.943624, 38.690907, 28.331511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121706, 38.550751, 28.252497>,  <27.418507, 38.317154, 28.120806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121706, 38.550751, 28.252497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099453, 0.389771, -0.915526,
		-0.662979, -0.712065, -0.231132,
		-0.742002, 0.583988, 0.329227,
		26.899105, 38.725948, 28.351265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065432, 38.288082, 27.629017>,  <27.418507, 38.317154, 28.120806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065432, 38.288082, 27.629017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945934, 38.618595, 27.820021>,  <26.874235, 38.816902, 27.934624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945934, 38.618595, 27.820021>,  <27.065432, 38.288082, 27.629017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945934, 38.618595, 27.820021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319875, 0.384718, -0.865836,
		-0.899129, -0.411406, 0.149373,
		-0.298744, 0.826279, 0.477510,
		26.856312, 38.866478, 27.963274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354029, 38.415234, 27.422979>,  <27.065432, 38.288082, 27.629017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354029, 38.415234, 27.422979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498140, 38.762848, 27.558617>,  <26.584608, 38.971416, 27.639999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498140, 38.762848, 27.558617>,  <26.354029, 38.415234, 27.422979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498140, 38.762848, 27.558617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205177, 0.428424, -0.879975,
		-0.910001, 0.247463, 0.332657,
		0.360279, 0.869031, 0.339092,
		26.606224, 39.023556, 27.660345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039919, 38.844452, 26.988745>,  <26.354029, 38.415234, 27.422979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039919, 38.844452, 26.988745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275740, 39.110195, 27.172506>,  <26.417233, 39.269642, 27.282763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275740, 39.110195, 27.172506>,  <26.039919, 38.844452, 26.988745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275740, 39.110195, 27.172506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112596, 0.630803, -0.767730,
		-0.799843, 0.400891, 0.446696,
		0.589553, 0.664360, 0.459405,
		26.452606, 39.309502, 27.310328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695942, 39.532497, 26.942022>,  <26.039919, 38.844452, 26.988745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695942, 39.532497, 26.942022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079887, 39.620060, 27.012154>,  <26.310255, 39.672600, 27.054232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079887, 39.620060, 27.012154>,  <25.695942, 39.532497, 26.942022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079887, 39.620060, 27.012154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020165, 0.677376, -0.735361,
		-0.279742, 0.702310, 0.654603,
		0.959864, 0.218911, 0.175329,
		26.367846, 39.685734, 27.064753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742830, 40.250801, 27.177286>,  <25.695942, 39.532497, 26.942022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742830, 40.250801, 27.177286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077549, 40.127640, 26.996191>,  <26.278379, 40.053745, 26.887533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077549, 40.127640, 26.996191>,  <25.742830, 40.250801, 27.177286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077549, 40.127640, 26.996191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208440, 0.585477, -0.783434,
		0.506287, 0.749943, 0.425746,
		0.836795, -0.307900, -0.452738,
		26.328588, 40.035271, 26.860371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955559, 40.799408, 26.817383>,  <25.742830, 40.250801, 27.177286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955559, 40.799408, 26.817383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160784, 40.491425, 26.665632>,  <26.283918, 40.306633, 26.574583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160784, 40.491425, 26.665632>,  <25.955559, 40.799408, 26.817383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160784, 40.491425, 26.665632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028587, 0.426409, -0.904079,
		0.857875, 0.474694, 0.196763,
		0.513062, -0.769962, -0.379375,
		26.314703, 40.260437, 26.551819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600231, 41.000290, 26.435579>,  <25.955559, 40.799408, 26.817383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600231, 41.000290, 26.435579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475084, 40.653828, 26.279686>,  <26.399996, 40.445950, 26.186150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475084, 40.653828, 26.279686>,  <26.600231, 41.000290, 26.435579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475084, 40.653828, 26.279686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025050, 0.417715, -0.908233,
		0.949467, -0.274392, -0.152386,
		-0.312866, -0.866154, -0.389733,
		26.381224, 40.393982, 26.162766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073587, 40.635609, 25.980183>,  <26.600231, 41.000290, 26.435579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073587, 40.635609, 25.980183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684633, 40.585567, 25.901375>,  <26.451262, 40.555542, 25.854090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684633, 40.585567, 25.901375>,  <27.073587, 40.635609, 25.980183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684633, 40.585567, 25.901375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138576, 0.369771, -0.918731,
		0.187791, -0.920662, -0.342223,
		-0.972385, -0.125106, -0.197022,
		26.392918, 40.548035, 25.842268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024921, 40.152802, 25.329662>,  <27.073587, 40.635609, 25.980183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024921, 40.152802, 25.329662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724007, 40.400738, 25.418982>,  <26.543457, 40.549500, 25.472572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724007, 40.400738, 25.418982>,  <27.024921, 40.152802, 25.329662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724007, 40.400738, 25.418982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112112, 0.454422, -0.883703,
		-0.649224, -0.639766, -0.411348,
		-0.752289, 0.619839, 0.223296,
		26.498320, 40.586689, 25.485970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641329, 39.703217, 25.419321>,  <27.024921, 40.152802, 25.329662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641329, 39.703217, 25.419321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742033, 40.008572, 25.657267>,  <27.802456, 40.191784, 25.800034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742033, 40.008572, 25.657267>,  <27.641329, 39.703217, 25.419321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742033, 40.008572, 25.657267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952390, -0.086211, -0.292438,
		-0.171960, 0.640165, -0.748745,
		0.251759, 0.763385, 0.594862,
		27.817560, 40.237587, 25.835726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173992, 40.184326, 25.137583>,  <27.641329, 39.703217, 25.419321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173992, 40.184326, 25.137583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264938, 40.181438, 25.527096>,  <28.319506, 40.179707, 25.760803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264938, 40.181438, 25.527096>,  <28.173992, 40.184326, 25.137583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264938, 40.181438, 25.527096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935913, -0.274628, -0.220559,
		0.269020, 0.961524, -0.055686,
		0.227365, -0.007218, 0.973783,
		28.333147, 40.179272, 25.819231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750502, 39.673222, 24.938808>,  <28.173992, 40.184326, 25.137583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750502, 39.673222, 24.938808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146221, 39.678635, 24.996920>,  <29.383654, 39.681885, 25.031786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146221, 39.678635, 24.996920>,  <28.750502, 39.673222, 24.938808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146221, 39.678635, 24.996920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108777, -0.595174, 0.796201,
		0.097242, -0.803483, -0.587332,
		0.989299, 0.013536, 0.145276,
		29.443010, 39.682697, 25.040503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155420, 38.994553, 24.885790>,  <28.750502, 39.673222, 24.938808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155420, 38.994553, 24.885790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392315, 39.200584, 25.133642>,  <29.534452, 39.324203, 25.282354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392315, 39.200584, 25.133642>,  <29.155420, 38.994553, 24.885790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392315, 39.200584, 25.133642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116565, -0.706144, 0.698408,
		0.797288, -0.485850, -0.358163,
		0.592236, 0.515083, 0.619633,
		29.569986, 39.355110, 25.319532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500692, 38.461143, 25.119806>,  <29.155420, 38.994553, 24.885790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500692, 38.461143, 25.119806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565704, 38.773914, 25.360531>,  <29.604712, 38.961578, 25.504965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565704, 38.773914, 25.360531>,  <29.500692, 38.461143, 25.119806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565704, 38.773914, 25.360531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048983, -0.602774, 0.796407,
		0.985487, -0.158918, -0.059667,
		0.162529, 0.781927, 0.601810,
		29.614464, 39.008492, 25.541075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009441, 38.365391, 25.739088>,  <29.500692, 38.461143, 25.119806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009441, 38.365391, 25.739088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776163, 38.657860, 25.880657>,  <29.636196, 38.833344, 25.965599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776163, 38.657860, 25.880657>,  <30.009441, 38.365391, 25.739088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776163, 38.657860, 25.880657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216022, -0.559595, 0.800117,
		0.783081, 0.390171, 0.484304,
		-0.583197, 0.731177, 0.353923,
		29.601204, 38.877213, 25.986834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263655, 38.642578, 26.435316>,  <30.009441, 38.365391, 25.739088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263655, 38.642578, 26.435316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867634, 38.698299, 26.443199>,  <29.630020, 38.731731, 26.447929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867634, 38.698299, 26.443199>,  <30.263655, 38.642578, 26.435316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867634, 38.698299, 26.443199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061375, -0.553689, 0.830458,
		0.126596, 0.820989, 0.556732,
		-0.990054, 0.139302, 0.019707,
		29.570618, 38.740089, 26.449112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003353, 38.806244, 27.160439>,  <30.263655, 38.642578, 26.435316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003353, 38.806244, 27.160439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674963, 38.677177, 26.972019>,  <29.477928, 38.599739, 26.858967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674963, 38.677177, 26.972019>,  <30.003353, 38.806244, 27.160439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674963, 38.677177, 26.972019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276535, -0.497083, 0.822458,
		-0.499527, 0.805480, 0.318866,
		-0.820976, -0.322662, -0.471050,
		29.428671, 38.580379, 26.830704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359518, 38.808411, 27.696711>,  <30.003353, 38.806244, 27.160439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359518, 38.808411, 27.696711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274647, 38.544106, 27.408720>,  <29.223724, 38.385521, 27.235926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274647, 38.544106, 27.408720>,  <29.359518, 38.808411, 27.696711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274647, 38.544106, 27.408720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264560, -0.670400, 0.693233,
		-0.940738, 0.337567, -0.032567,
		-0.212180, -0.660766, -0.719978,
		29.210993, 38.345875, 27.192726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739195, 38.552013, 27.821287>,  <29.359518, 38.808411, 27.696711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739195, 38.552013, 27.821287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892555, 38.264275, 27.589584>,  <28.984571, 38.091629, 27.450563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892555, 38.264275, 27.589584>,  <28.739195, 38.552013, 27.821287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892555, 38.264275, 27.589584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353836, -0.693737, 0.627319,
		-0.853115, -0.035552, -0.520511,
		0.383400, -0.719351, -0.579258,
		29.007576, 38.048470, 27.415808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159170, 38.155407, 27.775425>,  <28.739195, 38.552013, 27.821287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159170, 38.155407, 27.775425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483164, 37.941830, 27.678408>,  <28.677561, 37.813683, 27.620197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483164, 37.941830, 27.678408>,  <28.159170, 38.155407, 27.775425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483164, 37.941830, 27.678408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339098, -0.763846, 0.549138,
		-0.478474, -0.362548, -0.799764,
		0.809985, -0.533946, -0.242541,
		28.726160, 37.781647, 27.605646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875059, 37.498283, 27.663177>,  <28.159170, 38.155407, 27.775425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875059, 37.498283, 27.663177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268627, 37.443474, 27.709007>,  <28.504768, 37.410587, 27.736506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268627, 37.443474, 27.709007>,  <27.875059, 37.498283, 27.663177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268627, 37.443474, 27.709007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177370, -0.825169, 0.536317,
		0.021053, -0.548014, -0.836204,
		0.983919, -0.137026, 0.114574,
		28.563803, 37.402367, 27.743380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053610, 36.754692, 27.460005>,  <27.875059, 37.498283, 27.663177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053610, 36.754692, 27.460005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330891, 36.892437, 27.713266>,  <28.497259, 36.975082, 27.865223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330891, 36.892437, 27.713266>,  <28.053610, 36.754692, 27.460005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330891, 36.892437, 27.713266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135646, -0.800443, 0.583859,
		0.707864, -0.490617, -0.508157,
		0.693202, 0.344363, 0.633155,
		28.538851, 36.995747, 27.903214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427574, 36.199554, 27.602638>,  <28.053610, 36.754692, 27.460005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427574, 36.199554, 27.602638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555922, 36.460754, 27.877048>,  <28.632929, 36.617474, 28.041695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555922, 36.460754, 27.877048>,  <28.427574, 36.199554, 27.602638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555922, 36.460754, 27.877048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180920, -0.668729, 0.721159,
		0.929684, -0.355511, -0.096432,
		0.320867, 0.653004, 0.686026,
		28.652182, 36.656654, 28.082855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978523, 35.895638, 28.026085>,  <28.427574, 36.199554, 27.602638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978523, 35.895638, 28.026085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796225, 36.185413, 28.232956>,  <28.686846, 36.359280, 28.357079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796225, 36.185413, 28.232956>,  <28.978523, 35.895638, 28.026085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796225, 36.185413, 28.232956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194366, -0.648004, 0.736418,
		0.868629, 0.235100, 0.436134,
		-0.455749, 0.724443, 0.517180,
		28.659500, 36.402748, 28.388109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396372, 35.871864, 28.575668>,  <28.978523, 35.895638, 28.026085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396372, 35.871864, 28.575668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074921, 36.073261, 28.702589>,  <28.882050, 36.194099, 28.778740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074921, 36.073261, 28.702589>,  <29.396372, 35.871864, 28.575668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074921, 36.073261, 28.702589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176271, -0.710611, 0.681147,
		0.568426, 0.491459, 0.659818,
		-0.803630, 0.503488, 0.317299,
		28.833832, 36.224308, 28.797779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475632, 36.011761, 29.290525>,  <29.396372, 35.871864, 28.575668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475632, 36.011761, 29.290525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080017, 36.022064, 29.232363>,  <28.842648, 36.028244, 29.197466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080017, 36.022064, 29.232363>,  <29.475632, 36.011761, 29.290525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080017, 36.022064, 29.232363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136583, -0.533911, 0.834436,
		-0.056142, 0.845148, 0.531576,
		-0.989036, 0.025757, -0.145407,
		28.783306, 36.029793, 29.188740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173729, 35.975315, 29.955578>,  <29.475632, 36.011761, 29.290525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173729, 35.975315, 29.955578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847937, 35.927177, 29.728548>,  <28.652462, 35.898293, 29.592331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847937, 35.927177, 29.728548>,  <29.173729, 35.975315, 29.955578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847937, 35.927177, 29.728548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439621, -0.510381, 0.739084,
		-0.378624, 0.851486, 0.362788,
		-0.814480, -0.120346, -0.567573,
		28.603592, 35.891075, 29.558275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743027, 36.153545, 30.402414>,  <29.173729, 35.975315, 29.955578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743027, 36.153545, 30.402414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516626, 35.967819, 30.129929>,  <28.380785, 35.856384, 29.966436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516626, 35.967819, 30.129929>,  <28.743027, 36.153545, 30.402414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516626, 35.967819, 30.129929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599176, -0.335866, 0.726762,
		-0.566241, 0.819517, -0.088103,
		-0.566003, -0.464312, -0.681216,
		28.346825, 35.828526, 29.925564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969131, 36.355225, 30.401817>,  <28.743027, 36.153545, 30.402414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969131, 36.355225, 30.401817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028919, 35.987198, 30.256964>,  <28.064793, 35.766384, 30.170052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028919, 35.987198, 30.256964>,  <27.969131, 36.355225, 30.401817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028919, 35.987198, 30.256964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576891, -0.378599, 0.723781,
		-0.803029, 0.100727, -0.587366,
		0.149472, -0.920064, -0.362134,
		28.073761, 35.711178, 30.148323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426924, 35.987766, 30.719646>,  <27.969131, 36.355225, 30.401817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426924, 35.987766, 30.719646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629168, 35.682423, 30.558826>,  <27.750513, 35.499218, 30.462334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629168, 35.682423, 30.558826>,  <27.426924, 35.987766, 30.719646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629168, 35.682423, 30.558826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604065, -0.645941, 0.466761,
		-0.616004, 0.006862, -0.787713,
		0.505613, -0.763356, -0.402047,
		27.780849, 35.453415, 30.438211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927523, 35.438721, 30.504490>,  <27.426924, 35.987766, 30.719646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927523, 35.438721, 30.504490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278297, 35.256165, 30.564745>,  <27.488762, 35.146629, 30.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278297, 35.256165, 30.564745>,  <26.927523, 35.438721, 30.504490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278297, 35.256165, 30.564745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452335, -0.677841, 0.579589,
		-0.162411, -0.576401, -0.800865,
		0.876935, -0.456391, 0.150638,
		27.541378, 35.119247, 30.609936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770020, 34.657425, 30.682810>,  <26.927523, 35.438721, 30.504490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770020, 34.657425, 30.682810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147783, 34.693661, 30.809229>,  <27.374441, 34.715401, 30.885080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147783, 34.693661, 30.809229>,  <26.770020, 34.657425, 30.682810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147783, 34.693661, 30.809229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166232, -0.697794, 0.696742,
		0.283656, -0.710547, -0.643943,
		0.944408, 0.090591, 0.316050,
		27.431107, 34.720837, 30.904043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897125, 34.053913, 30.869843>,  <26.770020, 34.657425, 30.682810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897125, 34.053913, 30.869843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205500, 34.245560, 31.037701>,  <27.390524, 34.360550, 31.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205500, 34.245560, 31.037701>,  <26.897125, 34.053913, 30.869843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205500, 34.245560, 31.037701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029679, -0.685183, 0.727766,
		0.636222, -0.548605, -0.542451,
		0.770935, 0.479120, 0.419647,
		27.436781, 34.389297, 31.163595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364264, 33.538952, 31.059622>,  <26.897125, 34.053913, 30.869843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364264, 33.538952, 31.059622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371634, 33.861179, 31.296507>,  <27.376055, 34.054516, 31.438639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371634, 33.861179, 31.296507>,  <27.364264, 33.538952, 31.059622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371634, 33.861179, 31.296507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225720, -0.573671, 0.787370,
		0.974018, -0.148181, 0.171264,
		0.018424, 0.805570, 0.592214,
		27.377161, 34.102852, 31.474171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713207, 33.273342, 31.658443>,  <27.364264, 33.538952, 31.059622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713207, 33.273342, 31.658443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520683, 33.601341, 31.782341>,  <27.405169, 33.798141, 31.856680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520683, 33.601341, 31.782341>,  <27.713207, 33.273342, 31.658443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520683, 33.601341, 31.782341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291093, -0.482839, 0.825913,
		0.826804, 0.307356, 0.471091,
		-0.481310, 0.820000, 0.309744,
		27.376289, 33.847340, 31.875265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804636, 33.302113, 32.381504>,  <27.713207, 33.273342, 31.658443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804636, 33.302113, 32.381504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485508, 33.536903, 32.326458>,  <27.294031, 33.677780, 32.293430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485508, 33.536903, 32.326458>,  <27.804636, 33.302113, 32.381504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485508, 33.536903, 32.326458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507305, -0.530264, 0.679309,
		0.325770, 0.611778, 0.720833,
		-0.797819, 0.586981, -0.137614,
		27.246162, 33.712997, 32.285175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943701, 32.622581, 32.468693>,  <27.804636, 33.302113, 32.381504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943701, 32.622581, 32.468693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307659, 32.463165, 32.514736>,  <28.526035, 32.367516, 32.542362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307659, 32.463165, 32.514736>,  <27.943701, 32.622581, 32.468693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307659, 32.463165, 32.514736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332239, 0.866273, 0.373080,
		-0.248404, -0.301222, 0.920631,
		0.909897, -0.398544, 0.115108,
		28.580627, 32.343601, 32.549267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218283, 32.737152, 33.092651>,  <27.943701, 32.622581, 32.468693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218283, 32.737152, 33.092651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549959, 32.664181, 32.881310>,  <28.748964, 32.620399, 32.754501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549959, 32.664181, 32.881310>,  <28.218283, 32.737152, 33.092651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549959, 32.664181, 32.881310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434671, 0.804736, 0.404303,
		0.351433, -0.564907, 0.746576,
		0.829190, -0.182430, -0.528359,
		28.798716, 32.609451, 32.722801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815216, 32.763916, 33.545536>,  <28.218283, 32.737152, 33.092651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815216, 32.763916, 33.545536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914499, 32.868423, 33.172413>,  <28.974070, 32.931126, 32.948540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914499, 32.868423, 33.172413>,  <28.815216, 32.763916, 33.545536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914499, 32.868423, 33.172413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617868, 0.698941, 0.360168,
		0.746078, -0.665749, 0.012054,
		0.248206, 0.261265, -0.932810,
		28.988960, 32.946804, 32.892570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566977, 32.823208, 33.463123>,  <28.815216, 32.763916, 33.545536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566977, 32.823208, 33.463123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369499, 33.064316, 33.212383>,  <29.251013, 33.208981, 33.061939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369499, 33.064316, 33.212383>,  <29.566977, 32.823208, 33.463123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369499, 33.064316, 33.212383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529099, 0.780247, 0.333570,
		0.690161, -0.166983, -0.704127,
		-0.493693, 0.602770, -0.626846,
		29.221392, 33.245148, 33.024330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979343, 33.252483, 33.300850>,  <29.566977, 32.823208, 33.463123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979343, 33.252483, 33.300850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647264, 33.469681, 33.250359>,  <29.448017, 33.599998, 33.220062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647264, 33.469681, 33.250359>,  <29.979343, 33.252483, 33.300850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647264, 33.469681, 33.250359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483164, 0.813796, 0.322937,
		0.278078, 0.207111, -0.937965,
		-0.830196, 0.542992, -0.126230,
		29.398205, 33.632580, 33.212490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046032, 34.005123, 32.991570>,  <29.979343, 33.252483, 33.300850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046032, 34.005123, 32.991570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704687, 34.036472, 33.197727>,  <29.499880, 34.055283, 33.321423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704687, 34.036472, 33.197727>,  <30.046032, 34.005123, 32.991570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704687, 34.036472, 33.197727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354068, 0.812769, 0.462647,
		-0.382639, 0.577290, -0.721335,
		-0.853360, 0.078375, 0.515397,
		29.448679, 34.059986, 33.352348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908384, 34.650219, 32.971340>,  <30.046032, 34.005123, 32.991570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908384, 34.650219, 32.971340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768242, 34.483463, 33.306828>,  <29.684156, 34.383408, 33.508121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768242, 34.483463, 33.306828>,  <29.908384, 34.650219, 32.971340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768242, 34.483463, 33.306828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498313, 0.675254, 0.543798,
		-0.793055, 0.608467, -0.028835,
		-0.350354, -0.416894, 0.838720,
		29.663136, 34.358395, 33.558445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133570, 35.152496, 33.548607>,  <29.908384, 34.650219, 32.971340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133570, 35.152496, 33.548607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944023, 34.867882, 33.756130>,  <29.830296, 34.697113, 33.880646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944023, 34.867882, 33.756130>,  <30.133570, 35.152496, 33.548607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944023, 34.867882, 33.756130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187575, 0.494073, 0.848945,
		-0.860388, 0.499601, -0.100657,
		-0.473866, -0.711541, 0.518807,
		29.801863, 34.654419, 33.911774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619318, 35.426037, 33.914520>,  <30.133570, 35.152496, 33.548607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619318, 35.426037, 33.914520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672916, 35.091225, 34.126717>,  <29.705076, 34.890335, 34.254032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672916, 35.091225, 34.126717>,  <29.619318, 35.426037, 33.914520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672916, 35.091225, 34.126717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162765, 0.546636, 0.821399,
		-0.977524, -0.023719, 0.209487,
		0.133995, -0.837034, 0.530489,
		29.713116, 34.840115, 34.285862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351677, 35.545853, 34.596107>,  <29.619318, 35.426037, 33.914520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351677, 35.545853, 34.596107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614759, 35.248051, 34.641945>,  <29.772608, 35.069370, 34.669445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614759, 35.248051, 34.641945>,  <29.351677, 35.545853, 34.596107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614759, 35.248051, 34.641945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419923, 0.488671, 0.764765,
		-0.625371, -0.454870, 0.634038,
		0.657705, -0.744509, 0.114591,
		29.812071, 35.024696, 34.676323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255203, 35.465099, 35.258415>,  <29.351677, 35.545853, 34.596107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255203, 35.465099, 35.258415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612261, 35.302788, 35.179901>,  <29.826496, 35.205402, 35.132793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612261, 35.302788, 35.179901>,  <29.255203, 35.465099, 35.258415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612261, 35.302788, 35.179901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340450, 0.321525, 0.883581,
		-0.295427, -0.855550, 0.425155,
		0.892646, -0.405777, -0.196285,
		29.880054, 35.181053, 35.121017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425226, 35.050484, 35.803257>,  <29.255203, 35.465099, 35.258415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425226, 35.050484, 35.803257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775980, 35.127857, 35.627232>,  <29.986433, 35.174282, 35.521618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775980, 35.127857, 35.627232>,  <29.425226, 35.050484, 35.803257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775980, 35.127857, 35.627232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268000, 0.563264, 0.781607,
		0.399058, -0.803317, 0.442079,
		0.876886, 0.193429, -0.440064,
		30.039045, 35.185886, 35.495213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038427, 34.949722, 36.312672>,  <29.425226, 35.050484, 35.803257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038427, 34.949722, 36.312672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183697, 35.169296, 36.011532>,  <30.270859, 35.301041, 35.830849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183697, 35.169296, 36.011532>,  <30.038427, 34.949722, 36.312672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183697, 35.169296, 36.011532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420356, 0.624575, 0.658185,
		0.831509, -0.555498, -0.003920,
		0.363172, 0.548934, -0.752846,
		30.292648, 35.333977, 35.785679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796638, 34.975719, 36.408253>,  <30.038427, 34.949722, 36.312672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796638, 34.975719, 36.408253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680950, 35.286884, 36.185112>,  <30.611536, 35.473583, 36.051228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680950, 35.286884, 36.185112>,  <30.796638, 34.975719, 36.408253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680950, 35.286884, 36.185112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437096, 0.625779, 0.646025,
		0.851644, -0.056990, -0.521013,
		-0.289222, 0.777916, -0.557851,
		30.594183, 35.520260, 36.017757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326818, 35.385841, 36.636616>,  <30.796638, 34.975719, 36.408253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326818, 35.385841, 36.636616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041037, 35.609371, 36.468201>,  <30.869568, 35.743488, 36.367153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041037, 35.609371, 36.468201>,  <31.326818, 35.385841, 36.636616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041037, 35.609371, 36.468201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193932, 0.736338, 0.648226,
		0.672267, 0.381477, -0.634455,
		-0.714456, 0.558822, -0.421035,
		30.826700, 35.777020, 36.341888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661810, 36.035519, 36.568413>,  <31.326818, 35.385841, 36.636616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661810, 36.035519, 36.568413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275986, 36.136509, 36.537746>,  <31.044491, 36.197105, 36.519348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275986, 36.136509, 36.537746>,  <31.661810, 36.035519, 36.568413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275986, 36.136509, 36.537746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149627, 0.762690, 0.629218,
		0.217334, 0.595448, -0.773438,
		-0.964561, 0.252478, -0.076664,
		30.986618, 36.212254, 36.514748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715958, 36.763664, 36.490276>,  <31.661810, 36.035519, 36.568413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715958, 36.763664, 36.490276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363667, 36.637051, 36.631203>,  <31.152292, 36.561081, 36.715759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363667, 36.637051, 36.631203>,  <31.715958, 36.763664, 36.490276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363667, 36.637051, 36.631203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117733, 0.574208, 0.810200,
		-0.458757, 0.755045, -0.468454,
		-0.880727, -0.316533, 0.352316,
		31.099449, 36.542091, 36.736897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382210, 37.380146, 36.497791>,  <31.715958, 36.763664, 36.490276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382210, 37.380146, 36.497791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174717, 37.146801, 36.747787>,  <31.050220, 37.006794, 36.897785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174717, 37.146801, 36.747787>,  <31.382210, 37.380146, 36.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174717, 37.146801, 36.747787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010015, 0.726836, 0.686738,
		-0.854878, 0.362492, -0.371191,
		-0.518732, -0.583360, 0.624987,
		31.019098, 36.971794, 36.935284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820396, 37.823895, 36.826893>,  <31.382210, 37.380146, 36.497791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820396, 37.823895, 36.826893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836811, 37.494541, 37.053291>,  <30.846659, 37.296928, 37.189129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836811, 37.494541, 37.053291>,  <30.820396, 37.823895, 36.826893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836811, 37.494541, 37.053291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036527, 0.567332, 0.822679,
		-0.998490, -0.013084, 0.053356,
		0.041034, -0.823385, 0.565997,
		30.849121, 37.247524, 37.223091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242025, 37.959812, 37.359039>,  <30.820396, 37.823895, 36.826893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242025, 37.959812, 37.359039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487459, 37.673248, 37.491871>,  <30.634720, 37.501308, 37.571568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487459, 37.673248, 37.491871>,  <30.242025, 37.959812, 37.359039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487459, 37.673248, 37.491871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004184, 0.423489, 0.905892,
		-0.789620, -0.554449, 0.262843,
		0.613582, -0.716410, 0.332075,
		30.671534, 37.458324, 37.591492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900644, 37.654938, 38.052593>,  <30.242025, 37.959812, 37.359039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900644, 37.654938, 38.052593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294449, 37.585655, 38.041714>,  <30.530731, 37.544086, 38.035187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294449, 37.585655, 38.041714>,  <29.900644, 37.654938, 38.052593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294449, 37.585655, 38.041714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072192, 0.259124, 0.963142,
		-0.159772, -0.950187, 0.267615,
		0.984511, -0.173203, -0.027195,
		30.589802, 37.533695, 38.033554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100801, 37.170551, 38.636055>,  <29.900644, 37.654938, 38.052593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100801, 37.170551, 38.636055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423681, 37.377083, 38.521629>,  <30.617409, 37.500999, 38.452972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423681, 37.377083, 38.521629>,  <30.100801, 37.170551, 38.636055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423681, 37.377083, 38.521629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189466, 0.232353, 0.953999,
		0.559043, -0.824269, 0.089730,
		0.807201, 0.516326, -0.286066,
		30.665842, 37.531982, 38.435810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490559, 36.959171, 39.167770>,  <30.100801, 37.170551, 38.636055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490559, 36.959171, 39.167770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633688, 37.283352, 38.982246>,  <30.719566, 37.477859, 38.870930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633688, 37.283352, 38.982246>,  <30.490559, 36.959171, 39.167770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633688, 37.283352, 38.982246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256581, 0.392245, 0.883351,
		0.897846, -0.435091, -0.067593,
		0.357825, 0.810456, -0.463812,
		30.741035, 37.526489, 38.843102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191210, 37.104218, 39.455570>,  <30.490559, 36.959171, 39.167770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191210, 37.104218, 39.455570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050026, 37.446705, 39.304672>,  <30.965315, 37.652195, 39.214134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050026, 37.446705, 39.304672>,  <31.191210, 37.104218, 39.455570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050026, 37.446705, 39.304672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202243, 0.463484, 0.862717,
		0.913518, 0.228210, -0.336756,
		-0.352962, 0.856214, -0.377248,
		30.944138, 37.703568, 39.191498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671898, 37.574226, 39.569843>,  <31.191210, 37.104218, 39.455570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671898, 37.574226, 39.569843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338526, 37.793015, 39.538315>,  <31.138502, 37.924290, 39.519398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338526, 37.793015, 39.538315>,  <31.671898, 37.574226, 39.569843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338526, 37.793015, 39.538315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220277, 0.459619, 0.860365,
		0.506825, 0.699692, -0.503546,
		-0.833430, 0.546975, -0.078820,
		31.088497, 37.957108, 39.514668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880775, 38.292114, 39.720768>,  <31.671898, 37.574226, 39.569843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880775, 38.292114, 39.720768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484329, 38.291683, 39.773972>,  <31.246462, 38.291424, 39.805893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484329, 38.291683, 39.773972>,  <31.880775, 38.292114, 39.720768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484329, 38.291683, 39.773972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110916, 0.545192, 0.830941,
		-0.073409, 0.838310, -0.540228,
		-0.991115, -0.001078, 0.133004,
		31.186995, 38.291359, 39.813873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872370, 38.952206, 40.057205>,  <31.880775, 38.292114, 39.720768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872370, 38.952206, 40.057205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511141, 38.794090, 40.124386>,  <31.294403, 38.699223, 40.164696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511141, 38.794090, 40.124386>,  <31.872370, 38.952206, 40.057205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511141, 38.794090, 40.124386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168755, 0.686186, 0.707580,
		-0.394947, 0.610653, -0.686382,
		-0.903072, -0.395287, 0.167956,
		31.240219, 38.675503, 40.174774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319399, 39.441799, 40.051281>,  <31.872370, 38.952206, 40.057205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319399, 39.441799, 40.051281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191837, 39.133259, 40.271576>,  <31.115301, 38.948135, 40.403751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191837, 39.133259, 40.271576>,  <31.319399, 39.441799, 40.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191837, 39.133259, 40.271576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173441, 0.618761, 0.766194,
		-0.931783, 0.148822, -0.331109,
		-0.318904, -0.771354, 0.550739,
		31.096167, 38.901852, 40.436798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917471, 39.760853, 40.470222>,  <31.319399, 39.441799, 40.051281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917471, 39.760853, 40.470222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947941, 39.402851, 40.646027>,  <30.966223, 39.188049, 40.751507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947941, 39.402851, 40.646027>,  <30.917471, 39.760853, 40.470222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947941, 39.402851, 40.646027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318134, 0.395934, 0.861410,
		-0.944980, -0.205440, -0.254571,
		0.076174, -0.895003, 0.439508,
		30.970793, 39.134350, 40.777878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287127, 39.705177, 40.832390>,  <30.917471, 39.760853, 40.470222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287127, 39.705177, 40.832390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541794, 39.454056, 41.011505>,  <30.694593, 39.303383, 41.118977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541794, 39.454056, 41.011505>,  <30.287127, 39.705177, 40.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541794, 39.454056, 41.011505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290451, 0.342695, 0.893420,
		-0.714347, -0.698873, 0.035837,
		0.636668, -0.627803, 0.447791,
		30.732794, 39.265717, 41.145844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940557, 39.267059, 41.325603>,  <30.287127, 39.705177, 40.832390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940557, 39.267059, 41.325603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324194, 39.244225, 41.436520>,  <30.554375, 39.230526, 41.503071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324194, 39.244225, 41.436520>,  <29.940557, 39.267059, 41.325603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324194, 39.244225, 41.436520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248218, 0.301466, 0.920601,
		-0.136146, -0.951767, 0.274963,
		0.959089, -0.057086, 0.277289,
		30.611921, 39.227100, 41.519707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836821, 39.057438, 41.966248>,  <29.940557, 39.267059, 41.325603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836821, 39.057438, 41.966248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212553, 39.194183, 41.955025>,  <30.437992, 39.276230, 41.948292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212553, 39.194183, 41.955025>,  <29.836821, 39.057438, 41.966248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212553, 39.194183, 41.955025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127333, 0.423476, 0.896914,
		0.318498, -0.838928, 0.441315,
		0.939332, 0.341860, -0.028053,
		30.494352, 39.296741, 41.946609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144190, 38.823841, 42.541882>,  <29.836821, 39.057438, 41.966248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144190, 38.823841, 42.541882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404751, 39.107933, 42.435112>,  <30.561087, 39.278389, 42.371052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404751, 39.107933, 42.435112>,  <30.144190, 38.823841, 42.541882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404751, 39.107933, 42.435112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076060, 0.411152, 0.908388,
		0.754911, -0.571424, 0.321846,
		0.651402, 0.710231, -0.266920,
		30.600172, 39.321003, 42.355038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742159, 38.668018, 43.018639>,  <30.144190, 38.823841, 42.541882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742159, 38.668018, 43.018639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714102, 39.040295, 42.875027>,  <30.697268, 39.263660, 42.788860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714102, 39.040295, 42.875027>,  <30.742159, 38.668018, 43.018639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714102, 39.040295, 42.875027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014249, 0.360810, 0.932530,
		0.997435, 0.060292, -0.038569,
		-0.070141, 0.930688, -0.359026,
		30.693060, 39.319500, 42.767319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116304, 39.049072, 43.495174>,  <30.742159, 38.668018, 43.018639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116304, 39.049072, 43.495174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929773, 39.340187, 43.294033>,  <30.817856, 39.514858, 43.173347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929773, 39.340187, 43.294033>,  <31.116304, 39.049072, 43.495174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929773, 39.340187, 43.294033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029762, 0.581030, 0.813338,
		0.884112, 0.364315, -0.292610,
		-0.466326, 0.727790, -0.502853,
		30.789875, 39.558525, 43.143177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426651, 39.641773, 43.703972>,  <31.116304, 39.049072, 43.495174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426651, 39.641773, 43.703972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070089, 39.770699, 43.576530>,  <30.856152, 39.848053, 43.500065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070089, 39.770699, 43.576530>,  <31.426651, 39.641773, 43.703972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070089, 39.770699, 43.576530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018243, 0.727952, 0.685385,
		0.452839, 0.605144, -0.654781,
		-0.891406, 0.322314, -0.318606,
		30.802668, 39.867393, 43.480949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432976, 40.365253, 43.854122>,  <31.426651, 39.641773, 43.703972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432976, 40.365253, 43.854122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052778, 40.245647, 43.820278>,  <30.824659, 40.173885, 43.799973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052778, 40.245647, 43.820278>,  <31.432976, 40.365253, 43.854122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052778, 40.245647, 43.820278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240149, 0.534000, 0.810662,
		-0.197216, 0.790845, -0.579370,
		-0.950492, -0.299011, -0.084607,
		30.767632, 40.155945, 43.794895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010199, 40.917313, 43.955826>,  <31.432976, 40.365253, 43.854122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010199, 40.917313, 43.955826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764055, 40.609528, 44.024258>,  <30.616369, 40.424858, 44.065315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764055, 40.609528, 44.024258>,  <31.010199, 40.917313, 43.955826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764055, 40.609528, 44.024258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279976, 0.416241, 0.865077,
		-0.736849, 0.484436, -0.471567,
		-0.615359, -0.769458, 0.171076,
		30.579447, 40.378689, 44.075581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443296, 41.184288, 44.330101>,  <31.010199, 40.917313, 43.955826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443296, 41.184288, 44.330101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391464, 40.798660, 44.422867>,  <30.360365, 40.567284, 44.478527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391464, 40.798660, 44.422867>,  <30.443296, 41.184288, 44.330101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391464, 40.798660, 44.422867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232251, 0.256889, 0.938119,
		-0.963985, 0.067701, -0.257193,
		-0.129582, -0.964067, 0.231913,
		30.352591, 40.509441, 44.492439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848274, 41.134487, 44.821869>,  <30.443296, 41.184288, 44.330101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848274, 41.134487, 44.821869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052427, 40.791759, 44.851192>,  <30.174919, 40.586124, 44.868786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052427, 40.791759, 44.851192>,  <29.848274, 41.134487, 44.821869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052427, 40.791759, 44.851192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047351, 0.057122, 0.997244,
		-0.858643, -0.512447, -0.011417,
		0.510383, -0.856817, 0.073312,
		30.205542, 40.534714, 44.873188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511580, 40.752422, 45.297482>,  <29.848274, 41.134487, 44.821869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511580, 40.752422, 45.297482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862906, 40.561192, 45.296932>,  <30.073702, 40.446453, 45.296600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862906, 40.561192, 45.296932>,  <29.511580, 40.752422, 45.297482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862906, 40.561192, 45.296932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010633, -0.022413, 0.999692,
		-0.477964, -0.878030, -0.024769,
		0.878315, -0.478080, -0.001377,
		30.126400, 40.417767, 45.296520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358814, 40.169193, 45.714516>,  <29.511580, 40.752422, 45.297482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358814, 40.169193, 45.714516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754990, 40.221355, 45.696510>,  <29.992695, 40.252651, 45.685707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754990, 40.221355, 45.696510>,  <29.358814, 40.169193, 45.714516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754990, 40.221355, 45.696510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050490, -0.038986, 0.997963,
		0.128385, -0.990694, -0.045198,
		0.990438, 0.130405, -0.045015,
		30.052122, 40.260475, 45.683006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784883, 39.676136, 46.122528>,  <29.358814, 40.169193, 45.714516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784883, 39.676136, 46.122528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049562, 39.974998, 46.097477>,  <30.208370, 40.154316, 46.082447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049562, 39.974998, 46.097477>,  <29.784883, 39.676136, 46.122528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049562, 39.974998, 46.097477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085427, 0.007859, 0.996313,
		0.744890, -0.664607, -0.058627,
		0.661696, 0.747152, -0.062629,
		30.248072, 40.199142, 46.078690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235035, 39.512703, 46.673767>,  <29.784883, 39.676136, 46.122528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235035, 39.512703, 46.673767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308619, 39.896915, 46.590302>,  <30.352768, 40.127441, 46.540222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308619, 39.896915, 46.590302>,  <30.235035, 39.512703, 46.673767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308619, 39.896915, 46.590302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152522, 0.237613, 0.959311,
		0.971029, -0.144646, 0.190213,
		0.183958, 0.960530, -0.208667,
		30.363806, 40.185074, 46.527702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795120, 39.717632, 47.132553>,  <30.235035, 39.512703, 46.673767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795120, 39.717632, 47.132553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611753, 40.055332, 47.021488>,  <30.501734, 40.257954, 46.954849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611753, 40.055332, 47.021488>,  <30.795120, 39.717632, 47.132553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611753, 40.055332, 47.021488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103938, 0.259357, 0.960172,
		0.882639, 0.469018, -0.031144,
		-0.458416, 0.844249, -0.277667,
		30.474228, 40.308605, 46.938187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080528, 40.178745, 47.540718>,  <30.795120, 39.717632, 47.132553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080528, 40.178745, 47.540718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755125, 40.369484, 47.407558>,  <30.559883, 40.483925, 47.327663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755125, 40.369484, 47.407558>,  <31.080528, 40.178745, 47.540718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755125, 40.369484, 47.407558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139728, 0.395402, 0.907818,
		0.564519, 0.785033, -0.255033,
		-0.813507, 0.476845, -0.332903,
		30.511072, 40.512539, 47.307686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118923, 40.835480, 47.853386>,  <31.080528, 40.178745, 47.540718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118923, 40.835480, 47.853386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739977, 40.821220, 47.726120>,  <30.512609, 40.812664, 47.649761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739977, 40.821220, 47.726120>,  <31.118923, 40.835480, 47.853386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739977, 40.821220, 47.726120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291859, 0.504638, 0.812501,
		0.131598, 0.862595, -0.488480,
		-0.947365, -0.035644, -0.318165,
		30.455767, 40.810528, 47.630669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739206, 41.576847, 47.761993>,  <31.118923, 40.835480, 47.853386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739206, 41.576847, 47.761993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463125, 41.296722, 47.834850>,  <30.297476, 41.128647, 47.878563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463125, 41.296722, 47.834850>,  <30.739206, 41.576847, 47.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463125, 41.296722, 47.834850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397017, 0.576938, 0.713807,
		-0.604976, 0.420359, -0.676242,
		-0.690204, -0.700315, 0.182144,
		30.256063, 41.086628, 47.889492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218235, 41.873962, 47.952240>,  <30.739206, 41.576847, 47.761993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218235, 41.873962, 47.952240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103731, 41.519161, 48.097172>,  <30.035028, 41.306282, 48.184132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103731, 41.519161, 48.097172>,  <30.218235, 41.873962, 47.952240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103731, 41.519161, 48.097172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406767, 0.454889, 0.792222,
		-0.867523, 0.079398, -0.491020,
		-0.286260, -0.887002, 0.362330,
		30.017853, 41.253059, 48.205872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588896, 41.972572, 48.197384>,  <30.218235, 41.873962, 47.952240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588896, 41.972572, 48.197384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769133, 41.663811, 48.376778>,  <29.877275, 41.478554, 48.484413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769133, 41.663811, 48.376778>,  <29.588896, 41.972572, 48.197384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769133, 41.663811, 48.376778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328382, 0.323836, 0.887297,
		-0.830140, -0.547082, -0.107560,
		0.450592, -0.771901, 0.448481,
		29.904310, 41.432240, 48.511322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260189, 41.761814, 48.966099>,  <29.588896, 41.972572, 48.197384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260189, 41.761814, 48.966099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591297, 41.539047, 48.938854>,  <29.789961, 41.405388, 48.922508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591297, 41.539047, 48.938854>,  <29.260189, 41.761814, 48.966099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591297, 41.539047, 48.938854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015368, -0.143856, 0.989479,
		-0.560860, -0.818012, -0.127638,
		0.827768, -0.556921, -0.068112,
		29.839628, 41.371971, 48.918419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183798, 41.425850, 49.582451>,  <29.260189, 41.761814, 48.966099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183798, 41.425850, 49.582451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562468, 41.408035, 49.454811>,  <29.789669, 41.397346, 49.378227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562468, 41.408035, 49.454811>,  <29.183798, 41.425850, 49.582451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562468, 41.408035, 49.454811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320904, 0.218978, 0.921450,
		0.028837, -0.974713, 0.221593,
		0.946673, -0.044538, -0.319104,
		29.846470, 41.394676, 49.359081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536028, 40.921223, 49.991032>,  <29.183798, 41.425850, 49.582451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536028, 40.921223, 49.991032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808016, 41.174587, 49.843288>,  <29.971209, 41.326607, 49.754642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808016, 41.174587, 49.843288>,  <29.536028, 40.921223, 49.991032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808016, 41.174587, 49.843288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334554, 0.180231, 0.924981,
		0.652466, -0.752531, -0.089359,
		0.679972, 0.633415, -0.369357,
		30.012007, 41.364613, 49.732483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311285, 40.712563, 50.018734>,  <29.536028, 40.921223, 49.991032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311285, 40.712563, 50.018734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250257, 41.105930, 50.057938>,  <30.213640, 41.341953, 50.081459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250257, 41.105930, 50.057938>,  <30.311285, 40.712563, 50.018734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250257, 41.105930, 50.057938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355188, -0.037981, 0.934023,
		0.922260, 0.177314, -0.343505,
		-0.152568, 0.983421, 0.098008,
		30.204487, 41.400955, 50.087341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628216, 40.570240, 49.364349>,  <30.311285, 40.712563, 50.018734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628216, 40.570240, 49.364349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908806, 40.853390, 49.397434>,  <31.077160, 41.023281, 49.417286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908806, 40.853390, 49.397434>,  <30.628216, 40.570240, 49.364349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908806, 40.853390, 49.397434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198369, -0.305395, 0.931334,
		0.684531, -0.636900, -0.354648,
		0.701475, 0.707878, 0.082711,
		31.119247, 41.065754, 49.422249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423311, 40.339230, 49.358109>,  <30.628216, 40.570240, 49.364349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423311, 40.339230, 49.358109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330614, 40.659355, 49.579300>,  <31.274996, 40.851433, 49.712013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330614, 40.659355, 49.579300>,  <31.423311, 40.339230, 49.358109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330614, 40.659355, 49.579300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093908, -0.547395, 0.831589,
		0.968234, 0.244643, 0.051698,
		-0.231741, 0.800318, 0.552980,
		31.261091, 40.899452, 49.745193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242092, 40.098579, 49.986008>,  <31.423311, 40.339230, 49.358109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242092, 40.098579, 49.986008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166143, 40.455402, 50.150047>,  <31.120573, 40.669495, 50.248470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166143, 40.455402, 50.150047>,  <31.242092, 40.098579, 49.986008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166143, 40.455402, 50.150047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155205, -0.385177, 0.909698,
		0.969463, 0.236378, -0.065317,
		-0.189874, 0.892056, 0.410102,
		31.109180, 40.723019, 50.273079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755114, 39.629150, 50.259769>,  <31.242092, 40.098579, 49.986008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755114, 39.629150, 50.259769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425224, 39.452835, 50.401497>,  <30.227291, 39.347046, 50.486534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425224, 39.452835, 50.401497>,  <30.755114, 39.629150, 50.259769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425224, 39.452835, 50.401497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131257, -0.758593, -0.638206,
		0.550093, -0.479837, 0.683486,
		-0.824724, -0.440786, 0.354315,
		30.177807, 39.320599, 50.507790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967777, 38.882317, 50.359943>,  <30.755114, 39.629150, 50.259769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967777, 38.882317, 50.359943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572498, 38.937542, 50.333385>,  <30.335331, 38.970676, 50.317451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572498, 38.937542, 50.333385>,  <30.967777, 38.882317, 50.359943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572498, 38.937542, 50.333385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044395, -0.672873, -0.738425,
		-0.146624, -0.726760, 0.671059,
		-0.988195, 0.138062, -0.066395,
		30.276039, 38.978962, 50.313465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400331, 38.304977, 50.455799>,  <30.967777, 38.882317, 50.359943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400331, 38.304977, 50.455799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305677, 38.585518, 50.186844>,  <30.248884, 38.753841, 50.025471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305677, 38.585518, 50.186844>,  <30.400331, 38.304977, 50.455799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305677, 38.585518, 50.186844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128283, -0.663435, -0.737155,
		-0.963092, -0.260694, 0.067021,
		-0.236636, 0.701351, -0.672391,
		30.234686, 38.795921, 49.985126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792856, 38.034946, 49.994354>,  <30.400331, 38.304977, 50.455799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792856, 38.034946, 49.994354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981812, 38.333767, 49.807266>,  <30.095184, 38.513058, 49.695015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981812, 38.333767, 49.807266>,  <29.792856, 38.034946, 49.994354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981812, 38.333767, 49.807266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038130, -0.547487, -0.835945,
		-0.880565, 0.377058, -0.287112,
		0.472390, 0.747051, -0.467720,
		30.123529, 38.557884, 49.666950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504011, 37.904758, 49.381130>,  <29.792856, 38.034946, 49.994354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504011, 37.904758, 49.381130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821133, 38.128117, 49.283432>,  <30.011406, 38.262131, 49.224812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821133, 38.128117, 49.283432>,  <29.504011, 37.904758, 49.381130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821133, 38.128117, 49.283432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033031, -0.439526, -0.897623,
		-0.608579, 0.703573, -0.366903,
		0.792806, 0.558393, -0.244246,
		30.058975, 38.295635, 49.210159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364626, 38.090958, 48.713387>,  <29.504011, 37.904758, 49.381130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364626, 38.090958, 48.713387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758223, 38.143158, 48.761929>,  <29.994381, 38.174480, 48.791054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758223, 38.143158, 48.761929>,  <29.364626, 38.090958, 48.713387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758223, 38.143158, 48.761929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173187, -0.539746, -0.823821,
		-0.042011, 0.831651, -0.553708,
		0.983993, 0.130504, 0.121356,
		30.053421, 38.182308, 48.798336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654488, 38.367046, 48.038395>,  <29.364626, 38.090958, 48.713387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654488, 38.367046, 48.038395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959076, 38.186672, 48.224648>,  <30.141829, 38.078445, 48.336399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959076, 38.186672, 48.224648>,  <29.654488, 38.367046, 48.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959076, 38.186672, 48.224648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173876, -0.549922, -0.816916,
		0.624441, 0.703022, -0.340343,
		0.761473, -0.450938, 0.465633,
		30.187517, 38.051392, 48.364338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172834, 38.319157, 47.534241>,  <29.654488, 38.367046, 48.038395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172834, 38.319157, 47.534241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271982, 38.062466, 47.824547>,  <30.331470, 37.908451, 47.998730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271982, 38.062466, 47.824547>,  <30.172834, 38.319157, 47.534241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271982, 38.062466, 47.824547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224444, -0.690727, -0.687401,
		0.942436, 0.333281, -0.027179,
		0.247871, -0.641731, 0.725769,
		30.346344, 37.869946, 48.042278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747753, 37.894047, 47.339603>,  <30.172834, 38.319157, 47.534241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747753, 37.894047, 47.339603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608324, 37.675701, 47.644375>,  <30.524668, 37.544693, 47.827236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608324, 37.675701, 47.644375>,  <30.747753, 37.894047, 47.339603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608324, 37.675701, 47.644375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234734, -0.837845, -0.492865,
		0.907413, 0.007051, 0.420181,
		-0.348571, -0.545863, 0.761926,
		30.503752, 37.511944, 47.872952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216854, 37.403973, 47.557789>,  <30.747753, 37.894047, 47.339603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216854, 37.403973, 47.557789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881113, 37.249496, 47.710808>,  <30.679668, 37.156811, 47.802620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881113, 37.249496, 47.710808>,  <31.216854, 37.403973, 47.557789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881113, 37.249496, 47.710808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236712, -0.893193, -0.382327,
		0.489341, -0.230354, 0.841120,
		-0.839353, -0.386191, 0.382548,
		30.629307, 37.133640, 47.825573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392487, 36.697063, 47.872978>,  <31.216854, 37.403973, 47.557789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392487, 36.697063, 47.872978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001242, 36.702988, 47.789955>,  <30.766495, 36.706543, 47.740139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001242, 36.702988, 47.789955>,  <31.392487, 36.697063, 47.872978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001242, 36.702988, 47.789955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095495, -0.854278, -0.510969,
		-0.184882, -0.519605, 0.834164,
		-0.978110, 0.014810, -0.207560,
		30.707809, 36.707432, 47.727688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133366, 35.987610, 48.046368>,  <31.392487, 36.697063, 47.872978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133366, 35.987610, 48.046368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878042, 36.163330, 47.793518>,  <30.724848, 36.268761, 47.641808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878042, 36.163330, 47.793518>,  <31.133366, 35.987610, 48.046368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878042, 36.163330, 47.793518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125823, -0.750587, -0.648682,
		-0.759435, -0.493589, 0.423825,
		-0.638300, 0.439305, -0.632127,
		30.686550, 36.295120, 47.603882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960676, 35.428028, 47.650406>,  <31.133366, 35.987610, 48.046368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960676, 35.428028, 47.650406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844988, 35.750198, 47.443470>,  <30.775576, 35.943501, 47.319309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844988, 35.750198, 47.443470>,  <30.960676, 35.428028, 47.650406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844988, 35.750198, 47.443470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098412, -0.512551, -0.852998,
		-0.952191, -0.297615, 0.068975,
		-0.289219, 0.805429, -0.517336,
		30.758223, 35.991829, 47.288269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547821, 35.092117, 47.197006>,  <30.960676, 35.428028, 47.650406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547821, 35.092117, 47.197006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632309, 35.442265, 47.023056>,  <30.683002, 35.652355, 46.918686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632309, 35.442265, 47.023056>,  <30.547821, 35.092117, 47.197006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632309, 35.442265, 47.023056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005216, -0.445913, -0.895061,
		-0.977425, 0.186786, -0.098752,
		0.211220, 0.875370, -0.434872,
		30.695675, 35.704876, 46.892593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026100, 35.083546, 46.664742>,  <30.547821, 35.092117, 47.197006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026100, 35.083546, 46.664742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288605, 35.369781, 46.569035>,  <30.446108, 35.541523, 46.511608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288605, 35.369781, 46.569035>,  <30.026100, 35.083546, 46.664742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288605, 35.369781, 46.569035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144114, -0.192399, -0.970677,
		-0.740645, 0.671498, -0.023137,
		0.656259, 0.715593, -0.239271,
		30.485483, 35.584461, 46.497253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675198, 35.598549, 46.241249>,  <30.026100, 35.083546, 46.664742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675198, 35.598549, 46.241249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066458, 35.635258, 46.166630>,  <30.301214, 35.657284, 46.121861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066458, 35.635258, 46.166630>,  <29.675198, 35.598549, 46.241249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066458, 35.635258, 46.166630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190683, 0.038509, -0.980896,
		-0.082834, 0.995035, 0.055167,
		0.978151, 0.091771, -0.186547,
		30.359903, 35.662788, 46.110664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817461, 36.211926, 45.821224>,  <29.675198, 35.598549, 46.241249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817461, 36.211926, 45.821224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100218, 35.943211, 45.732674>,  <30.269871, 35.781982, 45.679543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100218, 35.943211, 45.732674>,  <29.817461, 36.211926, 45.821224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100218, 35.943211, 45.732674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192322, 0.118635, -0.974135,
		0.680675, 0.731181, -0.045338,
		0.706890, -0.671789, -0.221374,
		30.312284, 35.741673, 45.666260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104946, 36.485004, 45.194942>,  <29.817461, 36.211926, 45.821224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104946, 36.485004, 45.194942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242908, 36.109715, 45.206062>,  <30.325686, 35.884541, 45.212734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242908, 36.109715, 45.206062>,  <30.104946, 36.485004, 45.194942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242908, 36.109715, 45.206062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057366, -0.050633, -0.997068,
		0.936883, 0.342299, -0.071286,
		0.344905, -0.938226, 0.027801,
		30.346380, 35.828247, 45.214401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486986, 36.543861, 44.668087>,  <30.104946, 36.485004, 45.194942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486986, 36.543861, 44.668087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481279, 36.147541, 44.721901>,  <30.477856, 35.909748, 44.754189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481279, 36.147541, 44.721901>,  <30.486986, 36.543861, 44.668087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481279, 36.147541, 44.721901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051890, -0.135105, -0.989472,
		0.998551, -0.007133, 0.053341,
		-0.014265, -0.990806, 0.134539,
		30.476999, 35.850300, 44.762264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058386, 36.164425, 44.342346>,  <30.486986, 36.543861, 44.668087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058386, 36.164425, 44.342346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759497, 35.898598, 44.342690>,  <30.580162, 35.739101, 44.342896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759497, 35.898598, 44.342690>,  <31.058386, 36.164425, 44.342346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759497, 35.898598, 44.342690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006891, -0.009034, -0.999936,
		0.664537, -0.747170, 0.011330,
		-0.747224, -0.664572, 0.000855,
		30.535330, 35.699226, 44.342945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144325, 35.858528, 43.712357>,  <31.058386, 36.164425, 44.342346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144325, 35.858528, 43.712357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781515, 35.723892, 43.813560>,  <30.563829, 35.643112, 43.874283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781515, 35.723892, 43.813560>,  <31.144325, 35.858528, 43.712357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781515, 35.723892, 43.813560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228313, -0.111759, -0.967152,
		0.353810, -0.934996, 0.024520,
		-0.907024, -0.336590, 0.253014,
		30.509409, 35.622917, 43.889465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933386, 35.249542, 43.336937>,  <31.144325, 35.858528, 43.712357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933386, 35.249542, 43.336937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589075, 35.416275, 43.453770>,  <30.382488, 35.516315, 43.523869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589075, 35.416275, 43.453770>,  <30.933386, 35.249542, 43.336937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589075, 35.416275, 43.453770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288259, 0.073715, -0.954711,
		-0.419488, -0.905988, 0.056704,
		-0.860777, 0.416835, 0.292082,
		30.330841, 35.541325, 43.541393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592194, 34.708714, 43.204060>,  <30.933386, 35.249542, 43.336937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592194, 34.708714, 43.204060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361141, 35.035122, 43.212593>,  <30.222509, 35.230965, 43.217712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361141, 35.035122, 43.212593>,  <30.592194, 34.708714, 43.204060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361141, 35.035122, 43.212593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252791, -0.153967, -0.955192,
		-0.776169, -0.557143, 0.295218,
		-0.577632, 0.816019, 0.021336,
		30.187851, 35.279926, 43.218994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017235, 34.461983, 42.916252>,  <30.592194, 34.708714, 43.204060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017235, 34.461983, 42.916252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968567, 34.855572, 42.864109>,  <29.939365, 35.091724, 42.832825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968567, 34.855572, 42.864109>,  <30.017235, 34.461983, 42.916252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968567, 34.855572, 42.864109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120397, -0.144992, -0.982080,
		-0.985242, -0.103795, 0.136109,
		-0.121670, 0.983974, -0.130355,
		29.932066, 35.150764, 42.825001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400343, 34.543869, 42.478615>,  <30.017235, 34.461983, 42.916252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400343, 34.543869, 42.478615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637625, 34.864391, 42.447594>,  <29.779993, 35.056705, 42.428982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637625, 34.864391, 42.447594>,  <29.400343, 34.543869, 42.478615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637625, 34.864391, 42.447594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198767, 0.052427, -0.978643,
		-0.780128, 0.595951, 0.190373,
		0.593205, 0.801307, -0.077555,
		29.815586, 35.104782, 42.424328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093513, 34.848709, 41.984688>,  <29.400343, 34.543869, 42.478615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093513, 34.848709, 41.984688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465078, 34.996788, 41.988293>,  <29.688017, 35.085636, 41.990456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465078, 34.996788, 41.988293>,  <29.093513, 34.848709, 41.984688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465078, 34.996788, 41.988293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081765, -0.181301, -0.980023,
		-0.361164, 0.911091, -0.198681,
		0.928911, 0.370194, 0.009016,
		29.743752, 35.107845, 41.990997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154133, 35.263996, 41.438622>,  <29.093513, 34.848709, 41.984688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154133, 35.263996, 41.438622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547224, 35.201378, 41.478100>,  <29.783079, 35.163807, 41.501785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547224, 35.201378, 41.478100>,  <29.154133, 35.263996, 41.438622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547224, 35.201378, 41.478100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062070, -0.223586, -0.972706,
		0.174339, 0.962030, -0.210007,
		0.982727, -0.156545, 0.098693,
		29.842043, 35.154415, 41.507710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418394, 35.654221, 40.886024>,  <29.154133, 35.263996, 41.438622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418394, 35.654221, 40.886024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692627, 35.390053, 41.008549>,  <29.857166, 35.231552, 41.082062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692627, 35.390053, 41.008549>,  <29.418394, 35.654221, 40.886024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692627, 35.390053, 41.008549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204052, -0.229563, -0.951663,
		0.698814, 0.714946, -0.022625,
		0.685581, -0.660419, 0.306308,
		29.898302, 35.191929, 41.100441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047390, 35.714367, 40.447151>,  <29.418394, 35.654221, 40.886024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047390, 35.714367, 40.447151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100256, 35.351624, 40.607220>,  <30.131975, 35.133976, 40.703262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100256, 35.351624, 40.607220>,  <30.047390, 35.714367, 40.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100256, 35.351624, 40.607220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278415, -0.353500, -0.893041,
		0.951324, 0.229445, 0.205762,
		0.132167, -0.906859, 0.400174,
		30.139906, 35.079567, 40.727272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682861, 35.412804, 40.220207>,  <30.047390, 35.714367, 40.447151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682861, 35.412804, 40.220207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483149, 35.075653, 40.300488>,  <30.363321, 34.873363, 40.348656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483149, 35.075653, 40.300488>,  <30.682861, 35.412804, 40.220207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483149, 35.075653, 40.300488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252185, -0.362978, -0.897023,
		0.828926, -0.397254, 0.393789,
		-0.499283, -0.842874, 0.200700,
		30.333364, 34.822792, 40.360699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067545, 34.916183, 39.907997>,  <30.682861, 35.412804, 40.220207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067545, 34.916183, 39.907997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721800, 34.724380, 39.968590>,  <30.514353, 34.609299, 40.004948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721800, 34.724380, 39.968590>,  <31.067545, 34.916183, 39.907997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721800, 34.724380, 39.968590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137209, -0.514699, -0.846321,
		0.483790, -0.710742, 0.510679,
		-0.864361, -0.479511, 0.151486,
		30.462492, 34.580528, 40.014034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162226, 34.244911, 39.754196>,  <31.067545, 34.916183, 39.907997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162226, 34.244911, 39.754196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768913, 34.298527, 39.704903>,  <30.532925, 34.330696, 39.675327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768913, 34.298527, 39.704903>,  <31.162226, 34.244911, 39.754196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768913, 34.298527, 39.704903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026449, -0.564491, -0.825015,
		-0.180153, -0.814483, 0.551509,
		-0.983283, 0.134042, -0.123237,
		30.473928, 34.338741, 39.667931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959003, 33.593739, 39.542618>,  <31.162226, 34.244911, 39.754196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959003, 33.593739, 39.542618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647188, 33.825405, 39.447216>,  <30.460098, 33.964405, 39.389977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647188, 33.825405, 39.447216>,  <30.959003, 33.593739, 39.542618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647188, 33.825405, 39.447216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040831, -0.426952, -0.903352,
		-0.625024, -0.694458, 0.356473,
		-0.779537, 0.579171, -0.238500,
		30.413326, 33.999157, 39.375668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518044, 33.062191, 39.180775>,  <30.959003, 33.593739, 39.542618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518044, 33.062191, 39.180775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402906, 33.434334, 39.089931>,  <30.333824, 33.657619, 39.035427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402906, 33.434334, 39.089931>,  <30.518044, 33.062191, 39.180775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402906, 33.434334, 39.089931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008267, -0.239546, -0.970850,
		-0.957642, -0.277576, 0.076644,
		-0.287845, 0.930360, -0.227105,
		30.316553, 33.713440, 39.021801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248522, 32.940136, 38.606369>,  <30.518044, 33.062191, 39.180775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248522, 32.940136, 38.606369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282980, 33.337139, 38.571732>,  <30.303656, 33.575340, 38.550949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282980, 33.337139, 38.571732>,  <30.248522, 32.940136, 38.606369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282980, 33.337139, 38.571732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118005, -0.096468, -0.988316,
		-0.989269, 0.074922, -0.125431,
		0.086146, 0.992512, -0.086592,
		30.308825, 33.634892, 38.545753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694860, 33.192223, 38.183640>,  <30.248522, 32.940136, 38.606369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694860, 33.192223, 38.183640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988894, 33.463409, 38.181995>,  <30.165314, 33.626122, 38.181007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988894, 33.463409, 38.181995>,  <29.694860, 33.192223, 38.183640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988894, 33.463409, 38.181995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112475, -0.127923, -0.985386,
		-0.668584, 0.723877, -0.170288,
		0.735082, 0.677966, -0.004109,
		30.209417, 33.666798, 38.180763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682518, 33.448189, 37.524719>,  <29.694860, 33.192223, 38.183640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682518, 33.448189, 37.524719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057262, 33.555035, 37.615005>,  <30.282108, 33.619141, 37.669178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057262, 33.555035, 37.615005>,  <29.682518, 33.448189, 37.524719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057262, 33.555035, 37.615005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283922, -0.204164, -0.936859,
		-0.204164, 0.941790, -0.267112,
		0.936859, 0.267112, 0.225712,
		30.338320, 33.635170, 37.682720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855284, 34.027504, 37.037720>,  <29.682518, 33.448189, 37.524719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855284, 34.027504, 37.037720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154461, 33.806770, 37.185268>,  <30.333967, 33.674332, 37.273796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154461, 33.806770, 37.185268>,  <29.855284, 34.027504, 37.037720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154461, 33.806770, 37.185268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302505, -0.211272, -0.929438,
		0.590825, 0.806750, 0.008913,
		0.747941, -0.551831, 0.368871,
		30.378843, 33.641220, 37.295929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354990, 33.989697, 36.483624>,  <29.855284, 34.027504, 37.037720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354990, 33.989697, 36.483624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471306, 33.687183, 36.718052>,  <30.541096, 33.505676, 36.858707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471306, 33.687183, 36.718052>,  <30.354990, 33.989697, 36.483624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471306, 33.687183, 36.718052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188846, -0.555123, -0.810047,
		0.937965, 0.346231, -0.018604,
		0.290791, -0.756282, 0.586070,
		30.558542, 33.460300, 36.893871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940666, 33.826263, 36.196953>,  <30.354990, 33.989697, 36.483624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940666, 33.826263, 36.196953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825352, 33.498535, 36.395187>,  <30.756163, 33.301899, 36.514126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825352, 33.498535, 36.395187>,  <30.940666, 33.826263, 36.196953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825352, 33.498535, 36.395187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030443, -0.509454, -0.859960,
		0.957061, -0.263000, 0.121925,
		-0.288285, -0.819322, 0.495584,
		30.738867, 33.252739, 36.543861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537210, 33.353962, 36.248966>,  <30.940666, 33.826263, 36.196953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537210, 33.353962, 36.248966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217781, 33.119934, 36.305489>,  <31.026123, 32.979515, 36.339401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217781, 33.119934, 36.305489>,  <31.537210, 33.353962, 36.248966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217781, 33.119934, 36.305489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210291, -0.491189, -0.845288,
		0.563964, -0.645310, 0.515286,
		-0.798575, -0.585072, 0.141309,
		30.978209, 32.944412, 36.347881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308678, 33.582874, 36.113224>,  <31.537210, 33.353962, 36.248966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308678, 33.582874, 36.113224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651543, 33.635086, 35.913933>,  <32.857262, 33.666412, 35.794357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651543, 33.635086, 35.913933>,  <32.308678, 33.582874, 36.113224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651543, 33.635086, 35.913933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511311, -0.331943, 0.792701,
		-0.061912, -0.934224, -0.351271,
		0.857162, 0.130531, -0.498231,
		32.908691, 33.674244, 35.764465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746754, 32.961636, 36.050446>,  <32.308678, 33.582874, 36.113224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746754, 32.961636, 36.050446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972614, 33.291767, 36.049957>,  <33.108131, 33.489845, 36.049664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972614, 33.291767, 36.049957>,  <32.746754, 32.961636, 36.050446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972614, 33.291767, 36.049957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470402, -0.320607, 0.822152,
		0.678152, -0.464806, -0.569268,
		0.564652, 0.825328, -0.001225,
		33.142010, 33.539364, 36.049591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036125, 32.939716, 36.764824>,  <32.746754, 32.961636, 36.050446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036125, 32.939716, 36.764824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236206, 33.225464, 36.569084>,  <33.356255, 33.396912, 36.451641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236206, 33.225464, 36.569084>,  <33.036125, 32.939716, 36.764824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236206, 33.225464, 36.569084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673966, 0.033623, 0.737997,
		0.543658, -0.698956, -0.464645,
		0.500205, 0.714373, -0.489352,
		33.386269, 33.439777, 36.422279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777519, 32.733330, 36.484653>,  <33.036125, 32.939716, 36.764824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777519, 32.733330, 36.484653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699265, 33.110405, 36.592781>,  <33.652313, 33.336651, 36.657658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699265, 33.110405, 36.592781>,  <33.777519, 32.733330, 36.484653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699265, 33.110405, 36.592781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497518, -0.142136, 0.855730,
		0.845105, 0.301901, -0.441195,
		-0.195636, 0.942684, 0.270321,
		33.640575, 33.393211, 36.673878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358902, 32.974613, 36.907345>,  <33.777519, 32.733330, 36.484653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358902, 32.974613, 36.907345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069824, 33.230995, 37.010792>,  <33.896378, 33.384827, 37.072861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069824, 33.230995, 37.010792>,  <34.358902, 32.974613, 36.907345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069824, 33.230995, 37.010792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237529, -0.121062, 0.963807,
		0.649068, 0.757969, -0.064755,
		-0.722697, 0.640957, 0.258617,
		33.853016, 33.423283, 37.088375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700989, 33.408085, 37.447807>,  <34.358902, 32.974613, 36.907345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700989, 33.408085, 37.447807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305336, 33.460857, 37.473785>,  <34.067944, 33.492519, 37.489372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305336, 33.460857, 37.473785>,  <34.700989, 33.408085, 37.447807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305336, 33.460857, 37.473785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076715, 0.086207, 0.993319,
		0.125452, 0.987503, -0.095391,
		-0.989129, 0.131932, 0.064941,
		34.008598, 33.500439, 37.493267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617466, 33.896072, 37.937550>,  <34.700989, 33.408085, 37.447807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617466, 33.896072, 37.937550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252506, 33.732471, 37.931282>,  <34.033531, 33.634312, 37.927521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252506, 33.732471, 37.931282>,  <34.617466, 33.896072, 37.937550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252506, 33.732471, 37.931282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011421, -0.012821, 0.999853,
		-0.409146, 0.912442, 0.007027,
		-0.912397, -0.409006, -0.015666,
		33.978786, 33.609768, 37.926582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242760, 34.301971, 38.358662>,  <34.617466, 33.896072, 37.937550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242760, 34.301971, 38.358662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049248, 33.952160, 38.345016>,  <33.933140, 33.742275, 38.336830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049248, 33.952160, 38.345016>,  <34.242760, 34.301971, 38.358662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049248, 33.952160, 38.345016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058087, -0.006808, 0.998288,
		-0.873262, 0.484930, -0.047505,
		-0.483776, -0.874527, -0.034113,
		33.904114, 33.689800, 38.334782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697254, 34.441120, 38.617596>,  <34.242760, 34.301971, 38.358662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697254, 34.441120, 38.617596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734703, 34.047321, 38.676926>,  <33.757172, 33.811043, 38.712524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734703, 34.047321, 38.676926>,  <33.697254, 34.441120, 38.617596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734703, 34.047321, 38.676926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261559, 0.119423, 0.957771,
		-0.960636, -0.128467, -0.246323,
		0.093626, -0.984497, 0.148324,
		33.762791, 33.751972, 38.721424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134563, 34.372147, 39.052532>,  <33.697254, 34.441120, 38.617596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134563, 34.372147, 39.052532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388447, 34.064419, 39.081650>,  <33.540775, 33.879784, 39.099121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388447, 34.064419, 39.081650>,  <33.134563, 34.372147, 39.052532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388447, 34.064419, 39.081650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017669, 0.079731, 0.996660,
		-0.772552, -0.633871, 0.037013,
		0.634705, -0.769318, 0.072796,
		33.578857, 33.833622, 39.103489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780388, 33.803333, 39.449299>,  <33.134563, 34.372147, 39.052532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780388, 33.803333, 39.449299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173210, 33.729557, 39.465050>,  <33.408905, 33.685291, 39.474503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173210, 33.729557, 39.465050>,  <32.780388, 33.803333, 39.449299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173210, 33.729557, 39.465050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042032, -0.010492, 0.999061,
		-0.183855, -0.982788, -0.018056,
		0.982054, -0.184441, 0.039380,
		33.467827, 33.674225, 39.476864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921074, 33.380081, 40.140778>,  <32.780388, 33.803333, 39.449299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921074, 33.380081, 40.140778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284397, 33.496178, 40.020279>,  <33.502392, 33.565834, 39.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284397, 33.496178, 40.020279>,  <32.921074, 33.380081, 40.140778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284397, 33.496178, 40.020279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294494, 0.067767, 0.953247,
		0.297083, -0.954552, -0.023920,
		0.908303, 0.290238, -0.301242,
		33.556889, 33.583248, 39.929905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446041, 32.863789, 40.404182>,  <32.921074, 33.380081, 40.140778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446041, 32.863789, 40.404182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644798, 33.204247, 40.336475>,  <33.764053, 33.408520, 40.295849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644798, 33.204247, 40.336475>,  <33.446041, 32.863789, 40.404182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644798, 33.204247, 40.336475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349960, -0.018043, 0.936591,
		0.794116, -0.524627, -0.306831,
		0.496897, 0.851141, -0.169271,
		33.793869, 33.459587, 40.285694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065399, 32.717354, 40.736340>,  <33.446041, 32.863789, 40.404182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065399, 32.717354, 40.736340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035187, 33.113758, 40.692158>,  <34.017059, 33.351601, 40.665649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035187, 33.113758, 40.692158>,  <34.065399, 32.717354, 40.736340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035187, 33.113758, 40.692158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317693, 0.128913, 0.939389,
		0.945181, 0.035863, -0.324573,
		-0.075530, 0.991007, -0.110453,
		34.012527, 33.411060, 40.659023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636177, 33.007992, 40.940113>,  <34.065399, 32.717354, 40.736340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636177, 33.007992, 40.940113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371002, 33.303371, 40.989441>,  <34.211899, 33.480598, 41.019035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371002, 33.303371, 40.989441>,  <34.636177, 33.007992, 40.940113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371002, 33.303371, 40.989441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281263, 0.093002, 0.955113,
		0.693833, 0.667865, -0.269353,
		-0.662938, 0.738449, 0.123318,
		34.172119, 33.524906, 41.026436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964226, 33.455864, 41.382061>,  <34.636177, 33.007992, 40.940113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964226, 33.455864, 41.382061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583630, 33.578392, 41.393604>,  <34.355270, 33.651909, 41.400528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583630, 33.578392, 41.393604>,  <34.964226, 33.455864, 41.382061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583630, 33.578392, 41.393604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088212, 0.181749, 0.979380,
		0.294764, 0.934415, -0.199954,
		-0.951490, 0.306325, 0.028854,
		34.298183, 33.670288, 41.402260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894875, 33.925720, 41.974602>,  <34.964226, 33.455864, 41.382061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894875, 33.925720, 41.974602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506088, 33.883228, 41.890701>,  <34.272816, 33.857735, 41.840363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506088, 33.883228, 41.890701>,  <34.894875, 33.925720, 41.974602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506088, 33.883228, 41.890701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235055, 0.418607, 0.877221,
		-0.005381, 0.901934, -0.431841,
		-0.971967, -0.106227, -0.209752,
		34.214497, 33.851360, 41.827774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586506, 34.544079, 42.221664>,  <34.894875, 33.925720, 41.974602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586506, 34.544079, 42.221664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290989, 34.274849, 42.208103>,  <34.113678, 34.113312, 42.199966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290989, 34.274849, 42.208103>,  <34.586506, 34.544079, 42.221664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290989, 34.274849, 42.208103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515350, 0.531818, 0.672000,
		-0.434278, 0.513942, -0.739774,
		-0.738795, -0.673077, -0.033903,
		34.069351, 34.072926, 42.197933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983669, 34.891624, 42.189106>,  <34.586506, 34.544079, 42.221664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983669, 34.891624, 42.189106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905457, 34.532433, 42.346790>,  <33.858528, 34.316917, 42.441399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905457, 34.532433, 42.346790>,  <33.983669, 34.891624, 42.189106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905457, 34.532433, 42.346790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517100, 0.435953, 0.736582,
		-0.833291, -0.059819, -0.549588,
		-0.195533, -0.897979, 0.394208,
		33.846798, 34.263039, 42.465054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358223, 34.943176, 42.401333>,  <33.983669, 34.891624, 42.189106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358223, 34.943176, 42.401333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410492, 34.579601, 42.559708>,  <33.441853, 34.361458, 42.654732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410492, 34.579601, 42.559708>,  <33.358223, 34.943176, 42.401333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410492, 34.579601, 42.559708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619634, 0.236876, 0.748294,
		-0.773936, -0.343118, -0.532253,
		0.130675, -0.908934, 0.395934,
		33.449696, 34.306923, 42.678490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730587, 34.808304, 42.774975>,  <33.358223, 34.943176, 42.401333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730587, 34.808304, 42.774975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984341, 34.560345, 42.959709>,  <33.136593, 34.411568, 43.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984341, 34.560345, 42.959709>,  <32.730587, 34.808304, 42.774975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984341, 34.560345, 42.959709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452159, 0.187011, 0.872112,
		-0.626988, -0.762072, -0.161657,
		0.634381, -0.619898, 0.461832,
		33.174656, 34.374374, 43.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357803, 34.262146, 43.256992>,  <32.730587, 34.808304, 42.774975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357803, 34.262146, 43.256992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732677, 34.292557, 43.393173>,  <32.957603, 34.310802, 43.474880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732677, 34.292557, 43.393173>,  <32.357803, 34.262146, 43.256992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732677, 34.292557, 43.393173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346026, 0.326173, 0.879703,
		-0.044166, -0.942248, 0.331991,
		0.937185, 0.076025, 0.340449,
		33.013832, 34.315365, 43.495308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409046, 34.036621, 44.002731>,  <32.357803, 34.262146, 43.256992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409046, 34.036621, 44.002731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712860, 34.291248, 43.949230>,  <32.895149, 34.444023, 43.917130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712860, 34.291248, 43.949230>,  <32.409046, 34.036621, 44.002731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712860, 34.291248, 43.949230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162572, 0.384879, 0.908536,
		0.629824, -0.668319, 0.395816,
		0.759534, 0.636567, -0.133756,
		32.940720, 34.482220, 43.909103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819588, 34.089695, 44.606792>,  <32.409046, 34.036621, 44.002731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819588, 34.089695, 44.606792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896057, 34.432247, 44.414936>,  <32.941940, 34.637779, 44.299820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896057, 34.432247, 44.414936>,  <32.819588, 34.089695, 44.606792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896057, 34.432247, 44.414936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065569, 0.476423, 0.876768,
		0.979364, -0.199063, 0.034926,
		0.191172, 0.856385, -0.479644,
		32.953407, 34.689163, 44.271042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370663, 34.286819, 44.995350>,  <32.819588, 34.089695, 44.606792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370663, 34.286819, 44.995350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202469, 34.606804, 44.824116>,  <33.101555, 34.798794, 44.721375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202469, 34.606804, 44.824116>,  <33.370663, 34.286819, 44.995350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202469, 34.606804, 44.824116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049826, 0.491470, 0.869468,
		0.905932, 0.344266, -0.246513,
		-0.420482, 0.799962, -0.428084,
		33.076324, 34.846794, 44.695690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696480, 34.797203, 45.305691>,  <33.370663, 34.286819, 44.995350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696480, 34.797203, 45.305691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389671, 35.004673, 45.154617>,  <33.205585, 35.129154, 45.063972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389671, 35.004673, 45.154617>,  <33.696480, 34.797203, 45.305691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389671, 35.004673, 45.154617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070125, 0.652890, 0.754200,
		0.637774, 0.552005, -0.537155,
		-0.767025, 0.518677, -0.377686,
		33.159565, 35.160275, 45.041313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893112, 35.441723, 45.119038>,  <33.696480, 34.797203, 45.305691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893112, 35.441723, 45.119038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499691, 35.472595, 45.184361>,  <33.263638, 35.491119, 45.223553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499691, 35.472595, 45.184361>,  <33.893112, 35.441723, 45.119038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499691, 35.472595, 45.184361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165940, 0.743204, 0.648160,
		-0.071344, 0.664598, -0.743788,
		-0.983552, 0.077182, 0.163307,
		33.204624, 35.495750, 45.233353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827984, 36.134556, 45.221245>,  <33.893112, 35.441723, 45.119038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827984, 36.134556, 45.221245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485611, 35.983707, 45.362759>,  <33.280190, 35.893196, 45.447666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485611, 35.983707, 45.362759>,  <33.827984, 36.134556, 45.221245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485611, 35.983707, 45.362759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038055, 0.728260, 0.684244,
		-0.515690, 0.572202, -0.637691,
		-0.855930, -0.377125, 0.353781,
		33.228832, 35.870571, 45.468891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398350, 36.715099, 45.202137>,  <33.827984, 36.134556, 45.221245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398350, 36.715099, 45.202137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233917, 36.441952, 45.443699>,  <33.135258, 36.278065, 45.588634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233917, 36.441952, 45.443699>,  <33.398350, 36.715099, 45.202137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233917, 36.441952, 45.443699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203188, 0.714441, 0.669544,
		-0.888665, 0.152532, -0.432445,
		-0.411083, -0.682867, 0.603906,
		33.110592, 36.237091, 45.624870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693016, 37.002800, 45.495411>,  <33.398350, 36.715099, 45.202137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693016, 37.002800, 45.495411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800987, 36.695988, 45.728241>,  <32.865768, 36.511902, 45.867939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800987, 36.695988, 45.728241>,  <32.693016, 37.002800, 45.495411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800987, 36.695988, 45.728241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121133, 0.572660, 0.810794,
		-0.955231, -0.289363, 0.061665,
		0.269927, -0.767026, 0.582074,
		32.881966, 36.465881, 45.902863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235344, 37.125439, 46.023476>,  <32.693016, 37.002800, 45.495411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235344, 37.125439, 46.023476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530308, 36.907448, 46.183094>,  <32.707287, 36.776653, 46.278866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530308, 36.907448, 46.183094>,  <32.235344, 37.125439, 46.023476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530308, 36.907448, 46.183094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062821, 0.643556, 0.762817,
		-0.672521, -0.537438, 0.508798,
		0.737407, -0.544974, 0.399043,
		32.751530, 36.743958, 46.302807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020771, 37.042519, 46.771221>,  <32.235344, 37.125439, 46.023476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020771, 37.042519, 46.771221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411224, 36.958385, 46.749565>,  <32.645496, 36.907906, 46.736572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411224, 36.958385, 46.749565>,  <32.020771, 37.042519, 46.771221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411224, 36.958385, 46.749565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153503, 0.491752, 0.857098,
		-0.153653, -0.844950, 0.512300,
		0.976129, -0.210335, -0.054143,
		32.704063, 36.895287, 46.733322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225090, 36.793758, 47.439526>,  <32.020771, 37.042519, 46.771221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225090, 36.793758, 47.439526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574451, 36.890442, 47.270416>,  <32.784069, 36.948452, 47.168953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574451, 36.890442, 47.270416>,  <32.225090, 36.793758, 47.439526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574451, 36.890442, 47.270416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293225, 0.432097, 0.852825,
		0.388813, -0.868832, 0.306523,
		0.873409, 0.241709, -0.422768,
		32.836475, 36.962955, 47.143585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724796, 36.447834, 47.871941>,  <32.225090, 36.793758, 47.439526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724796, 36.447834, 47.871941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937820, 36.727367, 47.680939>,  <33.065636, 36.895088, 47.566338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937820, 36.727367, 47.680939>,  <32.724796, 36.447834, 47.871941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937820, 36.727367, 47.680939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016640, 0.555408, 0.831411,
		0.846229, -0.450721, 0.284159,
		0.532559, 0.698836, -0.477502,
		33.097588, 36.937019, 47.537689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378391, 36.557346, 48.274040>,  <32.724796, 36.447834, 47.871941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378391, 36.557346, 48.274040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305504, 36.895454, 48.073120>,  <33.261772, 37.098320, 47.952568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305504, 36.895454, 48.073120>,  <33.378391, 36.557346, 48.274040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305504, 36.895454, 48.073120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166414, 0.530000, 0.831509,
		0.969073, 0.067928, -0.237242,
		-0.182221, 0.845273, -0.502304,
		33.250839, 37.149036, 47.922428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899956, 37.001442, 48.481350>,  <33.378391, 36.557346, 48.274040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899956, 37.001442, 48.481350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635345, 37.268589, 48.344913>,  <33.476582, 37.428879, 48.263050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635345, 37.268589, 48.344913>,  <33.899956, 37.001442, 48.481350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635345, 37.268589, 48.344913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130780, 0.550603, 0.824459,
		0.738435, 0.500789, -0.451579,
		-0.661521, 0.667867, -0.341092,
		33.436890, 37.468948, 48.242584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252621, 37.625202, 48.469498>,  <33.899956, 37.001442, 48.481350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252621, 37.625202, 48.469498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865826, 37.723984, 48.494625>,  <33.633747, 37.783253, 48.509701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865826, 37.723984, 48.494625>,  <34.252621, 37.625202, 48.469498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865826, 37.723984, 48.494625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192257, 0.545249, 0.815930,
		0.167243, 0.801073, -0.574728,
		-0.966989, 0.246954, 0.062823,
		33.575729, 37.798069, 48.513474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283604, 38.338947, 48.761597>,  <34.252621, 37.625202, 48.469498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283604, 38.338947, 48.761597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905861, 38.220005, 48.817829>,  <33.679214, 38.148640, 48.851566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905861, 38.220005, 48.817829>,  <34.283604, 38.338947, 48.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905861, 38.220005, 48.817829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012563, 0.459698, 0.887986,
		-0.328674, 0.836813, -0.437856,
		-0.944360, -0.297359, 0.140578,
		33.622555, 38.130798, 48.860004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873425, 38.932743, 48.861866>,  <34.283604, 38.338947, 48.761597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873425, 38.932743, 48.861866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691948, 38.634480, 49.057068>,  <33.583061, 38.455521, 49.174191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691948, 38.634480, 49.057068>,  <33.873425, 38.932743, 48.861866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691948, 38.634480, 49.057068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000839, 0.547967, 0.836500,
		-0.891158, 0.379104, -0.249233,
		-0.453692, -0.745663, 0.488007,
		33.555840, 38.410782, 49.203468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002487, 39.722130, 48.868378>,  <33.873425, 38.932743, 48.861866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002487, 39.722130, 48.868378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368805, 39.881786, 48.886299>,  <34.588596, 39.977581, 48.897053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368805, 39.881786, 48.886299>,  <34.002487, 39.722130, 48.868378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368805, 39.881786, 48.886299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187652, -0.326558, -0.926362,
		-0.355122, 0.856763, -0.373960,
		0.915792, 0.399146, 0.044805,
		34.643543, 40.001530, 48.899742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994240, 40.223595, 48.366741>,  <34.002487, 39.722130, 48.868378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994240, 40.223595, 48.366741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390045, 40.206692, 48.421997>,  <34.627529, 40.196552, 48.455151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390045, 40.206692, 48.421997>,  <33.994240, 40.223595, 48.366741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390045, 40.206692, 48.421997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126402, -0.209705, -0.969560,
		0.069939, 0.976851, -0.202164,
		0.989510, -0.042256, 0.138143,
		34.686897, 40.194016, 48.463440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311954, 40.668774, 47.893051>,  <33.994240, 40.223595, 48.366741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311954, 40.668774, 47.893051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558407, 40.371296, 47.996822>,  <34.706280, 40.192810, 48.059086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558407, 40.371296, 47.996822>,  <34.311954, 40.668774, 47.893051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558407, 40.371296, 47.996822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014015, -0.318975, -0.947660,
		0.787518, 0.587519, -0.186108,
		0.616132, -0.743691, 0.259432,
		34.743248, 40.148190, 48.074654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739117, 40.749760, 47.378330>,  <34.311954, 40.668774, 47.893051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739117, 40.749760, 47.378330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836063, 40.396927, 47.539917>,  <34.894230, 40.185226, 47.636868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836063, 40.396927, 47.539917>,  <34.739117, 40.749760, 47.378330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836063, 40.396927, 47.539917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136975, -0.381101, -0.914331,
		0.960468, 0.276934, 0.028459,
		0.242363, -0.882083, 0.403968,
		34.908772, 40.132301, 47.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321342, 40.516617, 47.070904>,  <34.739117, 40.749760, 47.378330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321342, 40.516617, 47.070904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154610, 40.188694, 47.227962>,  <35.054569, 39.991940, 47.322197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154610, 40.188694, 47.227962>,  <35.321342, 40.516617, 47.070904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154610, 40.188694, 47.227962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118480, -0.477273, -0.870731,
		0.901229, -0.316428, 0.296074,
		-0.416832, -0.819807, 0.392642,
		35.029560, 39.942753, 47.345757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780659, 39.995064, 46.870548>,  <35.321342, 40.516617, 47.070904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780659, 39.995064, 46.870548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413109, 39.851254, 46.935555>,  <35.192581, 39.764965, 46.974560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413109, 39.851254, 46.935555>,  <35.780659, 39.995064, 46.870548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413109, 39.851254, 46.935555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007302, -0.427319, -0.904071,
		0.394487, -0.829539, 0.395278,
		-0.918873, -0.359531, 0.162514,
		35.137447, 39.743393, 46.984310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824036, 39.225456, 46.828690>,  <35.780659, 39.995064, 46.870548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824036, 39.225456, 46.828690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445446, 39.335846, 46.761723>,  <35.218292, 39.402081, 46.721542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445446, 39.335846, 46.761723>,  <35.824036, 39.225456, 46.828690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445446, 39.335846, 46.761723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025367, -0.580645, -0.813761,
		-0.321787, -0.765955, 0.556566,
		-0.946472, 0.275976, -0.167414,
		35.161503, 39.418640, 46.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594273, 38.625103, 46.633823>,  <35.824036, 39.225456, 46.828690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594273, 38.625103, 46.633823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307457, 38.879688, 46.520138>,  <35.135368, 39.032440, 46.451927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307457, 38.879688, 46.520138>,  <35.594273, 38.625103, 46.633823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307457, 38.879688, 46.520138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060464, -0.462999, -0.884294,
		-0.694409, -0.616886, 0.370470,
		-0.717036, 0.636462, -0.284212,
		35.092346, 39.070625, 46.434875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141308, 38.157887, 46.368187>,  <35.594273, 38.625103, 46.633823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141308, 38.157887, 46.368187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053288, 38.524776, 46.235359>,  <35.000477, 38.744911, 46.155663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053288, 38.524776, 46.235359>,  <35.141308, 38.157887, 46.368187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053288, 38.524776, 46.235359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390553, -0.394780, -0.831635,
		-0.893895, -0.053306, 0.445096,
		-0.220046, 0.917228, -0.332073,
		34.987274, 38.799946, 46.135738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444759, 38.146469, 46.186928>,  <35.141308, 38.157887, 46.368187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444759, 38.146469, 46.186928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603138, 38.447533, 45.976509>,  <34.698166, 38.628170, 45.850258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603138, 38.447533, 45.976509>,  <34.444759, 38.146469, 46.186928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603138, 38.447533, 45.976509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356420, -0.401991, -0.843427,
		-0.846280, 0.521449, 0.109094,
		0.395949, 0.752658, -0.526051,
		34.721924, 38.673328, 45.818695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986038, 38.347240, 45.673897>,  <34.444759, 38.146469, 46.186928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986038, 38.347240, 45.673897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325714, 38.493870, 45.521843>,  <34.529518, 38.581848, 45.430611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325714, 38.493870, 45.521843>,  <33.986038, 38.347240, 45.673897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325714, 38.493870, 45.521843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260342, -0.335681, -0.905284,
		-0.459459, 0.867722, -0.189621,
		0.849187, 0.366575, -0.380137,
		34.580471, 38.603844, 45.407803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721001, 38.645523, 45.107616>,  <33.986038, 38.347240, 45.673897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721001, 38.645523, 45.107616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099583, 38.535870, 45.039402>,  <34.326733, 38.470078, 44.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099583, 38.535870, 45.039402>,  <33.721001, 38.645523, 45.107616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099583, 38.535870, 45.039402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251706, -0.295765, -0.921503,
		0.202177, 0.915081, -0.348928,
		0.946451, -0.274134, -0.170534,
		34.383518, 38.453629, 44.988243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762505, 38.855404, 44.349442>,  <33.721001, 38.645523, 45.107616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762505, 38.855404, 44.349442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101105, 38.652485, 44.414047>,  <34.304264, 38.530731, 44.452808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101105, 38.652485, 44.414047>,  <33.762505, 38.855404, 44.349442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101105, 38.652485, 44.414047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102313, -0.452724, -0.885761,
		0.522468, 0.733271, -0.435134,
		0.846498, -0.507301, 0.161511,
		34.355053, 38.500294, 44.462502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122234, 38.922020, 43.800674>,  <33.762505, 38.855404, 44.349442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122234, 38.922020, 43.800674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281582, 38.591858, 43.960674>,  <34.377190, 38.393761, 44.056675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281582, 38.591858, 43.960674>,  <34.122234, 38.922020, 43.800674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281582, 38.591858, 43.960674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053974, -0.414252, -0.908561,
		0.915634, 0.383536, -0.120477,
		0.398374, -0.825406, 0.400004,
		34.401093, 38.344234, 44.080677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505199, 38.669102, 43.286102>,  <34.122234, 38.922020, 43.800674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505199, 38.669102, 43.286102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484108, 38.341011, 43.513947>,  <34.471455, 38.144157, 43.650654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484108, 38.341011, 43.513947>,  <34.505199, 38.669102, 43.286102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484108, 38.341011, 43.513947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008228, -0.570023, -0.821587,
		0.998575, -0.048009, 0.023308,
		-0.052729, -0.820225, 0.569606,
		34.468288, 38.094944, 43.684830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095448, 38.227440, 43.247967>,  <34.505199, 38.669102, 43.286102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095448, 38.227440, 43.247967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800209, 37.981827, 43.359806>,  <34.623066, 37.834457, 43.426910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800209, 37.981827, 43.359806>,  <35.095448, 38.227440, 43.247967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800209, 37.981827, 43.359806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048006, -0.461153, -0.886021,
		0.672985, -0.640547, 0.369853,
		-0.738097, -0.614034, 0.279599,
		34.578781, 37.797615, 43.443687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193081, 37.643932, 42.849052>,  <35.095448, 38.227440, 43.247967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193081, 37.643932, 42.849052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829243, 37.564743, 42.995167>,  <34.610939, 37.517227, 43.082836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829243, 37.564743, 42.995167>,  <35.193081, 37.643932, 42.849052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829243, 37.564743, 42.995167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197172, -0.568193, -0.798924,
		0.365723, -0.798725, 0.477792,
		-0.909599, -0.197978, 0.365288,
		34.556362, 37.505348, 43.104752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204823, 36.974144, 42.943310>,  <35.193081, 37.643932, 42.849052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204823, 36.974144, 42.943310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829945, 37.111820, 42.920708>,  <34.605019, 37.194424, 42.907146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829945, 37.111820, 42.920708>,  <35.204823, 36.974144, 42.943310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829945, 37.111820, 42.920708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154148, -0.554033, -0.818099,
		-0.312882, -0.758013, 0.572295,
		-0.937200, 0.344187, -0.056501,
		34.548786, 37.215076, 42.903759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708145, 36.377968, 42.901279>,  <35.204823, 36.974144, 42.943310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708145, 36.377968, 42.901279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548729, 36.706474, 42.737968>,  <34.453079, 36.903580, 42.639980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548729, 36.706474, 42.737968>,  <34.708145, 36.377968, 42.901279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548729, 36.706474, 42.737968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099085, -0.481107, -0.871045,
		-0.911784, -0.306690, 0.273114,
		-0.398538, 0.821266, -0.408277,
		34.429169, 36.952854, 42.615486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152103, 36.123150, 42.598911>,  <34.708145, 36.377968, 42.901279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152103, 36.123150, 42.598911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222412, 36.478645, 42.429562>,  <34.264599, 36.691944, 42.327953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222412, 36.478645, 42.429562>,  <34.152103, 36.123150, 42.598911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222412, 36.478645, 42.429562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041194, -0.423050, -0.905170,
		-0.983568, 0.176546, -0.037751,
		0.175774, 0.888741, -0.423371,
		34.275143, 36.745266, 42.302551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842197, 36.008465, 41.973679>,  <34.152103, 36.123150, 42.598911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842197, 36.008465, 41.973679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054981, 36.339970, 41.904209>,  <34.182652, 36.538872, 41.862526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054981, 36.339970, 41.904209>,  <33.842197, 36.008465, 41.973679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054981, 36.339970, 41.904209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366067, -0.410032, -0.835386,
		-0.763553, 0.380815, -0.521505,
		0.531961, 0.828766, -0.173677,
		34.214569, 36.588600, 41.852104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745052, 36.078033, 41.231083>,  <33.842197, 36.008465, 41.973679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745052, 36.078033, 41.231083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054131, 36.306252, 41.342384>,  <34.239578, 36.443184, 41.409164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054131, 36.306252, 41.342384>,  <33.745052, 36.078033, 41.231083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054131, 36.306252, 41.342384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503708, -0.284343, -0.815737,
		-0.386295, 0.770473, -0.507097,
		0.772693, 0.570544, 0.278253,
		34.285938, 36.477413, 41.425861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879211, 36.466564, 40.665459>,  <33.745052, 36.078033, 41.231083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879211, 36.466564, 40.665459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213173, 36.437675, 40.883717>,  <34.413548, 36.420341, 41.014671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213173, 36.437675, 40.883717>,  <33.879211, 36.466564, 40.665459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213173, 36.437675, 40.883717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520109, -0.220821, -0.825060,
		0.180072, 0.972637, -0.146803,
		0.834901, -0.072217, 0.545641,
		34.463642, 36.416012, 41.047409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386921, 36.934608, 40.234367>,  <33.879211, 36.466564, 40.665459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386921, 36.934608, 40.234367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595512, 36.677002, 40.458260>,  <34.720669, 36.522438, 40.592594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595512, 36.677002, 40.458260>,  <34.386921, 36.934608, 40.234367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595512, 36.677002, 40.458260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542364, -0.256235, -0.800115,
		0.658709, 0.720826, 0.215668,
		0.521482, -0.644014, 0.559735,
		34.751957, 36.483799, 40.626179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191154, 36.932827, 40.038460>,  <34.386921, 36.934608, 40.234367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191154, 36.932827, 40.038460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105885, 36.588360, 40.223042>,  <35.054722, 36.381680, 40.333790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105885, 36.588360, 40.223042>,  <35.191154, 36.932827, 40.038460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105885, 36.588360, 40.223042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375250, -0.508254, -0.775155,
		0.902077, 0.007917, 0.431501,
		-0.213176, -0.861171, 0.461455,
		35.041931, 36.330009, 40.361477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683716, 36.564514, 39.803902>,  <35.191154, 36.932827, 40.038460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683716, 36.564514, 39.803902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456161, 36.276810, 39.963421>,  <35.319630, 36.104187, 40.059132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456161, 36.276810, 39.963421>,  <35.683716, 36.564514, 39.803902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456161, 36.276810, 39.963421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309865, -0.636626, -0.706180,
		0.761809, -0.278163, 0.585040,
		-0.568885, -0.719258, 0.398795,
		35.285496, 36.061031, 40.083057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120403, 36.056938, 40.039852>,  <35.683716, 36.564514, 39.803902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120403, 36.056938, 40.039852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765991, 35.886257, 39.967327>,  <35.553345, 35.783848, 39.923813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765991, 35.886257, 39.967327>,  <36.120403, 36.056938, 40.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765991, 35.886257, 39.967327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396947, -0.496136, -0.772193,
		0.239542, -0.756158, 0.608971,
		-0.886032, -0.426702, -0.181309,
		35.500183, 35.758247, 39.912933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305607, 35.391693, 39.899204>,  <36.120403, 36.056938, 40.039852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305607, 35.391693, 39.899204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934486, 35.385460, 39.750103>,  <35.711815, 35.381721, 39.660641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934486, 35.385460, 39.750103>,  <36.305607, 35.391693, 39.899204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934486, 35.385460, 39.750103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354585, -0.347489, -0.868056,
		-0.116003, -0.937555, 0.327925,
		-0.927800, -0.015581, -0.372753,
		35.656147, 35.380787, 39.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211941, 34.702721, 39.546627>,  <36.305607, 35.391693, 39.899204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211941, 34.702721, 39.546627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961266, 34.967571, 39.382259>,  <35.810860, 35.126480, 39.283638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961266, 34.967571, 39.382259>,  <36.211941, 34.702721, 39.546627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961266, 34.967571, 39.382259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328736, -0.253474, -0.909771,
		-0.706541, -0.705223, -0.058817,
		-0.626683, 0.662126, -0.410922,
		35.773262, 35.166210, 39.258984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713600, 34.294384, 39.102482>,  <36.211941, 34.702721, 39.546627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713600, 34.294384, 39.102482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707397, 34.670967, 38.967770>,  <35.703674, 34.896915, 38.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707397, 34.670967, 38.967770>,  <35.713600, 34.294384, 39.102482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707397, 34.670967, 38.967770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161343, -0.330051, -0.930072,
		-0.986777, -0.068759, -0.146779,
		-0.015506, 0.941455, -0.336781,
		35.702747, 34.953403, 38.866734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299709, 34.213306, 38.470253>,  <35.713600, 34.294384, 39.102482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299709, 34.213306, 38.470253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492367, 34.563850, 38.471050>,  <35.607964, 34.774178, 38.471531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492367, 34.563850, 38.471050>,  <35.299709, 34.213306, 38.470253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492367, 34.563850, 38.471050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325568, -0.176815, -0.928839,
		-0.813647, 0.448023, -0.370478,
		0.481648, 0.876363, 0.001997,
		35.636860, 34.826759, 38.471649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123863, 34.572701, 37.715816>,  <35.299709, 34.213306, 38.470253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123863, 34.572701, 37.715816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464928, 34.707024, 37.875916>,  <35.669567, 34.787617, 37.971973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464928, 34.707024, 37.875916>,  <35.123863, 34.572701, 37.715816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464928, 34.707024, 37.875916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454135, -0.097623, -0.885569,
		-0.258307, 0.936858, -0.235741,
		0.852666, 0.335807, 0.400243,
		35.720726, 34.807766, 37.995987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350060, 35.059246, 37.239967>,  <35.123863, 34.572701, 37.715816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350060, 35.059246, 37.239967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679802, 34.943104, 37.434341>,  <35.877647, 34.873417, 37.550964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679802, 34.943104, 37.434341>,  <35.350060, 35.059246, 37.239967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679802, 34.943104, 37.434341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453094, -0.176125, -0.873891,
		0.339327, 0.940570, -0.013629,
		0.824356, -0.290359, 0.485931,
		35.927109, 34.855995, 37.580120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902008, 35.513462, 37.025284>,  <35.350060, 35.059246, 37.239967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902008, 35.513462, 37.025284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055317, 35.172657, 37.167931>,  <36.147301, 34.968174, 37.253521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055317, 35.172657, 37.167931>,  <35.902008, 35.513462, 37.025284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055317, 35.172657, 37.167931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593575, -0.068608, -0.801849,
		0.707651, 0.519008, 0.479437,
		0.383273, -0.852012, 0.356621,
		36.170300, 34.917053, 37.274918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703247, 35.550552, 36.859135>,  <35.902008, 35.513462, 37.025284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703247, 35.550552, 36.859135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604694, 35.166004, 36.908230>,  <36.545563, 34.935276, 36.937687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604694, 35.166004, 36.908230>,  <36.703247, 35.550552, 36.859135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604694, 35.166004, 36.908230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573151, -0.246650, -0.781449,
		0.781534, -0.122187, 0.611780,
		-0.246378, -0.961371, 0.122734,
		36.530781, 34.877594, 36.945049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370224, 35.299065, 36.752987>,  <36.703247, 35.550552, 36.859135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370224, 35.299065, 36.752987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096039, 35.015705, 36.685680>,  <36.931526, 34.845692, 36.645298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096039, 35.015705, 36.685680>,  <37.370224, 35.299065, 36.752987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096039, 35.015705, 36.685680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492451, -0.280835, -0.823786,
		0.536313, -0.647538, 0.541353,
		-0.685464, -0.708397, -0.168265,
		36.890400, 34.803185, 36.635201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749493, 34.717361, 36.593758>,  <37.370224, 35.299065, 36.752987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749493, 34.717361, 36.593758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387577, 34.637581, 36.443253>,  <37.170425, 34.589714, 36.352951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387577, 34.637581, 36.443253>,  <37.749493, 34.717361, 36.593758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387577, 34.637581, 36.443253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422268, -0.305774, -0.853342,
		0.055146, -0.930979, 0.360882,
		-0.904792, -0.199447, -0.376261,
		37.116138, 34.577747, 36.330376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729630, 34.033882, 36.474045>,  <37.749493, 34.717361, 36.593758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729630, 34.033882, 36.474045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443325, 34.160778, 36.225193>,  <37.271542, 34.236916, 36.075882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443325, 34.160778, 36.225193>,  <37.729630, 34.033882, 36.474045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443325, 34.160778, 36.225193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437477, -0.490701, -0.753542,
		-0.544335, -0.811522, 0.212438,
		-0.715760, 0.317244, -0.622129,
		37.228596, 34.255951, 36.038555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535259, 33.499317, 36.127789>,  <37.729630, 34.033882, 36.474045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535259, 33.499317, 36.127789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389847, 33.781586, 35.884521>,  <37.302601, 33.950947, 35.738560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389847, 33.781586, 35.884521>,  <37.535259, 33.499317, 36.127789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389847, 33.781586, 35.884521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410159, -0.464911, -0.784619,
		-0.836430, -0.534680, -0.120428,
		-0.363532, 0.705674, -0.608169,
		37.280788, 33.993286, 35.702072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165920, 33.209690, 35.495392>,  <37.535259, 33.499317, 36.127789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165920, 33.209690, 35.495392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302128, 33.576855, 35.413921>,  <37.383854, 33.797153, 35.365040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302128, 33.576855, 35.413921>,  <37.165920, 33.209690, 35.495392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302128, 33.576855, 35.413921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537737, -0.367825, -0.758646,
		-0.771288, 0.148808, -0.618846,
		0.340520, 0.917911, -0.203680,
		37.404285, 33.852226, 35.352818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009140, 33.467560, 34.792664>,  <37.165920, 33.209690, 35.495392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009140, 33.467560, 34.792664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341381, 33.637016, 34.937233>,  <37.540726, 33.738689, 35.023975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341381, 33.637016, 34.937233>,  <37.009140, 33.467560, 34.792664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341381, 33.637016, 34.937233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446452, -0.118667, -0.886904,
		-0.332838, 0.898024, -0.287699,
		0.830602, 0.423639, 0.361428,
		37.590561, 33.764107, 35.045662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201439, 33.996071, 34.324745>,  <37.009140, 33.467560, 34.792664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201439, 33.996071, 34.324745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489525, 33.818928, 34.538349>,  <37.662376, 33.712639, 34.666512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489525, 33.818928, 34.538349>,  <37.201439, 33.996071, 34.324745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489525, 33.818928, 34.538349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543424, -0.118367, -0.831071,
		0.431259, 0.888742, 0.155413,
		0.720212, -0.442862, 0.534011,
		37.705589, 33.686069, 34.698551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767929, 33.965973, 34.002182>,  <37.201439, 33.996071, 34.324745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767929, 33.965973, 34.002182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968266, 33.793491, 34.302376>,  <38.088467, 33.690002, 34.482491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968266, 33.793491, 34.302376>,  <37.767929, 33.965973, 34.002182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968266, 33.793491, 34.302376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726677, -0.261557, -0.635238,
		0.470210, 0.863512, 0.182346,
		0.500842, -0.431202, 0.750481,
		38.118519, 33.664131, 34.527519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461533, 34.217243, 33.977577>,  <37.767929, 33.965973, 34.002182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461533, 34.217243, 33.977577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428959, 33.842499, 34.113613>,  <38.409416, 33.617653, 34.195232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428959, 33.842499, 34.113613>,  <38.461533, 34.217243, 33.977577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428959, 33.842499, 34.113613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601989, -0.318183, -0.732372,
		0.794341, 0.145090, 0.589891,
		-0.081433, -0.936861, 0.340088,
		38.404530, 33.561440, 34.215641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099251, 33.793530, 33.827610>,  <38.461533, 34.217243, 33.977577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099251, 33.793530, 33.827610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834991, 33.506702, 33.916481>,  <38.676437, 33.334606, 33.969803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834991, 33.506702, 33.916481>,  <39.099251, 33.793530, 33.827610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834991, 33.506702, 33.916481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486652, -0.634440, -0.600546,
		0.571588, -0.288627, 0.768103,
		-0.660649, -0.717063, 0.222177,
		38.636795, 33.291584, 33.983135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317852, 33.056995, 33.577526>,  <39.099251, 33.793530, 33.827610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317852, 33.056995, 33.577526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454063, 33.374561, 33.376038>,  <39.535789, 33.565102, 33.255142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454063, 33.374561, 33.376038>,  <39.317852, 33.056995, 33.577526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454063, 33.374561, 33.376038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568049, 0.253197, 0.783078,
		0.749239, -0.552802, -0.364762,
		0.340530, 0.793915, -0.503724,
		39.556221, 33.612736, 33.224922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167419, 33.068596, 33.406960>,  <39.317852, 33.056995, 33.577526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167419, 33.068596, 33.406960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008862, 33.431114, 33.465607>,  <39.913727, 33.648624, 33.500797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008862, 33.431114, 33.465607>,  <40.167419, 33.068596, 33.406960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008862, 33.431114, 33.465607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771154, 0.242017, 0.588854,
		0.498192, 0.346485, -0.794829,
		-0.396392, 0.906298, 0.146623,
		39.889942, 33.703003, 33.509594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801483, 33.565594, 33.300312>,  <40.167419, 33.068596, 33.406960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801483, 33.565594, 33.300312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187901, 33.595234, 33.399315>,  <41.419750, 33.613018, 33.458717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187901, 33.595234, 33.399315>,  <40.801483, 33.565594, 33.300312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187901, 33.595234, 33.399315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210950, -0.779329, -0.590040,
		0.149170, 0.622218, -0.768500,
		0.966048, 0.074099, 0.247509,
		41.477715, 33.617462, 33.473568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115906, 33.501522, 32.697968>,  <40.801483, 33.565594, 33.300312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115906, 33.501522, 32.697968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389439, 33.391701, 32.968372>,  <41.553558, 33.325809, 33.130615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389439, 33.391701, 32.968372>,  <41.115906, 33.501522, 32.697968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389439, 33.391701, 32.968372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215618, -0.809085, -0.546709,
		0.697051, 0.519618, -0.494082,
		0.683834, -0.274551, 0.676012,
		41.594589, 33.309334, 33.171177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801289, 33.427959, 32.402721>,  <41.115906, 33.501522, 32.697968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801289, 33.427959, 32.402721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790874, 33.180229, 32.716602>,  <41.784626, 33.031590, 32.904930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790874, 33.180229, 32.716602>,  <41.801289, 33.427959, 32.402721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790874, 33.180229, 32.716602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316247, -0.749756, -0.581251,
		0.948320, 0.233030, 0.215376,
		-0.026031, -0.619324, 0.784704,
		41.783066, 32.994431, 32.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380566, 32.995136, 32.278515>,  <41.801289, 33.427959, 32.402721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380566, 32.995136, 32.278515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162788, 32.807751, 32.556831>,  <42.032120, 32.695320, 32.723820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162788, 32.807751, 32.556831>,  <42.380566, 32.995136, 32.278515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162788, 32.807751, 32.556831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392526, -0.875370, -0.282226,
		0.741284, 0.119458, 0.660476,
		-0.544447, -0.468463, 0.695787,
		41.999454, 32.667213, 32.765568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805923, 32.480183, 32.422882>,  <42.380566, 32.995136, 32.278515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805923, 32.480183, 32.422882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451408, 32.346432, 32.551064>,  <42.238701, 32.266182, 32.627972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451408, 32.346432, 32.551064>,  <42.805923, 32.480183, 32.422882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451408, 32.346432, 32.551064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244931, -0.925636, -0.288455,
		0.393075, -0.177164, 0.902277,
		-0.886285, -0.334380, 0.320452,
		42.185524, 32.246117, 32.647198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923134, 31.773933, 32.750851>,  <42.805923, 32.480183, 32.422882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923134, 31.773933, 32.750851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536530, 31.807056, 32.653690>,  <42.304565, 31.826929, 32.595394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536530, 31.807056, 32.653690>,  <42.923134, 31.773933, 32.750851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536530, 31.807056, 32.653690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073400, -0.817765, -0.570853,
		-0.245902, -0.569564, 0.784301,
		-0.966511, 0.082806, -0.242896,
		42.246574, 31.831898, 32.580822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562355, 31.159536, 32.976036>,  <42.923134, 31.773933, 32.750851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562355, 31.159536, 32.976036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354103, 31.318703, 32.673882>,  <42.229153, 31.414202, 32.492588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354103, 31.318703, 32.673882>,  <42.562355, 31.159536, 32.976036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354103, 31.318703, 32.673882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066332, -0.863228, -0.500437,
		-0.851201, -0.310649, 0.423030,
		-0.520632, 0.397912, -0.755387,
		42.197914, 31.438076, 32.447266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312542, 30.636642, 32.781044>,  <42.562355, 31.159536, 32.976036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312542, 30.636642, 32.781044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188232, 30.885530, 32.493637>,  <42.113647, 31.034863, 32.321194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188232, 30.885530, 32.493637>,  <42.312542, 30.636642, 32.781044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188232, 30.885530, 32.493637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211246, -0.782256, -0.586047,
		-0.926712, -0.030344, 0.374544,
		-0.310773, 0.622218, -0.718516,
		42.095001, 31.072195, 32.278084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581936, 30.544441, 32.561069>,  <42.312542, 30.636642, 32.781044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581936, 30.544441, 32.561069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766769, 30.718138, 32.251770>,  <41.877670, 30.822355, 32.066189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766769, 30.718138, 32.251770>,  <41.581936, 30.544441, 32.561069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766769, 30.718138, 32.251770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073306, -0.850233, -0.521277,
		-0.883803, 0.297557, -0.361044,
		0.462081, 0.434240, -0.773251,
		41.905396, 30.848410, 32.019794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136299, 30.479088, 31.917166>,  <41.581936, 30.544441, 32.561069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136299, 30.479088, 31.917166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514767, 30.532566, 31.799257>,  <41.741848, 30.564653, 31.728512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514767, 30.532566, 31.799257>,  <41.136299, 30.479088, 31.917166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514767, 30.532566, 31.799257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048837, -0.841311, -0.538341,
		-0.319970, 0.523757, -0.789492,
		0.946168, 0.133697, -0.294773,
		41.798618, 30.572676, 31.710825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047825, 30.320566, 31.287882>,  <41.136299, 30.479088, 31.917166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047825, 30.320566, 31.287882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443913, 30.297215, 31.338568>,  <41.681564, 30.283203, 31.368980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443913, 30.297215, 31.338568>,  <41.047825, 30.320566, 31.287882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443913, 30.297215, 31.338568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027387, -0.809238, -0.586842,
		0.136803, 0.584573, -0.799725,
		0.990220, -0.058380, 0.126716,
		41.740978, 30.279701, 31.376583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197544, 30.176380, 30.682085>,  <41.047825, 30.320566, 31.287882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197544, 30.176380, 30.682085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534195, 30.084585, 30.877634>,  <41.736187, 30.029509, 30.994965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534195, 30.084585, 30.877634>,  <41.197544, 30.176380, 30.682085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534195, 30.084585, 30.877634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134290, -0.787867, -0.601026,
		0.523094, 0.571492, -0.632273,
		0.841628, -0.229485, 0.488875,
		41.786682, 30.015739, 31.024296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699982, 30.086372, 30.113930>,  <41.197544, 30.176380, 30.682085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699982, 30.086372, 30.113930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821217, 29.894035, 30.443031>,  <41.893959, 29.778633, 30.640493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821217, 29.894035, 30.443031>,  <41.699982, 30.086372, 30.113930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821217, 29.894035, 30.443031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053366, -0.853447, -0.518439,
		0.951467, 0.201040, -0.233008,
		0.303087, -0.480843, 0.822756,
		41.912144, 29.749783, 30.689857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217609, 29.677773, 29.885880>,  <41.699982, 30.086372, 30.113930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217609, 29.677773, 29.885880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091930, 29.507929, 30.225523>,  <42.016521, 29.406023, 30.429310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091930, 29.507929, 30.225523>,  <42.217609, 29.677773, 29.885880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091930, 29.507929, 30.225523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058401, -0.901356, -0.429123,
		0.947558, -0.085243, 0.308005,
		-0.314202, -0.424607, 0.849109,
		41.997669, 29.380547, 30.480255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714336, 29.170834, 29.945024>,  <42.217609, 29.677773, 29.885880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714336, 29.170834, 29.945024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415077, 29.062742, 30.187431>,  <42.235523, 28.997889, 30.332876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415077, 29.062742, 30.187431>,  <42.714336, 29.170834, 29.945024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415077, 29.062742, 30.187431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083923, -0.944517, -0.317559,
		0.658208, -0.186721, 0.729313,
		-0.748144, -0.270226, 0.606018,
		42.190636, 28.981674, 30.369236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988522, 28.673204, 30.429071>,  <42.714336, 29.170834, 29.945024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988522, 28.673204, 30.429071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593582, 28.610620, 30.439329>,  <42.356617, 28.573071, 30.445484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593582, 28.610620, 30.439329>,  <42.988522, 28.673204, 30.429071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593582, 28.610620, 30.439329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155235, -0.986885, -0.044283,
		0.032237, -0.039742, 0.998690,
		-0.987351, -0.156459, 0.025645,
		42.297379, 28.563683, 30.447023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010937, 28.128708, 30.931103>,  <42.988522, 28.673204, 30.429071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010937, 28.128708, 30.931103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670662, 28.133850, 30.720894>,  <42.466499, 28.136936, 30.594769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670662, 28.133850, 30.720894>,  <43.010937, 28.128708, 30.931103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670662, 28.133850, 30.720894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011241, -0.999917, -0.006263,
		-0.525558, 0.000579, 0.850758,
		-0.850684, 0.012855, -0.525521,
		42.415459, 28.137707, 30.563238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789825, 27.509005, 31.119961>,  <43.010937, 28.128708, 30.931103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789825, 27.509005, 31.119961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557068, 27.618584, 30.813665>,  <42.417416, 27.684332, 30.629889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557068, 27.618584, 30.813665>,  <42.789825, 27.509005, 31.119961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557068, 27.618584, 30.813665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089540, -0.957415, -0.274479,
		-0.808322, -0.091153, 0.581641,
		-0.581892, 0.273948, -0.765738,
		42.382500, 27.700768, 30.583944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249603, 26.982920, 31.083040>,  <42.789825, 27.509005, 31.119961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249603, 26.982920, 31.083040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219082, 27.165627, 30.728518>,  <42.200771, 27.275251, 30.515804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219082, 27.165627, 30.728518>,  <42.249603, 26.982920, 31.083040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219082, 27.165627, 30.728518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200192, -0.877817, -0.435157,
		-0.976781, 0.144229, 0.158419,
		-0.076301, 0.456767, -0.886308,
		42.196190, 27.302656, 30.462626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584187, 26.796249, 30.781525>,  <42.249603, 26.982920, 31.083040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584187, 26.796249, 30.781525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827568, 26.889919, 30.478224>,  <41.973598, 26.946121, 30.296244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827568, 26.889919, 30.478224>,  <41.584187, 26.796249, 30.781525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827568, 26.889919, 30.478224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166719, -0.896429, -0.410633,
		-0.775879, 0.376266, -0.506395,
		0.608455, 0.234176, -0.758251,
		42.010105, 26.960173, 30.250748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208294, 26.767435, 30.095739>,  <41.584187, 26.796249, 30.781525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208294, 26.767435, 30.095739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596184, 26.680340, 30.051502>,  <41.828918, 26.628082, 30.024960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596184, 26.680340, 30.051502>,  <41.208294, 26.767435, 30.095739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596184, 26.680340, 30.051502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243780, -0.889988, -0.385346,
		-0.014520, 0.400639, -0.916121,
		0.969722, -0.217737, -0.110591,
		41.887100, 26.615019, 30.018326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207088, 26.493496, 29.480402>,  <41.208294, 26.767435, 30.095739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207088, 26.493496, 29.480402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539467, 26.365765, 29.662636>,  <41.738895, 26.289125, 29.771976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539467, 26.365765, 29.662636>,  <41.207088, 26.493496, 29.480402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539467, 26.365765, 29.662636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170766, -0.925739, -0.337410,
		0.529498, 0.202571, -0.823770,
		0.830946, -0.319330, 0.455585,
		41.788750, 26.269966, 29.799311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554222, 26.003454, 29.056234>,  <41.207088, 26.493496, 29.480402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554222, 26.003454, 29.056234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687305, 25.909803, 29.421637>,  <41.767155, 25.853613, 29.640877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687305, 25.909803, 29.421637>,  <41.554222, 26.003454, 29.056234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687305, 25.909803, 29.421637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226471, -0.920505, -0.318406,
		0.915433, 0.312818, -0.253235,
		0.332707, -0.234128, 0.913504,
		41.787117, 25.839565, 29.695688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319592, 25.813421, 29.128069>,  <41.554222, 26.003454, 29.056234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319592, 25.813421, 29.128069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091705, 25.600725, 29.378723>,  <41.954971, 25.473108, 29.529116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091705, 25.600725, 29.378723>,  <42.319592, 25.813421, 29.128069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091705, 25.600725, 29.378723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371521, -0.846759, -0.380750,
		0.733070, 0.015889, 0.679967,
		-0.569719, -0.531739, 0.626637,
		41.920788, 25.441204, 29.566715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639122, 25.294319, 29.558619>,  <42.319592, 25.813421, 29.128069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639122, 25.294319, 29.558619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860420, 25.013599, 29.738125>,  <42.993198, 24.845167, 29.845829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860420, 25.013599, 29.738125>,  <42.639122, 25.294319, 29.558619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860420, 25.013599, 29.738125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531954, 0.712222, 0.458000,
		-0.641046, -0.014666, 0.767362,
		0.553249, -0.701801, 0.448766,
		43.026394, 24.803059, 29.872755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581440, 25.299047, 30.353256>,  <42.639122, 25.294319, 29.558619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581440, 25.299047, 30.353256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932014, 25.311266, 30.161036>,  <43.142361, 25.318598, 30.045704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932014, 25.311266, 30.161036>,  <42.581440, 25.299047, 30.353256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932014, 25.311266, 30.161036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289530, 0.763997, 0.576612,
		0.384752, -0.644497, 0.660750,
		0.876435, 0.030546, -0.480551,
		43.194946, 25.320429, 30.016870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059616, 25.511486, 30.841894>,  <42.581440, 25.299047, 30.353256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059616, 25.511486, 30.841894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249977, 25.561853, 30.493719>,  <43.364193, 25.592073, 30.284815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249977, 25.561853, 30.493719>,  <43.059616, 25.511486, 30.841894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249977, 25.561853, 30.493719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519012, 0.758788, 0.393532,
		0.710028, -0.639050, 0.295759,
		0.475906, 0.125916, -0.870436,
		43.392750, 25.599628, 30.232588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879910, 25.386171, 30.824404>,  <43.059616, 25.511486, 30.841894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879910, 25.386171, 30.824404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730042, 25.676022, 30.593044>,  <43.640121, 25.849932, 30.454229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730042, 25.676022, 30.593044>,  <43.879910, 25.386171, 30.824404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730042, 25.676022, 30.593044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432283, 0.688409, 0.582430,
		0.820216, -0.031813, -0.571168,
		-0.374668, 0.724625, -0.578396,
		43.617641, 25.893410, 30.419525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307827, 25.918716, 31.140533>,  <43.879910, 25.386171, 30.824404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307827, 25.918716, 31.140533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062565, 26.090031, 30.875019>,  <43.915409, 26.192820, 30.715710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062565, 26.090031, 30.875019>,  <44.307827, 25.918716, 31.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062565, 26.090031, 30.875019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269035, 0.903258, 0.334283,
		0.742739, 0.026386, -0.669061,
		-0.613155, 0.428286, -0.663786,
		43.878620, 26.218517, 30.675882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706215, 26.329832, 30.753117>,  <44.307827, 25.918716, 31.140533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706215, 26.329832, 30.753117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334274, 26.470060, 30.708441>,  <44.111111, 26.554197, 30.681635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334274, 26.470060, 30.708441>,  <44.706215, 26.329832, 30.753117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334274, 26.470060, 30.708441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304000, 0.903028, 0.303520,
		0.207264, 0.248275, -0.946256,
		-0.929852, 0.350571, -0.111689,
		44.055317, 26.575232, 30.674934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578964, 26.838854, 30.168680>,  <44.706215, 26.329832, 30.753117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578964, 26.838854, 30.168680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365822, 26.876278, 30.505087>,  <44.237934, 26.898733, 30.706930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365822, 26.876278, 30.505087>,  <44.578964, 26.838854, 30.168680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365822, 26.876278, 30.505087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485492, 0.847825, 0.213285,
		-0.693079, 0.521957, -0.497194,
		-0.532859, 0.093561, 0.841016,
		44.205963, 26.904346, 30.757391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468052, 27.516125, 30.167309>,  <44.578964, 26.838854, 30.168680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468052, 27.516125, 30.167309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338516, 27.407763, 30.529909>,  <44.260796, 27.342745, 30.747469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338516, 27.407763, 30.529909>,  <44.468052, 27.516125, 30.167309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338516, 27.407763, 30.529909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126341, 0.937166, 0.325205,
		-0.937640, 0.219840, -0.269262,
		-0.323836, -0.270906, 0.906499,
		44.241364, 27.326490, 30.801859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120457, 28.013277, 30.323353>,  <44.468052, 27.516125, 30.167309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120457, 28.013277, 30.323353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133583, 27.853437, 30.689793>,  <44.141460, 27.757534, 30.909657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.133583, 27.853437, 30.689793>,  <44.120457, 28.013277, 30.323353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133583, 27.853437, 30.689793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019559, 0.916677, 0.399151,
		-0.999270, 0.004818, 0.037900,
		0.032819, -0.399601, 0.916101,
		44.143429, 27.733557, 30.964622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620419, 28.448633, 30.738823>,  <44.120457, 28.013277, 30.323353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620419, 28.448633, 30.738823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878658, 28.256601, 30.976385>,  <44.033604, 28.141382, 31.118923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878658, 28.256601, 30.976385>,  <43.620419, 28.448633, 30.738823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878658, 28.256601, 30.976385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220530, 0.861762, 0.456872,
		-0.731140, -0.163983, 0.662226,
		0.645601, -0.480079, 0.593906,
		44.072338, 28.112577, 31.154556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556618, 28.621897, 31.384136>,  <43.620419, 28.448633, 30.738823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556618, 28.621897, 31.384136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940735, 28.510389, 31.388662>,  <44.171204, 28.443485, 31.391378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940735, 28.510389, 31.388662>,  <43.556618, 28.621897, 31.384136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940735, 28.510389, 31.388662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250362, 0.878923, 0.405971,
		-0.123118, -0.387018, 0.913816,
		0.960292, -0.278767, 0.011316,
		44.228821, 28.426760, 31.392057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751602, 28.609634, 32.132256>,  <43.556618, 28.621897, 31.384136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751602, 28.609634, 32.132256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084412, 28.624432, 31.910854>,  <44.284096, 28.633310, 31.778013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084412, 28.624432, 31.910854>,  <43.751602, 28.609634, 32.132256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084412, 28.624432, 31.910854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381202, 0.686753, 0.618915,
		0.403017, -0.725949, 0.557293,
		0.832023, 0.036992, -0.553506,
		44.334019, 28.635529, 31.744802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231461, 28.594351, 32.600647>,  <43.751602, 28.609634, 32.132256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231461, 28.594351, 32.600647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407734, 28.732113, 32.269062>,  <44.513496, 28.814770, 32.070110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407734, 28.732113, 32.269062>,  <44.231461, 28.594351, 32.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407734, 28.732113, 32.269062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286255, 0.821342, 0.493412,
		0.850798, -0.454733, 0.263364,
		0.440683, 0.344405, -0.828966,
		44.539940, 28.835434, 32.020374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831509, 28.905890, 32.822243>,  <44.231461, 28.594351, 32.600647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831509, 28.905890, 32.822243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770664, 29.086594, 32.470612>,  <44.734158, 29.195017, 32.259632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770664, 29.086594, 32.470612>,  <44.831509, 28.905890, 32.822243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770664, 29.086594, 32.470612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346143, 0.857446, 0.380750,
		0.925769, -0.246371, -0.286800,
		-0.152110, 0.451760, -0.879076,
		44.725033, 29.222122, 32.206890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381115, 29.310968, 32.744442>,  <44.831509, 28.905890, 32.822243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381115, 29.310968, 32.744442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121540, 29.463242, 32.480942>,  <44.965794, 29.554605, 32.322842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121540, 29.463242, 32.480942>,  <45.381115, 29.310968, 32.744442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121540, 29.463242, 32.480942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246177, 0.924308, 0.291635,
		0.719911, 0.027084, -0.693537,
		-0.648941, 0.380684, -0.658753,
		44.926857, 29.577446, 32.283318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731937, 29.945448, 32.328327>,  <45.381115, 29.310968, 32.744442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731937, 29.945448, 32.328327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332325, 29.962675, 32.331985>,  <45.092556, 29.973011, 32.334179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332325, 29.962675, 32.331985>,  <45.731937, 29.945448, 32.328327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332325, 29.962675, 32.331985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043713, 0.945341, 0.323142,
		0.005271, 0.323228, -0.946306,
		-0.999030, 0.043069, 0.009146,
		45.032616, 29.975595, 32.334728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584545, 30.597313, 31.970039>,  <45.731937, 29.945448, 32.328327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584545, 30.597313, 31.970039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229603, 30.516333, 32.135742>,  <45.016636, 30.467745, 32.235165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229603, 30.516333, 32.135742>,  <45.584545, 30.597313, 31.970039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229603, 30.516333, 32.135742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107397, 0.964489, 0.241303,
		-0.448399, 0.169632, -0.877590,
		-0.887358, -0.202450, 0.414258,
		44.963394, 30.455597, 32.260021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143265, 31.092758, 31.736744>,  <45.584545, 30.597313, 31.970039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143265, 31.092758, 31.736744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974640, 30.948425, 32.069511>,  <44.873466, 30.861826, 32.269173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974640, 30.948425, 32.069511>,  <45.143265, 31.092758, 31.736744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974640, 30.948425, 32.069511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303126, 0.920719, 0.245746,
		-0.854635, -0.148579, -0.497518,
		-0.421561, -0.360833, 0.831917,
		44.848171, 30.840176, 32.319088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545349, 31.431911, 31.783337>,  <45.143265, 31.092758, 31.736744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545349, 31.431911, 31.783337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590706, 31.283884, 32.152161>,  <44.617920, 31.195068, 32.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590706, 31.283884, 32.152161>,  <44.545349, 31.431911, 31.783337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590706, 31.283884, 32.152161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114307, 0.917022, 0.382105,
		-0.986953, -0.148726, 0.061682,
		0.113392, -0.370069, 0.922058,
		44.624725, 31.172863, 32.428780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008419, 31.784950, 32.176960>,  <44.545349, 31.431911, 31.783337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008419, 31.784950, 32.176960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275356, 31.661747, 32.448193>,  <44.435516, 31.587824, 32.610931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.275356, 31.661747, 32.448193>,  <44.008419, 31.784950, 32.176960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275356, 31.661747, 32.448193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072893, 0.879087, 0.471055,
		-0.741179, -0.363780, 0.564197,
		0.667339, -0.308010, 0.678077,
		44.475559, 31.569344, 32.651615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733719, 31.871544, 32.821198>,  <44.008419, 31.784950, 32.176960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733719, 31.871544, 32.821198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127209, 31.878286, 32.892754>,  <44.363304, 31.882332, 32.935688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127209, 31.878286, 32.892754>,  <43.733719, 31.871544, 32.821198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127209, 31.878286, 32.892754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095074, 0.893631, 0.438617,
		-0.152464, -0.448486, 0.880690,
		0.983725, 0.016857, 0.178886,
		44.422325, 31.883343, 32.946419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752846, 32.111015, 33.512592>,  <43.733719, 31.871544, 32.821198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752846, 32.111015, 33.512592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114010, 32.177570, 33.354065>,  <44.330708, 32.217503, 33.258949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114010, 32.177570, 33.354065>,  <43.752846, 32.111015, 33.512592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114010, 32.177570, 33.354065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068519, 0.854529, 0.514865,
		0.424330, -0.492032, 0.760163,
		0.902912, 0.166387, -0.396316,
		44.384884, 32.227486, 33.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152084, 32.254215, 34.018402>,  <43.752846, 32.111015, 33.512592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152084, 32.254215, 34.018402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373779, 32.416840, 33.727875>,  <44.506794, 32.514412, 33.553558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373779, 32.416840, 33.727875>,  <44.152084, 32.254215, 34.018402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373779, 32.416840, 33.727875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000751, 0.872354, 0.488875,
		0.832362, -0.271496, 0.483181,
		0.554232, 0.406557, -0.726318,
		44.540051, 32.538807, 33.509979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642269, 32.701733, 34.331818>,  <44.152084, 32.254215, 34.018402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642269, 32.701733, 34.331818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635029, 32.817223, 33.948921>,  <44.630684, 32.886517, 33.719185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635029, 32.817223, 33.948921>,  <44.642269, 32.701733, 34.331818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635029, 32.817223, 33.948921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179656, 0.942755, 0.280957,
		0.983563, -0.166888, -0.068937,
		-0.018102, 0.288724, -0.957241,
		44.629597, 32.903839, 33.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180962, 33.204662, 34.208279>,  <44.642269, 32.701733, 34.331818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180962, 33.204662, 34.208279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934658, 33.270432, 33.900043>,  <44.786877, 33.309895, 33.715103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934658, 33.270432, 33.900043>,  <45.180962, 33.204662, 34.208279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934658, 33.270432, 33.900043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009784, 0.976314, 0.216136,
		0.787871, 0.140628, -0.599569,
		-0.615762, 0.164422, -0.770586,
		44.749931, 33.319759, 33.668869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341309, 33.926758, 34.068581>,  <45.180962, 33.204662, 34.208279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341309, 33.926758, 34.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007233, 33.862946, 33.858055>,  <44.806789, 33.824657, 33.731739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007233, 33.862946, 33.858055>,  <45.341309, 33.926758, 34.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007233, 33.862946, 33.858055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293981, 0.938306, 0.182090,
		0.464797, 0.306806, -0.830562,
		-0.835188, -0.159535, -0.526317,
		44.756676, 33.815086, 33.700161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255718, 34.465775, 33.485996>,  <45.341309, 33.926758, 34.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255718, 34.465775, 33.485996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894333, 34.328285, 33.588448>,  <44.677502, 34.245792, 33.649918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894333, 34.328285, 33.588448>,  <45.255718, 34.465775, 33.485996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894333, 34.328285, 33.588448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303876, 0.934996, 0.182871,
		-0.302334, 0.087387, -0.949188,
		-0.903467, -0.343724, 0.256127,
		44.623291, 34.225166, 33.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657784, 34.965534, 34.014408>,  <45.255718, 34.465775, 33.485996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657784, 34.965534, 34.014408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873383, 34.997826, 34.349781>,  <46.002743, 35.017200, 34.551003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873383, 34.997826, 34.349781>,  <45.657784, 34.965534, 34.014408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873383, 34.997826, 34.349781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630541, -0.621312, 0.465177,
		0.558478, -0.779394, -0.283986,
		0.538999, 0.080726, 0.838429,
		46.035084, 35.022045, 34.601311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468842, 35.120247, 33.894112>,  <45.657784, 34.965534, 34.014408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468842, 35.120247, 33.894112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500134, 35.369488, 33.582825>,  <46.518909, 35.519032, 33.396053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500134, 35.369488, 33.582825>,  <46.468842, 35.120247, 33.894112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.500134, 35.369488, 33.582825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403180, 0.733697, 0.546932,
		0.911771, 0.270975, 0.308620,
		0.078229, 0.623106, -0.778216,
		46.523602, 35.556419, 33.349361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834023, 35.627541, 34.059105>,  <46.468842, 35.120247, 33.894112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834023, 35.627541, 34.059105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548565, 35.715649, 33.793118>,  <46.377289, 35.768513, 33.633526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548565, 35.715649, 33.793118>,  <46.834023, 35.627541, 34.059105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548565, 35.715649, 33.793118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362188, 0.696517, 0.619422,
		0.599608, 0.682893, -0.417285,
		-0.713645, 0.220275, -0.664973,
		46.334473, 35.781731, 33.593624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256920, 35.735172, 34.526085>,  <46.834023, 35.627541, 34.059105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256920, 35.735172, 34.526085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461227, 35.903946, 34.226463>,  <47.583813, 36.005211, 34.046692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461227, 35.903946, 34.226463>,  <47.256920, 35.735172, 34.526085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461227, 35.903946, 34.226463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748000, -0.647607, 0.145260,
		-0.423802, -0.634488, -0.646388,
		0.510771, 0.421937, -0.749054,
		47.614460, 36.030525, 34.001747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.872211, 35.205460, 34.478413>,  <47.256920, 35.735172, 34.526085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.872211, 35.205460, 34.478413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716251, 34.966110, 34.758392>,  <47.622673, 34.822502, 34.926380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716251, 34.966110, 34.758392>,  <47.872211, 35.205460, 34.478413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.716251, 34.966110, 34.758392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065255, 0.740238, 0.669170,
		-0.918541, 0.306586, -0.249574,
		-0.389902, -0.598375, 0.699946,
		47.599281, 34.786598, 34.968376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.340466, 40.223907, 41.144604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949890, 40.137699, 41.140396>,  <33.715546, 40.085972, 41.137871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949890, 40.137699, 41.140396>,  <34.340466, 40.223907, 41.144604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949890, 40.137699, 41.140396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079541, -0.314179, -0.946026,
		0.200585, -0.924576, 0.323921,
		-0.976442, -0.215524, -0.010523,
		33.656956, 40.073044, 41.137238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306252, 39.420918, 40.919353>,  <34.340466, 40.223907, 41.144604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306252, 39.420918, 40.919353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984859, 39.641201, 40.828896>,  <33.792023, 39.773373, 40.774620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984859, 39.641201, 40.828896>,  <34.306252, 39.420918, 40.919353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984859, 39.641201, 40.828896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024716, -0.410389, -0.911576,
		-0.594818, -0.726844, 0.343350,
		-0.803480, 0.550708, -0.226142,
		33.743816, 39.806412, 40.761051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904545, 38.825596, 40.663937>,  <34.306252, 39.420918, 40.919353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904545, 38.825596, 40.663937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770706, 39.178799, 40.532272>,  <33.690403, 39.390720, 40.453274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.770706, 39.178799, 40.532272>,  <33.904545, 38.825596, 40.663937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770706, 39.178799, 40.532272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290423, -0.428915, -0.855386,
		-0.896494, -0.190611, 0.399958,
		-0.334594, 0.883005, -0.329162,
		33.670326, 39.443699, 40.433525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396210, 38.481396, 40.217533>,  <33.904545, 38.825596, 40.663937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396210, 38.481396, 40.217533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446842, 38.861050, 40.102215>,  <33.477222, 39.088844, 40.033024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446842, 38.861050, 40.102215>,  <33.396210, 38.481396, 40.217533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446842, 38.861050, 40.102215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453838, -0.203015, -0.867649,
		-0.882048, 0.240664, 0.405059,
		0.126579, 0.949139, -0.288292,
		33.484818, 39.145790, 40.015728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832809, 38.476479, 39.757278>,  <33.396210, 38.481396, 40.217533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832809, 38.476479, 39.757278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053448, 38.801434, 39.681641>,  <33.185833, 38.996407, 39.636257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053448, 38.801434, 39.681641>,  <32.832809, 38.476479, 39.757278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053448, 38.801434, 39.681641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363868, 0.030368, -0.930956,
		-0.750558, 0.582321, 0.312354,
		0.551601, 0.812392, -0.189095,
		33.218929, 39.045151, 39.624912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330601, 38.987640, 39.369377>,  <32.832809, 38.476479, 39.757278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330601, 38.987640, 39.369377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717144, 39.047253, 39.285534>,  <32.949070, 39.083019, 39.235226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.717144, 39.047253, 39.285534>,  <32.330601, 38.987640, 39.369377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717144, 39.047253, 39.285534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204822, -0.046956, -0.977672,
		-0.155541, 0.987718, -0.014852,
		0.966362, 0.149027, -0.209610,
		33.007053, 39.091961, 39.222652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290897, 39.342564, 38.697182>,  <32.330601, 38.987640, 39.369377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290897, 39.342564, 38.697182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.662529, 39.195553, 38.713844>,  <32.885509, 39.107346, 38.723843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.662529, 39.195553, 38.713844>,  <32.290897, 39.342564, 38.697182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662529, 39.195553, 38.713844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015443, -0.151058, -0.988404,
		0.369554, 0.917664, -0.146021,
		0.929081, -0.367524, 0.041652,
		32.941254, 39.085297, 38.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705494, 39.599705, 38.195694>,  <32.290897, 39.342564, 38.697182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705494, 39.599705, 38.195694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.899761, 39.259403, 38.276031>,  <33.016323, 39.055222, 38.324234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.899761, 39.259403, 38.276031>,  <32.705494, 39.599705, 38.195694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899761, 39.259403, 38.276031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148762, -0.145972, -0.978040,
		0.861393, 0.504880, 0.055667,
		0.485667, -0.850758, 0.200846,
		33.045460, 39.004177, 38.336285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187511, 39.592754, 37.724178>,  <32.705494, 39.599705, 38.195694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187511, 39.592754, 37.724178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.158833, 39.210693, 37.839104>,  <33.141624, 38.981457, 37.908058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.158833, 39.210693, 37.839104>,  <33.187511, 39.592754, 37.724178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158833, 39.210693, 37.839104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101529, -0.293549, -0.950537,
		0.992246, -0.038980, 0.118022,
		-0.071697, -0.955149, 0.287315,
		33.137325, 38.924149, 37.925297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688854, 39.181644, 37.284805>,  <33.187511, 39.592754, 37.724178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688854, 39.181644, 37.284805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457111, 38.884190, 37.418282>,  <33.318066, 38.705719, 37.498367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457111, 38.884190, 37.418282>,  <33.688854, 39.181644, 37.284805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457111, 38.884190, 37.418282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135082, -0.491345, -0.860426,
		0.803801, -0.453420, 0.385116,
		-0.579359, -0.743634, 0.333694,
		33.283302, 38.661098, 37.518391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998341, 38.590981, 37.073895>,  <33.688854, 39.181644, 37.284805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998341, 38.590981, 37.073895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621799, 38.478241, 37.148090>,  <33.395874, 38.410595, 37.192608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621799, 38.478241, 37.148090>,  <33.998341, 38.590981, 37.073895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621799, 38.478241, 37.148090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009452, -0.571560, -0.820506,
		0.337282, -0.770635, 0.540705,
		-0.941356, -0.281852, 0.185493,
		33.339394, 38.393684, 37.203739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081779, 37.843281, 37.112785>,  <33.998341, 38.590981, 37.073895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081779, 37.843281, 37.112785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705128, 37.934978, 37.014175>,  <33.479137, 37.989998, 36.955009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705128, 37.934978, 37.014175>,  <34.081779, 37.843281, 37.112785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705128, 37.934978, 37.014175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014671, -0.703673, -0.710372,
		-0.336321, -0.672527, 0.659239,
		-0.941633, 0.229241, -0.246526,
		33.422638, 38.003750, 36.940216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689857, 37.210396, 37.054195>,  <34.081779, 37.843281, 37.112785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689857, 37.210396, 37.054195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489872, 37.486923, 36.845539>,  <33.369881, 37.652840, 36.720345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489872, 37.486923, 36.845539>,  <33.689857, 37.210396, 37.054195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489872, 37.486923, 36.845539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214939, -0.484429, -0.848016,
		-0.838949, -0.536100, 0.093606,
		-0.499967, 0.691322, -0.521639,
		33.339882, 37.694321, 36.689049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131187, 36.776810, 36.794800>,  <33.689857, 37.210396, 37.054195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131187, 36.776810, 36.794800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.174889, 37.116512, 36.588181>,  <33.201111, 37.320335, 36.464207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.174889, 37.116512, 36.588181>,  <33.131187, 36.776810, 36.794800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174889, 37.116512, 36.588181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088833, -0.525924, -0.845880,
		-0.990036, 0.046531, -0.132902,
		0.109256, 0.849258, -0.516551,
		33.207664, 37.371288, 36.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686600, 36.713905, 36.304070>,  <33.131187, 36.776810, 36.794800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686600, 36.713905, 36.304070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.943604, 36.986198, 36.163342>,  <33.097805, 37.149574, 36.078903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.943604, 36.986198, 36.163342>,  <32.686600, 36.713905, 36.304070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943604, 36.986198, 36.163342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219465, -0.603374, -0.766665,
		-0.734176, 0.415378, -0.537072,
		0.642511, 0.680735, -0.351822,
		33.136356, 37.190418, 36.057796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575535, 36.789639, 35.577389>,  <32.686600, 36.713905, 36.304070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575535, 36.789639, 35.577389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959946, 36.893333, 35.615791>,  <33.190594, 36.955551, 35.638832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959946, 36.893333, 35.615791>,  <32.575535, 36.789639, 35.577389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959946, 36.893333, 35.615791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233177, -0.573604, -0.785244,
		-0.148497, 0.777029, -0.611699,
		0.961029, 0.259240, 0.096007,
		33.248253, 36.971104, 35.644592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895138, 36.638794, 34.948357>,  <32.575535, 36.789639, 35.577389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895138, 36.638794, 34.948357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217922, 36.725788, 35.167995>,  <33.411594, 36.777985, 35.299778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217922, 36.725788, 35.167995>,  <32.895138, 36.638794, 34.948357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217922, 36.725788, 35.167995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589715, -0.347608, -0.728975,
		0.032330, 0.912069, -0.408761,
		0.806964, 0.217485, 0.549099,
		33.460011, 36.791035, 35.332726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307842, 37.021683, 34.515129>,  <32.895138, 36.638794, 34.948357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307842, 37.021683, 34.515129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539028, 36.882458, 34.810375>,  <33.677738, 36.798923, 34.987522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539028, 36.882458, 34.810375>,  <33.307842, 37.021683, 34.515129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539028, 36.882458, 34.810375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680561, -0.293544, -0.671318,
		0.450328, 0.890329, 0.067218,
		0.577963, -0.348059, 0.738115,
		33.712418, 36.778042, 35.031811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995358, 37.271164, 34.253460>,  <33.307842, 37.021683, 34.515129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995358, 37.271164, 34.253460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.023232, 36.961903, 34.505611>,  <34.039955, 36.776344, 34.656902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.023232, 36.961903, 34.505611>,  <33.995358, 37.271164, 34.253460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023232, 36.961903, 34.505611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729725, -0.391354, -0.560663,
		0.680180, 0.499074, 0.536918,
		0.069687, -0.773154, 0.630378,
		34.044136, 36.729958, 34.694725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684109, 37.203777, 34.354435>,  <33.995358, 37.271164, 34.253460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684109, 37.203777, 34.354435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.537025, 36.854996, 34.483734>,  <34.448776, 36.645725, 34.561314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.537025, 36.854996, 34.483734>,  <34.684109, 37.203777, 34.354435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537025, 36.854996, 34.483734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716032, -0.487264, -0.499871,
		0.593371, 0.047648, 0.803518,
		-0.367707, -0.871954, 0.323246,
		34.426712, 36.593410, 34.580708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333267, 36.800732, 34.512314>,  <34.684109, 37.203777, 34.354435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333267, 36.800732, 34.512314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034073, 36.545391, 34.439617>,  <34.854557, 36.392185, 34.396000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034073, 36.545391, 34.439617>,  <35.333267, 36.800732, 34.512314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034073, 36.545391, 34.439617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549776, -0.442489, -0.708484,
		0.371845, -0.629849, 0.681925,
		-0.747982, -0.638352, -0.181739,
		34.809677, 36.353886, 34.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651337, 36.168335, 34.253147>,  <35.333267, 36.800732, 34.512314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651337, 36.168335, 34.253147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282276, 36.109486, 34.110565>,  <35.060841, 36.074177, 34.025017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282276, 36.109486, 34.110565>,  <35.651337, 36.168335, 34.253147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282276, 36.109486, 34.110565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385628, -0.349870, -0.853746,
		0.000895, -0.925173, 0.379545,
		-0.922654, -0.147127, -0.356459,
		35.005482, 36.065346, 34.003628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298794, 36.453167, 34.099434>,  <35.651337, 36.168335, 34.253147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298794, 36.453167, 34.099434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673378, 36.334583, 34.174435>,  <36.898129, 36.263435, 34.219437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673378, 36.334583, 34.174435>,  <36.298794, 36.453167, 34.099434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673378, 36.334583, 34.174435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093770, 0.303521, 0.948199,
		-0.338012, -0.905532, 0.256437,
		0.936459, -0.296457, 0.187505,
		36.954315, 36.245647, 34.230686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270878, 35.963882, 34.635456>,  <36.298794, 36.453167, 34.099434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270878, 35.963882, 34.635456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635380, 36.128506, 34.641659>,  <36.854080, 36.227280, 34.645382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635380, 36.128506, 34.641659>,  <36.270878, 35.963882, 34.635456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635380, 36.128506, 34.641659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186732, 0.379303, 0.906234,
		0.367066, -0.828712, 0.422491,
		0.911260, 0.411540, 0.015518,
		36.908756, 36.251972, 34.646313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655258, 35.825428, 35.337708>,  <36.270878, 35.963882, 34.635456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655258, 35.825428, 35.337708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832478, 36.152935, 35.191650>,  <36.938808, 36.349438, 35.104015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832478, 36.152935, 35.191650>,  <36.655258, 35.825428, 35.337708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832478, 36.152935, 35.191650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084981, 0.443820, 0.892077,
		0.892460, -0.364205, 0.266214,
		0.443050, 0.818766, -0.365141,
		36.965393, 36.398563, 35.082108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008190, 35.952053, 35.906853>,  <36.655258, 35.825428, 35.337708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008190, 35.952053, 35.906853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025749, 36.273056, 35.668842>,  <37.036285, 36.465656, 35.526035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025749, 36.273056, 35.668842>,  <37.008190, 35.952053, 35.906853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025749, 36.273056, 35.668842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026888, 0.596333, 0.802287,
		0.998674, -0.019219, 0.047756,
		0.043898, 0.802507, -0.595025,
		37.038918, 36.513809, 35.490334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468071, 36.411587, 36.236290>,  <37.008190, 35.952053, 35.906853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468071, 36.411587, 36.236290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249107, 36.620235, 35.974525>,  <37.117729, 36.745422, 35.817467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249107, 36.620235, 35.974525>,  <37.468071, 36.411587, 36.236290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249107, 36.620235, 35.974525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185906, 0.686646, 0.702821,
		0.815954, 0.506390, -0.278905,
		-0.547410, 0.521619, -0.654412,
		37.084885, 36.776722, 35.778202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719891, 37.080215, 36.312061>,  <37.468071, 36.411587, 36.236290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719891, 37.080215, 36.312061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359112, 37.110420, 36.141983>,  <37.142643, 37.128544, 36.039936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359112, 37.110420, 36.141983>,  <37.719891, 37.080215, 36.312061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359112, 37.110420, 36.141983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168098, 0.845552, 0.506740,
		0.397785, 0.528527, -0.749951,
		-0.901948, 0.075508, -0.425192,
		37.088528, 37.133072, 36.014427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604733, 37.836212, 36.069874>,  <37.719891, 37.080215, 36.312061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604733, 37.836212, 36.069874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221951, 37.720993, 36.084148>,  <36.992283, 37.651859, 36.092712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221951, 37.720993, 36.084148>,  <37.604733, 37.836212, 36.069874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221951, 37.720993, 36.084148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183289, 0.695048, 0.695208,
		-0.225058, 0.658738, -0.717922,
		-0.956950, -0.288050, 0.035687,
		36.934864, 37.634579, 36.094856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190998, 38.503258, 35.970787>,  <37.604733, 37.836212, 36.069874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190998, 38.503258, 35.970787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013256, 38.209473, 36.175964>,  <36.906612, 38.033199, 36.299068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013256, 38.209473, 36.175964>,  <37.190998, 38.503258, 35.970787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013256, 38.209473, 36.175964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313602, 0.663876, 0.678913,
		-0.839167, 0.140820, -0.525327,
		-0.444357, -0.734465, 0.512941,
		36.879948, 37.989132, 36.329845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579048, 38.832623, 36.301414>,  <37.190998, 38.503258, 35.970787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579048, 38.832623, 36.301414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599392, 38.467091, 36.462570>,  <36.611599, 38.247772, 36.559265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599392, 38.467091, 36.462570>,  <36.579048, 38.832623, 36.301414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599392, 38.467091, 36.462570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131074, 0.393816, 0.909796,
		-0.990067, -0.099082, -0.099749,
		0.050862, -0.913834, 0.402891,
		36.614651, 38.192940, 36.583439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047791, 38.847073, 36.736324>,  <36.579048, 38.832623, 36.301414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047791, 38.847073, 36.736324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295963, 38.560299, 36.863487>,  <36.444866, 38.388233, 36.939785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295963, 38.560299, 36.863487>,  <36.047791, 38.847073, 36.736324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295963, 38.560299, 36.863487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121337, 0.312725, 0.942062,
		-0.774818, -0.623059, 0.107033,
		0.620431, -0.716939, 0.317905,
		36.482094, 38.345219, 36.958858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714191, 38.491192, 37.321541>,  <36.047791, 38.847073, 36.736324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714191, 38.491192, 37.321541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103481, 38.402897, 37.347164>,  <36.337055, 38.349918, 37.362537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103481, 38.402897, 37.347164>,  <35.714191, 38.491192, 37.321541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103481, 38.402897, 37.347164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008077, 0.245703, 0.969311,
		-0.229703, -0.943878, 0.237342,
		0.973227, -0.220737, 0.064062,
		36.395451, 38.336678, 37.366383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753162, 38.021980, 37.782642>,  <35.714191, 38.491192, 37.321541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753162, 38.021980, 37.782642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121815, 38.177017, 37.775047>,  <36.343006, 38.270039, 37.770493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121815, 38.177017, 37.775047>,  <35.753162, 38.021980, 37.782642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121815, 38.177017, 37.775047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023865, 0.105440, 0.994139,
		0.387326, -0.915780, 0.106427,
		0.921634, 0.387596, -0.018985,
		36.398304, 38.293297, 37.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234196, 37.647530, 38.248180>,  <35.753162, 38.021980, 37.782642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234196, 37.647530, 38.248180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384739, 38.016968, 38.219009>,  <36.475067, 38.238632, 38.201508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384739, 38.016968, 38.219009>,  <36.234196, 37.647530, 38.248180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384739, 38.016968, 38.219009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013164, 0.073374, 0.997218,
		0.926379, -0.376275, 0.015457,
		0.376362, 0.923598, -0.072925,
		36.497646, 38.294048, 38.197132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580921, 37.734730, 38.819248>,  <36.234196, 37.647530, 38.248180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580921, 37.734730, 38.819248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584377, 38.104412, 38.666531>,  <36.586452, 38.326221, 38.574902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584377, 38.104412, 38.666531>,  <36.580921, 37.734730, 38.819248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584377, 38.104412, 38.666531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087880, 0.379628, 0.920956,
		0.996094, -0.041512, -0.077938,
		0.008643, 0.924208, -0.381793,
		36.586971, 38.381676, 38.551994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235878, 38.045620, 39.136948>,  <36.580921, 37.734730, 38.819248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235878, 38.045620, 39.136948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968510, 38.323402, 39.030407>,  <36.808090, 38.490074, 38.966484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968510, 38.323402, 39.030407>,  <37.235878, 38.045620, 39.136948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968510, 38.323402, 39.030407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003925, 0.354800, 0.934934,
		0.743774, 0.625974, -0.234430,
		-0.668420, 0.694459, -0.266348,
		36.767982, 38.531738, 38.950504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294815, 38.456680, 39.592381>,  <37.235878, 38.045620, 39.136948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294815, 38.456680, 39.592381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961712, 38.628075, 39.452145>,  <36.761848, 38.730911, 39.368004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961712, 38.628075, 39.452145>,  <37.294815, 38.456680, 39.592381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961712, 38.628075, 39.452145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206878, 0.346547, 0.914936,
		0.513532, 0.834450, -0.199946,
		-0.832758, 0.428484, -0.350592,
		36.711884, 38.756618, 39.346966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272709, 39.071987, 39.916798>,  <37.294815, 38.456680, 39.592381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272709, 39.071987, 39.916798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890255, 38.988087, 39.835003>,  <36.660782, 38.937748, 39.785927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890255, 38.988087, 39.835003>,  <37.272709, 39.071987, 39.916798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890255, 38.988087, 39.835003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262923, 0.306707, 0.914769,
		-0.129153, 0.928406, -0.348400,
		-0.956133, -0.209747, -0.204488,
		36.603416, 38.925163, 39.773655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849216, 39.752480, 40.129112>,  <37.272709, 39.071987, 39.916798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849216, 39.752480, 40.129112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584808, 39.452442, 40.120953>,  <36.426163, 39.272419, 40.116058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584808, 39.452442, 40.120953>,  <36.849216, 39.752480, 40.129112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584808, 39.452442, 40.120953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330371, 0.266514, 0.905442,
		-0.673730, 0.605252, -0.423980,
		-0.661017, -0.750094, -0.020399,
		36.386505, 39.227413, 40.114834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.158562, 40.110016, 40.173176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162521, 39.731365, 40.302052>,  <36.164898, 39.504177, 40.379379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162521, 39.731365, 40.302052>,  <36.158562, 40.110016, 40.173176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162521, 39.731365, 40.302052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141778, 0.317624, 0.937557,
		-0.989849, -0.054965, -0.131064,
		0.009903, -0.946622, 0.322193,
		36.165493, 39.447380, 40.398708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483353, 40.021465, 40.621086>,  <36.158562, 40.110016, 40.173176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483353, 40.021465, 40.621086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650368, 39.682816, 40.753078>,  <35.750576, 39.479626, 40.832275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650368, 39.682816, 40.753078>,  <35.483353, 40.021465, 40.621086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650368, 39.682816, 40.753078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280938, 0.225083, 0.932959,
		-0.864141, -0.482246, -0.143870,
		0.417533, -0.846627, 0.329984,
		35.775627, 39.428829, 40.852074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992115, 39.705498, 41.066738>,  <35.483353, 40.021465, 40.621086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992115, 39.705498, 41.066738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348812, 39.561226, 41.176075>,  <35.562828, 39.474663, 41.241676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348812, 39.561226, 41.176075>,  <34.992115, 39.705498, 41.066738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348812, 39.561226, 41.176075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162501, 0.308513, 0.937237,
		-0.422370, -0.880188, 0.216502,
		0.891738, -0.360679, 0.273338,
		35.616333, 39.453022, 41.258076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841709, 39.323307, 41.736938>,  <34.992115, 39.705498, 41.066738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841709, 39.323307, 41.736938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232746, 39.406490, 41.723858>,  <35.467369, 39.456398, 41.716011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232746, 39.406490, 41.723858>,  <34.841709, 39.323307, 41.736938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232746, 39.406490, 41.723858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040007, 0.336033, 0.941000,
		0.206672, -0.918606, 0.336823,
		0.977592, 0.207954, -0.032698,
		35.526024, 39.468876, 41.714050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038353, 39.145088, 42.458076>,  <34.841709, 39.323307, 41.736938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038353, 39.145088, 42.458076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329880, 39.371941, 42.304615>,  <35.504795, 39.508053, 42.212536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329880, 39.371941, 42.304615>,  <35.038353, 39.145088, 42.458076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329880, 39.371941, 42.304615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138750, 0.426369, 0.893845,
		0.670502, -0.704682, 0.232056,
		0.728818, 0.567127, -0.383656,
		35.548527, 39.542080, 42.189518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662373, 39.091469, 42.903664>,  <35.038353, 39.145088, 42.458076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662373, 39.091469, 42.903664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718548, 39.436958, 42.710064>,  <35.752254, 39.644253, 42.593906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718548, 39.436958, 42.710064>,  <35.662373, 39.091469, 42.903664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718548, 39.436958, 42.710064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175690, 0.459343, 0.870710,
		0.974377, -0.207316, -0.087238,
		0.140440, 0.863727, -0.483996,
		35.760681, 39.696075, 42.564865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338295, 39.358753, 43.138138>,  <35.662373, 39.091469, 42.903664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338295, 39.358753, 43.138138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121891, 39.653175, 42.975399>,  <35.992046, 39.829830, 42.877758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121891, 39.653175, 42.975399>,  <36.338295, 39.358753, 43.138138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121891, 39.653175, 42.975399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110870, 0.541954, 0.833063,
		0.833673, 0.405592, -0.374812,
		-0.541015, 0.736058, -0.406845,
		35.959587, 39.873993, 42.853344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471497, 39.886101, 43.469505>,  <36.338295, 39.358753, 43.138138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471497, 39.886101, 43.469505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135132, 40.032375, 43.309933>,  <35.933315, 40.120140, 43.214191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135132, 40.032375, 43.309933>,  <36.471497, 39.886101, 43.469505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135132, 40.032375, 43.309933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139903, 0.565196, 0.813007,
		0.522780, 0.739477, -0.424118,
		-0.840909, 0.365688, -0.398928,
		35.882858, 40.142082, 43.190254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567314, 40.595745, 43.313004>,  <36.471497, 39.886101, 43.469505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567314, 40.595745, 43.313004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172745, 40.540668, 43.348789>,  <35.936001, 40.507622, 43.370262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172745, 40.540668, 43.348789>,  <36.567314, 40.595745, 43.313004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172745, 40.540668, 43.348789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042620, 0.740876, 0.670288,
		-0.158575, 0.657377, -0.736688,
		-0.986427, -0.137688, 0.089467,
		35.876816, 40.499363, 43.375629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297394, 41.236919, 43.242889>,  <36.567314, 40.595745, 43.313004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297394, 41.236919, 43.242889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984516, 41.025429, 43.374722>,  <35.796791, 40.898533, 43.453819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984516, 41.025429, 43.374722>,  <36.297394, 41.236919, 43.242889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984516, 41.025429, 43.374722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272897, 0.766290, 0.581659,
		-0.560094, 0.365026, -0.743673,
		-0.782190, -0.528730, 0.329580,
		35.749859, 40.866810, 43.473595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633312, 41.677475, 43.182026>,  <36.297394, 41.236919, 43.242889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633312, 41.677475, 43.182026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549191, 41.399696, 43.457275>,  <35.498718, 41.233028, 43.622425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549191, 41.399696, 43.457275>,  <35.633312, 41.677475, 43.182026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549191, 41.399696, 43.457275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201133, 0.719542, 0.664684,
		-0.956721, 0.001385, -0.291002,
		-0.210309, -0.694447, 0.688123,
		35.486099, 41.191360, 43.663712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878860, 41.771805, 43.501434>,  <35.633312, 41.677475, 43.182026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878860, 41.771805, 43.501434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097115, 41.557877, 43.759506>,  <35.228065, 41.429520, 43.914349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097115, 41.557877, 43.759506>,  <34.878860, 41.771805, 43.501434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097115, 41.557877, 43.759506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450984, 0.461495, 0.763961,
		-0.706325, -0.707808, 0.010614,
		0.545635, -0.534818, 0.645176,
		35.260807, 41.397430, 43.953060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409870, 41.463898, 44.039463>,  <34.878860, 41.771805, 43.501434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409870, 41.463898, 44.039463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766739, 41.461731, 44.220127>,  <34.980862, 41.460430, 44.328526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766739, 41.461731, 44.220127>,  <34.409870, 41.463898, 44.039463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766739, 41.461731, 44.220127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423081, 0.340202, 0.839800,
		-0.158201, -0.940337, 0.301230,
		0.892174, -0.005413, 0.451660,
		35.034389, 41.460106, 44.355625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348881, 41.265579, 44.744961>,  <34.409870, 41.463898, 44.039463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348881, 41.265579, 44.744961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720203, 41.402756, 44.802414>,  <34.942997, 41.485062, 44.836887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720203, 41.402756, 44.802414>,  <34.348881, 41.265579, 44.744961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720203, 41.402756, 44.802414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216373, 0.184125, 0.958791,
		0.302362, -0.921135, 0.245128,
		0.928310, 0.342942, 0.143637,
		34.998695, 41.505638, 44.845505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588005, 40.947960, 45.312546>,  <34.348881, 41.265579, 44.744961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588005, 40.947960, 45.312546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825157, 41.269146, 45.288086>,  <34.967449, 41.461857, 45.273411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825157, 41.269146, 45.288086>,  <34.588005, 40.947960, 45.312546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825157, 41.269146, 45.288086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150492, 0.185071, 0.971134,
		0.791105, -0.566562, 0.230565,
		0.592878, 0.802967, -0.061147,
		35.003021, 41.510036, 45.269741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044018, 40.939232, 45.974556>,  <34.588005, 40.947960, 45.312546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044018, 40.939232, 45.974556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064766, 41.305161, 45.814350>,  <35.077217, 41.524719, 45.718227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064766, 41.305161, 45.814350>,  <35.044018, 40.939232, 45.974556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064766, 41.305161, 45.814350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099950, 0.403798, 0.909372,
		0.993639, -0.007142, 0.112383,
		0.051875, 0.914820, -0.400515,
		35.080330, 41.579605, 45.694195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548271, 41.260433, 46.295826>,  <35.044018, 40.939232, 45.974556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548271, 41.260433, 46.295826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338589, 41.555485, 46.125595>,  <35.212780, 41.732517, 46.023457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338589, 41.555485, 46.125595>,  <35.548271, 41.260433, 46.295826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338589, 41.555485, 46.125595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014350, 0.492016, 0.870468,
		0.851471, 0.462411, -0.247332,
		-0.524205, 0.737629, -0.425573,
		35.181328, 41.776772, 45.997925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826298, 41.870785, 46.572731>,  <35.548271, 41.260433, 46.295826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826298, 41.870785, 46.572731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476002, 42.004276, 46.433189>,  <35.265823, 42.084370, 46.349464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476002, 42.004276, 46.433189>,  <35.826298, 41.870785, 46.572731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476002, 42.004276, 46.433189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118559, 0.551804, 0.825504,
		0.467992, 0.764289, -0.443672,
		-0.875744, 0.333728, -0.348853,
		35.213280, 42.104393, 46.328533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840702, 42.569313, 46.844540>,  <35.826298, 41.870785, 46.572731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840702, 42.569313, 46.844540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461796, 42.471149, 46.762108>,  <35.234451, 42.412251, 46.712646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461796, 42.471149, 46.762108>,  <35.840702, 42.569313, 46.844540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461796, 42.471149, 46.762108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306179, 0.503252, 0.808079,
		-0.094596, 0.828561, -0.551850,
		-0.947262, -0.245406, -0.206082,
		35.177616, 42.397526, 46.700283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471085, 43.130859, 47.066986>,  <35.840702, 42.569313, 46.844540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471085, 43.130859, 47.066986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220062, 42.819515, 47.059685>,  <35.069450, 42.632710, 47.055302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220062, 42.819515, 47.059685>,  <35.471085, 43.130859, 47.066986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220062, 42.819515, 47.059685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473971, 0.363330, 0.802086,
		-0.617676, 0.512007, -0.596929,
		-0.627557, -0.778357, -0.018256,
		35.031796, 42.586010, 47.054207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055634, 43.374832, 47.472885>,  <35.471085, 43.130859, 47.066986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055634, 43.374832, 47.472885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937786, 42.994331, 47.509380>,  <34.867077, 42.766033, 47.531277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937786, 42.994331, 47.509380>,  <35.055634, 43.374832, 47.472885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937786, 42.994331, 47.509380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585134, 0.255059, 0.769781,
		-0.755525, 0.173404, -0.631754,
		-0.294618, -0.951250, 0.091240,
		34.849400, 42.708958, 47.536751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401375, 43.406437, 47.733219>,  <35.055634, 43.374832, 47.472885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401375, 43.406437, 47.733219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489315, 43.025818, 47.819214>,  <34.542080, 42.797447, 47.870811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489315, 43.025818, 47.819214>,  <34.401375, 43.406437, 47.733219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489315, 43.025818, 47.819214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369685, 0.122678, 0.921023,
		-0.902773, -0.281963, -0.324803,
		0.219849, -0.951550, 0.214988,
		34.555271, 42.740353, 47.883709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194881, 43.473675, 48.460014>,  <34.401375, 43.406437, 47.733219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194881, 43.473675, 48.460014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.317257, 43.106758, 48.358044>,  <34.390682, 42.886608, 48.296864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.317257, 43.106758, 48.358044>,  <34.194881, 43.473675, 48.460014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317257, 43.106758, 48.358044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126207, -0.304473, 0.944123,
		-0.943650, -0.256666, -0.208917,
		0.305934, -0.917288, -0.254923,
		34.409039, 42.831570, 48.281567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521950, 43.119499, 48.617100>,  <34.194881, 43.473675, 48.460014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521950, 43.119499, 48.617100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189140, 42.947277, 48.757015>,  <32.989452, 42.843945, 48.840965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189140, 42.947277, 48.757015>,  <33.521950, 43.119499, 48.617100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189140, 42.947277, 48.757015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238076, -0.292389, -0.926190,
		0.501052, -0.853891, 0.140771,
		-0.832026, -0.430556, 0.349793,
		32.939533, 42.818111, 48.861954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471298, 42.480034, 48.334934>,  <33.521950, 43.119499, 48.617100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471298, 42.480034, 48.334934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112591, 42.613663, 48.451012>,  <32.897366, 42.693840, 48.520657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112591, 42.613663, 48.451012>,  <33.471298, 42.480034, 48.334934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112591, 42.613663, 48.451012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405252, -0.356639, -0.841771,
		-0.177718, -0.872471, 0.455204,
		-0.896765, 0.334070, 0.290190,
		32.843563, 42.713882, 48.538067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054642, 41.877106, 48.232174>,  <33.471298, 42.480034, 48.334934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054642, 41.877106, 48.232174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.814640, 42.196945, 48.222065>,  <32.670639, 42.388847, 48.216000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.814640, 42.196945, 48.222065>,  <33.054642, 41.877106, 48.232174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814640, 42.196945, 48.222065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465972, -0.374984, -0.801409,
		-0.650282, -0.469072, 0.597582,
		-0.600003, 0.799599, -0.025271,
		32.634640, 42.436825, 48.214485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448872, 41.563358, 48.152199>,  <33.054642, 41.877106, 48.232174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448872, 41.563358, 48.152199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431450, 41.947247, 48.041168>,  <32.420998, 42.177578, 47.974552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431450, 41.947247, 48.041168>,  <32.448872, 41.563358, 48.152199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431450, 41.947247, 48.041168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453148, -0.266591, -0.850639,
		-0.890371, 0.088733, 0.446505,
		-0.043554, 0.959716, -0.277574,
		32.418385, 42.235161, 47.957897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749201, 41.693947, 47.928864>,  <32.448872, 41.563358, 48.152199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749201, 41.693947, 47.928864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001602, 41.961788, 47.772163>,  <32.153042, 42.122494, 47.678143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001602, 41.961788, 47.772163>,  <31.749201, 41.693947, 47.928864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001602, 41.961788, 47.772163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316521, -0.238824, -0.918029,
		-0.708274, 0.703276, 0.061244,
		0.631001, 0.669601, -0.391754,
		32.190903, 42.162670, 47.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344461, 41.952385, 47.393719>,  <31.749201, 41.693947, 47.928864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344461, 41.952385, 47.393719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718863, 42.069004, 47.314831>,  <31.943504, 42.138977, 47.267498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718863, 42.069004, 47.314831>,  <31.344461, 41.952385, 47.393719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718863, 42.069004, 47.314831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140590, -0.204006, -0.968822,
		-0.322694, 0.934548, -0.149961,
		0.936004, 0.291550, -0.197220,
		31.999664, 42.156467, 47.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388916, 42.507450, 46.861427>,  <31.344461, 41.952385, 47.393719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388916, 42.507450, 46.861427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739109, 42.317387, 46.826206>,  <31.949224, 42.203350, 46.805073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739109, 42.317387, 46.826206>,  <31.388916, 42.507450, 46.861427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739109, 42.317387, 46.826206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125961, -0.048459, -0.990851,
		0.466542, 0.878566, -0.102276,
		0.875484, -0.475156, -0.088057,
		32.001755, 42.174839, 46.799789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678135, 42.692249, 46.211533>,  <31.388916, 42.507450, 46.861427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678135, 42.692249, 46.211533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.909985, 42.373249, 46.278492>,  <32.049095, 42.181847, 46.318668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.909985, 42.373249, 46.278492>,  <31.678135, 42.692249, 46.211533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909985, 42.373249, 46.278492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037003, -0.179455, -0.983070,
		0.814044, 0.576005, -0.074507,
		0.579624, -0.797505, 0.167398,
		32.083870, 42.133999, 46.328712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077435, 42.653149, 45.507965>,  <31.678135, 42.692249, 46.211533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077435, 42.653149, 45.507965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185959, 42.321644, 45.703735>,  <32.251072, 42.122742, 45.821198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.185959, 42.321644, 45.703735>,  <32.077435, 42.653149, 45.507965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185959, 42.321644, 45.703735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278577, -0.419120, -0.864137,
		0.921296, 0.370792, 0.117164,
		0.271310, -0.828765, 0.489428,
		32.267353, 42.073013, 45.850563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769161, 42.477715, 45.291016>,  <32.077435, 42.653149, 45.507965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769161, 42.477715, 45.291016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615181, 42.132633, 45.422199>,  <32.522793, 41.925583, 45.500908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615181, 42.132633, 45.422199>,  <32.769161, 42.477715, 45.291016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615181, 42.132633, 45.422199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228009, -0.433218, -0.871971,
		0.894331, -0.260886, 0.363471,
		-0.384948, -0.862705, 0.327956,
		32.499695, 41.873821, 45.520584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246487, 42.039890, 45.073895>,  <32.769161, 42.477715, 45.291016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246487, 42.039890, 45.073895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935089, 41.796436, 45.135227>,  <32.748249, 41.650364, 45.172028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935089, 41.796436, 45.135227>,  <33.246487, 42.039890, 45.073895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935089, 41.796436, 45.135227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184914, -0.455850, -0.870636,
		0.599797, -0.649432, 0.467421,
		-0.778493, -0.608638, 0.153328,
		32.701542, 41.613846, 45.181225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475842, 41.364643, 45.073895>,  <33.246487, 42.039890, 45.073895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475842, 41.364643, 45.073895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091190, 41.361317, 44.964203>,  <32.860401, 41.359322, 44.898388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091190, 41.361317, 44.964203>,  <33.475842, 41.364643, 45.073895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091190, 41.361317, 44.964203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236455, -0.532057, -0.813021,
		-0.139144, -0.846667, 0.513608,
		-0.961628, -0.008319, -0.274231,
		32.802704, 41.358822, 44.881935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361523, 40.690510, 44.839443>,  <33.475842, 41.364643, 45.073895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361523, 40.690510, 44.839443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067310, 40.898434, 44.665642>,  <32.890781, 41.023186, 44.561363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067310, 40.898434, 44.665642>,  <33.361523, 40.690510, 44.839443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067310, 40.898434, 44.665642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158623, -0.491381, -0.856378,
		-0.658657, -0.698816, 0.278974,
		-0.735534, 0.519808, -0.434500,
		32.846649, 41.054375, 44.535294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069317, 40.185257, 44.482498>,  <33.361523, 40.690510, 44.839443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069317, 40.185257, 44.482498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906399, 40.507004, 44.309475>,  <32.808647, 40.700050, 44.205662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906399, 40.507004, 44.309475>,  <33.069317, 40.185257, 44.482498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906399, 40.507004, 44.309475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044231, -0.490439, -0.870353,
		-0.912224, -0.335359, 0.235332,
		-0.407297, 0.804366, -0.432557,
		32.784210, 40.748314, 44.179707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579472, 39.832481, 44.000401>,  <33.069317, 40.185257, 44.482498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579472, 39.832481, 44.000401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.656082, 40.210667, 43.895012>,  <32.702049, 40.437576, 43.831779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.656082, 40.210667, 43.895012>,  <32.579472, 39.832481, 44.000401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656082, 40.210667, 43.895012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164572, -0.295572, -0.941038,
		-0.967592, 0.136875, -0.212207,
		0.191527, 0.945464, -0.263467,
		32.713539, 40.494305, 43.815971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146126, 39.937691, 43.443802>,  <32.579472, 39.832481, 44.000401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146126, 39.937691, 43.443802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.418018, 40.229137, 43.410141>,  <32.581154, 40.404007, 43.389946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.418018, 40.229137, 43.410141>,  <32.146126, 39.937691, 43.443802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418018, 40.229137, 43.410141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136529, -0.238421, -0.961517,
		-0.720644, 0.642082, -0.261539,
		0.679729, 0.728619, -0.084154,
		32.621937, 40.447723, 43.384895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032391, 40.173344, 42.806358>,  <32.146126, 39.937691, 43.443802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032391, 40.173344, 42.806358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.396679, 40.330158, 42.858368>,  <32.615250, 40.424248, 42.889572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.396679, 40.330158, 42.858368>,  <32.032391, 40.173344, 42.806358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396679, 40.330158, 42.858368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144898, -0.008456, -0.989410,
		-0.386782, 0.919912, -0.064506,
		0.910716, 0.392033, 0.130023,
		32.669895, 40.447769, 42.897373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081142, 40.695763, 42.344116>,  <32.032391, 40.173344, 42.806358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081142, 40.695763, 42.344116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463684, 40.610973, 42.424568>,  <32.693211, 40.560101, 42.472839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463684, 40.610973, 42.424568>,  <32.081142, 40.695763, 42.344116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463684, 40.610973, 42.424568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208916, 0.014746, -0.977822,
		0.204306, 0.977164, 0.058387,
		0.956354, -0.211973, 0.201133,
		32.750591, 40.547382, 42.484909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515976, 41.190430, 41.945477>,  <32.081142, 40.695763, 42.344116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515976, 41.190430, 41.945477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742428, 40.869167, 42.019699>,  <32.878300, 40.676411, 42.064232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742428, 40.869167, 42.019699>,  <32.515976, 41.190430, 41.945477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742428, 40.869167, 42.019699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242151, -0.053128, -0.968783,
		0.787945, 0.593391, 0.164409,
		0.566132, -0.803159, 0.185552,
		32.912266, 40.628220, 42.075363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095600, 41.331257, 41.516205>,  <32.515976, 41.190430, 41.945477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095600, 41.331257, 41.516205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148026, 40.952950, 41.635098>,  <33.179482, 40.725964, 41.706432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148026, 40.952950, 41.635098>,  <33.095600, 41.331257, 41.516205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148026, 40.952950, 41.635098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064381, -0.291063, -0.954535,
		0.989282, 0.144238, 0.022742,
		0.131061, -0.945768, 0.297229,
		33.187344, 40.669220, 41.724266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672375, 41.083996, 41.205502>,  <33.095600, 41.331257, 41.516205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672375, 41.083996, 41.205502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486115, 40.741074, 41.293308>,  <33.374359, 40.535320, 41.345993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486115, 40.741074, 41.293308>,  <33.672375, 41.083996, 41.205502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486115, 40.741074, 41.293308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223011, -0.353726, -0.908374,
		0.856407, -0.374032, 0.355903,
		-0.465654, -0.857309, 0.219520,
		33.346420, 40.483883, 41.359165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.093525, 26.895123, 29.824429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706959, 26.794170, 29.843801>,  <42.475018, 26.733599, 29.855425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706959, 26.794170, 29.843801>,  <43.093525, 26.895123, 29.824429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706959, 26.794170, 29.843801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256986, 0.948617, -0.184617,
		0.000650, -0.190863, -0.981617,
		-0.966415, -0.252382, 0.048432,
		42.417034, 26.718456, 29.858332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813240, 27.227581, 29.233446>,  <43.093525, 26.895123, 29.824429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813240, 27.227581, 29.233446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593765, 27.168015, 29.562508>,  <42.462078, 27.132275, 29.759945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593765, 27.168015, 29.562508>,  <42.813240, 27.227581, 29.233446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593765, 27.168015, 29.562508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073216, 0.988787, 0.130157,
		-0.832813, 0.011184, -0.553441,
		-0.548691, -0.148917, 0.822656,
		42.429157, 27.123339, 29.809305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314804, 27.668921, 29.199293>,  <42.813240, 27.227581, 29.233446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314804, 27.668921, 29.199293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267513, 27.554604, 29.579681>,  <42.239140, 27.486013, 29.807915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267513, 27.554604, 29.579681>,  <42.314804, 27.668921, 29.199293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267513, 27.554604, 29.579681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036280, 0.955805, 0.291754,
		-0.992323, 0.068995, -0.102636,
		-0.118230, -0.285790, 0.950971,
		42.232044, 27.468866, 29.864973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890846, 28.182016, 29.488058>,  <42.314804, 27.668921, 29.199293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890846, 28.182016, 29.488058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028294, 28.019037, 29.826504>,  <42.110764, 27.921249, 30.029572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028294, 28.019037, 29.826504>,  <41.890846, 28.182016, 29.488058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028294, 28.019037, 29.826504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333427, 0.789346, 0.515518,
		-0.877925, -0.459260, 0.135381,
		0.343620, -0.407446, 0.846116,
		42.131378, 27.896803, 30.080339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285286, 28.179110, 29.901960>,  <41.890846, 28.182016, 29.488058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285286, 28.179110, 29.901960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.622700, 28.168509, 30.116526>,  <41.825150, 28.162148, 30.245266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.622700, 28.168509, 30.116526>,  <41.285286, 28.179110, 29.901960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622700, 28.168509, 30.116526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242964, 0.871902, 0.425153,
		-0.478970, -0.488962, 0.729043,
		0.843538, -0.026504, 0.536415,
		41.875763, 28.160557, 30.277451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069748, 28.233166, 30.662363>,  <41.285286, 28.179110, 29.901960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069748, 28.233166, 30.662363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.441219, 28.354185, 30.576559>,  <41.664104, 28.426796, 30.525078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.441219, 28.354185, 30.576559>,  <41.069748, 28.233166, 30.662363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441219, 28.354185, 30.576559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169546, 0.860740, 0.479980,
		0.329852, -0.409380, 0.850650,
		0.928683, 0.302547, -0.214508,
		41.719826, 28.444948, 30.512207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179195, 28.598433, 31.182037>,  <41.069748, 28.233166, 30.662363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179195, 28.598433, 31.182037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489208, 28.710215, 30.955326>,  <41.675217, 28.777283, 30.819300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.489208, 28.710215, 30.955326>,  <41.179195, 28.598433, 31.182037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489208, 28.710215, 30.955326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027293, 0.910870, 0.411790,
		0.631335, -0.303680, 0.713578,
		0.775030, 0.279453, -0.566776,
		41.721718, 28.794050, 30.785294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681507, 28.816181, 31.607428>,  <41.179195, 28.598433, 31.182037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681507, 28.816181, 31.607428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780308, 28.991005, 31.261488>,  <41.839588, 29.095900, 31.053925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780308, 28.991005, 31.261488>,  <41.681507, 28.816181, 31.607428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780308, 28.991005, 31.261488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223425, 0.842771, 0.489712,
		0.942905, -0.314191, 0.110519,
		0.247006, 0.437059, -0.864851,
		41.854408, 29.122122, 31.002033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290489, 29.094236, 31.724771>,  <41.681507, 28.816181, 31.607428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290489, 29.094236, 31.724771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.173515, 29.289595, 31.395906>,  <42.103333, 29.406811, 31.198587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.173515, 29.289595, 31.395906>,  <42.290489, 29.094236, 31.724771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173515, 29.289595, 31.395906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288836, 0.864702, 0.410931,
		0.911622, -0.117299, -0.393936,
		-0.292435, 0.488397, -0.822162,
		42.085785, 29.436113, 31.149258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845158, 29.616734, 31.548441>,  <42.290489, 29.094236, 31.724771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845158, 29.616734, 31.548441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492310, 29.736944, 31.403362>,  <42.280602, 29.809071, 31.316315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492310, 29.736944, 31.403362>,  <42.845158, 29.616734, 31.548441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492310, 29.736944, 31.403362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208661, 0.939660, 0.271108,
		0.422285, 0.163469, -0.891602,
		-0.882120, 0.300528, -0.362695,
		42.227673, 29.827103, 31.294554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046055, 30.235645, 31.466198>,  <42.845158, 29.616734, 31.548441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046055, 30.235645, 31.466198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651917, 30.249132, 31.399323>,  <42.415432, 30.257225, 31.359198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651917, 30.249132, 31.399323>,  <43.046055, 30.235645, 31.466198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651917, 30.249132, 31.399323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004614, 0.974633, 0.223760,
		0.170490, 0.221253, -0.960198,
		-0.985349, 0.033718, -0.167186,
		42.356312, 30.259247, 31.349167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938751, 30.896358, 31.176500>,  <43.046055, 30.235645, 31.466198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938751, 30.896358, 31.176500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585098, 30.774960, 31.318598>,  <42.372906, 30.702120, 31.403856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585098, 30.774960, 31.318598>,  <42.938751, 30.896358, 31.176500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585098, 30.774960, 31.318598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226258, 0.943323, 0.242796,
		-0.408798, 0.134287, -0.902691,
		-0.884133, -0.303496, 0.355245,
		42.319859, 30.683910, 31.425171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376816, 31.315323, 30.895416>,  <42.938751, 30.896358, 31.176500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376816, 31.315323, 30.895416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259754, 31.174337, 31.250971>,  <42.189518, 31.089746, 31.464304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259754, 31.174337, 31.250971>,  <42.376816, 31.315323, 30.895416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259754, 31.174337, 31.250971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336939, 0.907977, 0.249098,
		-0.894888, -0.226601, -0.384483,
		-0.292656, -0.352462, 0.888888,
		42.171959, 31.068598, 31.517637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784882, 31.690058, 31.183371>,  <42.376816, 31.315323, 30.895416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784882, 31.690058, 31.183371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863800, 31.510071, 31.531761>,  <41.911152, 31.402079, 31.740795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863800, 31.510071, 31.531761>,  <41.784882, 31.690058, 31.183371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863800, 31.510071, 31.531761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135211, 0.867461, 0.478779,
		-0.970974, -0.212228, 0.110308,
		0.197298, -0.449968, 0.870978,
		41.922989, 31.375080, 31.793055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302265, 31.866203, 31.606630>,  <41.784882, 31.690058, 31.183371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302265, 31.866203, 31.606630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588833, 31.744534, 31.857779>,  <41.760773, 31.671532, 32.008469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588833, 31.744534, 31.857779>,  <41.302265, 31.866203, 31.606630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588833, 31.744534, 31.857779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290007, 0.688678, 0.664544,
		-0.634538, -0.658179, 0.405169,
		0.716420, -0.304177, 0.627869,
		41.803761, 31.653280, 32.046139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008808, 31.771296, 32.269215>,  <41.302265, 31.866203, 31.606630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008808, 31.771296, 32.269215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.395065, 31.796196, 32.370144>,  <41.626820, 31.811136, 32.430702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.395065, 31.796196, 32.370144>,  <41.008808, 31.771296, 32.269215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395065, 31.796196, 32.370144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237160, 0.608130, 0.757584,
		-0.106283, -0.791393, 0.601997,
		0.965639, 0.062251, 0.252321,
		41.684757, 31.814871, 32.445839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965176, 31.827665, 33.008102>,  <41.008808, 31.771296, 32.269215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965176, 31.827665, 33.008102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.329132, 31.957239, 32.904434>,  <41.547504, 32.034985, 32.842232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.329132, 31.957239, 32.904434>,  <40.965176, 31.827665, 33.008102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329132, 31.957239, 32.904434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115932, 0.798384, 0.590884,
		0.398326, -0.507592, 0.763994,
		0.909888, 0.323936, -0.259171,
		41.602097, 32.054420, 32.826683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413696, 31.947258, 33.589237>,  <40.965176, 31.827665, 33.008102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413696, 31.947258, 33.589237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563095, 32.187187, 33.306190>,  <41.652733, 32.331146, 33.136364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563095, 32.187187, 33.306190>,  <41.413696, 31.947258, 33.589237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563095, 32.187187, 33.306190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010223, 0.765431, 0.643437,
		0.927576, -0.233086, 0.292016,
		0.373495, 0.599822, -0.707612,
		41.675144, 32.367134, 33.093906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062885, 32.232613, 33.949459>,  <41.413696, 31.947258, 33.589237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062885, 32.232613, 33.949459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940514, 32.455231, 33.640484>,  <41.867088, 32.588802, 33.455097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940514, 32.455231, 33.640484>,  <42.062885, 32.232613, 33.949459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940514, 32.455231, 33.640484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037953, 0.817823, 0.574217,
		0.951297, 0.146355, -0.271320,
		-0.305931, 0.556548, -0.772438,
		41.848736, 32.622196, 33.408752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484722, 32.889919, 34.019745>,  <42.062885, 32.232613, 33.949459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484722, 32.889919, 34.019745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205383, 33.016487, 33.762936>,  <42.037781, 33.092426, 33.608852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205383, 33.016487, 33.762936>,  <42.484722, 32.889919, 34.019745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205383, 33.016487, 33.762936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046817, 0.874864, 0.482100,
		0.714226, 0.366730, -0.596146,
		-0.698347, 0.316419, -0.642020,
		41.995880, 33.111412, 33.570328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699009, 33.570992, 33.926517>,  <42.484722, 32.889919, 34.019745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699009, 33.570992, 33.926517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.316490, 33.569511, 33.809570>,  <42.086979, 33.568623, 33.739403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.316490, 33.569511, 33.809570>,  <42.699009, 33.570992, 33.926517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316490, 33.569511, 33.809570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052019, 0.986123, 0.157654,
		0.287731, 0.165973, -0.943220,
		-0.956297, -0.003704, -0.292372,
		42.029602, 33.568401, 33.721859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093491, 34.235657, 34.274529>,  <42.699009, 33.570992, 33.926517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093491, 34.235657, 34.274529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776836, 34.326248, 34.501518>,  <42.586845, 34.380604, 34.637711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776836, 34.326248, 34.501518>,  <43.093491, 34.235657, 34.274529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776836, 34.326248, 34.501518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043176, 0.947177, -0.317793,
		-0.609470, -0.227075, -0.759594,
		-0.791632, 0.226481, 0.567472,
		42.539345, 34.394192, 34.671761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526287, 33.655125, 33.930847>,  <43.093491, 34.235657, 34.274529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526287, 33.655125, 33.930847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868092, 33.847088, 33.851353>,  <44.073174, 33.962265, 33.803654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868092, 33.847088, 33.851353>,  <43.526287, 33.655125, 33.930847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868092, 33.847088, 33.851353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310166, -0.778331, -0.545892,
		-0.416664, 0.404829, -0.813944,
		0.854511, 0.479911, -0.198738,
		44.124443, 33.991062, 33.791733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575497, 33.721306, 33.226315>,  <43.526287, 33.655125, 33.930847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575497, 33.721306, 33.226315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.944565, 33.721058, 33.380550>,  <44.166004, 33.720909, 33.473091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.944565, 33.721058, 33.380550>,  <43.575497, 33.721306, 33.226315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944565, 33.721058, 33.380550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222832, -0.815257, -0.534510,
		0.314685, 0.579098, -0.752076,
		0.922670, -0.000616, 0.385591,
		44.221367, 33.720875, 33.496227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022243, 33.579525, 32.611542>,  <43.575497, 33.721306, 33.226315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022243, 33.579525, 32.611542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221111, 33.495541, 32.948288>,  <44.340431, 33.445148, 33.150337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221111, 33.495541, 32.948288>,  <44.022243, 33.579525, 32.611542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221111, 33.495541, 32.948288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354510, -0.836440, -0.417961,
		0.791927, 0.506247, -0.341417,
		0.497166, -0.209960, 0.841869,
		44.370262, 33.432552, 33.200848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728092, 33.257660, 32.413601>,  <44.022243, 33.579525, 32.611542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728092, 33.257660, 32.413601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.691723, 33.150517, 32.797264>,  <44.669903, 33.086231, 33.027462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.691723, 33.150517, 32.797264>,  <44.728092, 33.257660, 32.413601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691723, 33.150517, 32.797264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385617, -0.897480, -0.214078,
		0.918168, 0.350403, 0.184892,
		-0.090924, -0.267857, 0.959159,
		44.664444, 33.070160, 33.085011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339138, 32.891167, 32.593761>,  <44.728092, 33.257660, 32.413601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339138, 32.891167, 32.593761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047718, 32.783310, 32.845638>,  <44.872868, 32.718597, 32.996765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047718, 32.783310, 32.845638>,  <45.339138, 32.891167, 32.593761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047718, 32.783310, 32.845638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271406, -0.957659, -0.096067,
		0.628933, 0.100912, 0.770883,
		-0.728548, -0.269641, 0.629691,
		44.829155, 32.702419, 33.034546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623882, 32.363091, 32.848839>,  <45.339138, 32.891167, 32.593761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623882, 32.363091, 32.848839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238392, 32.313644, 32.943447>,  <45.007095, 32.283978, 33.000214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238392, 32.313644, 32.943447>,  <45.623882, 32.363091, 32.848839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238392, 32.313644, 32.943447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129078, -0.991605, 0.007691,
		0.233586, 0.037942, 0.971596,
		-0.963731, -0.123615, 0.236522,
		44.949272, 32.276562, 33.014404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621315, 31.770218, 33.343357>,  <45.623882, 32.363091, 32.848839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621315, 31.770218, 33.343357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243282, 31.804695, 33.217255>,  <45.016464, 31.825382, 33.141594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.243282, 31.804695, 33.217255>,  <45.621315, 31.770218, 33.343357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243282, 31.804695, 33.217255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058887, -0.993719, -0.095152,
		-0.321481, -0.071362, 0.944223,
		-0.945083, 0.086192, -0.315259,
		44.959759, 31.830553, 33.122677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305672, 31.204412, 33.628040>,  <45.621315, 31.770218, 33.343357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305672, 31.204412, 33.628040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042500, 31.299599, 33.342243>,  <44.884594, 31.356710, 33.170765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042500, 31.299599, 33.342243>,  <45.305672, 31.204412, 33.628040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042500, 31.299599, 33.342243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078155, -0.965214, -0.249506,
		-0.749009, -0.108318, 0.653646,
		-0.657934, 0.237968, -0.714489,
		44.845119, 31.370989, 33.127895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732212, 30.657467, 33.618717>,  <45.305672, 31.204412, 33.628040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732212, 30.657467, 33.618717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.697525, 30.820551, 33.255123>,  <44.676712, 30.918402, 33.036968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.697525, 30.820551, 33.255123>,  <44.732212, 30.657467, 33.618717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697525, 30.820551, 33.255123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037184, -0.913110, -0.406014,
		-0.995539, -0.001408, 0.094342,
		-0.086717, 0.407711, -0.908984,
		44.671509, 30.942863, 32.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178177, 30.366453, 33.329559>,  <44.732212, 30.657467, 33.618717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178177, 30.366453, 33.329559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382885, 30.519609, 33.021927>,  <44.505711, 30.611504, 32.837345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382885, 30.519609, 33.021927>,  <44.178177, 30.366453, 33.329559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382885, 30.519609, 33.021927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046721, -0.881467, -0.469929,
		-0.857852, 0.276427, -0.433218,
		0.511768, 0.382889, -0.769083,
		44.536415, 30.634476, 32.791203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816154, 30.027874, 32.876564>,  <44.178177, 30.366453, 33.329559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816154, 30.027874, 32.876564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133999, 30.178761, 32.686279>,  <44.324707, 30.269293, 32.572109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.133999, 30.178761, 32.686279>,  <43.816154, 30.027874, 32.876564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133999, 30.178761, 32.686279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025610, -0.762031, -0.647034,
		-0.606575, 0.526325, -0.595859,
		0.794613, 0.377215, -0.475708,
		44.372383, 30.291925, 32.543568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730061, 30.121183, 32.079464>,  <43.816154, 30.027874, 32.876564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730061, 30.121183, 32.079464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118340, 30.073462, 32.162903>,  <44.351307, 30.044828, 32.212967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118340, 30.073462, 32.162903>,  <43.730061, 30.121183, 32.079464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118340, 30.073462, 32.162903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041955, -0.770588, -0.635952,
		0.236617, 0.626068, -0.743002,
		0.970697, -0.119304, 0.208600,
		44.409550, 30.037670, 32.225483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094318, 30.056376, 31.392210>,  <43.730061, 30.121183, 32.079464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094318, 30.056376, 31.392210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356277, 29.911060, 31.657276>,  <44.513454, 29.823872, 31.816317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356277, 29.911060, 31.657276>,  <44.094318, 30.056376, 31.392210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356277, 29.911060, 31.657276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015805, -0.870097, -0.492626,
		0.755549, 0.333095, -0.564087,
		0.654902, -0.363287, 0.662666,
		44.552750, 29.802074, 31.856075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609264, 29.717442, 31.049816>,  <44.094318, 30.056376, 31.392210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609264, 29.717442, 31.049816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645172, 29.565010, 31.417887>,  <44.666718, 29.473551, 31.638729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645172, 29.565010, 31.417887>,  <44.609264, 29.717442, 31.049816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645172, 29.565010, 31.417887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014131, -0.923324, -0.383761,
		0.995862, 0.047452, -0.077500,
		0.089768, -0.381078, 0.920175,
		44.672104, 29.450687, 31.693939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164547, 29.334188, 30.905752>,  <44.609264, 29.717442, 31.049816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164547, 29.334188, 30.905752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967915, 29.193514, 31.224415>,  <44.849934, 29.109110, 31.415613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967915, 29.193514, 31.224415>,  <45.164547, 29.334188, 30.905752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967915, 29.193514, 31.224415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037783, -0.905350, -0.422981,
		0.870011, -0.238030, 0.431767,
		-0.491583, -0.351685, 0.796658,
		44.820438, 29.088009, 31.463411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443966, 28.612877, 31.003319>,  <45.164547, 29.334188, 30.905752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443966, 28.612877, 31.003319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114204, 28.602444, 31.229479>,  <44.916348, 28.596184, 31.365175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114204, 28.602444, 31.229479>,  <45.443966, 28.612877, 31.003319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114204, 28.602444, 31.229479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200182, -0.920937, -0.334367,
		0.529418, -0.388837, 0.754004,
		-0.824405, -0.026082, 0.565399,
		44.866882, 28.594620, 31.399099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411819, 27.933762, 31.325483>,  <45.443966, 28.612877, 31.003319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411819, 27.933762, 31.325483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049896, 28.096617, 31.375378>,  <44.832741, 28.194330, 31.405313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049896, 28.096617, 31.375378>,  <45.411819, 27.933762, 31.325483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049896, 28.096617, 31.375378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424409, -0.886057, -0.186494,
		0.034593, -0.221680, 0.974506,
		-0.904809, 0.407138, 0.124734,
		44.778454, 28.218758, 31.412798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024162, 27.511627, 31.850445>,  <45.411819, 27.933762, 31.325483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024162, 27.511627, 31.850445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734509, 27.692204, 31.641897>,  <44.560715, 27.800549, 31.516768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734509, 27.692204, 31.641897>,  <45.024162, 27.511627, 31.850445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734509, 27.692204, 31.641897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420959, -0.888149, -0.184352,
		-0.546279, 0.085980, 0.833178,
		-0.724136, 0.451441, -0.521371,
		44.517269, 27.827637, 31.485485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460743, 27.229229, 32.115395>,  <45.024162, 27.511627, 31.850445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460743, 27.229229, 32.115395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363522, 27.368820, 31.753368>,  <44.305187, 27.452576, 31.536154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363522, 27.368820, 31.753368>,  <44.460743, 27.229229, 32.115395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363522, 27.368820, 31.753368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273403, -0.919860, -0.281262,
		-0.930686, 0.179085, 0.318987,
		-0.243053, 0.348978, -0.905063,
		44.290607, 27.473513, 31.481850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836678, 26.917454, 31.983530>,  <44.460743, 27.229229, 32.115395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836678, 26.917454, 31.983530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965744, 27.046152, 31.627470>,  <44.043182, 27.123371, 31.413834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965744, 27.046152, 31.627470>,  <43.836678, 26.917454, 31.983530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965744, 27.046152, 31.627470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279216, -0.866244, -0.414318,
		-0.904393, 0.382230, -0.189669,
		0.322664, 0.321748, -0.890149,
		44.062542, 27.142677, 31.360426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.579617, 38.857803, 37.675392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224323, 38.676426, 37.704849>,  <37.011147, 38.567600, 37.722523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224323, 38.676426, 37.704849>,  <37.579617, 38.857803, 37.675392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224323, 38.676426, 37.704849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134897, -0.410691, -0.901740,
		0.439134, -0.791024, 0.425960,
		-0.888237, -0.453446, 0.073641,
		36.957851, 38.540394, 37.726940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681667, 38.131466, 37.501034>,  <37.579617, 38.857803, 37.675392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681667, 38.131466, 37.501034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286709, 38.182465, 37.463528>,  <37.049732, 38.213062, 37.441025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286709, 38.182465, 37.463528>,  <37.681667, 38.131466, 37.501034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286709, 38.182465, 37.463528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000007, -0.592525, -0.805552,
		-0.158263, -0.795399, 0.585058,
		-0.987397, 0.127493, -0.093769,
		36.990490, 38.220711, 37.435398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385246, 37.469048, 37.458843>,  <37.681667, 38.131466, 37.501034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385246, 37.469048, 37.458843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118752, 37.717369, 37.293564>,  <36.958855, 37.866364, 37.194397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118752, 37.717369, 37.293564>,  <37.385246, 37.469048, 37.458843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118752, 37.717369, 37.293564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139958, -0.648318, -0.748395,
		-0.732493, -0.440774, 0.518817,
		-0.666232, 0.620807, -0.413198,
		36.918880, 37.903610, 37.169605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742886, 37.041237, 37.161781>,  <37.385246, 37.469048, 37.458843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742886, 37.041237, 37.161781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690857, 37.402447, 36.998009>,  <36.659641, 37.619171, 36.899746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690857, 37.402447, 36.998009>,  <36.742886, 37.041237, 37.161781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690857, 37.402447, 36.998009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193374, -0.428115, -0.882793,
		-0.972465, -0.035653, 0.230306,
		-0.130071, 0.903021, -0.409432,
		36.651836, 37.673351, 36.875179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063805, 37.035080, 36.754196>,  <36.742886, 37.041237, 37.161781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063805, 37.035080, 36.754196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298595, 37.327244, 36.614506>,  <36.439468, 37.502541, 36.530689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298595, 37.327244, 36.614506>,  <36.063805, 37.035080, 36.754196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298595, 37.327244, 36.614506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023757, -0.415633, -0.909222,
		-0.809257, 0.541986, -0.226614,
		0.586974, 0.730410, -0.349230,
		36.474689, 37.546368, 36.509735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699612, 37.096771, 36.115540>,  <36.063805, 37.035080, 36.754196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699612, 37.096771, 36.115540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064514, 37.260494, 36.122017>,  <36.283455, 37.358727, 36.125904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064514, 37.260494, 36.122017>,  <35.699612, 37.096771, 36.115540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064514, 37.260494, 36.122017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189819, -0.387371, -0.902171,
		-0.362989, 0.826084, -0.431074,
		0.912255, 0.409304, 0.016195,
		36.338192, 37.383286, 36.126877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922237, 37.314159, 35.546745>,  <35.699612, 37.096771, 36.115540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922237, 37.314159, 35.546745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292980, 37.286087, 35.694267>,  <36.515427, 37.269245, 35.782780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292980, 37.286087, 35.694267>,  <35.922237, 37.314159, 35.546745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292980, 37.286087, 35.694267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335579, -0.285565, -0.897685,
		0.168316, 0.955786, -0.241127,
		0.926853, -0.070178, 0.368807,
		36.571037, 37.265034, 35.804909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365330, 37.448479, 34.994789>,  <35.922237, 37.314159, 35.546745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365330, 37.448479, 34.994789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606533, 37.253578, 35.247444>,  <36.751255, 37.136639, 35.399036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606533, 37.253578, 35.247444>,  <36.365330, 37.448479, 34.994789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606533, 37.253578, 35.247444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425520, -0.473278, -0.771324,
		0.674766, 0.733892, -0.078058,
		0.603012, -0.487248, 0.631637,
		36.787437, 37.107403, 35.436935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892437, 37.424198, 34.605103>,  <36.365330, 37.448479, 34.994789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892437, 37.424198, 34.605103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998699, 37.170609, 34.895622>,  <37.062454, 37.018456, 35.069935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998699, 37.170609, 34.895622>,  <36.892437, 37.424198, 34.605103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998699, 37.170609, 34.895622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435896, -0.592977, -0.677033,
		0.859897, 0.496446, 0.118820,
		0.265652, -0.633972, 0.726298,
		37.078396, 36.980415, 35.113510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693077, 37.359356, 34.575756>,  <36.892437, 37.424198, 34.605103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693077, 37.359356, 34.575756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467815, 37.060772, 34.717552>,  <37.332661, 36.881622, 34.802628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467815, 37.060772, 34.717552>,  <37.693077, 37.359356, 34.575756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467815, 37.060772, 34.717552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347725, -0.603210, -0.717791,
		0.749631, -0.280961, 0.599261,
		-0.563151, -0.746457, 0.354488,
		37.298870, 36.836834, 34.823898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132854, 36.745758, 34.618942>,  <37.693077, 37.359356, 34.575756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132854, 36.745758, 34.618942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760559, 36.599628, 34.625427>,  <37.537182, 36.511951, 34.629318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760559, 36.599628, 34.625427>,  <38.132854, 36.745758, 34.618942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760559, 36.599628, 34.625427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250338, -0.668858, -0.699971,
		0.266559, -0.647433, 0.713987,
		-0.930740, -0.365322, 0.016213,
		37.481339, 36.490032, 34.630291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196033, 36.004787, 34.579063>,  <38.132854, 36.745758, 34.618942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196033, 36.004787, 34.579063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830524, 36.081860, 34.436012>,  <37.611221, 36.128105, 34.350182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830524, 36.081860, 34.436012>,  <38.196033, 36.004787, 34.579063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830524, 36.081860, 34.436012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165507, -0.627389, -0.760914,
		-0.370986, -0.754491, 0.541399,
		-0.913770, 0.192683, -0.357626,
		37.556393, 36.139664, 34.328724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845779, 35.433105, 34.544937>,  <38.196033, 36.004787, 34.579063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845779, 35.433105, 34.544937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758186, 35.691280, 34.252235>,  <37.705631, 35.846184, 34.076614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758186, 35.691280, 34.252235>,  <37.845779, 35.433105, 34.544937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758186, 35.691280, 34.252235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302751, -0.667992, -0.679801,
		-0.927571, -0.370404, -0.049126,
		-0.218985, 0.645436, -0.731750,
		37.692490, 35.884911, 34.032711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360138, 35.041710, 34.213451>,  <37.845779, 35.433105, 34.544937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360138, 35.041710, 34.213451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696411, 34.904491, 34.045849>,  <37.898174, 34.822163, 33.945286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696411, 34.904491, 34.045849>,  <37.360138, 35.041710, 34.213451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696411, 34.904491, 34.045849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260377, -0.422383, 0.868215,
		-0.474818, -0.838996, -0.265771,
		0.840686, -0.343043, -0.419010,
		37.948616, 34.801579, 33.920147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370525, 35.091381, 35.001839>,  <37.360138, 35.041710, 34.213451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370525, 35.091381, 35.001839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414944, 34.713394, 35.124931>,  <37.441597, 34.486603, 35.198788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414944, 34.713394, 35.124931>,  <37.370525, 35.091381, 35.001839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414944, 34.713394, 35.124931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712606, 0.140120, 0.687429,
		-0.692720, -0.295631, -0.657831,
		0.111050, -0.944970, 0.307732,
		37.448257, 34.429905, 35.217251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720024, 34.907360, 35.002319>,  <37.370525, 35.091381, 35.001839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720024, 34.907360, 35.002319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911671, 34.626381, 35.212849>,  <37.026657, 34.457794, 35.339165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911671, 34.626381, 35.212849>,  <36.720024, 34.907360, 35.002319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911671, 34.626381, 35.212849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586108, 0.190331, 0.787561,
		-0.653397, -0.685813, -0.320520,
		0.479115, -0.702449, 0.526322,
		37.055405, 34.415646, 35.370747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174580, 34.480671, 35.287231>,  <36.720024, 34.907360, 35.002319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174580, 34.480671, 35.287231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501701, 34.415504, 35.508015>,  <36.697975, 34.376404, 35.640484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501701, 34.415504, 35.508015>,  <36.174580, 34.480671, 35.287231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501701, 34.415504, 35.508015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554866, 0.031281, 0.831352,
		-0.152711, -0.986143, -0.064818,
		0.817804, -0.162922, 0.551954,
		36.747044, 34.366627, 35.673599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892757, 34.261986, 35.934242>,  <36.174580, 34.480671, 35.287231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892757, 34.261986, 35.934242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264294, 34.355774, 36.048981>,  <36.487217, 34.412048, 36.117825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264294, 34.355774, 36.048981>,  <35.892757, 34.261986, 35.934242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264294, 34.355774, 36.048981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316906, 0.101782, 0.942980,
		0.191911, -0.966779, 0.168846,
		0.928839, 0.234476, 0.286845,
		36.542946, 34.426113, 36.135033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984528, 33.886105, 36.571163>,  <35.892757, 34.261986, 35.934242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984528, 33.886105, 36.571163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266808, 34.169312, 36.581711>,  <36.436176, 34.339237, 36.588039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266808, 34.169312, 36.581711>,  <35.984528, 33.886105, 36.571163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266808, 34.169312, 36.581711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200255, 0.163627, 0.965984,
		0.679623, -0.686973, 0.257256,
		0.705699, 0.708022, 0.026365,
		36.478516, 34.381718, 36.589619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537399, 33.665241, 37.171967>,  <35.984528, 33.886105, 36.571163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537399, 33.665241, 37.171967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522602, 34.059254, 37.104626>,  <36.513721, 34.295662, 37.064220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522602, 34.059254, 37.104626>,  <36.537399, 33.665241, 37.171967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522602, 34.059254, 37.104626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246240, 0.154291, 0.956849,
		0.968503, 0.076857, 0.236845,
		-0.036997, 0.985032, -0.168356,
		36.511501, 34.354763, 37.054119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908268, 34.006996, 37.795727>,  <36.537399, 33.665241, 37.171967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908268, 34.006996, 37.795727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648018, 34.260616, 37.628551>,  <36.491867, 34.412788, 37.528248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648018, 34.260616, 37.628551>,  <36.908268, 34.006996, 37.795727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648018, 34.260616, 37.628551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270534, 0.320724, 0.907716,
		0.709578, 0.703647, -0.037138,
		-0.650623, 0.634048, -0.417939,
		36.452831, 34.450832, 37.503170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983643, 34.561497, 38.279457>,  <36.908268, 34.006996, 37.795727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983643, 34.561497, 38.279457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659317, 34.654129, 38.064438>,  <36.464722, 34.709709, 37.935425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659317, 34.654129, 38.064438>,  <36.983643, 34.561497, 38.279457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659317, 34.654129, 38.064438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366533, 0.515133, 0.774785,
		0.456332, 0.825233, -0.332794,
		-0.810811, 0.231579, -0.537547,
		36.416073, 34.723602, 37.903175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779186, 35.196445, 38.562916>,  <36.983643, 34.561497, 38.279457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779186, 35.196445, 38.562916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439465, 35.103096, 38.373508>,  <36.235630, 35.047089, 38.259865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439465, 35.103096, 38.373508>,  <36.779186, 35.196445, 38.562916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439465, 35.103096, 38.373508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497971, 0.651902, 0.571881,
		0.175226, 0.721499, -0.669876,
		-0.849306, -0.233370, -0.473516,
		36.184673, 35.033085, 38.231453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392872, 35.888802, 38.394711>,  <36.779186, 35.196445, 38.562916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392872, 35.888802, 38.394711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155491, 35.566895, 38.399811>,  <36.013062, 35.373749, 38.402870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155491, 35.566895, 38.399811>,  <36.392872, 35.888802, 38.394711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155491, 35.566895, 38.399811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597733, 0.451276, 0.662621,
		-0.539009, 0.385614, -0.748847,
		-0.593452, -0.804768, 0.012747,
		35.977455, 35.325462, 38.403633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618443, 36.171265, 38.455605>,  <36.392872, 35.888802, 38.394711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618443, 36.171265, 38.455605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651798, 35.793156, 38.581779>,  <35.671810, 35.566288, 38.657486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651798, 35.793156, 38.581779>,  <35.618443, 36.171265, 38.455605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651798, 35.793156, 38.581779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519568, 0.228869, 0.823205,
		-0.850350, -0.232539, -0.472050,
		0.083390, -0.945275, 0.315439,
		35.676815, 35.509575, 38.676411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958874, 35.979149, 38.632267>,  <35.618443, 36.171265, 38.455605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958874, 35.979149, 38.632267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191872, 35.716331, 38.823681>,  <35.331673, 35.558643, 38.938530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191872, 35.716331, 38.823681>,  <34.958874, 35.979149, 38.632267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191872, 35.716331, 38.823681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488196, 0.187912, 0.852264,
		-0.649893, -0.730061, -0.211305,
		0.582498, -0.657039, 0.478535,
		35.366623, 35.519218, 38.967243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456078, 35.478664, 39.126083>,  <34.958874, 35.979149, 38.632267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456078, 35.478664, 39.126083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833164, 35.466415, 39.258961>,  <35.059418, 35.459068, 39.338688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833164, 35.466415, 39.258961>,  <34.456078, 35.478664, 39.126083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833164, 35.466415, 39.258961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304376, 0.328619, 0.894072,
		-0.136541, -0.943966, 0.300474,
		0.942715, -0.030621, 0.332191,
		35.115978, 35.457230, 39.358620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378006, 35.132355, 39.758671>,  <34.456078, 35.478664, 39.126083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378006, 35.132355, 39.758671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719208, 35.337421, 39.797798>,  <34.923927, 35.460461, 39.821274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719208, 35.337421, 39.797798>,  <34.378006, 35.132355, 39.758671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719208, 35.337421, 39.797798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287475, 0.305096, 0.907896,
		0.435604, -0.802553, 0.407626,
		0.852999, 0.512665, 0.097813,
		34.975109, 35.491219, 39.827141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500137, 34.521324, 40.128845>,  <34.378006, 35.132355, 39.758671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500137, 34.521324, 40.128845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265293, 34.200161, 40.170113>,  <34.124386, 34.007465, 40.194874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265293, 34.200161, 40.170113>,  <34.500137, 34.521324, 40.128845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265293, 34.200161, 40.170113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047398, -0.093133, -0.994525,
		0.808118, -0.588786, 0.016623,
		-0.587110, -0.802906, 0.103170,
		34.089161, 33.959290, 40.201065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723988, 34.078590, 39.681343>,  <34.500137, 34.521324, 40.128845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723988, 34.078590, 39.681343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360607, 33.921787, 39.739376>,  <34.142578, 33.827705, 39.774197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360607, 33.921787, 39.739376>,  <34.723988, 34.078590, 39.681343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360607, 33.921787, 39.739376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079892, -0.177852, -0.980809,
		0.410292, -0.902605, 0.130251,
		-0.908448, -0.392012, 0.145082,
		34.088074, 33.804184, 39.782902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750458, 33.412338, 39.358105>,  <34.723988, 34.078590, 39.681343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750458, 33.412338, 39.358105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367390, 33.515591, 39.409088>,  <34.137550, 33.577541, 39.439678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367390, 33.515591, 39.409088>,  <34.750458, 33.412338, 39.358105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367390, 33.515591, 39.409088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202805, -0.290682, -0.935080,
		-0.204316, -0.921344, 0.330726,
		-0.957666, 0.258125, 0.127462,
		34.080090, 33.593029, 39.447327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418507, 32.862156, 39.108727>,  <34.750458, 33.412338, 39.358105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418507, 32.862156, 39.108727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160435, 33.167355, 39.092834>,  <34.005592, 33.350475, 39.083298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160435, 33.167355, 39.092834>,  <34.418507, 32.862156, 39.108727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160435, 33.167355, 39.092834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204088, -0.222219, -0.953398,
		-0.736272, -0.607001, 0.299090,
		-0.645176, 0.763000, -0.039732,
		33.966881, 33.396255, 39.080914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859093, 32.489010, 38.764038>,  <34.418507, 32.862156, 39.108727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859093, 32.489010, 38.764038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806141, 32.885441, 38.757896>,  <33.774368, 33.123299, 38.754211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806141, 32.885441, 38.757896>,  <33.859093, 32.489010, 38.764038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806141, 32.885441, 38.757896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268285, -0.050736, -0.962003,
		-0.954201, -0.123233, 0.272608,
		-0.132382, 0.991080, -0.015351,
		33.766426, 33.182766, 38.753292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376400, 32.543129, 38.261261>,  <33.859093, 32.489010, 38.764038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376400, 32.543129, 38.261261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498474, 32.920856, 38.310471>,  <33.571716, 33.147491, 38.339996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498474, 32.920856, 38.310471>,  <33.376400, 32.543129, 38.261261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498474, 32.920856, 38.310471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374771, 0.237858, -0.896086,
		-0.875449, 0.227363, 0.426492,
		0.305182, 0.944314, 0.123023,
		33.590027, 33.204151, 38.347378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871037, 32.965790, 37.964886>,  <33.376400, 32.543129, 38.261261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871037, 32.965790, 37.964886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224697, 33.150642, 37.937439>,  <33.436893, 33.261555, 37.920971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224697, 33.150642, 37.937439>,  <32.871037, 32.965790, 37.964886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224697, 33.150642, 37.937439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173805, 0.189032, -0.966467,
		-0.433665, 0.866430, 0.247454,
		0.884153, 0.462132, -0.068613,
		33.489944, 33.289284, 37.916855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660309, 33.512524, 37.548092>,  <32.871037, 32.965790, 37.964886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660309, 33.512524, 37.548092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059933, 33.529797, 37.549309>,  <33.299709, 33.540161, 37.550037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059933, 33.529797, 37.549309>,  <32.660309, 33.512524, 37.548092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059933, 33.529797, 37.549309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011408, 0.330346, -0.943791,
		-0.041761, 0.942872, 0.330528,
		0.999063, 0.043185, 0.003039,
		33.359650, 33.542751, 37.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747437, 34.055851, 37.165550>,  <32.660309, 33.512524, 37.548092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747437, 34.055851, 37.165550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108818, 33.885544, 37.185516>,  <33.325645, 33.783360, 37.197495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108818, 33.885544, 37.185516>,  <32.747437, 34.055851, 37.165550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108818, 33.885544, 37.185516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222574, 0.366377, -0.903454,
		0.366377, 0.827338, 0.425770,
		0.903454, -0.425770, 0.049912,
		33.379852, 33.757812, 37.200489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173859, 34.580540, 36.893631>,  <32.747437, 34.055851, 37.165550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173859, 34.580540, 36.893631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336681, 34.220840, 36.829563>,  <33.434376, 34.005020, 36.791122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336681, 34.220840, 36.829563>,  <33.173859, 34.580540, 36.893631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336681, 34.220840, 36.829563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163335, 0.244186, -0.955874,
		0.898681, 0.362933, 0.246277,
		0.407056, -0.899251, -0.160166,
		33.458797, 33.951065, 36.781513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707031, 34.688972, 36.458172>,  <33.173859, 34.580540, 36.893631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707031, 34.688972, 36.458172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603081, 34.304653, 36.419548>,  <33.540710, 34.074062, 36.396374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603081, 34.304653, 36.419548>,  <33.707031, 34.688972, 36.458172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603081, 34.304653, 36.419548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007872, 0.102102, -0.994743,
		0.965611, -0.257746, -0.034097,
		-0.259873, -0.960803, -0.096561,
		33.525120, 34.016411, 36.390579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056252, 34.520721, 35.936943>,  <33.707031, 34.688972, 36.458172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056252, 34.520721, 35.936943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783279, 34.229877, 35.966896>,  <33.619495, 34.055370, 35.984867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783279, 34.229877, 35.966896>,  <34.056252, 34.520721, 35.936943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783279, 34.229877, 35.966896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066030, -0.040699, -0.996987,
		0.727963, -0.685318, -0.020236,
		-0.682429, -0.727106, 0.074879,
		33.578552, 34.011745, 35.989361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.267784, 34.674358, 43.751144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881397, 34.594944, 43.684818>,  <33.649567, 34.547295, 43.645023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881397, 34.594944, 43.684818>,  <34.267784, 34.674358, 43.751144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881397, 34.594944, 43.684818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251619, -0.572589, -0.780275,
		0.059967, -0.795441, 0.603057,
		-0.965967, -0.198532, -0.165811,
		33.591606, 34.535385, 43.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281384, 34.000370, 43.663383>,  <34.267784, 34.674358, 43.751144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281384, 34.000370, 43.663383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940948, 34.115738, 43.487904>,  <33.736687, 34.184959, 43.382618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940948, 34.115738, 43.487904>,  <34.281384, 34.000370, 43.663383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940948, 34.115738, 43.487904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208820, -0.580686, -0.786891,
		-0.481701, -0.761326, 0.433990,
		-0.851092, 0.288421, -0.438697,
		33.685619, 34.202263, 43.356293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922440, 33.389961, 43.472984>,  <34.281384, 34.000370, 43.663383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922440, 33.389961, 43.472984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787727, 33.656620, 43.207005>,  <33.706902, 33.816616, 43.047417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787727, 33.656620, 43.207005>,  <33.922440, 33.389961, 43.472984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787727, 33.656620, 43.207005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336126, -0.574555, -0.746261,
		-0.879545, -0.474832, -0.030580,
		-0.336779, 0.666649, -0.664950,
		33.686695, 33.856613, 43.007519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435013, 33.097584, 42.923988>,  <33.922440, 33.389961, 43.472984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435013, 33.097584, 42.923988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566387, 33.443268, 42.771534>,  <33.645214, 33.650681, 42.680061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566387, 33.443268, 42.771534>,  <33.435013, 33.097584, 42.923988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566387, 33.443268, 42.771534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246929, -0.468052, -0.848500,
		-0.911677, 0.184567, -0.367125,
		0.328439, 0.864212, -0.381137,
		33.664917, 33.702530, 42.657192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153774, 33.037640, 42.269539>,  <33.435013, 33.097584, 42.923988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153774, 33.037640, 42.269539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402599, 33.350647, 42.258995>,  <33.551895, 33.538452, 42.252666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402599, 33.350647, 42.258995>,  <33.153774, 33.037640, 42.269539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402599, 33.350647, 42.258995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022432, -0.051470, -0.998423,
		-0.782646, 0.620491, -0.049571,
		0.622063, 0.782523, -0.026364,
		33.589218, 33.585403, 42.251087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023727, 33.664989, 41.876217>,  <33.153774, 33.037640, 42.269539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023727, 33.664989, 41.876217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.423279, 33.658226, 41.858559>,  <33.663010, 33.654167, 41.847965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.423279, 33.658226, 41.858559>,  <33.023727, 33.664989, 41.876217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423279, 33.658226, 41.858559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041102, 0.150646, -0.987733,
		0.023354, 0.988443, 0.149782,
		0.998882, -0.016911, -0.044145,
		33.722942, 33.653152, 41.845314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192661, 34.265152, 41.545662>,  <33.023727, 33.664989, 41.876217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192661, 34.265152, 41.545662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524986, 34.044769, 41.514187>,  <33.724380, 33.912540, 41.495300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524986, 34.044769, 41.514187>,  <33.192661, 34.265152, 41.545662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524986, 34.044769, 41.514187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042844, 0.204279, -0.977975,
		0.554895, 0.809146, 0.193324,
		0.830816, -0.550956, -0.078686,
		33.774231, 33.879482, 41.490582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435078, 34.601624, 41.053104>,  <33.192661, 34.265152, 41.545662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435078, 34.601624, 41.053104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.649895, 34.264248, 41.047565>,  <33.778786, 34.061821, 41.044243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.649895, 34.264248, 41.047565>,  <33.435078, 34.601624, 41.053104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649895, 34.264248, 41.047565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016833, 0.005693, -0.999842,
		0.843387, 0.537191, -0.011140,
		0.537043, -0.843441, -0.013844,
		33.811008, 34.011215, 41.043411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932583, 34.737080, 40.657349>,  <33.435078, 34.601624, 41.053104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932583, 34.737080, 40.657349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916149, 34.337513, 40.648632>,  <33.906288, 34.097771, 40.643402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916149, 34.337513, 40.648632>,  <33.932583, 34.737080, 40.657349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916149, 34.337513, 40.648632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037208, 0.023322, -0.999035,
		0.998463, -0.040229, -0.038125,
		-0.041080, -0.998918, -0.021790,
		33.903824, 34.037838, 40.642094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519806, 35.146721, 40.504944>,  <33.932583, 34.737080, 40.657349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519806, 35.146721, 40.504944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784191, 35.421535, 40.384201>,  <34.942822, 35.586422, 40.311756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784191, 35.421535, 40.384201>,  <34.519806, 35.146721, 40.504944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784191, 35.421535, 40.384201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027306, 0.424004, 0.905249,
		0.749925, -0.590090, 0.299010,
		0.660960, 0.687033, -0.301858,
		34.982479, 35.627644, 40.293644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987915, 35.274872, 41.075443>,  <34.519806, 35.146721, 40.504944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987915, 35.274872, 41.075443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008060, 35.608578, 40.855820>,  <35.020149, 35.808800, 40.724045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008060, 35.608578, 40.855820>,  <34.987915, 35.274872, 41.075443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008060, 35.608578, 40.855820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224188, 0.545169, 0.807794,
		0.973244, 0.082409, 0.214489,
		0.050363, 0.834266, -0.549057,
		35.023170, 35.858856, 40.691101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405914, 35.732597, 41.465427>,  <34.987915, 35.274872, 41.075443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405914, 35.732597, 41.465427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.221657, 35.978294, 41.209141>,  <35.111103, 36.125713, 41.055370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.221657, 35.978294, 41.209141>,  <35.405914, 35.732597, 41.465427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221657, 35.978294, 41.209141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317770, 0.559884, 0.765214,
		0.828750, 0.556093, -0.062722,
		-0.460647, 0.614240, -0.640714,
		35.083462, 36.162567, 41.016926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577156, 36.471405, 41.656994>,  <35.405914, 35.732597, 41.465427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577156, 36.471405, 41.656994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228638, 36.450481, 41.461811>,  <35.019527, 36.437927, 41.344700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228638, 36.450481, 41.461811>,  <35.577156, 36.471405, 41.656994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228638, 36.450481, 41.461811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419673, 0.594827, 0.685606,
		0.254389, 0.802150, -0.540223,
		-0.871298, -0.052307, -0.487958,
		34.967247, 36.434788, 41.315422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301636, 37.186176, 41.618740>,  <35.577156, 36.471405, 41.656994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301636, 37.186176, 41.618740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981121, 36.950966, 41.574638>,  <34.788811, 36.809837, 41.548180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981121, 36.950966, 41.574638>,  <35.301636, 37.186176, 41.618740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981121, 36.950966, 41.574638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524152, 0.601147, 0.603230,
		-0.288439, 0.541151, -0.789910,
		-0.801291, -0.588028, -0.110251,
		34.740734, 36.774559, 41.541565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903179, 37.661930, 41.758667>,  <35.301636, 37.186176, 41.618740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903179, 37.661930, 41.758667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700653, 37.318062, 41.785820>,  <34.579140, 37.111740, 41.802113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.700653, 37.318062, 41.785820>,  <34.903179, 37.661930, 41.758667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700653, 37.318062, 41.785820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591891, 0.403687, 0.697640,
		-0.627147, 0.313044, -0.713225,
		-0.506312, -0.859674, 0.067883,
		34.548759, 37.060158, 41.806187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123535, 37.844616, 41.722919>,  <34.903179, 37.661930, 41.758667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123535, 37.844616, 41.722919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187897, 37.508278, 41.929642>,  <34.226513, 37.306473, 42.053673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.187897, 37.508278, 41.929642>,  <34.123535, 37.844616, 41.722919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187897, 37.508278, 41.929642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573656, 0.346416, 0.742236,
		-0.803136, -0.415899, -0.426615,
		0.160909, -0.840847, 0.516802,
		34.236168, 37.256023, 42.084682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529598, 37.837414, 42.182323>,  <34.123535, 37.844616, 41.722919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529598, 37.837414, 42.182323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.785088, 37.565853, 42.327168>,  <33.938381, 37.402916, 42.414074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.785088, 37.565853, 42.327168>,  <33.529598, 37.837414, 42.182323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785088, 37.565853, 42.327168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165848, 0.338081, 0.926388,
		-0.751346, -0.651765, 0.103348,
		0.638727, -0.678898, 0.362110,
		33.976707, 37.362183, 42.435802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278046, 37.777359, 42.859882>,  <33.529598, 37.837414, 42.182323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278046, 37.777359, 42.859882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639008, 37.605000, 42.859627>,  <33.855583, 37.501583, 42.859474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639008, 37.605000, 42.859627>,  <33.278046, 37.777359, 42.859882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639008, 37.605000, 42.859627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080272, 0.166654, 0.982743,
		-0.423356, -0.886878, 0.184978,
		0.902400, -0.430899, -0.000637,
		33.909729, 37.475731, 42.859436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313477, 37.392620, 43.491009>,  <33.278046, 37.777359, 42.859882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313477, 37.392620, 43.491009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.696598, 37.425377, 43.380810>,  <33.926472, 37.445030, 43.314690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.696598, 37.425377, 43.380810>,  <33.313477, 37.392620, 43.491009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696598, 37.425377, 43.380810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255983, 0.192784, 0.947263,
		0.130680, -0.977818, 0.163688,
		0.957807, 0.081887, -0.275497,
		33.983940, 37.449944, 43.298161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712284, 37.061619, 44.053364>,  <33.313477, 37.392620, 43.491009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712284, 37.061619, 44.053364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.965500, 37.290321, 43.844612>,  <34.117428, 37.427544, 43.719360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.965500, 37.290321, 43.844612>,  <33.712284, 37.061619, 44.053364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965500, 37.290321, 43.844612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491262, 0.224300, 0.841636,
		0.598268, -0.789167, -0.138891,
		0.633038, 0.571756, -0.521879,
		34.155411, 37.461849, 43.688049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500786, 36.952328, 44.248257>,  <33.712284, 37.061619, 44.053364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500786, 36.952328, 44.248257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.445034, 37.313454, 44.085533>,  <34.411583, 37.530128, 43.987900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.445034, 37.313454, 44.085533>,  <34.500786, 36.952328, 44.248257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445034, 37.313454, 44.085533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530730, 0.414939, 0.739021,
		0.836002, -0.112906, -0.536984,
		-0.139376, 0.902817, -0.406812,
		34.403221, 37.584297, 43.963490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974716, 37.277512, 44.677898>,  <34.500786, 36.952328, 44.248257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974716, 37.277512, 44.677898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.837940, 37.588264, 44.466415>,  <34.755875, 37.774715, 44.339523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.837940, 37.588264, 44.466415>,  <34.974716, 37.277512, 44.677898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837940, 37.588264, 44.466415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400920, 0.629456, 0.665619,
		0.849904, 0.015634, -0.526705,
		-0.341944, 0.776879, -0.528709,
		34.735355, 37.821327, 44.307804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419994, 37.759914, 44.576786>,  <34.974716, 37.277512, 44.677898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419994, 37.759914, 44.576786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.101200, 38.001244, 44.565350>,  <34.909924, 38.146042, 44.558487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.101200, 38.001244, 44.565350>,  <35.419994, 37.759914, 44.576786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101200, 38.001244, 44.565350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466726, 0.645207, 0.604876,
		0.383384, 0.468732, -0.795806,
		-0.796984, 0.603324, -0.028592,
		34.862106, 38.182240, 44.556770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.136797, 40.535015, 42.627323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.337748, 40.227119, 42.784866>,  <30.458319, 40.042381, 42.879391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.337748, 40.227119, 42.784866>,  <30.136797, 40.535015, 42.627323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337748, 40.227119, 42.784866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399082, -0.197668, -0.895355,
		0.767040, 0.606988, 0.207883,
		0.502378, -0.769735, 0.393858,
		30.488461, 39.996201, 42.903023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714607, 40.610115, 42.324921>,  <30.136797, 40.535015, 42.627323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714607, 40.610115, 42.324921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.744286, 40.235928, 42.463131>,  <30.762093, 40.011414, 42.546059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.744286, 40.235928, 42.463131>,  <30.714607, 40.610115, 42.324921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744286, 40.235928, 42.463131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402751, -0.288861, -0.868534,
		0.912297, 0.203605, 0.355329,
		0.074198, -0.935470, 0.345529,
		30.766544, 39.955288, 42.566792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259686, 40.376862, 41.969357>,  <30.714607, 40.610115, 42.324921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259686, 40.376862, 41.969357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.096350, 40.044018, 42.119473>,  <30.998348, 39.844311, 42.209541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.096350, 40.044018, 42.119473>,  <31.259686, 40.376862, 41.969357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096350, 40.044018, 42.119473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269371, -0.502667, -0.821441,
		0.872179, -0.234336, 0.429407,
		-0.408342, -0.832113, 0.375293,
		30.973846, 39.794384, 42.232059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714359, 39.772942, 41.950424>,  <31.259686, 40.376862, 41.969357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714359, 39.772942, 41.950424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346769, 39.615219, 41.949219>,  <31.126215, 39.520584, 41.948494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346769, 39.615219, 41.949219>,  <31.714359, 39.772942, 41.950424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346769, 39.615219, 41.949219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234544, -0.540443, -0.808028,
		0.316980, -0.743265, 0.589136,
		-0.918973, -0.394307, -0.003018,
		31.071077, 39.496925, 41.948315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853277, 39.093513, 41.849167>,  <31.714359, 39.772942, 41.950424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853277, 39.093513, 41.849167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.471903, 39.146938, 41.741001>,  <31.243078, 39.178993, 41.676102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.471903, 39.146938, 41.741001>,  <31.853277, 39.093513, 41.849167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471903, 39.146938, 41.741001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174443, -0.487194, -0.855694,
		-0.246035, -0.863019, 0.441208,
		-0.953434, 0.133565, -0.270415,
		31.185873, 39.187008, 41.659878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702896, 38.431389, 41.443974>,  <31.853277, 39.093513, 41.849167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702896, 38.431389, 41.443974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396854, 38.681458, 41.382294>,  <31.213230, 38.831497, 41.345284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396854, 38.681458, 41.382294>,  <31.702896, 38.431389, 41.443974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396854, 38.681458, 41.382294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145169, -0.400789, -0.904596,
		-0.627331, -0.669723, 0.397400,
		-0.765102, 0.625171, -0.154204,
		31.167324, 38.869007, 41.336033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184484, 38.006092, 41.332706>,  <31.702896, 38.431389, 41.443974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184484, 38.006092, 41.332706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.119406, 38.358410, 41.154839>,  <31.080359, 38.569801, 41.048119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.119406, 38.358410, 41.154839>,  <31.184484, 38.006092, 41.332706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119406, 38.358410, 41.154839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088990, -0.461937, -0.882437,
		-0.982655, -0.104000, 0.153538,
		-0.162699, 0.880794, -0.444670,
		31.070597, 38.622646, 41.021439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561184, 37.823891, 40.927582>,  <31.184484, 38.006092, 41.332706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561184, 37.823891, 40.927582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710190, 38.167034, 40.785988>,  <30.799593, 38.372921, 40.701031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710190, 38.167034, 40.785988>,  <30.561184, 37.823891, 40.927582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710190, 38.167034, 40.785988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007809, -0.378525, -0.925558,
		-0.927993, 0.347549, -0.134307,
		0.372515, 0.857863, -0.353983,
		30.821945, 38.424393, 40.679794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112135, 38.027573, 40.368546>,  <30.561184, 37.823891, 40.927582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112135, 38.027573, 40.368546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.426817, 38.262821, 40.293495>,  <30.615627, 38.403973, 40.248466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.426817, 38.262821, 40.293495>,  <30.112135, 38.027573, 40.368546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426817, 38.262821, 40.293495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027349, -0.336839, -0.941165,
		-0.616722, 0.735289, -0.281078,
		0.786706, 0.588124, -0.187626,
		30.662828, 38.439259, 40.237206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953514, 38.451828, 39.787708>,  <30.112135, 38.027573, 40.368546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953514, 38.451828, 39.787708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353289, 38.449017, 39.800854>,  <30.593153, 38.447330, 39.808739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353289, 38.449017, 39.800854>,  <29.953514, 38.451828, 39.787708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353289, 38.449017, 39.800854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027289, -0.400853, -0.915736,
		0.019612, 0.916115, -0.400435,
		0.999435, -0.007032, 0.032862,
		30.653120, 38.446907, 39.810711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129488, 38.738495, 39.193523>,  <29.953514, 38.451828, 39.787708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129488, 38.738495, 39.193523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.440355, 38.505974, 39.289940>,  <30.626875, 38.366463, 39.347790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.440355, 38.505974, 39.289940>,  <30.129488, 38.738495, 39.193523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440355, 38.505974, 39.289940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050737, -0.323910, -0.944726,
		0.627246, 0.746440, -0.222239,
		0.777167, -0.581300, 0.241043,
		30.673506, 38.331585, 39.362251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581921, 38.788532, 38.596554>,  <30.129488, 38.738495, 39.193523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581921, 38.788532, 38.596554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.701256, 38.467274, 38.802834>,  <30.772858, 38.274517, 38.926601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.701256, 38.467274, 38.802834>,  <30.581921, 38.788532, 38.596554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701256, 38.467274, 38.802834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182298, -0.482413, -0.856764,
		0.936889, 0.349618, 0.002489,
		0.298339, -0.803147, 0.515702,
		30.790758, 38.226330, 38.957542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307709, 38.692009, 38.310268>,  <30.581921, 38.788532, 38.596554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307709, 38.692009, 38.310268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.158718, 38.342667, 38.435814>,  <31.069324, 38.133060, 38.511143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.158718, 38.342667, 38.435814>,  <31.307709, 38.692009, 38.310268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158718, 38.342667, 38.435814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225128, -0.413134, -0.882405,
		0.900322, -0.258013, 0.350499,
		-0.372475, -0.873355, 0.313867,
		31.046976, 38.080662, 38.529976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729540, 38.147648, 38.077957>,  <31.307709, 38.692009, 38.310268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729540, 38.147648, 38.077957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401548, 37.947136, 38.188488>,  <31.204754, 37.826828, 38.254807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401548, 37.947136, 38.188488>,  <31.729540, 38.147648, 38.077957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401548, 37.947136, 38.188488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025074, -0.513754, -0.857571,
		0.571844, -0.696262, 0.433836,
		-0.819979, -0.501275, 0.276329,
		31.155554, 37.796753, 38.271385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465855, 37.893902, 38.081223>,  <31.729540, 38.147648, 38.077957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465855, 37.893902, 38.081223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747116, 38.111595, 37.898190>,  <32.915874, 38.242210, 37.788368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747116, 38.111595, 37.898190>,  <32.465855, 37.893902, 38.081223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747116, 38.111595, 37.898190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208983, 0.456931, 0.864604,
		0.679634, -0.703575, 0.207555,
		0.703152, 0.544239, -0.457582,
		32.958061, 38.274868, 37.760914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115238, 37.695740, 38.396568>,  <32.465855, 37.893902, 38.081223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115238, 37.695740, 38.396568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159584, 38.061829, 38.241611>,  <33.186192, 38.281483, 38.148640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159584, 38.061829, 38.241611>,  <33.115238, 37.695740, 38.396568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159584, 38.061829, 38.241611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216313, 0.358225, 0.908231,
		0.970009, -0.184489, -0.158260,
		0.110866, 0.915226, -0.387389,
		33.192844, 38.336395, 38.125397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653339, 37.908489, 38.673016>,  <33.115238, 37.695740, 38.396568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653339, 37.908489, 38.673016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456409, 38.246185, 38.588280>,  <33.338253, 38.448803, 38.537437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.456409, 38.246185, 38.588280>,  <33.653339, 37.908489, 38.673016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456409, 38.246185, 38.588280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183172, 0.338418, 0.922996,
		0.850921, 0.415608, -0.321252,
		-0.492322, 0.844241, -0.211840,
		33.308712, 38.499458, 38.524727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092430, 38.476696, 39.016697>,  <33.653339, 37.908489, 38.673016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092430, 38.476696, 39.016697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751968, 38.652737, 38.902260>,  <33.547691, 38.758362, 38.833595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751968, 38.652737, 38.902260>,  <34.092430, 38.476696, 39.016697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751968, 38.652737, 38.902260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046422, 0.479782, 0.876159,
		0.522865, 0.759024, -0.387936,
		-0.851151, 0.440104, -0.286097,
		33.496624, 38.784767, 38.816429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251263, 39.206966, 39.073380>,  <34.092430, 38.476696, 39.016697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251263, 39.206966, 39.073380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851994, 39.182774, 39.072948>,  <33.612434, 39.168259, 39.072689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851994, 39.182774, 39.072948>,  <34.251263, 39.206966, 39.073380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851994, 39.182774, 39.072948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041390, 0.669969, 0.741234,
		-0.044110, 0.739921, -0.671246,
		-0.998169, -0.060479, -0.001073,
		33.552544, 39.164631, 39.072628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962414, 39.919277, 39.139656>,  <34.251263, 39.206966, 39.073380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962414, 39.919277, 39.139656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764244, 39.632607, 39.335991>,  <33.645344, 39.460602, 39.453793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764244, 39.632607, 39.335991>,  <33.962414, 39.919277, 39.139656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764244, 39.632607, 39.335991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077253, 0.599174, 0.796883,
		-0.865209, 0.356876, -0.352211,
		-0.495424, -0.716680, 0.490841,
		33.615616, 39.417603, 39.483242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653824, 40.335987, 39.590878>,  <33.962414, 39.919277, 39.139656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653824, 40.335987, 39.590878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607761, 39.965321, 39.734001>,  <33.580124, 39.742920, 39.819878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607761, 39.965321, 39.734001>,  <33.653824, 40.335987, 39.590878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607761, 39.965321, 39.734001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302550, 0.375815, 0.875915,
		-0.946151, -0.007385, -0.323642,
		-0.115161, -0.926665, 0.357812,
		33.573212, 39.687321, 39.841343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087734, 40.550777, 39.969093>,  <33.653824, 40.335987, 39.590878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087734, 40.550777, 39.969093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237576, 40.203495, 40.099258>,  <33.327480, 39.995125, 40.177357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237576, 40.203495, 40.099258>,  <33.087734, 40.550777, 39.969093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237576, 40.203495, 40.099258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333409, 0.201353, 0.921030,
		-0.865166, -0.453512, -0.214041,
		0.374600, -0.868207, 0.325409,
		33.349957, 39.943031, 40.196880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523777, 40.177246, 40.426968>,  <33.087734, 40.550777, 39.969093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523777, 40.177246, 40.426968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893993, 40.075054, 40.538757>,  <33.116123, 40.013737, 40.605831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893993, 40.075054, 40.538757>,  <32.523777, 40.177246, 40.426968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893993, 40.075054, 40.538757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291854, -0.011092, 0.956399,
		-0.241243, -0.966750, -0.084829,
		0.925539, -0.255482, 0.279474,
		33.171654, 39.998409, 40.622601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343838, 39.834946, 40.933338>,  <32.523777, 40.177246, 40.426968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343838, 39.834946, 40.933338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733814, 39.902943, 40.990746>,  <32.967800, 39.943741, 41.025192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733814, 39.902943, 40.990746>,  <32.343838, 39.834946, 40.933338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733814, 39.902943, 40.990746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149590, 0.023387, 0.988471,
		0.164678, -0.985167, 0.048230,
		0.974937, 0.169994, 0.143520,
		33.026295, 39.953941, 41.033802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632259, 39.391338, 41.579979>,  <32.343838, 39.834946, 40.933338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632259, 39.391338, 41.579979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853134, 39.716522, 41.506027>,  <32.985661, 39.911633, 41.461655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853134, 39.716522, 41.506027>,  <32.632259, 39.391338, 41.579979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853134, 39.716522, 41.506027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056662, 0.184648, 0.981170,
		0.831792, -0.552266, 0.055896,
		0.552188, 0.812962, -0.184881,
		33.018791, 39.960411, 41.450562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146145, 39.369442, 42.136295>,  <32.632259, 39.391338, 41.579979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146145, 39.369442, 42.136295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152920, 39.742138, 41.991207>,  <33.156986, 39.965755, 41.904152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152920, 39.742138, 41.991207>,  <33.146145, 39.369442, 42.136295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152920, 39.742138, 41.991207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126589, 0.357859, 0.925155,
		0.991811, -0.061588, -0.111887,
		0.016938, 0.931742, -0.362725,
		33.158001, 40.021660, 41.882389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631283, 39.697475, 42.573627>,  <33.146145, 39.369442, 42.136295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631283, 39.697475, 42.573627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423424, 39.996933, 42.408943>,  <33.298710, 40.176605, 42.310135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423424, 39.996933, 42.408943>,  <33.631283, 39.697475, 42.573627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423424, 39.996933, 42.408943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036078, 0.462222, 0.886030,
		0.853619, 0.475276, -0.213183,
		-0.519647, 0.748641, -0.411709,
		33.267529, 40.221527, 42.285431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015820, 40.334190, 42.647762>,  <33.631283, 39.697475, 42.573627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015820, 40.334190, 42.647762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620411, 40.391712, 42.629253>,  <33.383163, 40.426224, 42.618149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620411, 40.391712, 42.629253>,  <34.015820, 40.334190, 42.647762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620411, 40.391712, 42.629253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025039, 0.458044, 0.888577,
		0.148978, 0.877221, -0.456388,
		-0.988524, 0.143806, -0.046273,
		33.323853, 40.434853, 42.615372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778694, 40.525352, 42.621277>,  <34.015820, 40.334190, 42.647762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778694, 40.525352, 42.621277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124695, 40.423897, 42.794453>,  <35.332294, 40.363026, 42.898357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124695, 40.423897, 42.794453>,  <34.778694, 40.525352, 42.621277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124695, 40.423897, 42.794453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344817, -0.326341, -0.880115,
		0.364517, 0.910587, -0.194828,
		0.865002, -0.253637, 0.432943,
		35.384197, 40.347805, 42.924335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377247, 40.892948, 42.350697>,  <34.778694, 40.525352, 42.621277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377247, 40.892948, 42.350697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547779, 40.562614, 42.498337>,  <35.650101, 40.364414, 42.586922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547779, 40.562614, 42.498337>,  <35.377247, 40.892948, 42.350697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547779, 40.562614, 42.498337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320709, -0.243536, -0.915334,
		0.845804, 0.508612, 0.161025,
		0.426334, -0.825835, 0.369100,
		35.675678, 40.314865, 42.609066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904720, 40.783417, 41.897003>,  <35.377247, 40.892948, 42.350697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904720, 40.783417, 41.897003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887142, 40.449898, 42.117130>,  <35.876595, 40.249786, 42.249207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887142, 40.449898, 42.117130>,  <35.904720, 40.783417, 41.897003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887142, 40.449898, 42.117130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194280, -0.547464, -0.813964,
		0.979962, 0.071150, 0.186046,
		-0.043941, -0.833799, 0.550317,
		35.873959, 40.199757, 42.282227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531204, 40.415695, 41.809181>,  <35.904720, 40.783417, 41.897003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531204, 40.415695, 41.809181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260181, 40.141266, 41.915180>,  <36.097569, 39.976608, 41.978779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260181, 40.141266, 41.915180>,  <36.531204, 40.415695, 41.809181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260181, 40.141266, 41.915180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202283, -0.520251, -0.829711,
		0.707109, -0.508568, 0.491279,
		-0.677553, -0.686074, 0.264999,
		36.056915, 39.935444, 41.994678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745483, 39.878525, 41.647793>,  <36.531204, 40.415695, 41.809181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745483, 39.878525, 41.647793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371330, 39.743656, 41.690441>,  <36.146839, 39.662735, 41.716030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371330, 39.743656, 41.690441>,  <36.745483, 39.878525, 41.647793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371330, 39.743656, 41.690441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089092, -0.516476, -0.851655,
		0.342222, -0.787127, 0.513143,
		-0.935386, -0.337171, 0.106623,
		36.090714, 39.642506, 41.722427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761032, 39.071560, 41.643204>,  <36.745483, 39.878525, 41.647793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761032, 39.071560, 41.643204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402050, 39.194286, 41.516434>,  <36.186661, 39.267921, 41.440372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402050, 39.194286, 41.516434>,  <36.761032, 39.071560, 41.643204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402050, 39.194286, 41.516434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126964, -0.508407, -0.851706,
		-0.422442, -0.804605, 0.417318,
		-0.897454, 0.306812, -0.316928,
		36.132812, 39.286331, 41.421356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433758, 38.437183, 41.275356>,  <36.761032, 39.071560, 41.643204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433758, 38.437183, 41.275356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248920, 38.762939, 41.134930>,  <36.138020, 38.958393, 41.050674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248920, 38.762939, 41.134930>,  <36.433758, 38.437183, 41.275356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248920, 38.762939, 41.134930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047827, -0.372402, -0.926838,
		-0.885541, -0.445076, 0.133135,
		-0.462093, 0.814386, -0.351064,
		36.110294, 39.007256, 41.029610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029789, 38.197060, 40.724556>,  <36.433758, 38.437183, 41.275356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029789, 38.197060, 40.724556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046066, 38.587132, 40.637497>,  <36.055832, 38.821175, 40.585262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046066, 38.587132, 40.637497>,  <36.029789, 38.197060, 40.724556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046066, 38.587132, 40.637497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096896, -0.220650, -0.970528,
		-0.994462, 0.018403, -0.103469,
		0.040691, 0.975180, -0.217645,
		36.058273, 38.879684, 40.572205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488403, 38.313622, 40.173660>,  <36.029789, 38.197060, 40.724556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488403, 38.313622, 40.173660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779167, 38.587383, 40.151047>,  <35.953625, 38.751640, 40.137478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779167, 38.587383, 40.151047>,  <35.488403, 38.313622, 40.173660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779167, 38.587383, 40.151047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069868, -0.155600, -0.985346,
		-0.683167, 0.712310, -0.160925,
		0.726912, 0.684399, -0.056534,
		35.997242, 38.792702, 40.134087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397129, 38.576519, 39.575348>,  <35.488403, 38.313622, 40.173660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397129, 38.576519, 39.575348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.772213, 38.703323, 39.632195>,  <35.997265, 38.779404, 39.666302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.772213, 38.703323, 39.632195>,  <35.397129, 38.576519, 39.575348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772213, 38.703323, 39.632195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171127, -0.065473, -0.983071,
		-0.302337, 0.946160, -0.115644,
		0.937714, 0.317008, 0.142119,
		36.053528, 38.798428, 39.674831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496040, 39.058578, 39.032368>,  <35.397129, 38.576519, 39.575348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496040, 39.058578, 39.032368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874226, 38.983486, 39.138847>,  <36.101135, 38.938431, 39.202736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874226, 38.983486, 39.138847>,  <35.496040, 39.058578, 39.032368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874226, 38.983486, 39.138847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243715, -0.134518, -0.960473,
		0.216120, 0.972966, -0.081429,
		0.945460, -0.187732, 0.266198,
		36.157864, 38.927166, 39.218708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858997, 39.492428, 38.731506>,  <35.496040, 39.058578, 39.032368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858997, 39.492428, 38.731506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135406, 39.213501, 38.807663>,  <36.301250, 39.046146, 38.853355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.135406, 39.213501, 38.807663>,  <35.858997, 39.492428, 38.731506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135406, 39.213501, 38.807663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147196, -0.122126, -0.981539,
		0.707691, 0.706286, 0.018251,
		0.691018, -0.697313, 0.190391,
		36.342712, 39.004307, 38.864780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403358, 39.624424, 38.253166>,  <35.858997, 39.492428, 38.731506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403358, 39.624424, 38.253166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455914, 39.239563, 38.348671>,  <36.487446, 39.008648, 38.405975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455914, 39.239563, 38.348671>,  <36.403358, 39.624424, 38.253166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455914, 39.239563, 38.348671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298027, -0.191371, -0.935178,
		0.945472, 0.194030, 0.261602,
		0.131390, -0.962148, 0.238762,
		36.495331, 38.950920, 38.420300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069019, 39.394058, 37.926884>,  <36.403358, 39.624424, 38.253166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069019, 39.394058, 37.926884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.890724, 39.041615, 37.990078>,  <36.783749, 38.830147, 38.027992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.890724, 39.041615, 37.990078>,  <37.069019, 39.394058, 37.926884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890724, 39.041615, 37.990078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334723, -0.327737, -0.883487,
		0.830229, -0.340923, 0.441013,
		-0.445737, -0.881113, 0.157982,
		36.757004, 38.777279, 38.037472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.550146, 39.798370, 26.398504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182775, 39.878098, 26.535189>,  <26.962353, 39.925934, 26.617199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182775, 39.878098, 26.535189>,  <27.550146, 39.798370, 26.398504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182775, 39.878098, 26.535189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194397, -0.524901, 0.828667,
		0.344533, 0.827497, 0.443335,
		-0.918426, 0.199320, 0.341709,
		26.907248, 39.937893, 26.637701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650934, 39.841347, 27.160362>,  <27.550146, 39.798370, 26.398504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650934, 39.841347, 27.160362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.255489, 39.791504, 27.126602>,  <27.018223, 39.761597, 27.106346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.255489, 39.791504, 27.126602>,  <27.650934, 39.841347, 27.160362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255489, 39.791504, 27.126602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027200, -0.403632, 0.914517,
		-0.148021, 0.906397, 0.395645,
		-0.988610, -0.124606, -0.084400,
		26.958906, 39.754124, 27.101282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372574, 40.052460, 27.833803>,  <27.650934, 39.841347, 27.160362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372574, 40.052460, 27.833803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080687, 39.834705, 27.668320>,  <26.905554, 39.704052, 27.569029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080687, 39.834705, 27.668320>,  <27.372574, 40.052460, 27.833803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080687, 39.834705, 27.668320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207607, -0.400092, 0.892651,
		-0.651469, 0.737272, 0.178936,
		-0.729717, -0.544386, -0.413711,
		26.861771, 39.671391, 27.544207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884457, 40.212494, 28.238163>,  <27.372574, 40.052460, 27.833803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884457, 40.212494, 28.238163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795738, 39.864525, 28.061962>,  <26.742506, 39.655743, 27.956242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795738, 39.864525, 28.061962>,  <26.884457, 40.212494, 28.238163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795738, 39.864525, 28.061962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303540, -0.367712, 0.879005,
		-0.926644, 0.328671, -0.182498,
		-0.221797, -0.869921, -0.440503,
		26.729198, 39.603550, 27.929811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257822, 39.919674, 28.572521>,  <26.884457, 40.212494, 28.238163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257822, 39.919674, 28.572521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.449316, 39.615437, 28.397112>,  <26.564213, 39.432892, 28.291866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.449316, 39.615437, 28.397112>,  <26.257822, 39.919674, 28.572521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449316, 39.615437, 28.397112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186957, -0.576342, 0.795535,
		-0.857822, -0.298866, -0.418115,
		0.478736, -0.760598, -0.438524,
		26.592937, 39.387257, 28.265554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827003, 39.344612, 28.738651>,  <26.257822, 39.919674, 28.572521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827003, 39.344612, 28.738651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166962, 39.170502, 28.619852>,  <26.370937, 39.066036, 28.548573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166962, 39.170502, 28.619852>,  <25.827003, 39.344612, 28.738651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166962, 39.170502, 28.619852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027241, -0.599159, 0.800166,
		-0.526242, -0.671970, -0.521082,
		0.849898, -0.435275, -0.296998,
		26.421930, 39.039917, 28.530752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612040, 38.643131, 28.690575>,  <25.827003, 39.344612, 28.738651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612040, 38.643131, 28.690575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.011646, 38.629902, 28.702398>,  <26.251410, 38.621964, 28.709492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.011646, 38.629902, 28.702398>,  <25.612040, 38.643131, 28.690575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011646, 38.629902, 28.702398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044288, -0.706503, 0.706323,
		-0.002476, -0.706937, -0.707272,
		0.999016, -0.033073, 0.029559,
		26.311352, 38.619980, 28.711266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827410, 37.951420, 28.490162>,  <25.612040, 38.643131, 28.690575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827410, 37.951420, 28.490162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.114500, 38.127396, 28.706059>,  <26.286755, 38.232983, 28.835596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.114500, 38.127396, 28.706059>,  <25.827410, 37.951420, 28.490162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114500, 38.127396, 28.706059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023518, -0.790003, 0.612652,
		0.695927, -0.427024, -0.577353,
		0.717727, 0.439939, 0.539742,
		26.329819, 38.259377, 28.867981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189199, 37.424412, 28.583694>,  <25.827410, 37.951420, 28.490162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189199, 37.424412, 28.583694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325926, 37.683140, 28.856394>,  <26.407963, 37.838375, 29.020014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325926, 37.683140, 28.856394>,  <26.189199, 37.424412, 28.583694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325926, 37.683140, 28.856394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061775, -0.739342, 0.670490,
		0.937734, -0.187070, -0.292678,
		0.341818, 0.646821, 0.681750,
		26.428471, 37.877186, 29.060919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774593, 37.046005, 28.952131>,  <26.189199, 37.424412, 28.583694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774593, 37.046005, 28.952131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664743, 37.334023, 29.207041>,  <26.598833, 37.506832, 29.359985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664743, 37.334023, 29.207041>,  <26.774593, 37.046005, 28.952131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664743, 37.334023, 29.207041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061152, -0.674490, 0.735747,
		0.959606, 0.163082, 0.229263,
		-0.274623, 0.720046, 0.637272,
		26.582357, 37.550037, 29.398222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123114, 36.853100, 29.684231>,  <26.774593, 37.046005, 28.952131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123114, 36.853100, 29.684231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834984, 37.118538, 29.765001>,  <26.662106, 37.277802, 29.813463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834984, 37.118538, 29.765001>,  <27.123114, 36.853100, 29.684231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834984, 37.118538, 29.765001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261794, -0.529672, 0.806791,
		0.642336, 0.528290, 0.555261,
		-0.720325, 0.663595, 0.201924,
		26.618887, 37.317616, 29.825579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328440, 37.087101, 30.387089>,  <27.123114, 36.853100, 29.684231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328440, 37.087101, 30.387089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943378, 37.165779, 30.312674>,  <26.712341, 37.212986, 30.268024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.943378, 37.165779, 30.312674>,  <27.328440, 37.087101, 30.387089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943378, 37.165779, 30.312674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254346, -0.421570, 0.870395,
		0.092778, 0.885206, 0.455854,
		-0.962653, 0.196698, -0.186036,
		26.654583, 37.224789, 30.256863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038437, 37.403076, 31.010279>,  <27.328440, 37.087101, 30.387089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038437, 37.403076, 31.010279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720566, 37.263161, 30.811831>,  <26.529842, 37.179211, 30.692762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720566, 37.263161, 30.811831>,  <27.038437, 37.403076, 31.010279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720566, 37.263161, 30.811831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374864, -0.360050, 0.854307,
		-0.477456, 0.864876, 0.155000,
		-0.794678, -0.349791, -0.496119,
		26.482162, 37.158222, 30.662994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516838, 37.602695, 31.450550>,  <27.038437, 37.403076, 31.010279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516838, 37.602695, 31.450550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.419439, 37.295864, 31.213133>,  <26.361000, 37.111763, 31.070683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.419439, 37.295864, 31.213133>,  <26.516838, 37.602695, 31.450550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419439, 37.295864, 31.213133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445641, -0.455058, 0.770925,
		-0.861461, 0.452224, -0.231039,
		-0.243495, -0.767082, -0.593545,
		26.346392, 37.065739, 31.035070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859726, 37.480206, 31.499607>,  <26.516838, 37.602695, 31.450550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859726, 37.480206, 31.499607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968540, 37.118546, 31.367849>,  <26.033829, 36.901550, 31.288794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968540, 37.118546, 31.367849>,  <25.859726, 37.480206, 31.499607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968540, 37.118546, 31.367849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594052, -0.427083, 0.681691,
		-0.757033, 0.010235, -0.653296,
		0.272034, -0.904155, -0.329396,
		26.050150, 36.847298, 31.269030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309214, 37.135086, 31.739784>,  <25.859726, 37.480206, 31.499607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309214, 37.135086, 31.739784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.566826, 36.839088, 31.662182>,  <25.721394, 36.661491, 31.615620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.566826, 36.839088, 31.662182>,  <25.309214, 37.135086, 31.739784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566826, 36.839088, 31.662182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501796, -0.600058, 0.623002,
		-0.577431, -0.303880, -0.757780,
		0.644030, -0.739991, -0.194007,
		25.760035, 36.617092, 31.603979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907530, 36.514359, 31.807884>,  <25.309214, 37.135086, 31.739784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907530, 36.514359, 31.807884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.293854, 36.416553, 31.842356>,  <25.525648, 36.357868, 31.863039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.293854, 36.416553, 31.842356>,  <24.907530, 36.514359, 31.807884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293854, 36.416553, 31.842356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235512, -0.688479, 0.685953,
		-0.108395, -0.682795, -0.722525,
		0.965808, -0.244517, 0.086179,
		25.583595, 36.343197, 31.868210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854790, 35.818405, 31.791780>,  <24.907530, 36.514359, 31.807884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854790, 35.818405, 31.791780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.202272, 35.916710, 31.963802>,  <25.410763, 35.975693, 32.067017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.202272, 35.916710, 31.963802>,  <24.854790, 35.818405, 31.791780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202272, 35.916710, 31.963802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164784, -0.675388, 0.718817,
		0.467111, -0.695308, -0.546218,
		0.868708, 0.245759, 0.430057,
		25.462885, 35.990437, 32.092819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080696, 35.184181, 32.004314>,  <24.854790, 35.818405, 31.791780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080696, 35.184181, 32.004314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.309149, 35.450657, 32.196148>,  <25.446220, 35.610542, 32.311249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.309149, 35.450657, 32.196148>,  <25.080696, 35.184181, 32.004314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309149, 35.450657, 32.196148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049760, -0.611269, 0.789857,
		0.819348, -0.427249, -0.382265,
		0.571133, 0.666189, 0.479583,
		25.480488, 35.650513, 32.340023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560659, 34.774521, 32.388966>,  <25.080696, 35.184181, 32.004314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560659, 34.774521, 32.388966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.545332, 35.134037, 32.563644>,  <25.536137, 35.349747, 32.668453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.545332, 35.134037, 32.563644>,  <25.560659, 34.774521, 32.388966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545332, 35.134037, 32.563644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115866, -0.438066, 0.891445,
		0.992525, -0.016441, 0.120925,
		-0.038316, 0.898792, 0.436696,
		25.533836, 35.403675, 32.694653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038750, 34.688320, 32.970936>,  <25.560659, 34.774521, 32.388966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038750, 34.688320, 32.970936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.798855, 35.000999, 33.039360>,  <25.654919, 35.188606, 33.080414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.798855, 35.000999, 33.039360>,  <26.038750, 34.688320, 32.970936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798855, 35.000999, 33.039360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148670, -0.318902, 0.936055,
		0.786267, 0.535953, 0.307472,
		-0.599735, 0.781701, 0.171062,
		25.618935, 35.235508, 33.090679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226551, 34.475147, 32.305267>,  <26.038750, 34.688320, 32.970936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226551, 34.475147, 32.305267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549175, 34.238754, 32.299694>,  <26.742750, 34.096916, 32.296352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549175, 34.238754, 32.299694>,  <26.226551, 34.475147, 32.305267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549175, 34.238754, 32.299694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476577, 0.664003, -0.576172,
		0.349758, 0.458080, 0.817210,
		0.806563, -0.590985, -0.013930,
		26.791143, 34.061459, 32.295513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834732, 34.880684, 32.412033>,  <26.226551, 34.475147, 32.305267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834732, 34.880684, 32.412033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.985308, 34.561256, 32.224171>,  <27.075653, 34.369598, 32.111454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.985308, 34.561256, 32.224171>,  <26.834732, 34.880684, 32.412033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985308, 34.561256, 32.224171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500632, 0.601900, -0.622161,
		0.779525, -0.000918, 0.626370,
		0.376441, -0.798571, -0.469656,
		27.098240, 34.321686, 32.083275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520023, 35.079819, 32.318317>,  <26.834732, 34.880684, 32.412033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520023, 35.079819, 32.318317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442198, 34.787064, 32.057095>,  <27.395502, 34.611408, 31.900362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442198, 34.787064, 32.057095>,  <27.520023, 35.079819, 32.318317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442198, 34.787064, 32.057095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563556, 0.461518, -0.685132,
		0.802838, -0.501336, 0.322666,
		-0.194565, -0.731891, -0.653055,
		27.383827, 34.567497, 31.861177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050901, 35.237209, 31.925844>,  <27.520023, 35.079819, 32.318317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050901, 35.237209, 31.925844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877790, 34.951740, 31.705524>,  <27.773924, 34.780460, 31.573332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877790, 34.951740, 31.705524>,  <28.050901, 35.237209, 31.925844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877790, 34.951740, 31.705524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469859, 0.342868, -0.813433,
		0.769373, -0.610835, 0.186938,
		-0.432779, -0.713668, -0.550800,
		27.747957, 34.737640, 31.540285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622534, 34.891434, 31.411844>,  <28.050901, 35.237209, 31.925844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622534, 34.891434, 31.411844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264774, 34.851665, 31.237413>,  <28.050117, 34.827805, 31.132755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.264774, 34.851665, 31.237413>,  <28.622534, 34.891434, 31.411844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264774, 34.851665, 31.237413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352019, 0.444997, -0.823444,
		0.275915, -0.889997, -0.363010,
		-0.894402, -0.099414, -0.436077,
		27.996454, 34.821842, 31.106590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708652, 34.634792, 30.759748>,  <28.622534, 34.891434, 31.411844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708652, 34.634792, 30.759748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339052, 34.784653, 30.729149>,  <28.117292, 34.874569, 30.710789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339052, 34.784653, 30.729149>,  <28.708652, 34.634792, 30.759748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339052, 34.784653, 30.729149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226054, 0.373838, -0.899525,
		-0.308413, -0.848457, -0.430119,
		-0.924003, 0.374656, -0.076500,
		28.061852, 34.897049, 30.706200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382145, 34.369526, 30.096109>,  <28.708652, 34.634792, 30.759748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382145, 34.369526, 30.096109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208208, 34.711472, 30.209330>,  <28.103846, 34.916641, 30.277262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208208, 34.711472, 30.209330>,  <28.382145, 34.369526, 30.096109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208208, 34.711472, 30.209330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260155, 0.420179, -0.869350,
		-0.862110, -0.304391, -0.405108,
		-0.434840, 0.854866, 0.283052,
		28.077757, 34.967930, 30.294245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937721, 34.592499, 29.549858>,  <28.382145, 34.369526, 30.096109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937721, 34.592499, 29.549858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003265, 34.937546, 29.741289>,  <28.042591, 35.144573, 29.856148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003265, 34.937546, 29.741289>,  <27.937721, 34.592499, 29.549858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003265, 34.937546, 29.741289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137441, 0.460441, -0.876986,
		-0.976862, 0.209478, -0.043113,
		0.163858, 0.862620, 0.478578,
		28.052423, 35.196331, 29.884863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756180, 35.070766, 29.065645>,  <27.937721, 34.592499, 29.549858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756180, 35.070766, 29.065645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928177, 35.301689, 29.343298>,  <28.031376, 35.440243, 29.509890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928177, 35.301689, 29.343298>,  <27.756180, 35.070766, 29.065645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928177, 35.301689, 29.343298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120962, 0.725071, -0.677968,
		-0.894692, 0.375486, 0.241944,
		0.429994, 0.577307, 0.694134,
		28.057175, 35.474880, 29.551538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473236, 35.668724, 28.990868>,  <27.756180, 35.070766, 29.065645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473236, 35.668724, 28.990868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829834, 35.731060, 29.161018>,  <28.043793, 35.768463, 29.263109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829834, 35.731060, 29.161018>,  <27.473236, 35.668724, 28.990868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829834, 35.731060, 29.161018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180351, 0.739272, -0.648807,
		-0.415580, 0.655127, 0.630953,
		0.891497, 0.155839, 0.425379,
		28.097282, 35.777813, 29.288631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528215, 36.367714, 28.946119>,  <27.473236, 35.668724, 28.990868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528215, 36.367714, 28.946119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.902920, 36.254696, 29.028725>,  <28.127743, 36.186886, 29.078289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.902920, 36.254696, 29.028725>,  <27.528215, 36.367714, 28.946119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902920, 36.254696, 29.028725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349834, 0.739242, -0.575446,
		0.009927, 0.611300, 0.791337,
		0.936759, -0.282549, 0.206515,
		28.183947, 36.169930, 29.090679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746145, 36.956451, 29.135677>,  <27.528215, 36.367714, 28.946119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746145, 36.956451, 29.135677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048937, 36.721874, 29.020395>,  <28.230612, 36.581127, 28.951225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048937, 36.721874, 29.020395>,  <27.746145, 36.956451, 29.135677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048937, 36.721874, 29.020395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437512, 0.782481, -0.443065,
		0.485348, 0.209299, 0.848900,
		0.756981, -0.586444, -0.288205,
		28.276031, 36.545940, 28.933933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255251, 37.473389, 28.979467>,  <27.746145, 36.956451, 29.135677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255251, 37.473389, 28.979467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388243, 37.129402, 28.824594>,  <28.468039, 36.923008, 28.731670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388243, 37.129402, 28.824594>,  <28.255251, 37.473389, 28.979467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388243, 37.129402, 28.824594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506956, 0.509147, -0.695531,
		0.795269, 0.034964, 0.605247,
		0.332479, -0.859969, -0.387184,
		28.487986, 36.871410, 28.708439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001078, 37.477554, 29.069256>,  <28.255251, 37.473389, 28.979467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001078, 37.477554, 29.069256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.902451, 37.226841, 28.773596>,  <28.843275, 37.076412, 28.596199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.902451, 37.226841, 28.773596>,  <29.001078, 37.477554, 29.069256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902451, 37.226841, 28.773596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466342, 0.591854, -0.657444,
		0.849547, -0.506801, 0.146366,
		-0.246566, -0.626786, -0.739151,
		28.828480, 37.038807, 28.551851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590197, 37.408844, 28.582109>,  <29.001078, 37.477554, 29.069256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590197, 37.408844, 28.582109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263723, 37.288597, 28.384739>,  <29.067839, 37.216450, 28.266315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263723, 37.288597, 28.384739>,  <29.590197, 37.408844, 28.582109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263723, 37.288597, 28.384739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315029, 0.484355, -0.816184,
		0.484355, -0.821600, -0.300619,
		0.816184, 0.300619, 0.493428,
		29.018867, 37.198410, 28.236710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805042, 37.198933, 27.921745>,  <29.590197, 37.408844, 28.582109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805042, 37.198933, 27.921745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413698, 37.239838, 27.849794>,  <29.178892, 37.264381, 27.806623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413698, 37.239838, 27.849794>,  <29.805042, 37.198933, 27.921745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413698, 37.239838, 27.849794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205873, 0.394154, -0.895689,
		-0.020693, -0.913337, -0.406677,
		-0.978360, 0.102259, -0.179875,
		29.120190, 37.270515, 27.795832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692026, 36.984867, 27.225401>,  <29.805042, 37.198933, 27.921745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692026, 36.984867, 27.225401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411440, 37.243519, 27.345282>,  <29.243088, 37.398708, 27.417210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411440, 37.243519, 27.345282>,  <29.692026, 36.984867, 27.225401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411440, 37.243519, 27.345282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103804, 0.508722, -0.854650,
		-0.705103, -0.568397, -0.423974,
		-0.701465, 0.646627, 0.299700,
		29.201000, 37.437508, 27.435192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324648, 37.077229, 26.634369>,  <29.692026, 36.984867, 27.225401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324648, 37.077229, 26.634369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227406, 37.375866, 26.882078>,  <29.169060, 37.555050, 27.030704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227406, 37.375866, 26.882078>,  <29.324648, 37.077229, 26.634369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227406, 37.375866, 26.882078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055648, 0.648109, -0.759512,
		-0.968402, -0.150182, -0.199106,
		-0.243107, 0.746593, 0.619273,
		29.154474, 37.599842, 27.067860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970078, 37.457645, 26.195381>,  <29.324648, 37.077229, 26.634369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970078, 37.457645, 26.195381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056545, 37.705379, 26.497295>,  <29.108427, 37.854019, 26.678444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056545, 37.705379, 26.497295>,  <28.970078, 37.457645, 26.195381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056545, 37.705379, 26.497295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021002, 0.769934, -0.637777,
		-0.976129, 0.153721, 0.153430,
		0.216171, 0.619331, 0.754784,
		29.121397, 37.891178, 26.723730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375795, 38.056931, 26.193409>,  <28.970078, 37.457645, 26.195381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375795, 38.056931, 26.193409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.701427, 38.192135, 26.382311>,  <28.896807, 38.273258, 26.495651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.701427, 38.192135, 26.382311>,  <28.375795, 38.056931, 26.193409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701427, 38.192135, 26.382311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067351, 0.752738, -0.654866,
		-0.576835, 0.564919, 0.590023,
		0.814079, 0.338011, 0.472253,
		28.945652, 38.293537, 26.523987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184690, 38.685452, 26.412493>,  <28.375795, 38.056931, 26.193409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184690, 38.685452, 26.412493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584576, 38.677971, 26.406509>,  <28.824507, 38.673481, 26.402920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584576, 38.677971, 26.406509>,  <28.184690, 38.685452, 26.412493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584576, 38.677971, 26.406509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009564, 0.884379, -0.466671,
		0.021957, 0.466394, 0.884305,
		0.999713, -0.018705, -0.014958,
		28.884489, 38.672359, 26.402021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.649220, 38.422062, 44.752026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253788, 38.450459, 44.805199>,  <35.016529, 38.467495, 44.837101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253788, 38.450459, 44.805199>,  <35.649220, 38.422062, 44.752026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253788, 38.450459, 44.805199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145243, 0.684038, 0.714840,
		-0.040183, 0.725984, -0.686537,
		-0.988580, 0.070990, 0.132931,
		34.957214, 38.471756, 44.845078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685127, 39.052498, 45.002914>,  <35.649220, 38.422062, 44.752026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685127, 39.052498, 45.002914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323959, 38.914837, 45.105904>,  <35.107258, 38.832241, 45.167698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323959, 38.914837, 45.105904>,  <35.685127, 39.052498, 45.002914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323959, 38.914837, 45.105904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013278, 0.621089, 0.783628,
		-0.429602, 0.704135, -0.565363,
		-0.902921, -0.344155, 0.257471,
		35.053082, 38.811592, 45.183144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196922, 39.658115, 45.136585>,  <35.685127, 39.052498, 45.002914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196922, 39.658115, 45.136585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030090, 39.361450, 45.346722>,  <34.929993, 39.183453, 45.472805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030090, 39.361450, 45.346722>,  <35.196922, 39.658115, 45.136585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030090, 39.361450, 45.346722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086745, 0.607864, 0.789288,
		-0.904722, 0.283623, -0.317862,
		-0.417078, -0.741659, 0.525345,
		34.904968, 39.138954, 45.504326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739712, 40.002079, 45.666451>,  <35.196922, 39.658115, 45.136585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739712, 40.002079, 45.666451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781136, 39.627068, 45.799305>,  <34.805988, 39.402061, 45.879017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781136, 39.627068, 45.799305>,  <34.739712, 40.002079, 45.666451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781136, 39.627068, 45.799305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010261, 0.334917, 0.942192,
		-0.994570, -0.094166, 0.044305,
		0.103560, -0.937530, 0.332132,
		34.812202, 39.345810, 45.898945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116501, 39.922546, 46.220093>,  <34.739712, 40.002079, 45.666451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116501, 39.922546, 46.220093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418293, 39.663345, 46.261749>,  <34.599369, 39.507824, 46.286743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418293, 39.663345, 46.261749>,  <34.116501, 39.922546, 46.220093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418293, 39.663345, 46.261749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084072, 0.061947, 0.994532,
		-0.650914, -0.759112, -0.007741,
		0.754482, -0.648006, 0.104142,
		34.644638, 39.468945, 46.292992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824860, 39.390026, 46.690891>,  <34.116501, 39.922546, 46.220093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824860, 39.390026, 46.690891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.224609, 39.382523, 46.702923>,  <34.464458, 39.378021, 46.710144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.224609, 39.382523, 46.702923>,  <33.824860, 39.390026, 46.690891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224609, 39.382523, 46.702923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025839, 0.195557, 0.980352,
		-0.024277, -0.980513, 0.194950,
		0.999371, -0.018763, 0.030083,
		34.524422, 39.376896, 46.711948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997734, 39.163971, 47.321980>,  <33.824860, 39.390026, 46.690891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997734, 39.163971, 47.321980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351604, 39.313507, 47.210556>,  <34.563927, 39.403229, 47.143700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351604, 39.313507, 47.210556>,  <33.997734, 39.163971, 47.321980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351604, 39.313507, 47.210556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210401, 0.213044, 0.954119,
		0.416035, -0.902693, 0.109817,
		0.884673, 0.373842, -0.278562,
		34.617004, 39.425659, 47.126987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433918, 38.841827, 47.745625>,  <33.997734, 39.163971, 47.321980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433918, 38.841827, 47.745625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606239, 39.183220, 47.628342>,  <34.709633, 39.388058, 47.557972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606239, 39.183220, 47.628342>,  <34.433918, 38.841827, 47.745625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606239, 39.183220, 47.628342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104557, 0.275514, 0.955594,
		0.896367, -0.442332, 0.029455,
		0.430805, 0.853484, -0.293210,
		34.735481, 39.439266, 47.540379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054729, 38.911797, 48.012711>,  <34.433918, 38.841827, 47.745625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054729, 38.911797, 48.012711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977474, 39.291771, 47.914467>,  <34.931122, 39.519756, 47.855518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977474, 39.291771, 47.914467>,  <35.054729, 38.911797, 48.012711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977474, 39.291771, 47.914467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210183, 0.284570, 0.935331,
		0.958395, 0.129022, -0.254620,
		-0.193136, 0.949933, -0.245612,
		34.919533, 39.576752, 47.840782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575466, 39.174355, 48.344650>,  <35.054729, 38.911797, 48.012711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575466, 39.174355, 48.344650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313782, 39.463753, 48.256496>,  <35.156773, 39.637390, 48.203606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313782, 39.463753, 48.256496>,  <35.575466, 39.174355, 48.344650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313782, 39.463753, 48.256496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124220, 0.390220, 0.912303,
		0.746043, 0.569461, -0.345158,
		-0.654209, 0.723493, -0.220383,
		35.117519, 39.680801, 48.190380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916626, 39.836651, 48.362698>,  <35.575466, 39.174355, 48.344650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916626, 39.836651, 48.362698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531933, 39.922153, 48.431263>,  <35.301117, 39.973457, 48.472401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531933, 39.922153, 48.431263>,  <35.916626, 39.836651, 48.362698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531933, 39.922153, 48.431263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239732, 0.353526, 0.904184,
		0.132678, 0.910674, -0.391242,
		-0.961730, 0.213758, 0.171412,
		35.243412, 39.986282, 48.482685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894669, 40.383842, 48.892139>,  <35.916626, 39.836651, 48.362698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894669, 40.383842, 48.892139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512367, 40.267609, 48.910458>,  <35.282986, 40.197868, 48.921448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512367, 40.267609, 48.910458>,  <35.894669, 40.383842, 48.892139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512367, 40.267609, 48.910458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072452, 0.383387, 0.920742,
		-0.285112, 0.876683, -0.387476,
		-0.955752, -0.290588, 0.045791,
		35.225643, 40.180431, 48.924194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471970, 40.861591, 48.898602>,  <35.894669, 40.383842, 48.892139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471970, 40.861591, 48.898602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313183, 40.569359, 49.120834>,  <35.217911, 40.394020, 49.254173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313183, 40.569359, 49.120834>,  <35.471970, 40.861591, 48.898602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313183, 40.569359, 49.120834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147272, 0.546775, 0.824226,
		-0.905941, 0.409012, -0.109457,
		-0.396966, -0.730580, 0.555582,
		35.194092, 40.350185, 49.287510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477615, 41.065605, 48.129456>,  <35.471970, 40.861591, 48.898602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477615, 41.065605, 48.129456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755455, 40.876743, 47.912346>,  <35.922157, 40.763428, 47.782078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755455, 40.876743, 47.912346>,  <35.477615, 41.065605, 48.129456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755455, 40.876743, 47.912346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359140, 0.426160, -0.830305,
		0.623341, 0.771659, 0.126440,
		0.694596, -0.472153, -0.542777,
		35.963833, 40.735096, 47.749512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901661, 41.504650, 48.177258>,  <35.477615, 41.065605, 48.129456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901661, 41.504650, 48.177258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797874, 41.880417, 48.087654>,  <34.735603, 42.105877, 48.033894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797874, 41.880417, 48.087654>,  <34.901661, 41.504650, 48.177258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797874, 41.880417, 48.087654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150935, -0.189658, -0.970179,
		-0.953885, -0.285537, -0.092581,
		-0.259464, 0.939414, -0.224009,
		34.720036, 42.162243, 48.020451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408520, 41.506798, 47.672039>,  <34.901661, 41.504650, 48.177258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408520, 41.506798, 47.672039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565643, 41.871857, 47.626823>,  <34.659916, 42.090893, 47.599693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565643, 41.871857, 47.626823>,  <34.408520, 41.506798, 47.672039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565643, 41.871857, 47.626823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096787, -0.163261, -0.981824,
		-0.914513, 0.374729, -0.152463,
		0.392809, 0.912647, -0.113035,
		34.683487, 42.145649, 47.592915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207485, 41.538799, 47.044956>,  <34.408520, 41.506798, 47.672039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207485, 41.538799, 47.044956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429436, 41.871571, 47.046200>,  <34.562607, 42.071232, 47.046947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429436, 41.871571, 47.046200>,  <34.207485, 41.538799, 47.044956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429436, 41.871571, 47.046200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183769, -0.118922, -0.975749,
		-0.811379, 0.541996, -0.218869,
		0.554881, 0.831924, 0.003111,
		34.595901, 42.121147, 47.047134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932629, 42.055492, 46.489811>,  <34.207485, 41.538799, 47.044956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932629, 42.055492, 46.489811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317364, 42.148518, 46.547466>,  <34.548206, 42.204334, 46.582058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317364, 42.148518, 46.547466>,  <33.932629, 42.055492, 46.489811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317364, 42.148518, 46.547466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185244, -0.165811, -0.968603,
		-0.201362, 0.958342, -0.202565,
		0.961841, 0.232564, 0.144139,
		34.605915, 42.218288, 46.590710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029270, 42.558800, 46.010303>,  <33.932629, 42.055492, 46.489811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029270, 42.558800, 46.010303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380493, 42.394718, 46.108894>,  <34.591225, 42.296268, 46.168049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380493, 42.394718, 46.108894>,  <34.029270, 42.558800, 46.010303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380493, 42.394718, 46.108894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188399, -0.177154, -0.965983,
		0.439915, 0.894622, -0.078269,
		0.878055, -0.410204, 0.246478,
		34.643909, 42.271656, 46.182838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435719, 42.741398, 45.552422>,  <34.029270, 42.558800, 46.010303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435719, 42.741398, 45.552422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.660740, 42.439533, 45.687485>,  <34.795753, 42.258415, 45.768524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.660740, 42.439533, 45.687485>,  <34.435719, 42.741398, 45.552422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660740, 42.439533, 45.687485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342725, -0.158804, -0.925916,
		0.752377, 0.636603, 0.169306,
		0.562554, -0.754664, 0.337661,
		34.829506, 42.213135, 45.788784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176544, 42.843143, 45.361805>,  <34.435719, 42.741398, 45.552422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176544, 42.843143, 45.361805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132023, 42.449776, 45.419083>,  <35.105309, 42.213757, 45.453449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132023, 42.449776, 45.419083>,  <35.176544, 42.843143, 45.361805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132023, 42.449776, 45.419083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393148, -0.175911, -0.902491,
		0.912713, -0.044155, 0.406208,
		-0.111306, -0.983416, 0.143196,
		35.098633, 42.154751, 45.462040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702183, 42.581692, 44.823589>,  <35.176544, 42.843143, 45.361805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702183, 42.581692, 44.823589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525078, 42.266384, 44.994511>,  <35.418816, 42.077198, 45.097065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.525078, 42.266384, 44.994511>,  <35.702183, 42.581692, 44.823589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525078, 42.266384, 44.994511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324469, -0.585127, -0.743200,
		0.835869, -0.190417, 0.514844,
		-0.442767, -0.788269, 0.427305,
		35.392246, 42.029903, 45.122704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161835, 42.048416, 44.996407>,  <35.702183, 42.581692, 44.823589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161835, 42.048416, 44.996407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810925, 41.861855, 44.951038>,  <35.600380, 41.749916, 44.923817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810925, 41.861855, 44.951038>,  <36.161835, 42.048416, 44.996407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810925, 41.861855, 44.951038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370754, -0.508352, -0.777252,
		0.304856, -0.723911, 0.618883,
		-0.877271, -0.466403, -0.113418,
		35.547745, 41.721935, 44.917011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202118, 41.222740, 44.890041>,  <36.161835, 42.048416, 44.996407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202118, 41.222740, 44.890041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843262, 41.308270, 44.735420>,  <35.627949, 41.359589, 44.642647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843262, 41.308270, 44.735420>,  <36.202118, 41.222740, 44.890041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843262, 41.308270, 44.735420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249915, -0.475888, -0.843251,
		-0.364263, -0.853118, 0.373500,
		-0.897137, 0.213822, -0.386556,
		35.574120, 41.372417, 44.619453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819218, 40.602535, 44.816830>,  <36.202118, 41.222740, 44.890041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819218, 40.602535, 44.816830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621433, 40.842052, 44.564812>,  <35.502762, 40.985764, 44.413601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621433, 40.842052, 44.564812>,  <35.819218, 40.602535, 44.816830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621433, 40.842052, 44.564812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052251, -0.703067, -0.709202,
		-0.867627, -0.383595, 0.316353,
		-0.494463, 0.598793, -0.630043,
		35.473095, 41.021690, 44.375797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314690, 40.182182, 44.478477>,  <35.819218, 40.602535, 44.816830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314690, 40.182182, 44.478477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362041, 40.494911, 44.233616>,  <35.390453, 40.682549, 44.086697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362041, 40.494911, 44.233616>,  <35.314690, 40.182182, 44.478477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362041, 40.494911, 44.233616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130692, -0.623396, -0.770907,
		-0.984331, 0.011254, -0.175974,
		0.118377, 0.781826, -0.612156,
		35.397556, 40.729458, 44.049969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738983, 40.198971, 43.985291>,  <35.314690, 40.182182, 44.478477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738983, 40.198971, 43.985291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037891, 40.407581, 43.820564>,  <35.217236, 40.532749, 43.721729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037891, 40.407581, 43.820564>,  <34.738983, 40.198971, 43.985291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037891, 40.407581, 43.820564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016624, -0.634200, -0.772991,
		-0.664308, 0.570790, -0.482591,
		0.747274, 0.521526, -0.411815,
		35.262074, 40.564041, 43.697021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474854, 40.399933, 43.344498>,  <34.738983, 40.198971, 43.985291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474854, 40.399933, 43.344498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873394, 40.433270, 43.337032>,  <35.112518, 40.453270, 43.332554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873394, 40.433270, 43.337032>,  <34.474854, 40.399933, 43.344498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873394, 40.433270, 43.337032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023426, -0.476808, -0.878695,
		-0.082126, 0.875048, -0.477019,
		0.996347, 0.083338, -0.018660,
		35.172298, 40.458271, 43.331436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899292, 40.911541, 43.220806>,  <34.474854, 40.399933, 43.344498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899292, 40.911541, 43.220806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527645, 40.807877, 43.115295>,  <33.304657, 40.745678, 43.051991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527645, 40.807877, 43.115295>,  <33.899292, 40.911541, 43.220806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527645, 40.807877, 43.115295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339884, 0.317523, 0.885245,
		-0.145664, 0.912149, -0.383100,
		-0.929119, -0.259158, -0.263773,
		33.248909, 40.730129, 43.036163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528698, 41.431198, 43.480061>,  <33.899292, 40.911541, 43.220806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528698, 41.431198, 43.480061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268429, 41.132477, 43.425056>,  <33.112267, 40.953243, 43.392056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268429, 41.132477, 43.425056>,  <33.528698, 41.431198, 43.480061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268429, 41.132477, 43.425056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497573, 0.282512, 0.820127,
		-0.573629, 0.602051, -0.555413,
		-0.650669, -0.746807, -0.137508,
		33.073227, 40.908436, 43.383804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860233, 41.670845, 43.392715>,  <33.528698, 41.431198, 43.480061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860233, 41.670845, 43.392715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838142, 41.300655, 43.542618>,  <32.824890, 41.078541, 43.632561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838142, 41.300655, 43.542618>,  <32.860233, 41.670845, 43.392715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838142, 41.300655, 43.542618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374359, 0.367144, 0.851505,
		-0.925638, -0.093270, -0.366735,
		-0.055225, -0.925476, 0.374759,
		32.821575, 41.023014, 43.655045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206619, 41.726391, 43.523682>,  <32.860233, 41.670845, 43.392715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206619, 41.726391, 43.523682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369770, 41.419399, 43.721512>,  <32.467663, 41.235203, 43.840210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369770, 41.419399, 43.721512>,  <32.206619, 41.726391, 43.523682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369770, 41.419399, 43.721512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383933, 0.347288, 0.855562,
		-0.828389, -0.538850, -0.153010,
		0.407881, -0.767484, 0.494572,
		32.492134, 41.189156, 43.869884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808052, 41.658604, 44.056599>,  <32.206619, 41.726391, 43.523682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808052, 41.658604, 44.056599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128063, 41.468472, 44.203030>,  <32.320068, 41.354393, 44.290890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128063, 41.468472, 44.203030>,  <31.808052, 41.658604, 44.056599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128063, 41.468472, 44.203030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308475, 0.197443, 0.930516,
		-0.514584, -0.857365, 0.011332,
		0.800029, -0.475333, 0.366077,
		32.368073, 41.325871, 44.312851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504276, 41.388348, 44.730556>,  <31.808052, 41.658604, 44.056599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504276, 41.388348, 44.730556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901241, 41.360565, 44.771141>,  <32.139420, 41.343895, 44.795490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901241, 41.360565, 44.771141>,  <31.504276, 41.388348, 44.730556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901241, 41.360565, 44.771141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091852, 0.129739, 0.987285,
		-0.081740, -0.989112, 0.122375,
		0.992412, -0.069460, 0.101457,
		32.198963, 41.339729, 44.801579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573523, 40.925808, 45.250374>,  <31.504276, 41.388348, 44.730556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573523, 40.925808, 45.250374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.893402, 41.164898, 45.227726>,  <32.085331, 41.308350, 45.214138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.893402, 41.164898, 45.227726>,  <31.573523, 40.925808, 45.250374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893402, 41.164898, 45.227726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026843, 0.129802, 0.991176,
		0.599798, -0.791125, 0.119848,
		0.799701, 0.597723, -0.056619,
		32.133312, 41.344215, 45.210739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363010, 40.371655, 45.618755>,  <31.573523, 40.925808, 45.250374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363010, 40.371655, 45.618755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.966375, 40.423016, 45.625343>,  <30.728395, 40.453831, 45.629295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.966375, 40.423016, 45.625343>,  <31.363010, 40.371655, 45.618755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966375, 40.423016, 45.625343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080081, -0.508438, -0.857367,
		-0.101710, -0.851472, 0.514442,
		-0.991585, 0.128400, 0.016473,
		30.668900, 40.461536, 45.630287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225260, 39.741745, 45.122440>,  <31.363010, 40.371655, 45.618755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225260, 39.741745, 45.122440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886536, 39.945339, 45.184204>,  <30.683302, 40.067497, 45.221264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886536, 39.945339, 45.184204>,  <31.225260, 39.741745, 45.122440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886536, 39.945339, 45.184204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337047, -0.288909, -0.896064,
		-0.411479, -0.810838, 0.416205,
		-0.846808, 0.508993, 0.154411,
		30.632492, 40.098038, 45.230526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767096, 39.407646, 44.909473>,  <31.225260, 39.741745, 45.122440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767096, 39.407646, 44.909473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609922, 39.775330, 44.899181>,  <30.515619, 39.995941, 44.893005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.609922, 39.775330, 44.899181>,  <30.767096, 39.407646, 44.909473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609922, 39.775330, 44.899181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347893, -0.174493, -0.921153,
		-0.851220, -0.352999, 0.388349,
		-0.392930, 0.919208, -0.025726,
		30.492043, 40.051090, 44.891464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187624, 39.186863, 44.714848>,  <30.767096, 39.407646, 44.909473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187624, 39.186863, 44.714848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258558, 39.569855, 44.623829>,  <30.301119, 39.799652, 44.569218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258558, 39.569855, 44.623829>,  <30.187624, 39.186863, 44.714848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258558, 39.569855, 44.623829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188668, -0.193852, -0.962718,
		-0.965897, 0.213655, 0.146270,
		0.177334, 0.957482, -0.227551,
		30.311758, 39.857101, 44.555565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658672, 39.423462, 44.230488>,  <30.187624, 39.186863, 44.714848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658672, 39.423462, 44.230488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.930538, 39.714436, 44.192757>,  <30.093658, 39.889019, 44.170116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.930538, 39.714436, 44.192757>,  <29.658672, 39.423462, 44.230488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930538, 39.714436, 44.192757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087523, -0.208104, -0.974183,
		-0.728283, 0.653861, -0.205108,
		0.679664, 0.727433, -0.094331,
		30.134438, 39.932667, 44.164459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525116, 39.723793, 43.636436>,  <29.658672, 39.423462, 44.230488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525116, 39.723793, 43.636436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902374, 39.850956, 43.675240>,  <30.128729, 39.927254, 43.698521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902374, 39.850956, 43.675240>,  <29.525116, 39.723793, 43.636436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902374, 39.850956, 43.675240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132549, -0.092089, -0.986889,
		-0.304804, 0.943640, -0.128991,
		0.943147, 0.317905, 0.097009,
		30.185318, 39.946327, 43.704342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635376, 40.152744, 42.988487>,  <29.525116, 39.723793, 43.636436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635376, 40.152744, 42.988487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.999847, 40.093834, 43.142406>,  <30.218531, 40.058487, 43.234756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.999847, 40.093834, 43.142406>,  <29.635376, 40.152744, 42.988487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999847, 40.093834, 43.142406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368657, -0.125614, -0.921039,
		0.183979, 0.981087, -0.060163,
		0.911177, -0.147272, 0.384795,
		30.273201, 40.049652, 43.257847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.808895, 37.259605, 49.524132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020351, 37.592464, 49.457104>,  <33.147224, 37.792179, 49.416889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020351, 37.592464, 49.457104>,  <32.808895, 37.259605, 49.524132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020351, 37.592464, 49.457104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241062, -0.042106, -0.969596,
		-0.813900, 0.552958, 0.178340,
		0.528636, 0.832145, -0.167568,
		33.178944, 37.842110, 49.406834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409142, 37.647625, 49.011429>,  <32.808895, 37.259605, 49.524132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409142, 37.647625, 49.011429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781410, 37.783596, 48.957333>,  <33.004772, 37.865181, 48.924873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781410, 37.783596, 48.957333>,  <32.409142, 37.647625, 49.011429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781410, 37.783596, 48.957333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092777, -0.138286, -0.986037,
		-0.353886, 0.930228, -0.097161,
		0.930676, 0.339930, -0.135241,
		33.060612, 37.885574, 48.916759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355160, 38.116524, 48.462452>,  <32.409142, 37.647625, 49.011429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355160, 38.116524, 48.462452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740131, 38.008034, 48.467739>,  <32.971115, 37.942940, 48.470913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740131, 38.008034, 48.467739>,  <32.355160, 38.116524, 48.462452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740131, 38.008034, 48.467739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054141, -0.239362, -0.969420,
		0.266094, 0.932279, -0.245052,
		0.962425, -0.271224, 0.013219,
		33.028858, 37.926666, 48.471706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554146, 38.340656, 47.815567>,  <32.355160, 38.116524, 48.462452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554146, 38.340656, 47.815567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812065, 38.065914, 47.949711>,  <32.966816, 37.901070, 48.030197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812065, 38.065914, 47.949711>,  <32.554146, 38.340656, 47.815567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812065, 38.065914, 47.949711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037356, -0.409906, -0.911363,
		0.763439, 0.600173, -0.238649,
		0.644799, -0.686855, 0.335358,
		33.005505, 37.859859, 48.050320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057724, 38.243454, 47.266079>,  <32.554146, 38.340656, 47.815567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057724, 38.243454, 47.266079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148117, 37.908699, 47.465500>,  <33.202354, 37.707848, 47.585152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148117, 37.908699, 47.465500>,  <33.057724, 38.243454, 47.266079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148117, 37.908699, 47.465500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064839, -0.523582, -0.849505,
		0.971971, 0.159649, -0.172583,
		0.225984, -0.836884, 0.498555,
		33.215912, 37.657635, 47.615067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495274, 38.019650, 46.878311>,  <33.057724, 38.243454, 47.266079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495274, 38.019650, 46.878311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366524, 37.704292, 47.088009>,  <33.289272, 37.515079, 47.213829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366524, 37.704292, 47.088009>,  <33.495274, 38.019650, 46.878311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366524, 37.704292, 47.088009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003111, -0.552833, -0.833286,
		0.946777, -0.269845, 0.175490,
		-0.321875, -0.788391, 0.524249,
		33.269962, 37.467773, 47.245285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949390, 37.417316, 46.689308>,  <33.495274, 38.019650, 46.878311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949390, 37.417316, 46.689308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603069, 37.270321, 46.825157>,  <33.395279, 37.182121, 46.906666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.603069, 37.270321, 46.825157>,  <33.949390, 37.417316, 46.689308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603069, 37.270321, 46.825157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014614, -0.659850, -0.751256,
		0.500179, -0.655399, 0.565926,
		-0.865798, -0.367491, 0.339621,
		33.343330, 37.160072, 46.927044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999588, 36.730091, 46.774433>,  <33.949390, 37.417316, 46.689308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999588, 36.730091, 46.774433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.604317, 36.781841, 46.741531>,  <33.367153, 36.812893, 46.721790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.604317, 36.781841, 46.741531>,  <33.999588, 36.730091, 46.774433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604317, 36.781841, 46.741531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055801, -0.803238, -0.593038,
		-0.142794, -0.581438, 0.800962,
		-0.988178, 0.129376, -0.082253,
		33.307865, 36.820656, 46.716854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701424, 36.042164, 46.830200>,  <33.999588, 36.730091, 46.774433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701424, 36.042164, 46.830200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423027, 36.264324, 46.648155>,  <33.255989, 36.397621, 46.538929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423027, 36.264324, 46.648155>,  <33.701424, 36.042164, 46.830200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423027, 36.264324, 46.648155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205141, -0.761196, -0.615221,
		-0.688123, -0.334826, 0.643722,
		-0.695991, 0.555402, -0.455110,
		33.214230, 36.430946, 46.511623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119213, 35.645256, 46.840611>,  <33.701424, 36.042164, 46.830200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119213, 35.645256, 46.840611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035828, 35.903408, 46.546665>,  <32.985798, 36.058300, 46.370296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035828, 35.903408, 46.546665>,  <33.119213, 35.645256, 46.840611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035828, 35.903408, 46.546665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275624, -0.759687, -0.588988,
		-0.938390, 0.079766, 0.336247,
		-0.208461, 0.645378, -0.734868,
		32.973289, 36.097023, 46.326206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637474, 35.267513, 46.455284>,  <33.119213, 35.645256, 46.840611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637474, 35.267513, 46.455284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757706, 35.563351, 46.214397>,  <32.829845, 35.740852, 46.069866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757706, 35.563351, 46.214397>,  <32.637474, 35.267513, 46.455284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757706, 35.563351, 46.214397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069053, -0.612879, -0.787154,
		-0.951255, 0.278183, -0.133146,
		0.300575, 0.739590, -0.602214,
		32.847878, 35.785229, 46.033733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183109, 35.193569, 45.931015>,  <32.637474, 35.267513, 46.455284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183109, 35.193569, 45.931015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.494606, 35.415665, 45.814217>,  <32.681503, 35.548923, 45.744137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.494606, 35.415665, 45.814217>,  <32.183109, 35.193569, 45.931015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494606, 35.415665, 45.814217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082700, -0.552252, -0.829565,
		-0.621867, 0.621870, -0.475981,
		0.778744, 0.555243, -0.291999,
		32.728230, 35.582237, 45.726616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663866, 35.752281, 45.864330>,  <32.183109, 35.193569, 45.931015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663866, 35.752281, 45.864330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.270664, 35.711384, 45.925316>,  <31.034742, 35.686844, 45.961906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.270664, 35.711384, 45.925316>,  <31.663866, 35.752281, 45.864330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270664, 35.711384, 45.925316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094495, 0.430205, 0.897772,
		-0.157384, 0.896922, -0.413232,
		-0.983006, -0.102246, 0.152462,
		30.975761, 35.680710, 45.971054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479965, 36.412872, 46.120396>,  <31.663866, 35.752281, 45.864330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479965, 36.412872, 46.120396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.204351, 36.152054, 46.246933>,  <31.038984, 35.995564, 46.322857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.204351, 36.152054, 46.246933>,  <31.479965, 36.412872, 46.120396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204351, 36.152054, 46.246933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079581, 0.501934, 0.861237,
		-0.720347, 0.568246, -0.397739,
		-0.689033, -0.652042, 0.316345,
		30.997641, 35.956440, 46.341835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799461, 36.752098, 46.206730>,  <31.479965, 36.412872, 46.120396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799461, 36.752098, 46.206730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.787645, 36.421337, 46.431358>,  <30.780556, 36.222881, 46.566135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.787645, 36.421337, 46.431358>,  <30.799461, 36.752098, 46.206730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787645, 36.421337, 46.431358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281554, 0.545948, 0.789093,
		-0.959090, -0.134802, -0.248946,
		-0.029540, -0.826903, 0.561568,
		30.778784, 36.173267, 46.599827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436014, 37.047302, 46.657749>,  <30.799461, 36.752098, 46.206730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436014, 37.047302, 46.657749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489269, 36.695465, 46.840435>,  <30.521223, 36.484364, 46.950047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489269, 36.695465, 46.840435>,  <30.436014, 37.047302, 46.657749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489269, 36.695465, 46.840435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389327, 0.377355, 0.840254,
		-0.911426, -0.289680, -0.292210,
		0.133138, -0.879596, 0.456712,
		30.529211, 36.431587, 46.977448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794403, 36.922867, 46.855350>,  <30.436014, 37.047302, 46.657749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794403, 36.922867, 46.855350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.071402, 36.733280, 47.072903>,  <30.237600, 36.619530, 47.203434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.071402, 36.733280, 47.072903>,  <29.794403, 36.922867, 46.855350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071402, 36.733280, 47.072903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309908, 0.485354, 0.817550,
		-0.651463, -0.734705, 0.189222,
		0.692498, -0.473962, 0.543881,
		30.279150, 36.591091, 47.236069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451069, 36.715221, 47.489956>,  <29.794403, 36.922867, 46.855350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451069, 36.715221, 47.489956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.847513, 36.744225, 47.534576>,  <30.085381, 36.761627, 47.561348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.847513, 36.744225, 47.534576>,  <29.451069, 36.715221, 47.489956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847513, 36.744225, 47.534576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133015, 0.556671, 0.820015,
		-0.002641, -0.827563, 0.561367,
		0.991110, 0.072504, 0.111549,
		30.144846, 36.765976, 47.568043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457224, 36.865265, 48.120140>,  <29.451069, 36.715221, 47.489956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457224, 36.865265, 48.120140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.832430, 36.944328, 48.006256>,  <30.057552, 36.991764, 47.937923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.832430, 36.944328, 48.006256>,  <29.457224, 36.865265, 48.120140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832430, 36.944328, 48.006256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055103, 0.725964, 0.685522,
		0.342189, -0.658718, 0.670073,
		0.938014, 0.197655, -0.284714,
		30.113834, 37.003624, 47.920841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893431, 36.883694, 48.794407>,  <29.457224, 36.865265, 48.120140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893431, 36.883694, 48.794407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.095501, 37.085140, 48.514072>,  <30.216743, 37.206009, 48.345871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.095501, 37.085140, 48.514072>,  <29.893431, 36.883694, 48.794407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095501, 37.085140, 48.514072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283311, 0.670294, 0.685887,
		0.815190, -0.545045, 0.195935,
		0.505173, 0.503618, -0.700835,
		30.247053, 37.236225, 48.303822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497129, 37.065338, 49.134949>,  <29.893431, 36.883694, 48.794407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497129, 37.065338, 49.134949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.423952, 37.297718, 48.817703>,  <30.380047, 37.437145, 48.627357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.423952, 37.297718, 48.817703>,  <30.497129, 37.065338, 49.134949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423952, 37.297718, 48.817703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304273, 0.800576, 0.516234,
		0.934853, -0.146882, -0.323227,
		-0.182942, 0.580952, -0.793113,
		30.369070, 37.472004, 48.579769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141653, 37.469719, 49.022202>,  <30.497129, 37.065338, 49.134949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141653, 37.469719, 49.022202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838533, 37.653934, 48.837315>,  <30.656662, 37.764465, 48.726383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838533, 37.653934, 48.837315>,  <31.141653, 37.469719, 49.022202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838533, 37.653934, 48.837315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198655, 0.837607, 0.508871,
		0.621512, 0.293800, -0.726226,
		-0.757798, 0.460539, -0.462218,
		30.611195, 37.792095, 48.698650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290768, 38.271675, 49.001926>,  <31.141653, 37.469719, 49.022202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290768, 38.271675, 49.001926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.896673, 38.247860, 48.937725>,  <30.660215, 38.233570, 48.899204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.896673, 38.247860, 48.937725>,  <31.290768, 38.271675, 49.001926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896673, 38.247860, 48.937725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144896, 0.789317, 0.596643,
		0.091169, 0.611092, -0.786292,
		-0.985238, -0.059535, -0.160506,
		30.601101, 38.230000, 48.889572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129572, 38.939835, 48.952599>,  <31.290768, 38.271675, 49.001926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129572, 38.939835, 48.952599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.779491, 38.759979, 49.023987>,  <30.569443, 38.652065, 49.066818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.779491, 38.759979, 49.023987>,  <31.129572, 38.939835, 48.952599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779491, 38.759979, 49.023987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309886, 0.804379, 0.506898,
		-0.371479, 0.388331, -0.843328,
		-0.875199, -0.449638, 0.178471,
		30.516932, 38.625088, 49.077530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748068, 39.548435, 49.104126>,  <31.129572, 38.939835, 48.952599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748068, 39.548435, 49.104126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517326, 39.254784, 49.247398>,  <30.378881, 39.078594, 49.333363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517326, 39.254784, 49.247398>,  <30.748068, 39.548435, 49.104126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517326, 39.254784, 49.247398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430293, 0.645821, 0.630685,
		-0.694326, 0.209689, -0.688434,
		-0.576853, -0.734129, 0.358183,
		30.344271, 39.034546, 49.354855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069479, 39.811111, 49.173923>,  <30.748068, 39.548435, 49.104126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069479, 39.811111, 49.173923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.108387, 39.497307, 49.418900>,  <30.131733, 39.309025, 49.565884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.108387, 39.497307, 49.418900>,  <30.069479, 39.811111, 49.173923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108387, 39.497307, 49.418900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517295, 0.485856, 0.704520,
		-0.850261, -0.385343, -0.358563,
		0.097272, -0.784509, 0.612441,
		30.137569, 39.261955, 49.602631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728977, 40.113441, 48.588352>,  <30.069479, 39.811111, 49.173923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728977, 40.113441, 48.588352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.721891, 40.489624, 48.452568>,  <29.717640, 40.715332, 48.371098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.721891, 40.489624, 48.452568>,  <29.728977, 40.113441, 48.588352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721891, 40.489624, 48.452568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238665, -0.325719, -0.914848,
		-0.970941, -0.097223, -0.218683,
		-0.017715, 0.940455, -0.339457,
		29.716578, 40.771759, 48.350731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258247, 40.220264, 48.016632>,  <29.728977, 40.113441, 48.588352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258247, 40.220264, 48.016632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.552946, 40.486885, 47.971188>,  <29.729765, 40.646858, 47.943920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.552946, 40.486885, 47.971188>,  <29.258247, 40.220264, 48.016632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552946, 40.486885, 47.971188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161399, -0.336524, -0.927740,
		-0.656622, 0.665174, -0.355514,
		0.736748, 0.666555, -0.113611,
		29.773970, 40.686852, 47.937103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159779, 40.723598, 47.436142>,  <29.258247, 40.220264, 48.016632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159779, 40.723598, 47.436142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.557327, 40.724957, 47.480343>,  <29.795856, 40.725773, 47.506863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.557327, 40.724957, 47.480343>,  <29.159779, 40.723598, 47.436142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557327, 40.724957, 47.480343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107938, -0.245850, -0.963279,
		0.023895, 0.969302, -0.244710,
		0.993871, 0.003395, 0.110499,
		29.855488, 40.725975, 47.513493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458616, 41.152515, 46.857723>,  <29.159779, 40.723598, 47.436142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458616, 41.152515, 46.857723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.760406, 40.930302, 46.997524>,  <29.941481, 40.796974, 47.081406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.760406, 40.930302, 46.997524>,  <29.458616, 41.152515, 46.857723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760406, 40.930302, 46.997524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368417, -0.082232, -0.926017,
		0.543170, 0.827420, 0.142625,
		0.754477, -0.555530, 0.349501,
		29.986750, 40.763641, 47.102375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988609, 41.416874, 46.472775>,  <29.458616, 41.152515, 46.857723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988609, 41.416874, 46.472775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123127, 41.070190, 46.620136>,  <30.203838, 40.862179, 46.708553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.123127, 41.070190, 46.620136>,  <29.988609, 41.416874, 46.472775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123127, 41.070190, 46.620136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333945, -0.256019, -0.907158,
		0.880560, 0.428098, 0.203336,
		0.336295, -0.866710, 0.368401,
		30.224016, 40.810177, 46.730656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711966, 41.455750, 46.305534>,  <29.988609, 41.416874, 46.472775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711966, 41.455750, 46.305534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.604784, 41.073124, 46.351482>,  <30.540476, 40.843548, 46.379051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.604784, 41.073124, 46.351482>,  <30.711966, 41.455750, 46.305534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604784, 41.073124, 46.351482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316533, -0.200016, -0.927255,
		0.909949, -0.212103, 0.356377,
		-0.267954, -0.956560, 0.114867,
		30.524397, 40.786156, 46.385941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180460, 41.072994, 45.922787>,  <30.711966, 41.455750, 46.305534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180460, 41.072994, 45.922787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.882645, 40.810852, 45.973656>,  <30.703955, 40.653568, 46.004177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.882645, 40.810852, 45.973656>,  <31.180460, 41.072994, 45.922787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882645, 40.810852, 45.973656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137713, -0.337175, -0.931315,
		0.653219, -0.675888, 0.341291,
		-0.744540, -0.655354, 0.127171,
		30.659283, 40.614246, 46.011806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906630, 40.799412, 45.926479>,  <31.180460, 41.072994, 45.922787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906630, 40.799412, 45.926479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110729, 41.119541, 45.800537>,  <32.233189, 41.311619, 45.724972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110729, 41.119541, 45.800537>,  <31.906630, 40.799412, 45.926479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110729, 41.119541, 45.800537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033549, 0.384340, 0.922582,
		0.859373, -0.460182, 0.222959,
		0.510247, 0.800322, -0.314853,
		32.263802, 41.359638, 45.706081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349106, 40.892643, 46.418045>,  <31.906630, 40.799412, 45.926479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349106, 40.892643, 46.418045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370033, 41.256134, 46.252407>,  <32.382591, 41.474228, 46.153023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370033, 41.256134, 46.252407>,  <32.349106, 40.892643, 46.418045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370033, 41.256134, 46.252407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137125, 0.404197, 0.904335,
		0.989171, -0.104100, -0.103461,
		0.052323, 0.908729, -0.414095,
		32.385731, 41.528751, 46.128178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909603, 41.183849, 46.677509>,  <32.349106, 40.892643, 46.418045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909603, 41.183849, 46.677509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673553, 41.481197, 46.551556>,  <32.531921, 41.659607, 46.475983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673553, 41.481197, 46.551556>,  <32.909603, 41.183849, 46.677509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673553, 41.481197, 46.551556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186892, 0.505241, 0.842498,
		0.785379, 0.438332, -0.437086,
		-0.590128, 0.743368, -0.314885,
		32.496513, 41.704208, 46.457088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211388, 41.734779, 46.826847>,  <32.909603, 41.183849, 46.677509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211388, 41.734779, 46.826847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.841091, 41.882427, 46.793991>,  <32.618912, 41.971016, 46.774277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.841091, 41.882427, 46.793991>,  <33.211388, 41.734779, 46.826847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841091, 41.882427, 46.793991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066303, 0.372289, 0.925746,
		0.372289, 0.851559, -0.369118,
		-0.925746, 0.369118, -0.082138,
		32.563366, 41.993164, 46.769348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283493, 42.409267, 47.044117>,  <33.211388, 41.734779, 46.826847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283493, 42.409267, 47.044117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888321, 42.361404, 47.083450>,  <32.651218, 42.332687, 47.107052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.888321, 42.361404, 47.083450>,  <33.283493, 42.409267, 47.044117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888321, 42.361404, 47.083450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017855, 0.542678, 0.839751,
		-0.153849, 0.831373, -0.533993,
		-0.987933, -0.119661, 0.098334,
		32.591942, 42.325508, 47.112949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938976, 43.117767, 47.182816>,  <33.283493, 42.409267, 47.044117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938976, 43.117767, 47.182816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716049, 42.818691, 47.327236>,  <32.582294, 42.639244, 47.413891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.716049, 42.818691, 47.327236>,  <32.938976, 43.117767, 47.182816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716049, 42.818691, 47.327236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000763, 0.434386, 0.900726,
		-0.830300, 0.502265, -0.241520,
		-0.557317, -0.747689, 0.361054,
		32.548855, 42.594383, 47.435551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355537, 43.414478, 47.503151>,  <32.938976, 43.117767, 47.182816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355537, 43.414478, 47.503151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360081, 43.042892, 47.651150>,  <32.362808, 42.819942, 47.739952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360081, 43.042892, 47.651150>,  <32.355537, 43.414478, 47.503151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360081, 43.042892, 47.651150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016529, 0.370150, 0.928825,
		-0.999799, -0.004435, 0.019559,
		0.011359, -0.928962, 0.370002,
		32.363487, 42.764202, 47.762150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900837, 43.448097, 48.034512>,  <32.355537, 43.414478, 47.503151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900837, 43.448097, 48.034512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134842, 43.130032, 48.098351>,  <32.275246, 42.939190, 48.136654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134842, 43.130032, 48.098351>,  <31.900837, 43.448097, 48.034512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134842, 43.130032, 48.098351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138514, 0.291851, 0.946381,
		-0.799108, -0.531539, 0.280878,
		0.585013, -0.795166, 0.159595,
		32.310345, 42.891483, 48.146229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630665, 43.160469, 48.625408>,  <31.900837, 43.448097, 48.034512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630665, 43.160469, 48.625408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016487, 43.057026, 48.604420>,  <32.247982, 42.994961, 48.591827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016487, 43.057026, 48.604420>,  <31.630665, 43.160469, 48.625408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016487, 43.057026, 48.604420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130646, 0.295237, 0.946449,
		-0.229264, -0.919760, 0.318559,
		0.964557, -0.258605, -0.052475,
		32.305855, 42.979446, 48.588676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.938408, 35.925045, 33.690594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280914, 35.888874, 33.894020>,  <34.486416, 35.867172, 34.016075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280914, 35.888874, 33.894020>,  <33.938408, 35.925045, 33.690594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280914, 35.888874, 33.894020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447423, 0.362154, 0.817715,
		-0.258120, -0.927722, 0.269641,
		0.856263, -0.090425, 0.508563,
		34.537792, 35.861748, 34.046589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808769, 35.580608, 34.289337>,  <33.938408, 35.925045, 33.690594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808769, 35.580608, 34.289337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140491, 35.800228, 34.330898>,  <34.339523, 35.931999, 34.355835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140491, 35.800228, 34.330898>,  <33.808769, 35.580608, 34.289337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140491, 35.800228, 34.330898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374017, 0.407260, 0.833217,
		0.415194, -0.729832, 0.543101,
		0.829292, 0.549076, 0.103878,
		34.389282, 35.964943, 34.362068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029976, 35.409046, 34.946129>,  <33.808769, 35.580608, 34.289337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029976, 35.409046, 34.946129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144451, 35.779087, 34.846298>,  <34.213135, 36.001110, 34.786400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144451, 35.779087, 34.846298>,  <34.029976, 35.409046, 34.946129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144451, 35.779087, 34.846298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502034, 0.366629, 0.783291,
		0.816123, -0.098873, 0.569356,
		0.286189, 0.925098, -0.249577,
		34.230309, 36.056618, 34.771423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261654, 35.814449, 35.595276>,  <34.029976, 35.409046, 34.946129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261654, 35.814449, 35.595276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171482, 36.079803, 35.309872>,  <34.117378, 36.239014, 35.138630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171482, 36.079803, 35.309872>,  <34.261654, 35.814449, 35.595276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171482, 36.079803, 35.309872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413296, 0.598086, 0.686644,
		0.882250, 0.449686, 0.139345,
		-0.225434, 0.663382, -0.713515,
		34.103851, 36.278820, 35.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602528, 36.292156, 35.854778>,  <34.261654, 35.814449, 35.595276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602528, 36.292156, 35.854778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307701, 36.421665, 35.617493>,  <34.130806, 36.499371, 35.475121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307701, 36.421665, 35.617493>,  <34.602528, 36.292156, 35.854778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307701, 36.421665, 35.617493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277625, 0.655224, 0.702571,
		0.616162, 0.682533, -0.393057,
		-0.737068, 0.323775, -0.593213,
		34.086582, 36.518799, 35.439529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492542, 36.972614, 36.042091>,  <34.602528, 36.292156, 35.854778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492542, 36.972614, 36.042091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163654, 36.922623, 35.819981>,  <33.966324, 36.892628, 35.686714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163654, 36.922623, 35.819981>,  <34.492542, 36.972614, 36.042091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163654, 36.922623, 35.819981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322255, 0.906386, 0.273161,
		0.469157, 0.403540, -0.785523,
		-0.822218, -0.124983, -0.555280,
		33.916988, 36.885128, 35.653397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404091, 37.611797, 35.712124>,  <34.492542, 36.972614, 36.042091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404091, 37.611797, 35.712124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046570, 37.434418, 35.685394>,  <33.832058, 37.327991, 35.669357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046570, 37.434418, 35.685394>,  <34.404091, 37.611797, 35.712124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046570, 37.434418, 35.685394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422131, 0.781644, 0.459171,
		-0.151389, 0.438617, -0.885831,
		-0.893805, -0.443450, -0.066822,
		33.778427, 37.301384, 35.665348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877651, 38.119354, 35.582630>,  <34.404091, 37.611797, 35.712124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877651, 38.119354, 35.582630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650761, 37.821175, 35.722664>,  <33.514626, 37.642265, 35.806683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650761, 37.821175, 35.722664>,  <33.877651, 38.119354, 35.582630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650761, 37.821175, 35.722664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453117, 0.637448, 0.623173,
		-0.687703, 0.194853, -0.699354,
		-0.567229, -0.745448, 0.350084,
		33.480591, 37.597542, 35.827690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204582, 38.402042, 35.679234>,  <33.877651, 38.119354, 35.582630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204582, 38.402042, 35.679234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214924, 38.077328, 35.912586>,  <33.221130, 37.882500, 36.052597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214924, 38.077328, 35.912586>,  <33.204582, 38.402042, 35.679234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214924, 38.077328, 35.912586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330154, 0.543895, 0.771477,
		-0.943573, -0.212554, -0.253950,
		0.025859, -0.811788, 0.583380,
		33.222683, 37.833790, 36.087601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594593, 38.509884, 36.029690>,  <33.204582, 38.402042, 35.679234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594593, 38.509884, 36.029690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825821, 38.247349, 36.223621>,  <32.964558, 38.089828, 36.339981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825821, 38.247349, 36.223621>,  <32.594593, 38.509884, 36.029690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825821, 38.247349, 36.223621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391194, 0.298515, 0.870549,
		-0.716103, -0.692898, -0.084193,
		0.578069, -0.656339, 0.484826,
		32.999241, 38.050446, 36.369068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170506, 38.150032, 36.588715>,  <32.594593, 38.509884, 36.029690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170506, 38.150032, 36.588715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556461, 38.152622, 36.693741>,  <32.788036, 38.154175, 36.756756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556461, 38.152622, 36.693741>,  <32.170506, 38.150032, 36.588715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556461, 38.152622, 36.693741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257013, 0.229111, 0.938857,
		-0.054081, -0.973379, 0.222731,
		0.964894, 0.006470, 0.262561,
		32.845928, 38.154564, 36.772511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276104, 37.775330, 37.292236>,  <32.170506, 38.150032, 36.588715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276104, 37.775330, 37.292236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603844, 38.003750, 37.271935>,  <32.800488, 38.140800, 37.259754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603844, 38.003750, 37.271935>,  <32.276104, 37.775330, 37.292236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603844, 38.003750, 37.271935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157969, 0.309976, 0.937529,
		0.551106, -0.760144, 0.344186,
		0.819346, 0.571048, -0.050751,
		32.849648, 38.175064, 37.256710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882563, 37.349510, 37.904865>,  <32.276104, 37.775330, 37.292236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882563, 37.349510, 37.904865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490955, 37.423317, 37.939461>,  <31.255991, 37.467602, 37.960220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490955, 37.423317, 37.939461>,  <31.882563, 37.349510, 37.904865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490955, 37.423317, 37.939461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196477, -0.742103, -0.640844,
		-0.054059, -0.644390, 0.762784,
		-0.979017, 0.184512, 0.086491,
		31.197250, 37.478672, 37.965408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597542, 36.660019, 38.137447>,  <31.882563, 37.349510, 37.904865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597542, 36.660019, 38.137447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328663, 36.897457, 37.960453>,  <31.167336, 37.039921, 37.854256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328663, 36.897457, 37.960453>,  <31.597542, 36.660019, 38.137447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328663, 36.897457, 37.960453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314082, -0.769838, -0.555610,
		-0.670449, -0.234504, 0.703922,
		-0.672198, 0.593597, -0.442484,
		31.127003, 37.075535, 37.827709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995481, 36.190159, 38.053677>,  <31.597542, 36.660019, 38.137447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995481, 36.190159, 38.053677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941637, 36.501305, 37.808136>,  <30.909330, 36.687992, 37.660812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941637, 36.501305, 37.808136>,  <30.995481, 36.190159, 38.053677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941637, 36.501305, 37.808136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335927, -0.618627, -0.710249,
		-0.932219, 0.110601, 0.344579,
		-0.134612, 0.777861, -0.613849,
		30.901253, 36.734665, 37.623981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371969, 36.073715, 37.733562>,  <30.995481, 36.190159, 38.053677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371969, 36.073715, 37.733562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534891, 36.340633, 37.484138>,  <30.632645, 36.500782, 37.334484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534891, 36.340633, 37.484138>,  <30.371969, 36.073715, 37.733562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534891, 36.340633, 37.484138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182952, -0.609304, -0.771542,
		-0.894781, 0.428333, -0.126089,
		0.407303, 0.667293, -0.623558,
		30.657082, 36.540821, 37.297070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944853, 36.207489, 37.164570>,  <30.371969, 36.073715, 37.733562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944853, 36.207489, 37.164570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301096, 36.321129, 37.022526>,  <30.514843, 36.389313, 36.937298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301096, 36.321129, 37.022526>,  <29.944853, 36.207489, 37.164570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301096, 36.321129, 37.022526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185214, -0.486570, -0.853783,
		-0.415346, 0.826158, -0.380724,
		0.890609, 0.284100, -0.355110,
		30.568279, 36.406361, 36.915993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705204, 36.400707, 36.491673>,  <29.944853, 36.207489, 37.164570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705204, 36.400707, 36.491673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102249, 36.352173, 36.491764>,  <30.340475, 36.323051, 36.491817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102249, 36.352173, 36.491764>,  <29.705204, 36.400707, 36.491673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102249, 36.352173, 36.491764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056108, -0.460645, -0.885809,
		0.107583, 0.879252, -0.464049,
		0.992612, -0.121335, 0.000224,
		30.400032, 36.315773, 36.491833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941614, 36.579750, 35.832478>,  <29.705204, 36.400707, 36.491673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941614, 36.579750, 35.832478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210615, 36.329857, 35.991196>,  <30.372017, 36.179920, 36.086426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210615, 36.329857, 35.991196>,  <29.941614, 36.579750, 35.832478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210615, 36.329857, 35.991196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111861, -0.444179, -0.888928,
		0.731591, 0.642193, -0.228828,
		0.672504, -0.624735, 0.396794,
		30.412367, 36.142437, 36.110233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400879, 36.569984, 35.324642>,  <29.941614, 36.579750, 35.832478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400879, 36.569984, 35.324642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445158, 36.233402, 35.536186>,  <30.471725, 36.031452, 35.663113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445158, 36.233402, 35.536186>,  <30.400879, 36.569984, 35.324642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445158, 36.233402, 35.536186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110072, -0.539236, -0.834930,
		0.987740, 0.034212, -0.152313,
		0.110697, -0.841459, 0.528859,
		30.478367, 35.980965, 35.694843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751860, 36.070034, 34.837696>,  <30.400879, 36.569984, 35.324642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751860, 36.070034, 34.837696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612467, 35.840405, 35.134071>,  <30.528831, 35.702625, 35.311897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612467, 35.840405, 35.134071>,  <30.751860, 36.070034, 34.837696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612467, 35.840405, 35.134071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070961, -0.772067, -0.631567,
		0.934626, -0.272667, 0.228314,
		-0.348481, -0.574077, 0.740943,
		30.507923, 35.668182, 35.356354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102678, 35.495453, 34.806225>,  <30.751860, 36.070034, 34.837696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102678, 35.495453, 34.806225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778433, 35.408203, 35.023602>,  <30.583885, 35.355854, 35.154026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778433, 35.408203, 35.023602>,  <31.102678, 35.495453, 34.806225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778433, 35.408203, 35.023602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232782, -0.731530, -0.640841,
		0.537325, -0.645978, 0.542213,
		-0.810614, -0.218122, 0.543441,
		30.535248, 35.342766, 35.186634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070929, 34.785992, 34.774906>,  <31.102678, 35.495453, 34.806225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070929, 34.785992, 34.774906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706743, 34.882500, 34.909275>,  <30.488232, 34.940403, 34.989899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706743, 34.882500, 34.909275>,  <31.070929, 34.785992, 34.774906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706743, 34.882500, 34.909275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409306, -0.642183, -0.648127,
		0.059355, -0.727593, 0.683437,
		-0.910464, 0.241265, 0.335925,
		30.433603, 34.954880, 35.010052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705681, 34.183392, 34.915615>,  <31.070929, 34.785992, 34.774906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705681, 34.183392, 34.915615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432743, 34.467388, 34.845966>,  <30.268980, 34.637787, 34.804176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432743, 34.467388, 34.845966>,  <30.705681, 34.183392, 34.915615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432743, 34.467388, 34.845966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577387, -0.669513, -0.467308,
		-0.448360, -0.218331, 0.866778,
		-0.682347, 0.709989, -0.174121,
		30.228039, 34.680386, 34.793732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128443, 33.772957, 34.919357>,  <30.705681, 34.183392, 34.915615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128443, 33.772957, 34.919357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994986, 34.087696, 34.711685>,  <29.914911, 34.276539, 34.587082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994986, 34.087696, 34.711685>,  <30.128443, 33.772957, 34.919357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994986, 34.087696, 34.711685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309966, -0.611685, -0.727848,
		-0.890283, -0.081912, 0.447981,
		-0.333643, 0.786849, -0.519183,
		29.894892, 34.323750, 34.555931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490585, 33.563217, 34.546768>,  <30.128443, 33.772957, 34.919357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490585, 33.563217, 34.546768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582504, 33.907379, 34.364822>,  <29.637655, 34.113876, 34.255653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582504, 33.907379, 34.364822>,  <29.490585, 33.563217, 34.546768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582504, 33.907379, 34.364822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357764, -0.359971, -0.861641,
		-0.905096, 0.360737, 0.225100,
		0.229796, 0.860401, -0.454867,
		29.651443, 34.165501, 34.228363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516937, 33.306240, 35.271069>,  <29.490585, 33.563217, 34.546768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516937, 33.306240, 35.271069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240326, 33.385761, 35.548851>,  <29.074360, 33.433472, 35.715519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240326, 33.385761, 35.548851>,  <29.516937, 33.306240, 35.271069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240326, 33.385761, 35.548851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208570, -0.975388, 0.071531,
		0.691583, -0.095376, 0.715972,
		-0.691528, 0.198800, 0.694455,
		29.032867, 33.445400, 35.757187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570946, 32.918419, 36.013397>,  <29.516937, 33.306240, 35.271069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570946, 32.918419, 36.013397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192848, 33.023758, 35.936287>,  <28.965990, 33.086960, 35.890022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192848, 33.023758, 35.936287>,  <29.570946, 32.918419, 36.013397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192848, 33.023758, 35.936287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259653, -0.964669, -0.044654,
		-0.197723, 0.007845, 0.980227,
		-0.945244, 0.263348, -0.192774,
		28.909275, 33.102760, 35.878456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299576, 32.314014, 36.099731>,  <29.570946, 32.918419, 36.013397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299576, 32.314014, 36.099731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954798, 32.503826, 36.028316>,  <28.747931, 32.617714, 35.985466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954798, 32.503826, 36.028316>,  <29.299576, 32.314014, 36.099731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954798, 32.503826, 36.028316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504096, -0.839773, 0.201665,
		-0.054233, 0.263823, 0.963045,
		-0.861943, 0.474530, -0.178536,
		28.696215, 32.646187, 35.974754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958857, 32.192207, 36.579510>,  <29.299576, 32.314014, 36.099731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958857, 32.192207, 36.579510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291639, 32.407051, 36.523849>,  <30.491308, 32.535957, 36.490456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291639, 32.407051, 36.523849>,  <29.958857, 32.192207, 36.579510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291639, 32.407051, 36.523849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200418, 0.524767, 0.827316,
		0.517387, -0.660398, 0.544229,
		0.831952, 0.537116, -0.139152,
		30.541227, 32.568184, 36.482105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322584, 32.181301, 37.242298>,  <29.958857, 32.192207, 36.579510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322584, 32.181301, 37.242298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454617, 32.497627, 37.036129>,  <30.533836, 32.687424, 36.912426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454617, 32.497627, 37.036129>,  <30.322584, 32.181301, 37.242298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454617, 32.497627, 37.036129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005656, 0.544359, 0.838833,
		0.943936, -0.279796, 0.175209,
		0.330079, 0.790814, -0.515422,
		30.553640, 32.734871, 36.881504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953648, 32.457390, 37.578300>,  <30.322584, 32.181301, 37.242298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953648, 32.457390, 37.578300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818239, 32.761837, 37.356995>,  <30.736994, 32.944504, 37.224209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818239, 32.761837, 37.356995>,  <30.953648, 32.457390, 37.578300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818239, 32.761837, 37.356995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006344, 0.589817, 0.807512,
		0.940938, 0.269849, -0.204493,
		-0.338519, 0.761116, -0.553269,
		30.716684, 32.990173, 37.191013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431526, 33.046680, 37.772655>,  <30.953648, 32.457390, 37.578300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431526, 33.046680, 37.772655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096853, 33.215794, 37.633392>,  <30.896049, 33.317261, 37.549835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096853, 33.215794, 37.633392>,  <31.431526, 33.046680, 37.772655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096853, 33.215794, 37.633392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017206, 0.655665, 0.754856,
		0.547420, 0.625584, -0.555857,
		-0.836681, 0.422787, -0.348160,
		30.845848, 33.342628, 37.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571898, 33.866070, 37.952679>,  <31.431526, 33.046680, 37.772655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571898, 33.866070, 37.952679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186039, 33.787395, 37.882511>,  <30.954523, 33.740192, 37.840412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186039, 33.787395, 37.882511>,  <31.571898, 33.866070, 37.952679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186039, 33.787395, 37.882511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260846, 0.617578, 0.741995,
		-0.037606, 0.761520, -0.647050,
		-0.964648, -0.196684, -0.175414,
		30.896645, 33.728390, 37.829887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256979, 34.539757, 38.075577>,  <31.571898, 33.866070, 37.952679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256979, 34.539757, 38.075577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953539, 34.282337, 38.116318>,  <30.771475, 34.127884, 38.140762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953539, 34.282337, 38.116318>,  <31.256979, 34.539757, 38.075577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953539, 34.282337, 38.116318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226041, 0.406548, 0.885225,
		-0.611092, 0.648508, -0.453875,
		-0.758598, -0.643549, 0.101849,
		30.725960, 34.089272, 38.146873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687166, 34.873669, 38.450722>,  <31.256979, 34.539757, 38.075577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687166, 34.873669, 38.450722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550524, 34.499622, 38.488369>,  <30.468538, 34.275192, 38.510956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550524, 34.499622, 38.488369>,  <30.687166, 34.873669, 38.450722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550524, 34.499622, 38.488369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369619, 0.225739, 0.901345,
		-0.864111, 0.273118, -0.422752,
		-0.341606, -0.935119, 0.094114,
		30.448042, 34.219086, 38.516602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000433, 34.926895, 38.714424>,  <30.687166, 34.873669, 38.450722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000433, 34.926895, 38.714424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107882, 34.550102, 38.794926>,  <30.172352, 34.324024, 38.843227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107882, 34.550102, 38.794926>,  <30.000433, 34.926895, 38.714424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107882, 34.550102, 38.794926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476981, 0.051441, 0.877407,
		-0.836858, -0.331687, -0.435491,
		0.268623, -0.941986, 0.201257,
		30.188469, 34.267506, 38.855305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354572, 34.707973, 39.028797>,  <30.000433, 34.926895, 38.714424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354572, 34.707973, 39.028797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666700, 34.483543, 39.139286>,  <29.853977, 34.348885, 39.205578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666700, 34.483543, 39.139286>,  <29.354572, 34.707973, 39.028797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666700, 34.483543, 39.139286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281859, 0.078749, 0.956219,
		-0.558262, -0.824011, -0.096694,
		0.780320, -0.561074, 0.276218,
		29.900797, 34.315220, 39.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155567, 34.392708, 39.623512>,  <29.354572, 34.707973, 39.028797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155567, 34.392708, 39.623512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553452, 34.359760, 39.648045>,  <29.792183, 34.339993, 39.662762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553452, 34.359760, 39.648045>,  <29.155567, 34.392708, 39.623512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553452, 34.359760, 39.648045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048498, 0.149600, 0.987556,
		-0.090520, -0.985309, 0.144815,
		0.994713, -0.082370, 0.061327,
		29.851866, 34.335049, 39.666443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323057, 33.953922, 40.172512>,  <29.155567, 34.392708, 39.623512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323057, 33.953922, 40.172512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663973, 34.158478, 40.128548>,  <29.868523, 34.281212, 40.102169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663973, 34.158478, 40.128548>,  <29.323057, 33.953922, 40.172512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663973, 34.158478, 40.128548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097864, 0.050524, 0.993917,
		0.513831, -0.857863, -0.006985,
		0.852291, 0.511389, -0.109915,
		29.919661, 34.311893, 40.095573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768618, 33.721333, 40.819073>,  <29.323057, 33.953922, 40.172512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768618, 33.721333, 40.819073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905733, 34.063828, 40.664490>,  <29.988003, 34.269325, 40.571739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905733, 34.063828, 40.664490>,  <29.768618, 33.721333, 40.819073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905733, 34.063828, 40.664490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145423, 0.358060, 0.922304,
		0.928088, -0.372356, -0.001777,
		0.342790, 0.856238, -0.386460,
		30.008570, 34.320698, 40.548553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364866, 33.871422, 41.223576>,  <29.768618, 33.721333, 40.819073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364866, 33.871422, 41.223576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261414, 34.209873, 41.037167>,  <30.199343, 34.412945, 40.925320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261414, 34.209873, 41.037167>,  <30.364866, 33.871422, 41.223576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261414, 34.209873, 41.037167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292634, 0.528397, 0.796971,
		0.920584, 0.069747, -0.384265,
		-0.258631, 0.846128, -0.466023,
		30.183825, 34.463711, 40.897358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847458, 34.342243, 41.521336>,  <30.364866, 33.871422, 41.223576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847458, 34.342243, 41.521336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557121, 34.586529, 41.394730>,  <30.382919, 34.733101, 41.318768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557121, 34.586529, 41.394730>,  <30.847458, 34.342243, 41.521336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557121, 34.586529, 41.394730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178889, 0.611906, 0.770435,
		0.664191, 0.502595, -0.553397,
		-0.725843, 0.610713, -0.316514,
		30.339369, 34.769741, 41.299774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146158, 34.996956, 41.703537>,  <30.847458, 34.342243, 41.521336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146158, 34.996956, 41.703537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750811, 35.041042, 41.661629>,  <30.513601, 35.067493, 41.636486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750811, 35.041042, 41.661629>,  <31.146158, 34.996956, 41.703537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750811, 35.041042, 41.661629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065439, 0.313622, 0.947290,
		0.137265, 0.943130, -0.302762,
		-0.988370, 0.110218, -0.104766,
		30.454300, 35.074108, 41.630199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906212, 35.641338, 42.027023>,  <31.146158, 34.996956, 41.703537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906212, 35.641338, 42.027023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565453, 35.432404, 42.042152>,  <30.360996, 35.307041, 42.051231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565453, 35.432404, 42.042152>,  <30.906212, 35.641338, 42.027023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565453, 35.432404, 42.042152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190706, 0.376669, 0.906505,
		-0.487750, 0.765038, -0.420497,
		-0.851899, -0.522339, 0.037823,
		30.309883, 35.275703, 42.053501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547552, 36.188793, 42.375729>,  <30.906212, 35.641338, 42.027023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547552, 36.188793, 42.375729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310654, 35.866554, 42.382149>,  <30.168514, 35.673210, 42.386002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310654, 35.866554, 42.382149>,  <30.547552, 36.188793, 42.375729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310654, 35.866554, 42.382149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334300, 0.263789, 0.904798,
		-0.733137, 0.530497, -0.425539,
		-0.592245, -0.805598, 0.016048,
		30.132980, 35.624874, 42.386963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879217, 36.457695, 42.683968>,  <30.547552, 36.188793, 42.375729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879217, 36.457695, 42.683968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897495, 36.060127, 42.724045>,  <29.908463, 35.821587, 42.748093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897495, 36.060127, 42.724045>,  <29.879217, 36.457695, 42.683968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897495, 36.060127, 42.724045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345684, 0.078366, 0.935073,
		-0.937237, -0.077365, -0.340001,
		0.045697, -0.993918, 0.100192,
		29.911205, 35.761951, 42.754101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484888, 36.333633, 43.261593>,  <29.879217, 36.457695, 42.683968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484888, 36.333633, 43.261593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683115, 35.987953, 43.226791>,  <29.802052, 35.780544, 43.205910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683115, 35.987953, 43.226791>,  <29.484888, 36.333633, 43.261593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683115, 35.987953, 43.226791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029009, -0.083644, 0.996073,
		-0.868085, -0.496145, -0.016382,
		0.495567, -0.864201, -0.087003,
		29.831785, 35.728691, 43.200691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121361, 35.771240, 43.776798>,  <29.484888, 36.333633, 43.261593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121361, 35.771240, 43.776798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509171, 35.704498, 43.705044>,  <29.741858, 35.664452, 43.661991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509171, 35.704498, 43.705044>,  <29.121361, 35.771240, 43.776798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509171, 35.704498, 43.705044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145459, -0.197135, 0.969525,
		-0.197135, -0.966073, -0.166857,
		-0.969525, 0.166857, 0.179386,
		29.800028, 35.654442, 43.651226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305981, 35.312004, 44.285183>,  <29.121361, 35.771240, 43.776798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305981, 35.312004, 44.285183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678259, 35.409473, 44.176056>,  <29.901627, 35.467957, 44.110580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678259, 35.409473, 44.176056>,  <29.305981, 35.312004, 44.285183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678259, 35.409473, 44.176056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328419, -0.228225, 0.916545,
		0.161076, -0.942622, -0.292436,
		0.930696, 0.243675, -0.272813,
		29.957468, 35.482574, 44.094212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735584, 34.691669, 44.472557>,  <29.305981, 35.312004, 44.285183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735584, 34.691669, 44.472557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954649, 35.024673, 44.439102>,  <30.086088, 35.224476, 44.419029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954649, 35.024673, 44.439102>,  <29.735584, 34.691669, 44.472557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954649, 35.024673, 44.439102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424838, -0.190568, 0.884984,
		0.720818, -0.520204, -0.458049,
		0.547662, 0.832509, -0.083637,
		30.118948, 35.274426, 44.414009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145933, 34.645191, 45.151043>,  <29.735584, 34.691669, 44.472557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145933, 34.645191, 45.151043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252110, 34.985546, 44.969704>,  <30.315815, 35.189758, 44.860901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252110, 34.985546, 44.969704>,  <30.145933, 34.645191, 45.151043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252110, 34.985546, 44.969704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531021, 0.263441, 0.805367,
		0.804710, -0.454514, -0.381914,
		0.265439, 0.850891, -0.453350,
		30.331741, 35.240814, 44.833698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829115, 34.628460, 45.140793>,  <30.145933, 34.645191, 45.151043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829115, 34.628460, 45.140793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682457, 34.999905, 45.163586>,  <30.594461, 35.222771, 45.177261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682457, 34.999905, 45.163586>,  <30.829115, 34.628460, 45.140793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682457, 34.999905, 45.163586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419857, 0.110493, 0.900839,
		0.830236, 0.354214, -0.430397,
		-0.366646, 0.928614, 0.056984,
		30.572464, 35.278488, 45.180679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405615, 35.088989, 45.515564>,  <30.829115, 34.628460, 45.140793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405615, 35.088989, 45.515564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055662, 35.277199, 45.561493>,  <30.845690, 35.390125, 45.589050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055662, 35.277199, 45.561493>,  <31.405615, 35.088989, 45.515564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055662, 35.277199, 45.561493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201539, 0.138092, 0.969697,
		0.440410, 0.871514, -0.215644,
		-0.874883, 0.470525, 0.114827,
		30.793198, 35.418358, 45.595940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904696, 35.551910, 45.202156>,  <31.405615, 35.088989, 45.515564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904696, 35.551910, 45.202156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 35.541573, 45.221687>,  <32.543716, 35.535370, 45.233406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 35.541573, 45.221687>,  <31.904696, 35.551910, 45.202156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304085, 35.541573, 45.221687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033323, -0.423152, -0.905446,
		0.044061, 0.905690, -0.421644,
		0.998473, -0.025844, 0.048825,
		32.603626, 35.533821, 45.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144855, 35.741409, 44.540691>,  <31.904696, 35.551910, 45.202156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144855, 35.741409, 44.540691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475574, 35.575092, 44.692234>,  <32.674004, 35.475304, 44.783157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475574, 35.575092, 44.692234>,  <32.144855, 35.741409, 44.540691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475574, 35.575092, 44.692234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251361, -0.329431, -0.910106,
		0.503217, 0.847700, -0.167859,
		0.826795, -0.415788, 0.378854,
		32.723614, 35.450356, 44.805889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704018, 35.952019, 44.148834>,  <32.144855, 35.741409, 44.540691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704018, 35.952019, 44.148834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815216, 35.603264, 44.310097>,  <32.881935, 35.394012, 44.406853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815216, 35.603264, 44.310097>,  <32.704018, 35.952019, 44.148834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815216, 35.603264, 44.310097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298084, -0.320678, -0.899062,
		0.913161, 0.370110, 0.170747,
		0.277997, -0.871885, 0.403154,
		32.898617, 35.341698, 44.431042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247665, 35.844788, 43.738243>,  <32.704018, 35.952019, 44.148834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247665, 35.844788, 43.738243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180820, 35.485706, 43.901318>,  <33.140713, 35.270260, 43.999165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180820, 35.485706, 43.901318>,  <33.247665, 35.844788, 43.738243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180820, 35.485706, 43.901318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357938, -0.440529, -0.823295,
		0.918670, 0.008346, 0.394937,
		-0.167110, -0.897700, 0.407688,
		33.130688, 35.216396, 44.023624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800835, 35.351582, 43.581696>,  <33.247665, 35.844788, 43.738243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800835, 35.351582, 43.581696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525211, 35.079391, 43.681419>,  <33.359837, 34.916077, 43.741253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525211, 35.079391, 43.681419>,  <33.800835, 35.351582, 43.581696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525211, 35.079391, 43.681419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359281, -0.619520, -0.697934,
		0.629378, -0.391345, 0.671366,
		-0.689058, -0.680473, 0.249309,
		33.318493, 34.875248, 43.756210>
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
