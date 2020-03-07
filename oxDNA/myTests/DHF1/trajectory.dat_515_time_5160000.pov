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
	<-0.789664, 1.071134, 3.689916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.686075, 1.430611, 3.548332>,  <-0.623922, 1.646297, 3.463382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.686075, 1.430611, 3.548332>,  <-0.789664, 1.071134, 3.689916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.686075, 1.430611, 3.548332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897206, -0.088108, 0.432732,
		0.357706, -0.429641, -0.829129,
		0.258973, 0.898691, -0.353960,
		-0.608383, 1.700218, 3.442144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.152774, 0.990625, 3.625764>,  <-0.789664, 1.071134, 3.689916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.152774, 0.990625, 3.625764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.206152, 1.386278, 3.650452>,  <-0.238178, 1.623670, 3.665264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.206152, 1.386278, 3.650452>,  <-0.152774, 0.990625, 3.625764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.206152, 1.386278, 3.650452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846083, 0.081273, 0.526819,
		0.516078, 0.122520, -0.847734,
		-0.133444, 0.989133, 0.061718,
		-0.246185, 1.683018, 3.668967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.502282, 1.408628, 3.415451>,  <-0.152774, 0.990625, 3.625764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.502282, 1.408628, 3.415451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.263081, 1.619972, 3.656525>,  <0.119560, 1.746778, 3.801169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.263081, 1.619972, 3.656525>,  <0.502282, 1.408628, 3.415451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.263081, 1.619972, 3.656525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700892, -0.020008, 0.712987,
		0.388772, 0.848785, -0.358358,
		-0.598003, 0.528359, 0.602685,
		0.083680, 1.778480, 3.837330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.747301, 2.101061, 3.635355>,  <0.502282, 1.408628, 3.415451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.747301, 2.101061, 3.635355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.503555, 1.959745, 3.919289>,  <0.357308, 1.874956, 4.089649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.503555, 1.959745, 3.919289>,  <0.747301, 2.101061, 3.635355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.503555, 1.959745, 3.919289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731404, 0.095207, 0.675266,
		-0.306145, 0.930657, 0.200381,
		-0.609363, -0.353289, 0.709833,
		0.320746, 1.853759, 4.132238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.704739, 2.583909, 4.373282>,  <0.747301, 2.101061, 3.635355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.704739, 2.583909, 4.373282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.646276, 2.200209, 4.470009>,  <0.611199, 1.969988, 4.528045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.646276, 2.200209, 4.470009>,  <0.704739, 2.583909, 4.373282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.646276, 2.200209, 4.470009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627154, 0.099196, 0.772553,
		-0.765060, 0.264569, 0.587100,
		-0.146155, -0.959251, 0.241817,
		0.602430, 1.912433, 4.542554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.587965, 2.576263, 5.084360>,  <0.704739, 2.583909, 4.373282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.587965, 2.576263, 5.084360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.673355, 2.190731, 5.020538>,  <0.724589, 1.959412, 4.982245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.673355, 2.190731, 5.020538>,  <0.587965, 2.576263, 5.084360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.673355, 2.190731, 5.020538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661780, 0.022524, 0.749360,
		-0.718663, -0.265560, 0.642653,
		0.213475, -0.963831, -0.159555,
		0.737398, 1.901582, 4.972672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.586080, 2.287517, 5.736720>,  <0.587965, 2.576263, 5.084360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.586080, 2.287517, 5.736720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.799301, 2.058529, 5.487518>,  <0.927234, 1.921136, 5.337997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.799301, 2.058529, 5.487518>,  <0.586080, 2.287517, 5.736720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.799301, 2.058529, 5.487518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813460, 0.144265, 0.563446,
		-0.232678, -0.807134, 0.542582,
		0.533052, -0.572470, -0.623003,
		0.959217, 1.886788, 5.300617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.867133, 1.822539, 6.210813>,  <0.586080, 2.287517, 5.736720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.867133, 1.822539, 6.210813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.120136, 1.789587, 5.902748>,  <1.271938, 1.769816, 5.717909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.120136, 1.789587, 5.902748>,  <0.867133, 1.822539, 6.210813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.120136, 1.789587, 5.902748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772994, 0.130220, 0.620904,
		0.049140, -0.988057, 0.146046,
		0.632507, -0.082381, -0.770161,
		1.309888, 1.764873, 5.671700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.951689, 2.668183, 1.387608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.183625, 2.366947, 1.263260>,  <2.322787, 2.186206, 1.188651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.183625, 2.366947, 1.263260>,  <1.951689, 2.668183, 1.387608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.183625, 2.366947, 1.263260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648137, -0.195182, -0.736086,
		0.493663, 0.628299, -0.601280,
		0.579841, -0.753090, -0.310870,
		2.357577, 2.141020, 1.169999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.044446, 2.727322, 0.633040>,  <1.951689, 2.668183, 1.387608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.044446, 2.727322, 0.633040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.092998, 2.344906, 0.739815>,  <2.122129, 2.115456, 0.803880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.092998, 2.344906, 0.739815>,  <2.044446, 2.727322, 0.633040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.092998, 2.344906, 0.739815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541306, -0.289172, -0.789536,
		0.832018, -0.048661, -0.552609,
		0.121380, -0.956039, 0.266937,
		2.129412, 2.058094, 0.819896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.149614, 2.321350, -0.032257>,  <2.044446, 2.727322, 0.633040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.149614, 2.321350, -0.032257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.012216, 2.080334, 0.255898>,  <1.929777, 1.935724, 0.428790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.012216, 2.080334, 0.255898>,  <2.149614, 2.321350, -0.032257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.012216, 2.080334, 0.255898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655023, -0.395985, -0.643538,
		0.673020, -0.692922, -0.258659,
		-0.343496, -0.602541, 0.720385,
		1.909167, 1.899571, 0.472013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.982310, 1.621035, -0.363682>,  <2.149614, 2.321350, -0.032257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.982310, 1.621035, -0.363682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.774238, 1.646088, -0.022980>,  <1.649394, 1.661119, 0.181442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.774238, 1.646088, -0.022980>,  <1.982310, 1.621035, -0.363682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.774238, 1.646088, -0.022980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804910, -0.369381, -0.464411,
		0.285536, -0.927165, 0.242557,
		-0.520182, 0.062631, 0.851756,
		1.618183, 1.664877, 0.232547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.688800, 0.959530, -0.240356>,  <1.982310, 1.621035, -0.363682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.688800, 0.959530, -0.240356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.461747, 1.244423, -0.075180>,  <1.325516, 1.415359, 0.023925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.461747, 1.244423, -0.075180>,  <1.688800, 0.959530, -0.240356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.461747, 1.244423, -0.075180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771961, -0.286131, -0.567631,
		-0.286131, -0.640978, 0.712233,
		0.567631, -0.712233, -0.412939,
		1.291458, 1.458093, 0.048702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.050723, 0.699255, -0.282392>,  <1.688800, 0.959530, -0.240356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.050723, 0.699255, -0.282392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.962439, 1.084259, -0.219322>,  <0.909468, 1.315261, -0.181480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.962439, 1.084259, -0.219322>,  <1.050723, 0.699255, -0.282392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.962439, 1.084259, -0.219322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837032, -0.103937, -0.537192,
		-0.500664, -0.250543, 0.828591,
		-0.220711, 0.962510, 0.157675,
		0.896225, 1.373012, -0.172020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.222555, 0.687006, -0.336013>,  <1.050723, 0.699255, -0.282392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.222555, 0.687006, -0.336013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.345085, 1.067776, -0.334991>,  <0.418603, 1.296237, -0.334379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.345085, 1.067776, -0.334991>,  <0.222555, 0.687006, -0.336013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.345085, 1.067776, -0.334991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812426, 0.262832, -0.520464,
		-0.496113, 0.157357, 0.853880,
		0.306325, 0.951923, 0.002553,
		0.436983, 1.353353, -0.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.300015, 1.089233, 0.043212>,  <0.222555, 0.687006, -0.336013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.300015, 1.089233, 0.043212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.113695, 1.324425, -0.221306>,  <-0.001903, 1.465540, -0.380017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.113695, 1.324425, -0.221306>,  <-0.300015, 1.089233, 0.043212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.113695, 1.324425, -0.221306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881518, 0.243152, -0.404726,
		-0.077174, 0.771465, 0.631574,
		0.465801, 0.587978, -0.661295,
		0.026045, 1.500818, -0.419694>
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
