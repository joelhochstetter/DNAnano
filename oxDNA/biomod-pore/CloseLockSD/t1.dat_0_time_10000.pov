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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.538871, 14.954543, 15.347066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.298411, 14.913132, 15.030105>,  <4.154136, 14.888285, 14.839928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.298411, 14.913132, 15.030105>,  <4.538871, 14.954543, 15.347066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.298411, 14.913132, 15.030105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735960, 0.314691, -0.599444,
		0.311426, -0.943531, -0.112978,
		-0.601147, -0.103535, -0.792403,
		4.118067, 14.882072, 14.792384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.061528, 14.539224, 15.736738>,  <4.538871, 14.954543, 15.347066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.061528, 14.539224, 15.736738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.676082, 14.444518, 15.687119>,  <4.444814, 14.387694, 15.657349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.676082, 14.444518, 15.687119>,  <5.061528, 14.539224, 15.736738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.676082, 14.444518, 15.687119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256689, 0.949116, 0.182455,
		0.074535, 0.207658, -0.975358,
		-0.963616, -0.236765, -0.124046,
		4.386997, 14.373488, 15.649906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.368408, 14.055827, 16.224487>,  <5.061528, 14.539224, 15.736738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.368408, 14.055827, 16.224487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.351914, 13.659342, 16.174212>,  <5.342018, 13.421451, 16.144045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.351914, 13.659342, 16.174212>,  <5.368408, 14.055827, 16.224487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.351914, 13.659342, 16.174212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470045, -0.091763, 0.877859,
		-0.881679, 0.095278, -0.462131,
		-0.041234, -0.991212, -0.125690,
		5.339544, 13.361979, 16.136505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.054068, 13.670892, 16.538490>,  <5.368408, 14.055827, 16.224487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.054068, 13.670892, 16.538490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.061396, 13.908348, 16.216682>,  <6.065792, 14.050822, 16.023598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.061396, 13.908348, 16.216682>,  <6.054068, 13.670892, 16.538490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.061396, 13.908348, 16.216682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497025, 0.703598, 0.507854,
		0.867543, 0.390564, 0.307944,
		0.018319, 0.593641, -0.804521,
		6.066891, 14.086440, 15.975326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.725456, 13.986717, 16.098829>,  <6.054068, 13.670892, 16.538490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.725456, 13.986717, 16.098829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.106752, 14.001292, 16.218832>,  <7.335530, 14.010037, 16.290834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.106752, 14.001292, 16.218832>,  <6.725456, 13.986717, 16.098829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.106752, 14.001292, 16.218832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269285, -0.553011, -0.788457,
		0.137179, 0.832377, -0.536964,
		0.953241, 0.036436, 0.300009,
		7.392725, 14.012223, 16.308834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.207843, 14.183395, 15.463441>,  <6.725456, 13.986717, 16.098829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.207843, 14.183395, 15.463441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.460657, 14.033961, 15.735019>,  <7.612346, 13.944301, 15.897965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.460657, 14.033961, 15.735019>,  <7.207843, 14.183395, 15.463441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.460657, 14.033961, 15.735019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442056, -0.545788, -0.711830,
		0.636488, 0.750034, -0.179813,
		0.632036, -0.373584, 0.678944,
		7.650268, 13.921886, 15.938702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.906154, 14.365196, 15.137148>,  <7.207843, 14.183395, 15.463441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.906154, 14.365196, 15.137148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.934654, 14.071143, 15.406816>,  <7.951754, 13.894711, 15.568616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.934654, 14.071143, 15.406816>,  <7.906154, 14.365196, 15.137148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.934654, 14.071143, 15.406816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355728, -0.612717, -0.705716,
		0.931870, 0.290103, 0.217851,
		0.071249, -0.735132, 0.674170,
		7.956028, 13.850604, 15.609066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.403557, 14.073360, 14.937685>,  <7.906154, 14.365196, 15.137148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.403557, 14.073360, 14.937685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.273747, 13.776462, 15.172207>,  <8.195862, 13.598322, 15.312921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.273747, 13.776462, 15.172207>,  <8.403557, 14.073360, 14.937685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.273747, 13.776462, 15.172207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237415, -0.663930, -0.709106,
		0.915597, -0.090924, 0.391681,
		-0.324524, -0.742247, 0.586305,
		8.176391, 13.553787, 15.348099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.847569, 13.563526, 14.828084>,  <8.403557, 14.073360, 14.937685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.847569, 13.563526, 14.828084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.542008, 13.363706, 14.991499>,  <8.358672, 13.243814, 15.089548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.542008, 13.363706, 14.991499>,  <8.847569, 13.563526, 14.828084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.542008, 13.363706, 14.991499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147397, -0.751393, -0.643181,
		0.628274, -0.431110, 0.647623,
		-0.763902, -0.499552, 0.408536,
		8.312838, 13.213840, 15.114059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.084862, 12.878878, 14.987440>,  <8.847569, 13.563526, 14.828084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.084862, 12.878878, 14.987440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.690850, 12.813109, 14.966709>,  <8.454444, 12.773648, 14.954270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.690850, 12.813109, 14.966709>,  <9.084862, 12.878878, 14.987440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.690850, 12.813109, 14.966709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168939, -0.860724, -0.480223,
		0.034350, -0.481789, 0.875614,
		-0.985028, -0.164420, -0.051827,
		8.395342, 12.763783, 14.951161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.974408, 12.061368, 15.067757>,  <9.084862, 12.878878, 14.987440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.974408, 12.061368, 15.067757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.654899, 12.227137, 14.893302>,  <8.463193, 12.326598, 14.788630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.654899, 12.227137, 14.893302>,  <8.974408, 12.061368, 15.067757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.654899, 12.227137, 14.893302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029631, -0.696945, -0.716512,
		-0.600900, -0.585255, 0.544423,
		-0.798775, 0.414420, -0.436135,
		8.415267, 12.351463, 14.762461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.475800, 11.464353, 15.074776>,  <8.974408, 12.061368, 15.067757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.475800, 11.464353, 15.074776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.327376, 11.731233, 14.816423>,  <8.238322, 11.891360, 14.661412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.327376, 11.731233, 14.816423>,  <8.475800, 11.464353, 15.074776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.327376, 11.731233, 14.816423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229251, -0.739823, -0.632539,
		-0.899867, -0.086640, 0.427472,
		-0.371057, 0.667200, -0.645881,
		8.216059, 11.931393, 14.622660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.100001, 11.102102, 14.732707>,  <8.475800, 11.464353, 15.074776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.100001, 11.102102, 14.732707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.122853, 11.401009, 14.467880>,  <8.136564, 11.580352, 14.308985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.122853, 11.401009, 14.467880>,  <8.100001, 11.102102, 14.732707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.122853, 11.401009, 14.467880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181426, -0.644337, -0.742909,
		-0.981744, 0.162559, 0.098763,
		0.057130, 0.747265, -0.662066,
		8.139992, 11.625188, 14.269260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.592557, 11.040477, 14.304645>,  <8.100001, 11.102102, 14.732707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.592557, 11.040477, 14.304645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.867215, 11.237978, 14.091205>,  <8.032009, 11.356479, 13.963140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.867215, 11.237978, 14.091205>,  <7.592557, 11.040477, 14.304645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.867215, 11.237978, 14.091205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113034, -0.652546, -0.749271,
		-0.718153, 0.574797, -0.392256,
		0.686643, 0.493753, -0.533600,
		8.073208, 11.386104, 13.931125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.236007, 11.002506, 13.617999>,  <7.592557, 11.040477, 14.304645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.236007, 11.002506, 13.617999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.628729, 11.078243, 13.623723>,  <7.864363, 11.123685, 13.627157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.628729, 11.078243, 13.623723>,  <7.236007, 11.002506, 13.617999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.628729, 11.078243, 13.623723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119313, -0.556537, -0.822211,
		-0.147715, 0.808960, -0.569003,
		0.981807, 0.189342, 0.014311,
		7.923272, 11.135046, 13.628016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.421035, 10.939688, 12.894860>,  <7.236007, 11.002506, 13.617999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.421035, 10.939688, 12.894860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.796037, 10.936220, 13.034005>,  <8.021038, 10.934139, 13.117492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.796037, 10.936220, 13.034005>,  <7.421035, 10.939688, 12.894860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.796037, 10.936220, 13.034005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258858, -0.650698, -0.713852,
		0.232542, 0.759287, -0.607789,
		0.937506, -0.008669, 0.347862,
		8.077289, 10.933619, 13.138364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.786849, 11.049592, 12.318946>,  <7.421035, 10.939688, 12.894860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.786849, 11.049592, 12.318946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.059752, 10.932463, 12.586908>,  <8.223495, 10.862185, 12.747686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.059752, 10.932463, 12.586908>,  <7.786849, 11.049592, 12.318946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.059752, 10.932463, 12.586908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439724, -0.567683, -0.695973,
		0.584093, 0.769409, -0.258546,
		0.682260, -0.292824, 0.669907,
		8.264430, 10.844616, 12.787881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.487693, 11.138227, 12.047889>,  <7.786849, 11.049592, 12.318946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.487693, 11.138227, 12.047889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512484, 10.864625, 12.338624>,  <8.527358, 10.700463, 12.513065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.512484, 10.864625, 12.338624>,  <8.487693, 11.138227, 12.047889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.512484, 10.864625, 12.338624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517865, -0.600502, -0.609272,
		0.853214, 0.414165, 0.317006,
		0.061976, -0.684006, 0.726839,
		8.531076, 10.659423, 12.556676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.092706, 10.915373, 11.986244>,  <8.487693, 11.138227, 12.047889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.092706, 10.915373, 11.986244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.929510, 10.616712, 12.196407>,  <8.831593, 10.437514, 12.322505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.929510, 10.616712, 12.196407>,  <9.092706, 10.915373, 11.986244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.929510, 10.616712, 12.196407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488497, -0.664703, -0.565279,
		0.771308, 0.026032, 0.635930,
		-0.407989, -0.746654, 0.525408,
		8.807114, 10.392715, 12.354030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.712142, 10.414262, 12.195112>,  <9.092706, 10.915373, 11.986244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.712142, 10.414262, 12.195112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.377937, 10.195269, 12.213796>,  <9.177415, 10.063872, 12.225006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.377937, 10.195269, 12.213796>,  <9.712142, 10.414262, 12.195112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.377937, 10.195269, 12.213796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467079, -0.752429, -0.464423,
		0.289409, -0.366214, 0.884381,
		-0.835512, -0.547484, 0.046709,
		9.127284, 10.031024, 12.227808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.003028, 9.754829, 12.312169>,  <9.712142, 10.414262, 12.195112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.003028, 9.754829, 12.312169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.633423, 9.695706, 12.171113>,  <9.411660, 9.660233, 12.086479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.633423, 9.695706, 12.171113>,  <10.003028, 9.754829, 12.312169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.633423, 9.695706, 12.171113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332339, -0.766527, -0.549534,
		-0.189083, -0.624972, 0.757402,
		-0.924012, -0.147807, -0.352639,
		9.356219, 9.651364, 12.065321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.892334, 8.959127, 12.300652>,  <10.003028, 9.754829, 12.312169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.892334, 8.959127, 12.300652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.622589, 9.110393, 12.046966>,  <9.460742, 9.201152, 11.894754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.622589, 9.110393, 12.046966>,  <9.892334, 8.959127, 12.300652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.622589, 9.110393, 12.046966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205428, -0.728911, -0.653060,
		-0.709248, -0.570685, 0.413866,
		-0.674363, 0.378162, -0.634214,
		9.420280, 9.223842, 11.856701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.634039, 8.307821, 11.936200>,  <9.892334, 8.959127, 12.300652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.634039, 8.307821, 11.936200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.529471, 8.631624, 11.725922>,  <9.466731, 8.825906, 11.599754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.529471, 8.631624, 11.725922>,  <9.634039, 8.307821, 11.936200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.529471, 8.631624, 11.725922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129020, -0.510443, -0.850178,
		-0.956564, -0.290077, 0.028996,
		-0.261417, 0.809508, -0.525697,
		9.451046, 8.874476, 11.568213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.079071, 8.213835, 11.402746>,  <9.634039, 8.307821, 11.936200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.079071, 8.213835, 11.402746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331232, 8.499343, 11.280683>,  <9.482529, 8.670648, 11.207444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331232, 8.499343, 11.280683>,  <9.079071, 8.213835, 11.402746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.331232, 8.499343, 11.280683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139049, -0.490583, -0.860229,
		-0.763712, 0.499859, -0.408514,
		0.630403, 0.713771, -0.305159,
		9.520353, 8.713474, 11.189135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.157934, 8.062447, 10.786052>,  <9.079071, 8.213835, 11.402746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.157934, 8.062447, 10.786052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.432225, 8.352654, 10.809384>,  <9.596800, 8.526777, 10.823384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.432225, 8.352654, 10.809384>,  <9.157934, 8.062447, 10.786052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.432225, 8.352654, 10.809384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555695, -0.470086, -0.685728,
		-0.470086, 0.502637, -0.725517,
		0.685728, 0.725517, 0.058331,
		9.637943, 8.570309, 10.826883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.434188, 8.434728, 10.085631>,  <9.157934, 8.062447, 10.786052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.434188, 8.434728, 10.085631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.729069, 8.496519, 10.348742>,  <9.905997, 8.533594, 10.506608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.729069, 8.496519, 10.348742>,  <9.434188, 8.434728, 10.085631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.729069, 8.496519, 10.348742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667639, -0.316205, -0.673998,
		0.103874, 0.936029, -0.336243,
		0.737203, 0.154478, 0.657775,
		9.950230, 8.542862, 10.546074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.009919, 8.868683, 9.768635>,  <9.434188, 8.434728, 10.085631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.009919, 8.868683, 9.768635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063175, 8.561989, 10.019837>,  <10.095129, 8.377973, 10.170559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063175, 8.561989, 10.019837>,  <10.009919, 8.868683, 9.768635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.063175, 8.561989, 10.019837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711562, -0.367127, -0.599080,
		0.689893, 0.526627, 0.496700,
		0.133140, -0.766734, 0.628007,
		10.103117, 8.331968, 10.208240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684035, 8.652663, 9.702953>,  <10.009919, 8.868683, 9.768635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684035, 8.652663, 9.702953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512097, 8.338345, 9.880833>,  <10.408935, 8.149754, 9.987560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512097, 8.338345, 9.880833>,  <10.684035, 8.652663, 9.702953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512097, 8.338345, 9.880833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628518, -0.614009, -0.477449,
		0.648228, 0.074273, 0.757816,
		-0.429844, -0.785797, 0.444699,
		10.383144, 8.102606, 10.014242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142600, 8.249036, 10.079657>,  <10.684035, 8.652663, 9.702953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.142600, 8.249036, 10.079657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.853319, 8.048096, 9.890079>,  <10.679750, 7.927532, 9.776332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.853319, 8.048096, 9.890079>,  <11.142600, 8.249036, 10.079657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.853319, 8.048096, 9.890079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690320, -0.546595, -0.474017,
		-0.020933, -0.669983, 0.742081,
		-0.723201, -0.502351, -0.473945,
		10.636358, 7.897390, 9.747895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305568, 7.525894, 10.151331>,  <11.142600, 8.249036, 10.079657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305568, 7.525894, 10.151331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.110240, 7.600782, 9.810392>,  <10.993043, 7.645716, 9.605829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.110240, 7.600782, 9.810392>,  <11.305568, 7.525894, 10.151331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.110240, 7.600782, 9.810392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693146, -0.510185, -0.509176,
		-0.530182, -0.839440, 0.119361,
		-0.488319, 0.187221, -0.852345,
		10.963744, 7.656949, 9.554688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847869, 7.830202, 10.671128>,  <11.305568, 7.525894, 10.151331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847869, 7.830202, 10.671128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678415, 7.856541, 11.032503>,  <11.576743, 7.872344, 11.249328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678415, 7.856541, 11.032503>,  <11.847869, 7.830202, 10.671128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.678415, 7.856541, 11.032503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690567, -0.668923, -0.275062,
		0.586217, -0.740410, 0.328851,
		-0.423635, 0.065848, 0.903436,
		11.551325, 7.876295, 11.303535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.504738, 7.140460, 10.955063>,  <11.847869, 7.830202, 10.671128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.504738, 7.140460, 10.955063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884223, 7.189974, 11.071422>,  <12.111914, 7.219682, 11.141237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884223, 7.189974, 11.071422>,  <11.504738, 7.140460, 10.955063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884223, 7.189974, 11.071422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253259, 0.848326, 0.464976,
		-0.189218, -0.514801, 0.836168,
		0.948713, 0.123785, 0.290897,
		12.168837, 7.227109, 11.158690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.545923, 7.194880, 11.775837>,  <11.504738, 7.140460, 10.955063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.545923, 7.194880, 11.775837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875098, 7.358346, 11.617967>,  <12.072603, 7.456425, 11.523244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875098, 7.358346, 11.617967>,  <11.545923, 7.194880, 11.775837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.875098, 7.358346, 11.617967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066641, 0.759329, 0.647285,
		0.564211, -0.506373, 0.652114,
		0.822937, 0.408663, -0.394676,
		12.121980, 7.480944, 11.499563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.914260, 7.496620, 12.181312>,  <11.545923, 7.194880, 11.775837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.914260, 7.496620, 12.181312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048832, 7.708369, 11.869779>,  <12.129576, 7.835418, 11.682859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048832, 7.708369, 11.869779>,  <11.914260, 7.496620, 12.181312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.048832, 7.708369, 11.869779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057586, 0.837058, 0.544074,
		0.939946, -0.138193, 0.312097,
		0.336431, 0.529373, -0.778832,
		12.149761, 7.867181, 11.636129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.519895, 7.871131, 12.384713>,  <11.914260, 7.496620, 12.181312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.519895, 7.871131, 12.384713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288776, 8.048064, 12.110342>,  <12.150105, 8.154223, 11.945720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288776, 8.048064, 12.110342>,  <12.519895, 7.871131, 12.384713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.288776, 8.048064, 12.110342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044054, 0.822282, 0.567372,
		0.814992, 0.358043, -0.455624,
		-0.577795, 0.442332, -0.685927,
		12.115438, 8.180764, 11.904564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768525, 8.540916, 12.265553>,  <12.519895, 7.871131, 12.384713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768525, 8.540916, 12.265553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.382483, 8.541089, 12.160807>,  <12.150858, 8.541193, 12.097960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.382483, 8.541089, 12.160807>,  <12.768525, 8.540916, 12.265553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.382483, 8.541089, 12.160807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132117, 0.862593, 0.488342,
		0.226093, 0.505898, -0.832436,
		-0.965105, 0.000432, -0.261863,
		12.092952, 8.541219, 12.082248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.661570, 9.143067, 11.857477>,  <12.768525, 8.540916, 12.265553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.661570, 9.143067, 11.857477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328630, 9.039124, 12.053302>,  <12.128867, 8.976759, 12.170796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328630, 9.039124, 12.053302>,  <12.661570, 9.143067, 11.857477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328630, 9.039124, 12.053302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051630, 0.915792, 0.398320,
		-0.551843, 0.306266, -0.775674,
		-0.832348, -0.259858, 0.489561,
		12.078926, 8.961167, 12.200171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329604, 9.745447, 11.923429>,  <12.661570, 9.143067, 11.857477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329604, 9.745447, 11.923429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155241, 9.493952, 12.181009>,  <12.050623, 9.343055, 12.335557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155241, 9.493952, 12.181009>,  <12.329604, 9.745447, 11.923429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.155241, 9.493952, 12.181009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289042, 0.775405, 0.561428,
		-0.852314, 0.058603, -0.519738,
		-0.435909, -0.628739, 0.643950,
		12.024468, 9.305330, 12.374194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.804483, 10.138174, 12.165362>,  <12.329604, 9.745447, 11.923429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.804483, 10.138174, 12.165362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.811949, 9.860431, 12.453117>,  <11.816428, 9.693785, 12.625771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.811949, 9.860431, 12.453117>,  <11.804483, 10.138174, 12.165362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.811949, 9.860431, 12.453117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434975, 0.642214, 0.631156,
		-0.900249, -0.324695, -0.290043,
		0.018663, -0.694359, 0.719387,
		11.817548, 9.652123, 12.668934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.185043, 10.205346, 12.494176>,  <11.804483, 10.138174, 12.165362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.185043, 10.205346, 12.494176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420498, 10.015274, 12.755775>,  <11.561770, 9.901231, 12.912735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420498, 10.015274, 12.755775>,  <11.185043, 10.205346, 12.494176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.420498, 10.015274, 12.755775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427192, 0.503978, 0.750675,
		-0.686306, -0.721256, 0.093666,
		0.588635, -0.475179, 0.653998,
		11.597089, 9.872721, 12.951975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.738161, 9.931602, 13.063396>,  <11.185043, 10.205346, 12.494176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.738161, 9.931602, 13.063396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.117559, 9.957921, 13.187349>,  <11.345199, 9.973713, 13.261722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.117559, 9.957921, 13.187349>,  <10.738161, 9.931602, 13.063396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117559, 9.957921, 13.187349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309789, 0.397205, 0.863863,
		-0.066248, -0.915368, 0.397130,
		0.948495, 0.065797, 0.309885,
		11.402108, 9.977660, 13.280314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.823442, 9.649056, 13.798539>,  <10.738161, 9.931602, 13.063396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.823442, 9.649056, 13.798539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122122, 9.907058, 13.733537>,  <11.301330, 10.061858, 13.694535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122122, 9.907058, 13.733537>,  <10.823442, 9.649056, 13.798539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.122122, 9.907058, 13.733537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358475, 0.596022, 0.718508,
		0.560293, -0.478260, 0.676269,
		0.746704, 0.645000, -0.162502,
		11.346132, 10.100559, 13.684785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955980, 9.832438, 14.471188>,  <10.823442, 9.649056, 13.798539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.955980, 9.832438, 14.471188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.141693, 10.100367, 14.239402>,  <11.253121, 10.261125, 14.100330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.141693, 10.100367, 14.239402>,  <10.955980, 9.832438, 14.471188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141693, 10.100367, 14.239402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231267, 0.723240, 0.650722,
		0.854961, -0.168108, 0.490695,
		0.464282, 0.669824, -0.579464,
		11.280978, 10.301313, 14.065563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.528220, 10.024055, 14.882876>,  <10.955980, 9.832438, 14.471188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.528220, 10.024055, 14.882876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.458515, 10.331966, 14.637251>,  <11.416693, 10.516713, 14.489876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.458515, 10.331966, 14.637251>,  <11.528220, 10.024055, 14.882876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.458515, 10.331966, 14.637251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046913, 0.629386, 0.775675,
		0.983581, 0.106363, -0.145790,
		-0.174262, 0.769779, -0.614063,
		11.406237, 10.562901, 14.453032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086225, 10.523053, 14.866339>,  <11.528220, 10.024055, 14.882876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086225, 10.523053, 14.866339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765418, 10.724552, 14.737959>,  <11.572934, 10.845451, 14.660932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765418, 10.724552, 14.737959>,  <12.086225, 10.523053, 14.866339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765418, 10.724552, 14.737959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138521, 0.679545, 0.720438,
		0.581018, 0.533344, -0.614786,
		-0.802016, 0.503748, -0.320948,
		11.524814, 10.875677, 14.641674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197193, 11.179763, 15.206226>,  <12.086225, 10.523053, 14.866339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197193, 11.179763, 15.206226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837502, 11.268474, 15.055386>,  <11.621688, 11.321700, 14.964881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837502, 11.268474, 15.055386>,  <12.197193, 11.179763, 15.206226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837502, 11.268474, 15.055386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126160, 0.693904, 0.708929,
		0.418896, 0.685063, -0.595998,
		-0.899227, 0.221777, -0.377101,
		11.567735, 11.335007, 14.942255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.137684, 11.828403, 15.388784>,  <12.197193, 11.179763, 15.206226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.137684, 11.828403, 15.388784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761144, 11.723926, 15.303331>,  <11.535220, 11.661240, 15.252060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761144, 11.723926, 15.303331>,  <12.137684, 11.828403, 15.388784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761144, 11.723926, 15.303331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335925, 0.665633, 0.666399,
		-0.031857, 0.699079, -0.714334,
		-0.941350, -0.261192, -0.213633,
		11.478739, 11.645568, 15.239242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.684123, 12.540696, 15.303914>,  <12.137684, 11.828403, 15.388784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.684123, 12.540696, 15.303914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457319, 12.224339, 15.395990>,  <11.321238, 12.034524, 15.451237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457319, 12.224339, 15.395990>,  <11.684123, 12.540696, 15.303914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457319, 12.224339, 15.395990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422684, 0.519223, 0.742796,
		-0.706994, 0.323874, -0.628702,
		-0.567008, -0.790894, 0.230191,
		11.287217, 11.987070, 15.465048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.980424, 12.896224, 15.341852>,  <11.684123, 12.540696, 15.303914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.980424, 12.896224, 15.341852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.973404, 12.547523, 15.537704>,  <10.969193, 12.338302, 15.655216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.973404, 12.547523, 15.537704>,  <10.980424, 12.896224, 15.341852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.973404, 12.547523, 15.537704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461918, 0.441382, 0.769294,
		-0.886749, -0.212669, -0.410424,
		-0.017549, -0.871753, 0.489631,
		10.968140, 12.285996, 15.684594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.247121, 12.749922, 15.389344>,  <10.980424, 12.896224, 15.341852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.247121, 12.749922, 15.389344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.442300, 12.541584, 15.669524>,  <10.559407, 12.416581, 15.837632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.442300, 12.541584, 15.669524>,  <10.247121, 12.749922, 15.389344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.442300, 12.541584, 15.669524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540993, 0.449297, 0.710957,
		-0.685007, -0.725848, -0.062540,
		0.487947, -0.520844, 0.700450,
		10.588684, 12.385331, 15.879659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.734871, 12.684609, 15.961809>,  <10.247121, 12.749922, 15.389344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.734871, 12.684609, 15.961809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084108, 12.598400, 16.136742>,  <10.293651, 12.546675, 16.241701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084108, 12.598400, 16.136742>,  <9.734871, 12.684609, 15.961809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084108, 12.598400, 16.136742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352061, 0.341837, 0.871321,
		-0.337287, -0.914711, 0.222578,
		0.873093, -0.215524, 0.437331,
		10.346036, 12.533743, 16.267941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.523327, 12.373260, 16.544416>,  <9.734871, 12.684609, 15.961809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.523327, 12.373260, 16.544416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886410, 12.520294, 16.625360>,  <10.104259, 12.608515, 16.673927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886410, 12.520294, 16.625360>,  <9.523327, 12.373260, 16.544416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.886410, 12.520294, 16.625360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359452, 0.432375, 0.826950,
		0.216478, -0.823368, 0.524599,
		0.907707, 0.367584, 0.202362,
		10.158722, 12.630569, 16.686069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.632691, 12.393296, 17.305094>,  <9.523327, 12.373260, 16.544416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.632691, 12.393296, 17.305094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.923635, 12.641017, 17.186829>,  <10.098200, 12.789649, 17.115870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.923635, 12.641017, 17.186829>,  <9.632691, 12.393296, 17.305094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.923635, 12.641017, 17.186829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188960, 0.594916, 0.781261,
		0.659732, -0.512387, 0.549739,
		0.727357, 0.619302, -0.295664,
		10.141842, 12.826807, 17.098129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.110119, 12.598878, 17.867359>,  <9.632691, 12.393296, 17.305094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.110119, 12.598878, 17.867359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.115925, 12.884419, 17.587301>,  <10.119409, 13.055744, 17.419266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.115925, 12.884419, 17.587301>,  <10.110119, 12.598878, 17.867359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.115925, 12.884419, 17.587301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106380, 0.697347, 0.708795,
		0.994220, 0.064193, 0.086062,
		0.014516, 0.713853, -0.700145,
		10.120279, 13.098576, 17.377258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461357, 13.156061, 18.208601>,  <10.110119, 12.598878, 17.867359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461357, 13.156061, 18.208601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300139, 13.333474, 17.888393>,  <10.203409, 13.439922, 17.696268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300139, 13.333474, 17.888393>,  <10.461357, 13.156061, 18.208601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.300139, 13.333474, 17.888393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128581, 0.838594, 0.529365,
		0.906103, 0.316289, -0.280960,
		-0.403043, 0.443533, -0.800521,
		10.179226, 13.466534, 17.648237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.862662, 13.723732, 18.304289>,  <10.461357, 13.156061, 18.208601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.862662, 13.723732, 18.304289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.525469, 13.793700, 18.100805>,  <10.323153, 13.835681, 17.978716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.525469, 13.793700, 18.100805>,  <10.862662, 13.723732, 18.304289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.525469, 13.793700, 18.100805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235428, 0.730320, 0.641253,
		0.483688, 0.660330, -0.574466,
		-0.842983, 0.174921, -0.508707,
		10.272574, 13.846176, 17.948193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.090530, 14.370321, 18.539631>,  <10.862662, 13.723732, 18.304289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.090530, 14.370321, 18.539631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.884811, 14.512677, 18.227518>,  <10.761380, 14.598091, 18.040251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.884811, 14.512677, 18.227518>,  <11.090530, 14.370321, 18.539631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.884811, 14.512677, 18.227518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497674, 0.617119, 0.609495,
		0.698441, 0.701787, -0.140266,
		-0.514297, 0.355890, -0.780283,
		10.730522, 14.619444, 17.993433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.445421, 14.951823, 18.204781>,  <11.090530, 14.370321, 18.539631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.445421, 14.951823, 18.204781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452415, 14.993521, 17.807022>,  <11.456611, 15.018539, 17.568367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452415, 14.993521, 17.807022>,  <11.445421, 14.951823, 18.204781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.452415, 14.993521, 17.807022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988814, 0.145538, 0.032641,
		0.148126, -0.983845, -0.100535,
		0.017482, 0.104245, -0.994398,
		11.457659, 15.024795, 17.508703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966322, 14.625588, 18.653688>,  <11.445421, 14.951823, 18.204781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966322, 14.625588, 18.653688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865988, 14.273055, 18.493523>,  <11.805787, 14.061535, 18.397423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865988, 14.273055, 18.493523>,  <11.966322, 14.625588, 18.653688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865988, 14.273055, 18.493523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211659, -0.453563, 0.865725,
		-0.944607, 0.132404, 0.300313,
		-0.250836, -0.881334, -0.400415,
		11.790737, 14.008655, 18.373398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774887, 14.661291, 18.623554>,  <11.966322, 14.625588, 18.653688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774887, 14.661291, 18.623554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052067, 14.375187, 18.659828>,  <13.218375, 14.203525, 18.681593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052067, 14.375187, 18.659828>,  <12.774887, 14.661291, 18.623554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052067, 14.375187, 18.659828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007812, 0.133218, 0.991056,
		-0.720943, -0.686044, 0.097901,
		0.692950, -0.715260, 0.090684,
		13.259952, 14.160609, 18.687033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.569033, 14.157448, 19.213381>,  <12.774887, 14.661291, 18.623554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.569033, 14.157448, 19.213381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966842, 14.117049, 19.202612>,  <13.205527, 14.092811, 19.196150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966842, 14.117049, 19.202612>,  <12.569033, 14.157448, 19.213381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.966842, 14.117049, 19.202612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050485, 0.238609, 0.969802,
		-0.091522, -0.965850, 0.242401,
		0.994522, -0.100996, -0.026923,
		13.265199, 14.086751, 19.194534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775548, 13.736801, 19.754509>,  <12.569033, 14.157448, 19.213381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.775548, 13.736801, 19.754509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.097443, 13.952085, 19.654324>,  <13.290579, 14.081255, 19.594212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.097443, 13.952085, 19.654324>,  <12.775548, 13.736801, 19.754509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.097443, 13.952085, 19.654324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169085, 0.196629, 0.965789,
		0.569044, -0.819554, 0.067231,
		0.804736, 0.538209, -0.250464,
		13.338863, 14.113547, 19.579184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.395577, 13.467035, 20.076302>,  <12.775548, 13.736801, 19.754509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.395577, 13.467035, 20.076302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445811, 13.860262, 20.022921>,  <13.475951, 14.096198, 19.990892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445811, 13.860262, 20.022921>,  <13.395577, 13.467035, 20.076302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.445811, 13.860262, 20.022921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491062, 0.055287, 0.869368,
		0.862025, -0.174713, -0.475803,
		0.125584, 0.983066, -0.133454,
		13.483486, 14.155182, 19.982885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075280, 13.562696, 20.075848>,  <13.395577, 13.467035, 20.076302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075280, 13.562696, 20.075848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891497, 13.905153, 20.170433>,  <13.781226, 14.110628, 20.227184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891497, 13.905153, 20.170433>,  <14.075280, 13.562696, 20.075848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.891497, 13.905153, 20.170433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675086, 0.163607, 0.719368,
		0.577196, 0.490153, -0.653142,
		-0.459459, 0.856144, 0.236463,
		13.753659, 14.161997, 20.241371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591558, 14.137463, 20.129038>,  <14.075280, 13.562696, 20.075848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591558, 14.137463, 20.129038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274920, 14.216064, 20.360472>,  <14.084936, 14.263226, 20.499332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274920, 14.216064, 20.360472>,  <14.591558, 14.137463, 20.129038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274920, 14.216064, 20.360472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607211, 0.147075, 0.780810,
		0.068337, 0.969410, -0.235743,
		-0.791596, 0.196504, 0.578586,
		14.037440, 14.275016, 20.534048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869332, 14.697671, 20.572428>,  <14.591558, 14.137463, 20.129038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869332, 14.697671, 20.572428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545882, 14.560892, 20.763926>,  <14.351812, 14.478825, 20.878824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545882, 14.560892, 20.763926>,  <14.869332, 14.697671, 20.572428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545882, 14.560892, 20.763926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475312, 0.099839, 0.874134,
		-0.346704, 0.934401, 0.081799,
		-0.808625, -0.341946, 0.478747,
		14.303295, 14.458308, 20.907549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112282, 14.987682, 21.169271>,  <14.869332, 14.697671, 20.572428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112282, 14.987682, 21.169271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792635, 14.773016, 21.277641>,  <14.600846, 14.644217, 21.342663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792635, 14.773016, 21.277641>,  <15.112282, 14.987682, 21.169271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792635, 14.773016, 21.277641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285007, 0.058604, 0.956732,
		-0.529322, 0.841758, 0.106122,
		-0.799118, -0.536665, 0.270927,
		14.552899, 14.612017, 21.358919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.636797, 15.368151, 21.629948>,  <15.112282, 14.987682, 21.169271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.636797, 15.368151, 21.629948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.574290, 14.979846, 21.702831>,  <14.536786, 14.746862, 21.746561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.574290, 14.979846, 21.702831>,  <14.636797, 15.368151, 21.629948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.574290, 14.979846, 21.702831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284452, 0.132428, 0.949500,
		-0.945869, 0.200205, 0.255442,
		-0.156267, -0.970763, 0.182208,
		14.527411, 14.688617, 21.757494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184646, 15.268294, 22.255236>,  <14.636797, 15.368151, 21.629948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184646, 15.268294, 22.255236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403202, 14.934548, 22.226143>,  <14.534336, 14.734301, 22.208687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.403202, 14.934548, 22.226143>,  <14.184646, 15.268294, 22.255236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.403202, 14.934548, 22.226143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275805, 0.097253, 0.956281,
		-0.790815, -0.542563, 0.283260,
		0.546391, -0.834366, -0.072732,
		14.567120, 14.684238, 22.204323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967278, 14.957069, 22.831060>,  <14.184646, 15.268294, 22.255236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.967278, 14.957069, 22.831060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308665, 14.793612, 22.701693>,  <14.513498, 14.695539, 22.624071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308665, 14.793612, 22.701693>,  <13.967278, 14.957069, 22.831060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.308665, 14.793612, 22.701693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382822, 0.070512, 0.921127,
		-0.353607, -0.909966, 0.216617,
		0.853469, -0.408643, -0.323421,
		14.564706, 14.671020, 22.604666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135130, 14.609141, 23.394457>,  <13.967278, 14.957069, 22.831060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135130, 14.609141, 23.394457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.466305, 14.604609, 23.170174>,  <14.665009, 14.601891, 23.035604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.466305, 14.604609, 23.170174>,  <14.135130, 14.609141, 23.394457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.466305, 14.604609, 23.170174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560625, -0.009768, 0.828012,
		-0.014853, -0.999888, -0.001738,
		0.827937, -0.011324, -0.560708,
		14.714685, 14.601211, 23.001961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.587518, 14.088977, 23.719866>,  <14.135130, 14.609141, 23.394457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.587518, 14.088977, 23.719866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835841, 14.318763, 23.506479>,  <14.984835, 14.456635, 23.378447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835841, 14.318763, 23.506479>,  <14.587518, 14.088977, 23.719866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835841, 14.318763, 23.506479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707647, -0.117771, 0.696682,
		0.337392, -0.810013, -0.479631,
		0.620808, 0.574465, -0.533468,
		15.022083, 14.491102, 23.346439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166900, 13.632193, 23.538984>,  <14.587518, 14.088977, 23.719866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166900, 13.632193, 23.538984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.283679, 14.014757, 23.536331>,  <15.353746, 14.244296, 23.534740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.283679, 14.014757, 23.536331>,  <15.166900, 13.632193, 23.538984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.283679, 14.014757, 23.536331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619370, -0.183773, 0.763288,
		0.728798, -0.226947, -0.646025,
		0.291948, 0.956411, -0.006631,
		15.371264, 14.301681, 23.534342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913025, 13.545456, 23.580915>,  <15.166900, 13.632193, 23.538984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913025, 13.545456, 23.580915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784503, 13.907981, 23.690722>,  <15.707390, 14.125496, 23.756605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784503, 13.907981, 23.690722>,  <15.913025, 13.545456, 23.580915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784503, 13.907981, 23.690722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731541, 0.053470, 0.679698,
		0.601340, 0.419211, -0.680185,
		-0.321306, 0.906313, 0.274517,
		15.688111, 14.179874, 23.773077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455650, 13.961174, 23.556629>,  <15.913025, 13.545456, 23.580915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.455650, 13.961174, 23.556629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.192968, 14.136915, 23.801809>,  <16.035358, 14.242360, 23.948917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.192968, 14.136915, 23.801809>,  <16.455650, 13.961174, 23.556629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192968, 14.136915, 23.801809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674490, -0.021390, 0.737974,
		0.337343, 0.898059, -0.282293,
		-0.656706, 0.439354, 0.612948,
		15.995956, 14.268722, 23.985693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904718, 14.472031, 23.851570>,  <16.455650, 13.961174, 23.556629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904718, 14.472031, 23.851570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.588356, 14.419442, 24.090630>,  <16.398539, 14.387889, 24.234064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.588356, 14.419442, 24.090630>,  <16.904718, 14.472031, 23.851570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588356, 14.419442, 24.090630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584145, 0.128777, 0.801368,
		-0.182320, 0.982920, -0.025052,
		-0.790907, -0.131471, 0.597646,
		16.351084, 14.380001, 24.269924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951227, 15.053743, 24.380877>,  <16.904718, 14.472031, 23.851570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951227, 15.053743, 24.380877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703821, 14.783260, 24.540970>,  <16.555378, 14.620971, 24.637026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703821, 14.783260, 24.540970>,  <16.951227, 15.053743, 24.380877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.703821, 14.783260, 24.540970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439675, 0.124320, 0.889511,
		-0.651251, 0.726146, 0.220418,
		-0.618513, -0.676207, 0.400232,
		16.518267, 14.580399, 24.661039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.638451, 15.458156, 24.852301>,  <16.951227, 15.053743, 24.380877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.638451, 15.458156, 24.852301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568729, 15.076771, 24.950710>,  <16.526896, 14.847939, 25.009756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568729, 15.076771, 24.950710>,  <16.638451, 15.458156, 24.852301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568729, 15.076771, 24.950710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222413, 0.205272, 0.953098,
		-0.959245, 0.220849, 0.176282,
		-0.174305, -0.953462, 0.246025,
		16.516438, 14.790732, 25.024517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.394464, 15.582589, 25.477444>,  <16.638451, 15.458156, 24.852301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.394464, 15.582589, 25.477444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533932, 15.208641, 25.450768>,  <16.617613, 14.984272, 25.434763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533932, 15.208641, 25.450768>,  <16.394464, 15.582589, 25.477444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533932, 15.208641, 25.450768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376866, 0.074695, 0.923251,
		-0.858139, -0.347042, 0.378365,
		0.348669, -0.934870, -0.066689,
		16.638533, 14.928180, 25.430761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354034, 15.297571, 26.140486>,  <16.394464, 15.582589, 25.477444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354034, 15.297571, 26.140486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.626186, 15.052787, 25.979197>,  <16.789478, 14.905916, 25.882423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.626186, 15.052787, 25.979197>,  <16.354034, 15.297571, 26.140486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626186, 15.052787, 25.979197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497223, -0.018729, 0.867420,
		-0.538379, -0.790666, 0.291539,
		0.680380, -0.611961, -0.403221,
		16.830299, 14.869199, 25.858231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405615, 14.781191, 26.591045>,  <16.354034, 15.297571, 26.140486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405615, 14.781191, 26.591045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737148, 14.741334, 26.370825>,  <16.936068, 14.717420, 26.238693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.737148, 14.741334, 26.370825>,  <16.405615, 14.781191, 26.591045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737148, 14.741334, 26.370825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510322, -0.268751, 0.816911,
		-0.229361, -0.958042, -0.171899,
		0.828833, -0.099643, -0.550551,
		16.985798, 14.711442, 26.205660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656017, 14.131947, 26.766508>,  <16.405615, 14.781191, 26.591045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656017, 14.131947, 26.766508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.962065, 14.343404, 26.619467>,  <17.145693, 14.470279, 26.531242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.962065, 14.343404, 26.619467>,  <16.656017, 14.131947, 26.766508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962065, 14.343404, 26.619467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472904, -0.073903, 0.878009,
		0.436987, -0.845621, -0.306542,
		0.765117, 0.528644, -0.367602,
		17.191601, 14.501997, 26.509186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204163, 13.798775, 27.049122>,  <16.656017, 14.131947, 26.766508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204163, 13.798775, 27.049122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.376486, 14.138254, 26.926409>,  <17.479879, 14.341942, 26.852781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.376486, 14.138254, 26.926409>,  <17.204163, 13.798775, 27.049122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376486, 14.138254, 26.926409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514973, 0.047969, 0.855863,
		0.741087, -0.526696, -0.416392,
		0.430806, 0.848700, -0.306783,
		17.505728, 14.392864, 26.834373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.950317, 13.695817, 27.101213>,  <17.204163, 13.798775, 27.049122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.950317, 13.695817, 27.101213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.890944, 14.091218, 27.112730>,  <17.855320, 14.328459, 27.119640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.890944, 14.091218, 27.112730>,  <17.950317, 13.695817, 27.101213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.890944, 14.091218, 27.112730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548800, 0.058118, 0.833931,
		0.822670, 0.139585, -0.551117,
		-0.148434, 0.988503, 0.028793,
		17.846413, 14.387769, 27.121368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.531691, 13.939843, 27.368628>,  <17.950317, 13.695817, 27.101213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.531691, 13.939843, 27.368628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274960, 14.244035, 27.408075>,  <18.120920, 14.426550, 27.431744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274960, 14.244035, 27.408075>,  <18.531691, 13.939843, 27.368628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274960, 14.244035, 27.408075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529210, 0.346187, 0.774656,
		0.554970, 0.549386, -0.624647,
		-0.641830, 0.760480, 0.098617,
		18.082411, 14.472178, 27.437660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910589, 14.515926, 27.668728>,  <18.531691, 13.939843, 27.368628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910589, 14.515926, 27.668728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.547619, 14.678896, 27.709885>,  <18.329838, 14.776678, 27.734579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.547619, 14.678896, 27.709885>,  <18.910589, 14.515926, 27.668728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.547619, 14.678896, 27.709885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306646, 0.474606, 0.825056,
		0.287314, 0.780227, -0.555604,
		-0.907424, 0.407424, 0.102893,
		18.275391, 14.801124, 27.740753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013050, 15.264832, 27.683910>,  <18.910589, 14.515926, 27.668728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013050, 15.264832, 27.683910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.669321, 15.169969, 27.865162>,  <18.463083, 15.113050, 27.973913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.669321, 15.169969, 27.865162>,  <19.013050, 15.264832, 27.683910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669321, 15.169969, 27.865162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296534, 0.490825, 0.819242,
		-0.416697, 0.838359, -0.351450,
		-0.859320, -0.237159, 0.453127,
		18.411526, 15.098821, 28.001101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837975, 15.891950, 27.997583>,  <19.013050, 15.264832, 27.683910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837975, 15.891950, 27.997583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618528, 15.609974, 28.177397>,  <18.486860, 15.440788, 28.285286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618528, 15.609974, 28.177397>,  <18.837975, 15.891950, 27.997583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618528, 15.609974, 28.177397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099234, 0.478971, 0.872204,
		-0.830166, 0.523113, -0.192817,
		-0.548615, -0.704940, 0.449536,
		18.453943, 15.398492, 28.312258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219465, 16.128056, 28.340225>,  <18.837975, 15.891950, 27.997583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219465, 16.128056, 28.340225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315079, 15.800163, 28.548420>,  <18.372446, 15.603428, 28.673336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315079, 15.800163, 28.548420>,  <18.219465, 16.128056, 28.340225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315079, 15.800163, 28.548420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091441, 0.552647, 0.828384,
		-0.966696, -0.150418, 0.207058,
		0.239034, -0.819729, 0.520488,
		18.386789, 15.554245, 28.704567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019075, 16.290442, 28.954397>,  <18.219465, 16.128056, 28.340225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019075, 16.290442, 28.954397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236418, 15.967753, 29.047321>,  <18.366823, 15.774140, 29.103075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236418, 15.967753, 29.047321>,  <18.019075, 16.290442, 28.954397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.236418, 15.967753, 29.047321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289670, 0.439889, 0.850052,
		-0.787945, -0.394586, 0.472699,
		0.543354, -0.806721, 0.232309,
		18.399424, 15.725737, 29.117014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909288, 16.218929, 29.656124>,  <18.019075, 16.290442, 28.954397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909288, 16.218929, 29.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209963, 15.961565, 29.598169>,  <18.390368, 15.807146, 29.563396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209963, 15.961565, 29.598169>,  <17.909288, 16.218929, 29.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209963, 15.961565, 29.598169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285973, 0.120012, 0.950693,
		-0.594298, -0.756054, 0.274210,
		0.751684, -0.643412, -0.144888,
		18.435469, 15.768541, 29.554703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.832556, 15.748946, 30.150511>,  <17.909288, 16.218929, 29.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.832556, 15.748946, 30.150511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218853, 15.722277, 30.050198>,  <18.450632, 15.706275, 29.990009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218853, 15.722277, 30.050198>,  <17.832556, 15.748946, 30.150511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218853, 15.722277, 30.050198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256398, 0.394031, 0.882609,
		0.039969, -0.916675, 0.397628,
		0.965745, -0.066674, -0.250783,
		18.508575, 15.702274, 29.974962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217867, 15.443206, 30.653242>,  <17.832556, 15.748946, 30.150511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.217867, 15.443206, 30.653242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.530298, 15.599200, 30.458174>,  <18.717758, 15.692797, 30.341133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.530298, 15.599200, 30.458174>,  <18.217867, 15.443206, 30.653242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530298, 15.599200, 30.458174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376854, 0.328315, 0.866136,
		0.497892, -0.860302, 0.109472,
		0.781080, 0.389987, -0.487673,
		18.764622, 15.716196, 30.311872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.772451, 15.062045, 30.903034>,  <18.217867, 15.443206, 30.653242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.772451, 15.062045, 30.903034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886368, 15.416234, 30.756155>,  <18.954718, 15.628747, 30.668028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886368, 15.416234, 30.756155>,  <18.772451, 15.062045, 30.903034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886368, 15.416234, 30.756155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218619, 0.312971, 0.924259,
		0.933328, -0.343496, -0.104450,
		0.284790, 0.885471, -0.367199,
		18.971806, 15.681875, 30.645996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362478, 15.286980, 31.399572>,  <18.772451, 15.062045, 30.903034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362478, 15.286980, 31.399572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250811, 15.627269, 31.221434>,  <19.183811, 15.831442, 31.114550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250811, 15.627269, 31.221434>,  <19.362478, 15.286980, 31.399572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250811, 15.627269, 31.221434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064883, 0.479440, 0.875173,
		0.958048, 0.215425, -0.189041,
		-0.279168, 0.850723, -0.445349,
		19.167061, 15.882485, 31.087830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.886385, 15.755385, 31.524521>,  <19.362478, 15.286980, 31.399572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.886385, 15.755385, 31.524521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543293, 15.957988, 31.489302>,  <19.337439, 16.079550, 31.468170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543293, 15.957988, 31.489302>,  <19.886385, 15.755385, 31.524521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543293, 15.957988, 31.489302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186541, 0.466222, 0.864777,
		0.479066, 0.725319, -0.494377,
		-0.857729, 0.506507, -0.088049,
		19.285975, 16.109940, 31.462887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.066441, 16.385231, 31.708330>,  <19.886385, 15.755385, 31.524521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.066441, 16.385231, 31.708330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.667522, 16.414240, 31.713161>,  <19.428171, 16.431646, 31.716061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.667522, 16.414240, 31.713161>,  <20.066441, 16.385231, 31.708330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.667522, 16.414240, 31.713161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051089, 0.565414, 0.823224,
		0.052872, 0.821613, -0.567588,
		-0.997294, 0.072523, 0.012080,
		19.368334, 16.435997, 31.716785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914577, 17.044136, 31.777407>,  <20.066441, 16.385231, 31.708330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914577, 17.044136, 31.777407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562544, 16.883802, 31.879219>,  <19.351324, 16.787603, 31.940306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562544, 16.883802, 31.879219>,  <19.914577, 17.044136, 31.777407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562544, 16.883802, 31.879219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126985, 0.715226, 0.687260,
		-0.457523, 0.572525, -0.680359,
		-0.880084, -0.400832, 0.254531,
		19.298519, 16.763554, 31.955578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399187, 17.601274, 31.665564>,  <19.914577, 17.044136, 31.777407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399187, 17.601274, 31.665564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.230118, 17.351938, 31.928713>,  <19.128675, 17.202337, 32.086601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.230118, 17.351938, 31.928713>,  <19.399187, 17.601274, 31.665564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.230118, 17.351938, 31.928713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062238, 0.744153, 0.665103,
		-0.904143, 0.240176, -0.353329,
		-0.422673, -0.623339, 0.657872,
		19.103315, 17.164936, 32.126076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884605, 18.015696, 31.967810>,  <19.399187, 17.601274, 31.665564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884605, 18.015696, 31.967810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.917944, 17.704145, 32.216457>,  <18.937948, 17.517216, 32.365646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.917944, 17.704145, 32.216457>,  <18.884605, 18.015696, 31.967810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917944, 17.704145, 32.216457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206545, 0.596741, 0.775397,
		-0.974881, -0.193019, -0.111136,
		0.083347, -0.778874, 0.621618,
		18.942947, 17.470484, 32.402943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260273, 17.887951, 32.462379>,  <18.884605, 18.015696, 31.967810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260273, 17.887951, 32.462379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565828, 17.713648, 32.652786>,  <18.749163, 17.609066, 32.767029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565828, 17.713648, 32.652786>,  <18.260273, 17.887951, 32.462379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565828, 17.713648, 32.652786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168133, 0.577750, 0.798709,
		-0.623061, -0.690158, 0.368072,
		0.763889, -0.435759, 0.476012,
		18.794994, 17.582920, 32.795589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076418, 17.744204, 33.136883>,  <18.260273, 17.887951, 32.462379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076418, 17.744204, 33.136883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.473944, 17.775301, 33.168610>,  <18.712460, 17.793961, 33.187645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.473944, 17.775301, 33.168610>,  <18.076418, 17.744204, 33.136883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473944, 17.775301, 33.168610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104621, 0.415555, 0.903531,
		0.037283, -0.906239, 0.421117,
		0.993813, 0.077744, 0.079319,
		18.772087, 17.798624, 33.192406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206282, 17.730616, 33.777882>,  <18.076418, 17.744204, 33.136883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206282, 17.730616, 33.777882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558012, 17.877569, 33.656673>,  <18.769051, 17.965740, 33.583950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558012, 17.877569, 33.656673>,  <18.206282, 17.730616, 33.777882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558012, 17.877569, 33.656673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132184, 0.423001, 0.896436,
		0.457514, -0.828311, 0.323392,
		0.879323, 0.367384, -0.303019,
		18.821810, 17.987783, 33.565769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628490, 17.627018, 34.256542>,  <18.206282, 17.730616, 33.777882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628490, 17.627018, 34.256542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.839033, 17.909273, 34.066795>,  <18.965359, 18.078627, 33.952950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.839033, 17.909273, 34.066795>,  <18.628490, 17.627018, 34.256542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.839033, 17.909273, 34.066795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233348, 0.416595, 0.878633,
		0.817616, -0.573168, 0.054618,
		0.526358, 0.705640, -0.474362,
		18.996941, 18.120964, 33.924488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049685, 17.760475, 34.882778>,  <18.628490, 17.627018, 34.256542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.049685, 17.760475, 34.882778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128639, 18.029709, 34.597683>,  <19.176012, 18.191248, 34.426624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128639, 18.029709, 34.597683>,  <19.049685, 17.760475, 34.882778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128639, 18.029709, 34.597683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303089, 0.649523, 0.697322,
		0.932296, -0.353665, -0.075797,
		0.197386, 0.673083, -0.712740,
		19.187855, 18.231634, 34.383862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835630, 17.992189, 34.913937>,  <19.049685, 17.760475, 34.882778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835630, 17.992189, 34.913937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.601759, 18.274487, 34.753899>,  <19.461435, 18.443865, 34.657875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.601759, 18.274487, 34.753899>,  <19.835630, 17.992189, 34.913937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.601759, 18.274487, 34.753899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270943, 0.634729, 0.723677,
		0.764682, 0.314716, -0.562329,
		-0.584680, 0.705743, -0.400096,
		19.426355, 18.486210, 34.633869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296230, 18.591715, 34.963200>,  <19.835630, 17.992189, 34.913937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296230, 18.591715, 34.963200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910328, 18.690344, 34.926437>,  <19.678785, 18.749521, 34.904381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910328, 18.690344, 34.926437>,  <20.296230, 18.591715, 34.963200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910328, 18.690344, 34.926437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147859, 0.796871, 0.585777,
		0.217673, 0.551543, -0.805245,
		-0.964757, 0.246570, -0.091907,
		19.620901, 18.764315, 34.898865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.225033, 19.330519, 34.731968>,  <20.296230, 18.591715, 34.963200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.225033, 19.330519, 34.731968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.914944, 19.179338, 34.934425>,  <19.728889, 19.088631, 35.055901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.914944, 19.179338, 34.934425>,  <20.225033, 19.330519, 34.731968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.914944, 19.179338, 34.934425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092656, 0.724554, 0.682962,
		-0.624853, 0.576346, -0.526673,
		-0.775225, -0.377951, 0.506141,
		19.682377, 19.065952, 35.086269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982357, 19.903286, 35.122337>,  <20.225033, 19.330519, 34.731968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982357, 19.903286, 35.122337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817890, 19.607992, 35.336235>,  <19.719210, 19.430817, 35.464573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817890, 19.607992, 35.336235>,  <19.982357, 19.903286, 35.122337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817890, 19.607992, 35.336235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008882, 0.583354, 0.812170,
		-0.911517, 0.338687, -0.233299,
		-0.411167, -0.738234, 0.534745,
		19.694540, 19.386522, 35.496658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473909, 20.155378, 35.650757>,  <19.982357, 19.903286, 35.122337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473909, 20.155378, 35.650757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543400, 19.792755, 35.804626>,  <19.585094, 19.575182, 35.896946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543400, 19.792755, 35.804626>,  <19.473909, 20.155378, 35.650757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543400, 19.792755, 35.804626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122561, 0.367671, 0.921844,
		-0.977138, -0.207294, -0.047235,
		0.173726, -0.906558, 0.384671,
		19.595518, 19.520788, 35.920029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155441, 20.889627, 35.774643>,  <19.473909, 20.155378, 35.650757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155441, 20.889627, 35.774643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139051, 21.122379, 35.449745>,  <19.129217, 21.262030, 35.254807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.139051, 21.122379, 35.449745>,  <19.155441, 20.889627, 35.774643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139051, 21.122379, 35.449745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859972, -0.434415, -0.267828,
		-0.508694, 0.687532, 0.518198,
		-0.040973, 0.581879, -0.812243,
		19.126760, 21.296944, 35.206074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520958, 21.118269, 35.842461>,  <19.155441, 20.889627, 35.774643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.520958, 21.118269, 35.842461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.615164, 21.149256, 35.454948>,  <18.671686, 21.167849, 35.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.615164, 21.149256, 35.454948>,  <18.520958, 21.118269, 35.842461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615164, 21.149256, 35.454948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901242, -0.355655, -0.247533,
		-0.363727, 0.931401, -0.013945,
		0.235513, 0.077466, -0.968779,
		18.685818, 21.172495, 35.164314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086241, 21.575367, 35.316574>,  <18.520958, 21.118269, 35.842461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086241, 21.575367, 35.316574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235844, 21.259186, 35.122543>,  <18.325605, 21.069477, 35.006123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235844, 21.259186, 35.122543>,  <18.086241, 21.575367, 35.316574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235844, 21.259186, 35.122543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920740, -0.253785, -0.296364,
		0.111155, 0.557476, -0.822718,
		0.374009, -0.790451, -0.485081,
		18.348047, 21.022051, 34.977020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.321476, 21.412796, 34.702442>,  <18.086241, 21.575367, 35.316574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.321476, 21.412796, 34.702442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395464, 21.781759, 34.838058>,  <18.439856, 22.003138, 34.919426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395464, 21.781759, 34.838058>,  <18.321476, 21.412796, 34.702442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395464, 21.781759, 34.838058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442067, -0.230021, 0.866987,
		0.877703, -0.310243, 0.365221,
		0.184968, 0.922410, 0.339038,
		18.450954, 22.058483, 34.939770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.872244, 21.673540, 34.414398>,  <18.321476, 21.412796, 34.702442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.872244, 21.673540, 34.414398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.933939, 21.278463, 34.424816>,  <18.970955, 21.041418, 34.431065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.933939, 21.278463, 34.424816>,  <18.872244, 21.673540, 34.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933939, 21.278463, 34.424816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413160, 0.040532, -0.909756,
		0.897502, 0.151076, 0.414326,
		0.154236, -0.987691, 0.026041,
		18.980209, 20.982157, 34.432629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428251, 21.638990, 34.176094>,  <18.872244, 21.673540, 34.414398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428251, 21.638990, 34.176094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301329, 21.262552, 34.129353>,  <19.225176, 21.036690, 34.101307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301329, 21.262552, 34.129353>,  <19.428251, 21.638990, 34.176094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301329, 21.262552, 34.129353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337594, 0.003051, -0.941287,
		0.886198, -0.338126, 0.316740,
		-0.317307, -0.941096, -0.116853,
		19.206137, 20.980223, 34.094296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977516, 21.104940, 33.887604>,  <19.428251, 21.638990, 34.176094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977516, 21.104940, 33.887604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617229, 20.959787, 33.792080>,  <19.401058, 20.872696, 33.734764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.617229, 20.959787, 33.792080>,  <19.977516, 21.104940, 33.887604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617229, 20.959787, 33.792080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264664, -0.022474, -0.964079,
		0.344480, -0.931564, 0.116285,
		-0.900714, -0.362883, -0.238809,
		19.347015, 20.850924, 33.720436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194576, 20.700039, 33.446407>,  <19.977516, 21.104940, 33.887604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194576, 20.700039, 33.446407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.802666, 20.717777, 33.368359>,  <19.567520, 20.728420, 33.321529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.802666, 20.717777, 33.368359>,  <20.194576, 20.700039, 33.446407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802666, 20.717777, 33.368359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195495, 0.004304, -0.980695,
		-0.042654, -0.999007, -0.012887,
		-0.979777, 0.044350, -0.195117,
		19.508732, 20.731081, 33.309822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.101879, 20.160051, 32.945251>,  <20.194576, 20.700039, 33.446407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.101879, 20.160051, 32.945251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.793709, 20.411623, 32.903503>,  <19.608807, 20.562567, 32.878456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.793709, 20.411623, 32.903503>,  <20.101879, 20.160051, 32.945251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.793709, 20.411623, 32.903503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148904, 0.018335, -0.988682,
		-0.619898, -0.777246, -0.107776,
		-0.770425, 0.628930, -0.104369,
		19.562582, 20.600302, 32.872192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.673016, 19.827917, 32.620052>,  <20.101879, 20.160051, 32.945251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.673016, 19.827917, 32.620052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569862, 20.207264, 32.546196>,  <19.507971, 20.434872, 32.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.569862, 20.207264, 32.546196>,  <19.673016, 19.827917, 32.620052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.569862, 20.207264, 32.546196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071614, -0.209343, -0.975216,
		-0.963518, -0.238270, 0.121903,
		-0.257885, 0.948368, -0.184643,
		19.492496, 20.491774, 32.490803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026314, 19.863302, 32.182964>,  <19.673016, 19.827917, 32.620052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026314, 19.863302, 32.182964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223833, 20.205500, 32.120621>,  <19.342344, 20.410818, 32.083214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223833, 20.205500, 32.120621>,  <19.026314, 19.863302, 32.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223833, 20.205500, 32.120621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245806, -0.034607, -0.968701,
		-0.834112, 0.516655, 0.193196,
		0.493799, 0.855494, -0.155863,
		19.371973, 20.462149, 32.073860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521370, 20.296099, 31.830389>,  <19.026314, 19.863302, 32.182964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.521370, 20.296099, 31.830389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852970, 20.509222, 31.762419>,  <19.051929, 20.637096, 31.721636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852970, 20.509222, 31.762419>,  <18.521370, 20.296099, 31.830389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852970, 20.509222, 31.762419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286386, 0.143470, -0.947312,
		-0.480354, 0.833987, 0.271525,
		0.829001, 0.532806, -0.169925,
		19.101671, 20.669064, 31.711441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233206, 20.939568, 31.469889>,  <18.521370, 20.296099, 31.830389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233206, 20.939568, 31.469889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623209, 20.876623, 31.407148>,  <18.857210, 20.838858, 31.369505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623209, 20.876623, 31.407148>,  <18.233206, 20.939568, 31.469889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623209, 20.876623, 31.407148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165645, -0.044345, -0.985188,
		0.148073, 0.986545, -0.069302,
		0.975006, -0.157360, -0.156850,
		18.915710, 20.829414, 31.360094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.349407, 21.383961, 30.943521>,  <18.233206, 20.939568, 31.469889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.349407, 21.383961, 30.943521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.649246, 21.120924, 30.913391>,  <18.829149, 20.963102, 30.895313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.649246, 21.120924, 30.913391>,  <18.349407, 21.383961, 30.943521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649246, 21.120924, 30.913391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241094, -0.165278, -0.956325,
		0.616421, 0.735021, -0.282434,
		0.749599, -0.657592, -0.075328,
		18.874126, 20.923647, 30.890793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.638655, 21.585987, 30.374821>,  <18.349407, 21.383961, 30.943521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.638655, 21.585987, 30.374821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.764536, 21.212234, 30.441624>,  <18.840065, 20.987984, 30.481705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.764536, 21.212234, 30.441624>,  <18.638655, 21.585987, 30.374821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764536, 21.212234, 30.441624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280587, -0.259662, -0.924038,
		0.906770, 0.243938, -0.343892,
		0.314704, -0.934382, 0.167008,
		18.858948, 20.931919, 30.491726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840555, 21.363300, 29.753641>,  <18.638655, 21.585987, 30.374821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840555, 21.363300, 29.753641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828077, 21.020432, 29.959276>,  <18.820591, 20.814711, 30.082657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828077, 21.020432, 29.959276>,  <18.840555, 21.363300, 29.753641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828077, 21.020432, 29.959276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385712, -0.464174, -0.797351,
		0.922092, -0.223162, -0.316142,
		-0.031194, -0.857171, 0.514087,
		18.818720, 20.763281, 30.113503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300426, 20.975620, 29.439529>,  <18.840555, 21.363300, 29.753641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300426, 20.975620, 29.439529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039547, 20.717999, 29.599443>,  <18.883018, 20.563425, 29.695393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039547, 20.717999, 29.599443>,  <19.300426, 20.975620, 29.439529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.039547, 20.717999, 29.599443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152726, -0.404934, -0.901500,
		0.742504, -0.649015, 0.165733,
		-0.652198, -0.644056, 0.399787,
		18.843887, 20.524782, 29.719379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491871, 20.458408, 29.060205>,  <19.300426, 20.975620, 29.439529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.491871, 20.458408, 29.060205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142399, 20.358128, 29.226976>,  <18.932714, 20.297960, 29.327040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142399, 20.358128, 29.226976>,  <19.491871, 20.458408, 29.060205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142399, 20.358128, 29.226976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265048, -0.473359, -0.840048,
		0.407957, -0.844441, 0.347118,
		-0.873682, -0.250701, 0.416928,
		18.880295, 20.282917, 29.352055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311354, 19.630732, 29.011404>,  <19.491871, 20.458408, 29.060205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311354, 19.630732, 29.011404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.002529, 19.880943, 29.056355>,  <18.817234, 20.031071, 29.083324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.002529, 19.880943, 29.056355>,  <19.311354, 19.630732, 29.011404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.002529, 19.880943, 29.056355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304492, -0.208864, -0.929333,
		-0.557856, -0.751721, 0.351726,
		-0.772063, 0.625532, 0.112377,
		18.770910, 20.068604, 29.090067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660749, 19.346704, 28.706705>,  <19.311354, 19.630732, 29.011404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.660749, 19.346704, 28.706705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661383, 19.746592, 28.697239>,  <18.661762, 19.986525, 28.691559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661383, 19.746592, 28.697239>,  <18.660749, 19.346704, 28.706705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661383, 19.746592, 28.697239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376315, -0.021333, -0.926246,
		-0.926491, 0.010371, 0.376175,
		0.001581, 0.999719, -0.023667,
		18.661858, 20.046507, 28.690138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984581, 19.522459, 28.397499>,  <18.660749, 19.346704, 28.706705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984581, 19.522459, 28.397499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.253532, 19.814043, 28.346077>,  <18.414904, 19.988993, 28.315224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.253532, 19.814043, 28.346077>,  <17.984581, 19.522459, 28.397499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.253532, 19.814043, 28.346077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194189, 0.006126, -0.980945,
		-0.714280, 0.684531, 0.145675,
		0.672380, 0.728958, -0.128553,
		18.455246, 20.032730, 28.307510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638111, 19.956139, 27.957247>,  <17.984581, 19.522459, 28.397499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638111, 19.956139, 27.957247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028379, 20.037840, 27.925371>,  <18.262541, 20.086861, 27.906246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028379, 20.037840, 27.925371>,  <17.638111, 19.956139, 27.957247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028379, 20.037840, 27.925371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044593, -0.171004, -0.984261,
		-0.214668, 0.963866, -0.157735,
		0.975669, 0.204255, -0.079691,
		18.321079, 20.099117, 27.901464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703903, 20.434263, 27.439562>,  <17.638111, 19.956139, 27.957247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.703903, 20.434263, 27.439562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.075497, 20.290495, 27.474909>,  <18.298452, 20.204233, 27.496117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.075497, 20.290495, 27.474909>,  <17.703903, 20.434263, 27.439562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075497, 20.290495, 27.474909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068589, -0.067447, -0.995363,
		0.363714, 0.930735, -0.038004,
		0.928982, -0.359421, 0.088369,
		18.354191, 20.182669, 27.501419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163334, 20.915138, 26.968458>,  <17.703903, 20.434263, 27.439562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.163334, 20.915138, 26.968458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303577, 20.545387, 27.028591>,  <18.387724, 20.323536, 27.064671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303577, 20.545387, 27.028591>,  <18.163334, 20.915138, 26.968458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303577, 20.545387, 27.028591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102901, -0.197576, -0.974872,
		0.930852, 0.326329, -0.164392,
		0.350609, -0.924377, 0.150334,
		18.408760, 20.268074, 27.073692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565176, 20.788868, 26.393520>,  <18.163334, 20.915138, 26.968458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565176, 20.788868, 26.393520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489841, 20.423723, 26.538414>,  <18.444641, 20.204636, 26.625349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489841, 20.423723, 26.538414>,  <18.565176, 20.788868, 26.393520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489841, 20.423723, 26.538414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137536, -0.340682, -0.930064,
		0.972426, -0.224986, -0.061388,
		-0.188338, -0.912862, 0.362232,
		18.433340, 20.149864, 26.647083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905952, 20.404320, 25.910656>,  <18.565176, 20.788868, 26.393520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.905952, 20.404320, 25.910656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.700062, 20.140793, 26.130116>,  <18.576527, 19.982677, 26.261791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.700062, 20.140793, 26.130116>,  <18.905952, 20.404320, 25.910656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700062, 20.140793, 26.130116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403418, -0.378549, -0.833039,
		0.756512, -0.650123, -0.070930,
		-0.514727, -0.658818, 0.548648,
		18.545643, 19.943148, 26.294710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882797, 19.837765, 25.453358>,  <18.905952, 20.404320, 25.910656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882797, 19.837765, 25.453358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.588627, 19.751984, 25.710468>,  <18.412125, 19.700516, 25.864735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.588627, 19.751984, 25.710468>,  <18.882797, 19.837765, 25.453358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.588627, 19.751984, 25.710468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526925, -0.415415, -0.741472,
		0.426029, -0.883991, 0.192507,
		-0.735425, -0.214452, 0.642776,
		18.368000, 19.687649, 25.903301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662256, 19.082220, 25.335484>,  <18.882797, 19.837765, 25.453358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662256, 19.082220, 25.335484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362085, 19.292185, 25.496145>,  <18.181982, 19.418163, 25.592543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362085, 19.292185, 25.496145>,  <18.662256, 19.082220, 25.335484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362085, 19.292185, 25.496145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649296, -0.471839, -0.596476,
		-0.123582, -0.708404, 0.694904,
		-0.750428, 0.524912, 0.401653,
		18.136957, 19.449659, 25.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190243, 18.458078, 25.456591>,  <18.662256, 19.082220, 25.335484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190243, 18.458078, 25.456591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.972015, 18.792074, 25.485291>,  <17.841080, 18.992472, 25.502510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.972015, 18.792074, 25.485291>,  <18.190243, 18.458078, 25.456591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972015, 18.792074, 25.485291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663366, -0.377935, -0.645841,
		-0.512156, -0.399943, 0.760093,
		-0.545565, 0.834991, 0.071747,
		17.808346, 19.042572, 25.506815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644453, 18.233128, 25.809088>,  <18.190243, 18.458078, 25.456591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644453, 18.233128, 25.809088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553740, 18.560802, 25.598375>,  <17.499311, 18.757408, 25.471947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553740, 18.560802, 25.598375>,  <17.644453, 18.233128, 25.809088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553740, 18.560802, 25.598375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731114, -0.500530, -0.463618,
		-0.643461, 0.279998, 0.712432,
		-0.226781, 0.819189, -0.526782,
		17.485704, 18.806559, 25.440340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868059, 18.139086, 25.727627>,  <17.644453, 18.233128, 25.809088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868059, 18.139086, 25.727627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983086, 18.388926, 25.437199>,  <17.052101, 18.538830, 25.262941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.983086, 18.388926, 25.437199>,  <16.868059, 18.139086, 25.727627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983086, 18.388926, 25.437199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788478, -0.275963, -0.549678,
		-0.543699, 0.730560, 0.413127,
		0.287565, 0.624602, -0.726071,
		17.069355, 18.576305, 25.219378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304159, 18.416059, 25.511927>,  <16.868059, 18.139086, 25.727627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304159, 18.416059, 25.511927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555302, 18.473640, 25.205965>,  <16.705988, 18.508188, 25.022388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555302, 18.473640, 25.205965>,  <16.304159, 18.416059, 25.511927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555302, 18.473640, 25.205965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697832, -0.331136, -0.635122,
		-0.344713, 0.932538, -0.107452,
		0.627856, 0.143951, -0.764902,
		16.743658, 18.516827, 24.976494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849717, 18.679949, 24.994389>,  <16.304159, 18.416059, 25.511927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849717, 18.679949, 24.994389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165239, 18.563005, 24.778126>,  <16.354553, 18.492840, 24.648367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165239, 18.563005, 24.778126>,  <15.849717, 18.679949, 24.994389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165239, 18.563005, 24.778126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607176, -0.233950, -0.759344,
		0.095514, 0.927250, -0.362054,
		0.788805, -0.292359, -0.540659,
		16.401880, 18.475298, 24.615929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.755686, 18.946217, 24.223036>,  <15.849717, 18.679949, 24.994389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.755686, 18.946217, 24.223036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.017054, 18.644978, 24.192333>,  <16.173874, 18.464235, 24.173912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.017054, 18.644978, 24.192333>,  <15.755686, 18.946217, 24.223036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017054, 18.644978, 24.192333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433106, -0.288760, -0.853837,
		0.620857, 0.591155, -0.514851,
		0.653418, -0.753095, -0.076754,
		16.213079, 18.419048, 24.169308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865949, 18.919458, 23.594591>,  <15.755686, 18.946217, 24.223036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865949, 18.919458, 23.594591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.012236, 18.568865, 23.719830>,  <16.100008, 18.358509, 23.794973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.012236, 18.568865, 23.719830>,  <15.865949, 18.919458, 23.594591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.012236, 18.568865, 23.719830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425052, -0.456557, -0.781592,
		0.827998, 0.152759, -0.539521,
		0.365718, -0.876482, 0.313098,
		16.121950, 18.305920, 23.813759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119394, 18.647644, 22.982082>,  <15.865949, 18.919458, 23.594591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.119394, 18.647644, 22.982082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065714, 18.326942, 23.215040>,  <16.033504, 18.134521, 23.354815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065714, 18.326942, 23.215040>,  <16.119394, 18.647644, 22.982082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065714, 18.326942, 23.215040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357468, -0.508971, -0.783049,
		0.924233, -0.313274, -0.218296,
		-0.134202, -0.801753, 0.582393,
		16.025454, 18.086416, 23.389757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298742, 18.072329, 22.548483>,  <16.119394, 18.647644, 22.982082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298742, 18.072329, 22.548483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073673, 17.916519, 22.840147>,  <15.938632, 17.823034, 23.015146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073673, 17.916519, 22.840147>,  <16.298742, 18.072329, 22.548483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073673, 17.916519, 22.840147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544616, -0.488908, -0.681441,
		0.621929, -0.780539, 0.062953,
		-0.562670, -0.389523, 0.729160,
		15.904872, 17.799662, 23.058895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286709, 17.379591, 22.457140>,  <16.298742, 18.072329, 22.548483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286709, 17.379591, 22.457140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.962335, 17.464579, 22.675219>,  <15.767710, 17.515572, 22.806067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.962335, 17.464579, 22.675219>,  <16.286709, 17.379591, 22.457140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962335, 17.464579, 22.675219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578738, -0.428639, -0.693780,
		0.086286, -0.878137, 0.470563,
		-0.810936, 0.212469, 0.545197,
		15.719054, 17.528318, 22.838778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812313, 16.754835, 22.442936>,  <16.286709, 17.379591, 22.457140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812313, 16.754835, 22.442936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581460, 17.063540, 22.549744>,  <15.442948, 17.248762, 22.613829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581460, 17.063540, 22.549744>,  <15.812313, 16.754835, 22.442936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581460, 17.063540, 22.549744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790915, -0.446788, -0.418131,
		-0.203397, -0.452508, 0.868255,
		-0.577133, 0.771763, 0.267020,
		15.408320, 17.295069, 22.629850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.081933, 16.382566, 22.627693>,  <15.812313, 16.754835, 22.442936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.081933, 16.382566, 22.627693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023473, 16.771845, 22.556667>,  <14.988397, 17.005411, 22.514051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023473, 16.771845, 22.556667>,  <15.081933, 16.382566, 22.627693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023473, 16.771845, 22.556667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716464, -0.227897, -0.659350,
		-0.682143, 0.030852, 0.730567,
		-0.146152, 0.973196, -0.177563,
		14.979628, 17.063805, 22.503399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.409856, 16.462303, 22.602940>,  <15.081933, 16.382566, 22.627693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.409856, 16.462303, 22.602940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.517998, 16.808069, 22.433378>,  <14.582883, 17.015530, 22.331642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.517998, 16.808069, 22.433378>,  <14.409856, 16.462303, 22.602940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.517998, 16.808069, 22.433378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547221, -0.224292, -0.806376,
		-0.792122, 0.449977, 0.412388,
		0.270355, 0.864416, -0.423903,
		14.599104, 17.067394, 22.306208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737243, 16.678684, 22.265316>,  <14.409856, 16.462303, 22.602940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737243, 16.678684, 22.265316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.023981, 16.903454, 22.100212>,  <14.196024, 17.038317, 22.001150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.023981, 16.903454, 22.100212>,  <13.737243, 16.678684, 22.265316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.023981, 16.903454, 22.100212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497984, -0.001708, -0.867184,
		-0.487999, 0.827186, 0.278606,
		0.716847, 0.561926, -0.412759,
		14.239035, 17.072031, 21.976385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385211, 17.180122, 21.864220>,  <13.737243, 16.678684, 22.265316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385211, 17.180122, 21.864220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759987, 17.175879, 21.724489>,  <13.984853, 17.173332, 21.640650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759987, 17.175879, 21.724489>,  <13.385211, 17.180122, 21.864220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759987, 17.175879, 21.724489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343726, 0.152779, -0.926558,
		0.063201, 0.988203, 0.139498,
		0.936941, -0.010610, -0.349327,
		14.041069, 17.172695, 21.619692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471345, 17.727770, 21.452637>,  <13.385211, 17.180122, 21.864220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.471345, 17.727770, 21.452637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741097, 17.463263, 21.321224>,  <13.902949, 17.304558, 21.242376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741097, 17.463263, 21.321224>,  <13.471345, 17.727770, 21.452637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741097, 17.463263, 21.321224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347009, 0.108905, -0.931517,
		0.651762, 0.742201, -0.156023,
		0.674382, -0.661269, -0.328530,
		13.943412, 17.264881, 21.222666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.712350, 18.076818, 20.827673>,  <13.471345, 17.727770, 21.452637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.712350, 18.076818, 20.827673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782363, 17.683004, 20.824757>,  <13.824370, 17.446716, 20.823008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782363, 17.683004, 20.824757>,  <13.712350, 18.076818, 20.827673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782363, 17.683004, 20.824757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243183, -0.036057, -0.969310,
		0.954058, 0.171432, -0.245733,
		0.175032, -0.984536, -0.007289,
		13.834872, 17.387644, 20.822571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425993, 18.798023, 20.799706>,  <13.712350, 18.076818, 20.827673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.425993, 18.798023, 20.799706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511086, 19.116829, 20.573605>,  <13.562142, 19.308113, 20.437944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511086, 19.116829, 20.573605>,  <13.425993, 18.798023, 20.799706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511086, 19.116829, 20.573605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160337, 0.542178, 0.824824,
		0.963865, -0.266098, -0.012453,
		0.212733, 0.797016, -0.565252,
		13.574906, 19.355934, 20.404030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076339, 19.102718, 21.014500>,  <13.425993, 18.798023, 20.799706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.076339, 19.102718, 21.014500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819041, 19.366095, 20.858194>,  <13.664662, 19.524120, 20.764412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819041, 19.366095, 20.858194>,  <14.076339, 19.102718, 21.014500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819041, 19.366095, 20.858194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021174, 0.525460, 0.850554,
		0.765368, 0.538840, -0.351941,
		-0.643244, 0.658439, -0.390761,
		13.626068, 19.563627, 20.740967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208219, 19.807423, 21.241293>,  <14.076339, 19.102718, 21.014500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208219, 19.807423, 21.241293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.818448, 19.807959, 21.151411>,  <13.584586, 19.808281, 21.097483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.818448, 19.807959, 21.151411>,  <14.208219, 19.807423, 21.241293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.818448, 19.807959, 21.151411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210846, 0.340344, 0.916357,
		0.077704, 0.940300, -0.331358,
		-0.974426, 0.001339, -0.224705,
		13.526120, 19.808361, 21.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.088155, 20.238388, 21.823025>,  <14.208219, 19.807423, 21.241293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.088155, 20.238388, 21.823025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.726880, 20.137260, 21.684267>,  <13.510116, 20.076584, 21.601011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.726880, 20.137260, 21.684267>,  <14.088155, 20.238388, 21.823025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726880, 20.137260, 21.684267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402606, 0.218653, 0.888875,
		-0.148876, 0.942482, -0.299272,
		-0.903186, -0.252821, -0.346897,
		13.455924, 20.061415, 21.580198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678652, 20.793026, 21.827307>,  <14.088155, 20.238388, 21.823025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678652, 20.793026, 21.827307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.441227, 20.471155, 21.832636>,  <13.298772, 20.278032, 21.835835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.441227, 20.471155, 21.832636>,  <13.678652, 20.793026, 21.827307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.441227, 20.471155, 21.832636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253886, 0.202934, 0.945706,
		-0.763693, 0.557952, -0.324750,
		-0.593562, -0.804678, 0.013324,
		13.263159, 20.229752, 21.836634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.942005, 20.985575, 22.022802>,  <13.678652, 20.793026, 21.827307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.942005, 20.985575, 22.022802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999496, 20.603125, 22.124916>,  <13.033990, 20.373655, 22.186184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.999496, 20.603125, 22.124916>,  <12.942005, 20.985575, 22.022802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.999496, 20.603125, 22.124916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236035, 0.217398, 0.947114,
		-0.961057, -0.196380, -0.194433,
		0.143725, -0.956124, 0.255284,
		13.042613, 20.316288, 22.201502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617915, 21.015438, 22.634462>,  <12.942005, 20.985575, 22.022802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617915, 21.015438, 22.634462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772531, 20.646622, 22.642769>,  <12.865300, 20.425333, 22.647753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772531, 20.646622, 22.642769>,  <12.617915, 21.015438, 22.634462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772531, 20.646622, 22.642769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298356, -0.103709, 0.948803,
		-0.872681, -0.372944, -0.315183,
		0.386538, -0.922040, 0.020765,
		12.888492, 20.370010, 22.648998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201007, 20.674318, 23.136625>,  <12.617915, 21.015438, 22.634462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201007, 20.674318, 23.136625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543836, 20.468908, 23.120035>,  <12.749533, 20.345663, 23.110081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543836, 20.468908, 23.120035>,  <12.201007, 20.674318, 23.136625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.543836, 20.468908, 23.120035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005254, -0.071791, 0.997406,
		-0.515172, -0.855066, -0.058831,
		0.857071, -0.513526, -0.041477,
		12.800957, 20.314850, 23.107592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.173902, 19.996536, 23.568724>,  <12.201007, 20.674318, 23.136625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.173902, 19.996536, 23.568724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561362, 20.087639, 23.529041>,  <12.793839, 20.142300, 23.505232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561362, 20.087639, 23.529041>,  <12.173902, 19.996536, 23.568724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561362, 20.087639, 23.529041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102859, -0.004205, 0.994687,
		0.226130, -0.973709, -0.027500,
		0.968651, 0.227757, -0.099204,
		12.851957, 20.155966, 23.499281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410373, 19.624256, 24.017529>,  <12.173902, 19.996536, 23.568724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410373, 19.624256, 24.017529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691866, 19.897947, 23.941015>,  <12.860762, 20.062162, 23.895107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691866, 19.897947, 23.941015>,  <12.410373, 19.624256, 24.017529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.691866, 19.897947, 23.941015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243600, 0.020531, 0.969658,
		0.667396, -0.728977, -0.152230,
		0.703734, 0.684230, -0.191281,
		12.902986, 20.103216, 23.883631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.035026, 19.437662, 24.295105>,  <12.410373, 19.624256, 24.017529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.035026, 19.437662, 24.295105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056643, 19.836369, 24.271332>,  <13.069613, 20.075592, 24.257069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056643, 19.836369, 24.271332>,  <13.035026, 19.437662, 24.295105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056643, 19.836369, 24.271332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246240, 0.044379, 0.968192,
		0.967701, -0.066959, -0.243046,
		0.054043, 0.996768, -0.059434,
		13.072856, 20.135399, 24.253502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600992, 19.643051, 24.665783>,  <13.035026, 19.437662, 24.295105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600992, 19.643051, 24.665783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.407080, 19.991978, 24.640329>,  <13.290732, 20.201334, 24.625057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.407080, 19.991978, 24.640329>,  <13.600992, 19.643051, 24.665783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.407080, 19.991978, 24.640329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246711, 0.206181, 0.946902,
		0.839119, 0.443342, -0.315163,
		-0.484782, 0.872317, -0.063633,
		13.261645, 20.253674, 24.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.069196, 20.165894, 24.786140>,  <13.600992, 19.643051, 24.665783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.069196, 20.165894, 24.786140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693416, 20.240818, 24.900927>,  <13.467948, 20.285772, 24.969799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693416, 20.240818, 24.900927>,  <14.069196, 20.165894, 24.786140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693416, 20.240818, 24.900927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302253, 0.058295, 0.951444,
		0.161488, 0.980569, -0.111380,
		-0.939449, 0.187311, 0.286966,
		13.411581, 20.297012, 24.987017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151171, 20.712626, 25.123276>,  <14.069196, 20.165894, 24.786140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151171, 20.712626, 25.123276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840429, 20.512032, 25.275597>,  <13.653984, 20.391674, 25.366989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840429, 20.512032, 25.275597>,  <14.151171, 20.712626, 25.123276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840429, 20.512032, 25.275597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423790, 0.030890, 0.905233,
		-0.465726, 0.864614, 0.188528,
		-0.776854, -0.501487, 0.380801,
		13.607373, 20.361586, 25.389837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993600, 21.062962, 25.723770>,  <14.151171, 20.712626, 25.123276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993600, 21.062962, 25.723770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.854068, 20.690617, 25.767252>,  <13.770349, 20.467211, 25.793341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.854068, 20.690617, 25.767252>,  <13.993600, 21.062962, 25.723770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854068, 20.690617, 25.767252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357157, -0.024803, 0.933715,
		-0.866462, 0.364532, 0.341116,
		-0.348830, -0.930860, 0.108704,
		13.749419, 20.411358, 25.799864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.589412, 21.001419, 26.380306>,  <13.993600, 21.062962, 25.723770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.589412, 21.001419, 26.380306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739256, 20.641037, 26.292723>,  <13.829163, 20.424807, 26.240171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739256, 20.641037, 26.292723>,  <13.589412, 21.001419, 26.380306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739256, 20.641037, 26.292723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472475, -0.017699, 0.881166,
		-0.797768, -0.433548, 0.419049,
		0.374611, -0.900957, -0.218960,
		13.851639, 20.370750, 26.227036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616821, 20.630648, 27.103739>,  <13.589412, 21.001419, 26.380306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.616821, 20.630648, 27.103739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814638, 20.374426, 26.868752>,  <13.933329, 20.220694, 26.727758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814638, 20.374426, 26.868752>,  <13.616821, 20.630648, 27.103739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.814638, 20.374426, 26.868752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550280, -0.292436, 0.782095,
		-0.672771, -0.710052, 0.207861,
		0.494542, -0.640553, -0.587470,
		13.963000, 20.182261, 26.692511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675194, 19.953920, 27.442896>,  <13.616821, 20.630648, 27.103739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675194, 19.953920, 27.442896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.966619, 19.965225, 27.169138>,  <14.141475, 19.972008, 27.004883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.966619, 19.965225, 27.169138>,  <13.675194, 19.953920, 27.442896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.966619, 19.965225, 27.169138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649223, -0.347075, 0.676793,
		-0.218409, -0.937411, -0.271215,
		0.728565, 0.028262, -0.684393,
		14.185189, 19.973703, 26.963820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055661, 19.258650, 27.415939>,  <13.675194, 19.953920, 27.442896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055661, 19.258650, 27.415939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321327, 19.518915, 27.268684>,  <14.480727, 19.675074, 27.180332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321327, 19.518915, 27.268684>,  <14.055661, 19.258650, 27.415939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321327, 19.518915, 27.268684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686455, -0.335759, 0.645016,
		0.296082, -0.681106, -0.669650,
		0.664165, 0.650662, -0.368136,
		14.520576, 19.714113, 27.158243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605216, 18.860840, 27.431484>,  <14.055661, 19.258650, 27.415939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605216, 18.860840, 27.431484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728711, 19.238951, 27.389275>,  <14.802808, 19.465816, 27.363949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728711, 19.238951, 27.389275>,  <14.605216, 18.860840, 27.431484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728711, 19.238951, 27.389275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569451, -0.094838, 0.816536,
		0.761844, -0.312186, -0.567568,
		0.308738, 0.945276, -0.105522,
		14.821333, 19.522533, 27.357618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344473, 18.849272, 27.527554>,  <14.605216, 18.860840, 27.431484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.344473, 18.849272, 27.527554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.218611, 19.223312, 27.592760>,  <15.143094, 19.447737, 27.631884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.218611, 19.223312, 27.592760>,  <15.344473, 18.849272, 27.527554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218611, 19.223312, 27.592760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503844, 0.018989, 0.863586,
		0.804446, 0.353867, -0.477121,
		-0.314655, 0.935103, 0.163018,
		15.124214, 19.503843, 27.641666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009882, 19.325958, 27.461910>,  <15.344473, 18.849272, 27.527554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009882, 19.325958, 27.461910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730926, 19.521246, 27.671782>,  <15.563552, 19.638418, 27.797705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730926, 19.521246, 27.671782>,  <16.009882, 19.325958, 27.461910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730926, 19.521246, 27.671782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642096, 0.100414, 0.760020,
		0.318372, 0.866924, -0.383512,
		-0.697390, 0.488220, 0.524680,
		15.521708, 19.667711, 27.829185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366194, 19.896990, 27.693932>,  <16.009882, 19.325958, 27.461910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366194, 19.896990, 27.693932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045298, 19.833458, 27.924126>,  <15.852760, 19.795338, 28.062243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045298, 19.833458, 27.924126>,  <16.366194, 19.896990, 27.693932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045298, 19.833458, 27.924126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580241, 0.019372, 0.814214,
		-0.140472, 0.987115, 0.076620,
		-0.802239, -0.158832, 0.575486,
		15.804626, 19.785809, 28.096771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336597, 20.371710, 28.314342>,  <16.366194, 19.896990, 27.693932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336597, 20.371710, 28.314342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.141174, 20.039413, 28.421059>,  <16.023920, 19.840034, 28.485088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.141174, 20.039413, 28.421059>,  <16.336597, 20.371710, 28.314342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141174, 20.039413, 28.421059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554335, -0.059396, 0.830172,
		-0.673812, 0.553480, 0.489528,
		-0.488559, -0.830742, 0.266791,
		15.994607, 19.790192, 28.501097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214560, 20.416744, 29.044384>,  <16.336597, 20.371710, 28.314342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214560, 20.416744, 29.044384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.197157, 20.027550, 28.953695>,  <16.186714, 19.794033, 28.899282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.197157, 20.027550, 28.953695>,  <16.214560, 20.416744, 29.044384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.197157, 20.027550, 28.953695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337727, -0.227903, 0.913236,
		-0.940238, -0.036837, 0.338520,
		-0.043509, -0.972987, -0.226724,
		16.184105, 19.735653, 28.885677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.860961, 19.928499, 29.426146>,  <16.214560, 20.416744, 29.044384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.860961, 19.928499, 29.426146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138159, 19.686970, 29.268587>,  <16.304478, 19.542051, 29.174051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138159, 19.686970, 29.268587>,  <15.860961, 19.928499, 29.426146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138159, 19.686970, 29.268587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298628, -0.256869, 0.919152,
		-0.656186, -0.754596, 0.002310,
		0.692995, -0.603824, -0.393897,
		16.346058, 19.505823, 29.150417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834480, 19.187624, 29.726631>,  <15.860961, 19.928499, 29.426146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834480, 19.187624, 29.726631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199741, 19.288305, 29.598381>,  <16.418898, 19.348713, 29.521431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199741, 19.288305, 29.598381>,  <15.834480, 19.187624, 29.726631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199741, 19.288305, 29.598381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372902, -0.198191, 0.906457,
		0.164612, -0.947294, -0.274839,
		0.913152, 0.251702, -0.320624,
		16.473686, 19.363815, 29.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290173, 18.576157, 29.793552>,  <15.834480, 19.187624, 29.726631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290173, 18.576157, 29.793552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382103, 18.962219, 29.843596>,  <16.437262, 19.193857, 29.873621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382103, 18.962219, 29.843596>,  <16.290173, 18.576157, 29.793552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382103, 18.962219, 29.843596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149562, -0.162045, 0.975383,
		0.961671, -0.205456, -0.181593,
		0.229825, 0.965158, 0.125106,
		16.451050, 19.251766, 29.881126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.611353, 18.481182, 30.456636>,  <16.290173, 18.576157, 29.793552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.611353, 18.481182, 30.456636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512461, 18.866613, 30.415863>,  <16.453125, 19.097872, 30.391399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512461, 18.866613, 30.415863>,  <16.611353, 18.481182, 30.456636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512461, 18.866613, 30.415863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064143, 0.121243, 0.990548,
		0.966831, 0.238357, -0.091782,
		-0.247232, 0.963580, -0.101932,
		16.438292, 19.155687, 30.385283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167763, 18.968872, 30.789589>,  <16.611353, 18.481182, 30.456636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167763, 18.968872, 30.789589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814888, 19.155996, 30.811140>,  <16.603163, 19.268270, 30.824070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814888, 19.155996, 30.811140>,  <17.167763, 18.968872, 30.789589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814888, 19.155996, 30.811140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178763, 0.226849, 0.957384,
		0.435651, 0.854222, -0.283749,
		-0.882186, 0.467809, 0.053876,
		16.550232, 19.296339, 30.827303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268967, 19.538206, 31.231571>,  <17.167763, 18.968872, 30.789589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.268967, 19.538206, 31.231571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872635, 19.485706, 31.218748>,  <16.634836, 19.454206, 31.211054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872635, 19.485706, 31.218748>,  <17.268967, 19.538206, 31.231571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872635, 19.485706, 31.218748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043270, 0.083488, 0.995569,
		-0.127990, 0.987828, -0.088402,
		-0.990831, -0.131248, -0.032058,
		16.575386, 19.446331, 31.209131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791639, 19.965027, 31.555595>,  <17.268967, 19.538206, 31.231571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791639, 19.965027, 31.555595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.530577, 19.761915, 31.780523>,  <17.373940, 19.640049, 31.915480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.530577, 19.761915, 31.780523>,  <17.791639, 19.965027, 31.555595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.530577, 19.761915, 31.780523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645989, 0.014876, 0.763201,
		-0.395901, 0.861360, 0.318310,
		-0.652656, -0.507777, 0.562319,
		17.334780, 19.609583, 31.949219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448917, 20.336010, 32.121841>,  <17.791639, 19.965027, 31.555595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448917, 20.336010, 32.121841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494551, 19.956154, 32.238575>,  <17.521931, 19.728239, 32.308613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494551, 19.956154, 32.238575>,  <17.448917, 20.336010, 32.121841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494551, 19.956154, 32.238575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437208, 0.311766, 0.843594,
		-0.892095, 0.031352, 0.450759,
		0.114083, -0.949642, 0.291832,
		17.528776, 19.671261, 32.326126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069075, 20.241501, 32.688347>,  <17.448917, 20.336010, 32.121841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069075, 20.241501, 32.688347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398109, 20.025801, 32.616173>,  <17.595531, 19.896379, 32.572868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398109, 20.025801, 32.616173>,  <17.069075, 20.241501, 32.688347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398109, 20.025801, 32.616173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422056, 0.366346, 0.829252,
		-0.381074, -0.758286, 0.528946,
		0.822588, -0.539252, -0.180434,
		17.644886, 19.864025, 32.562042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304569, 19.869989, 33.288780>,  <17.069075, 20.241501, 32.688347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304569, 19.869989, 33.288780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635508, 19.918350, 33.069370>,  <17.834070, 19.947367, 32.937725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635508, 19.918350, 33.069370>,  <17.304569, 19.869989, 33.288780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635508, 19.918350, 33.069370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479153, 0.357685, 0.801544,
		0.293107, -0.925983, 0.237999,
		0.827345, 0.120900, -0.548528,
		17.883711, 19.954620, 32.904812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017294, 20.595470, 33.410603>,  <17.304569, 19.869989, 33.288780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017294, 20.595470, 33.410603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303314, 20.643120, 33.686142>,  <17.474926, 20.671709, 33.851467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303314, 20.643120, 33.686142>,  <17.017294, 20.595470, 33.410603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303314, 20.643120, 33.686142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239282, 0.884147, -0.401284,
		-0.656846, 0.451767, 0.603706,
		0.715051, 0.119126, 0.688848,
		17.517830, 20.678858, 33.892796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827381, 21.071245, 33.986889>,  <17.017294, 20.595470, 33.410603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827381, 21.071245, 33.986889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.177135, 20.995575, 33.808155>,  <17.386988, 20.950172, 33.700912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.177135, 20.995575, 33.808155>,  <16.827381, 21.071245, 33.986889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177135, 20.995575, 33.808155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031512, 0.941066, -0.336753,
		0.484209, 0.280371, 0.828815,
		0.874385, -0.189176, -0.446838,
		17.439451, 20.938822, 33.674103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125601, 20.885780, 34.343670>,  <16.827381, 21.071245, 33.986889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125601, 20.885780, 34.343670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868170, 20.688967, 34.578178>,  <15.713712, 20.570879, 34.718884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868170, 20.688967, 34.578178>,  <16.125601, 20.885780, 34.343670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868170, 20.688967, 34.578178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578988, -0.188002, -0.793365,
		0.500584, -0.850033, -0.163889,
		-0.643575, -0.492036, 0.586269,
		15.675097, 20.541357, 34.754059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040918, 20.314068, 33.966221>,  <16.125601, 20.885780, 34.343670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040918, 20.314068, 33.966221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730663, 20.373543, 34.211586>,  <15.544511, 20.409227, 34.358807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730663, 20.373543, 34.211586>,  <16.040918, 20.314068, 33.966221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730663, 20.373543, 34.211586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628145, -0.277023, -0.727112,
		0.061817, -0.949289, 0.308267,
		-0.775637, 0.148689, 0.613416,
		15.497972, 20.418150, 34.395611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616101, 19.792353, 33.992836>,  <16.040918, 20.314068, 33.966221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616101, 19.792353, 33.992836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361801, 20.087986, 34.081902>,  <15.209221, 20.265366, 34.135342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361801, 20.087986, 34.081902>,  <15.616101, 19.792353, 33.992836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361801, 20.087986, 34.081902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563947, -0.247766, -0.787766,
		-0.527054, -0.626394, 0.574321,
		-0.635749, 0.739082, 0.222667,
		15.171076, 20.309710, 34.148701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958631, 19.563150, 33.819660>,  <15.616101, 19.792353, 33.992836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958631, 19.563150, 33.819660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896129, 19.953144, 33.882893>,  <14.858627, 20.187140, 33.920834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896129, 19.953144, 33.882893>,  <14.958631, 19.563150, 33.819660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.896129, 19.953144, 33.882893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698013, 0.004234, -0.716073,
		-0.698829, -0.222232, 0.679890,
		-0.156256, 0.974985, 0.158080,
		14.849252, 20.245640, 33.930317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.220235, 19.594910, 33.644989>,  <14.958631, 19.563150, 33.819660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.220235, 19.594910, 33.644989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.356232, 19.971071, 33.647728>,  <14.437830, 20.196768, 33.649372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.356232, 19.971071, 33.647728>,  <14.220235, 19.594910, 33.644989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.356232, 19.971071, 33.647728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634957, 0.234922, -0.735963,
		-0.693711, 0.245872, 0.676988,
		0.339992, 0.940403, 0.006850,
		14.458229, 20.253193, 33.649784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.605188, 20.092600, 33.698231>,  <14.220235, 19.594910, 33.644989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.605188, 20.092600, 33.698231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922553, 20.254824, 33.516674>,  <14.112972, 20.352158, 33.407738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922553, 20.254824, 33.516674>,  <13.605188, 20.092600, 33.698231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922553, 20.254824, 33.516674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534026, 0.105965, -0.838801,
		-0.292085, 0.907907, 0.300652,
		0.793412, 0.405557, -0.453895,
		14.160577, 20.376492, 33.380505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.346948, 20.752956, 33.496986>,  <13.605188, 20.092600, 33.698231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.346948, 20.752956, 33.496986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.669043, 20.700623, 33.265652>,  <13.862300, 20.669222, 33.126850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.669043, 20.700623, 33.265652>,  <13.346948, 20.752956, 33.496986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.669043, 20.700623, 33.265652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533906, 0.264323, -0.803167,
		0.257948, 0.955519, 0.142990,
		0.805237, -0.130832, -0.578339,
		13.910614, 20.661373, 33.092152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.328997, 21.317154, 32.999462>,  <13.346948, 20.752956, 33.496986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.328997, 21.317154, 32.999462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.569966, 21.046753, 32.829708>,  <13.714548, 20.884512, 32.727856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.569966, 21.046753, 32.829708>,  <13.328997, 21.317154, 32.999462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.569966, 21.046753, 32.829708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357126, 0.247221, -0.900746,
		0.713825, 0.694190, -0.092487,
		0.602424, -0.676005, -0.424386,
		13.750693, 20.843952, 32.702393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.572957, 21.671762, 32.279621>,  <13.328997, 21.317154, 32.999462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.572957, 21.671762, 32.279621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636193, 21.278145, 32.246956>,  <13.674135, 21.041975, 32.227356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636193, 21.278145, 32.246956>,  <13.572957, 21.671762, 32.279621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636193, 21.278145, 32.246956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240291, 0.041873, -0.969797,
		0.957741, 0.172939, -0.229836,
		0.158092, -0.984042, -0.081659,
		13.683620, 20.982933, 32.222458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939028, 21.526865, 31.508247>,  <13.572957, 21.671762, 32.279621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939028, 21.526865, 31.508247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.808662, 21.173916, 31.644012>,  <13.730443, 20.962147, 31.725471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.808662, 21.173916, 31.644012>,  <13.939028, 21.526865, 31.508247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.808662, 21.173916, 31.644012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382382, -0.205306, -0.900907,
		0.864618, -0.423404, -0.270491,
		-0.325914, -0.882371, 0.339413,
		13.710888, 20.909204, 31.745836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137637, 20.988028, 31.005548>,  <13.939028, 21.526865, 31.508247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137637, 20.988028, 31.005548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856667, 20.784561, 31.204689>,  <13.688085, 20.662481, 31.324173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856667, 20.784561, 31.204689>,  <14.137637, 20.988028, 31.005548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856667, 20.784561, 31.204689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394418, -0.304068, -0.867166,
		0.592480, -0.805481, 0.012958,
		-0.702426, -0.508668, 0.497850,
		13.645939, 20.631960, 31.354044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044055, 20.315243, 30.670288>,  <14.137637, 20.988028, 31.005548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044055, 20.315243, 30.670288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705080, 20.377758, 30.873236>,  <13.501695, 20.415266, 30.995005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705080, 20.377758, 30.873236>,  <14.044055, 20.315243, 30.670288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705080, 20.377758, 30.873236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530687, -0.222651, -0.817801,
		-0.014844, -0.962290, 0.271622,
		-0.847438, 0.156286, 0.507369,
		13.450849, 20.424644, 31.025446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.577375, 19.847527, 30.385324>,  <14.044055, 20.315243, 30.670288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.577375, 19.847527, 30.385324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337306, 20.124680, 30.545176>,  <13.193264, 20.290972, 30.641087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337306, 20.124680, 30.545176>,  <13.577375, 19.847527, 30.385324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.337306, 20.124680, 30.545176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594343, -0.051949, -0.802532,
		-0.535302, -0.719175, 0.442989,
		-0.600174, 0.692884, 0.399628,
		13.157253, 20.332544, 30.665064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.854679, 19.560875, 30.405796>,  <13.577375, 19.847527, 30.385324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.854679, 19.560875, 30.405796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.869098, 19.960571, 30.399895>,  <12.877749, 20.200390, 30.396355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.869098, 19.960571, 30.399895>,  <12.854679, 19.560875, 30.405796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.869098, 19.960571, 30.399895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477847, 0.004269, -0.878433,
		-0.877703, 0.038715, 0.477639,
		0.036047, 0.999241, -0.014752,
		12.879911, 20.260344, 30.395470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198772, 19.844568, 30.233109>,  <12.854679, 19.560875, 30.405796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198772, 19.844568, 30.233109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410124, 20.178450, 30.171026>,  <12.536935, 20.378778, 30.133778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410124, 20.178450, 30.171026>,  <12.198772, 19.844568, 30.233109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410124, 20.178450, 30.171026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584164, 0.224771, -0.779891,
		-0.616091, 0.502743, 0.606367,
		0.528378, 0.834702, -0.155205,
		12.568638, 20.428860, 30.124464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.639166, 20.387920, 30.088879>,  <12.198772, 19.844568, 30.233109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.639166, 20.387920, 30.088879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.990478, 20.512054, 29.943378>,  <12.201264, 20.586535, 29.856077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.990478, 20.512054, 29.943378>,  <11.639166, 20.387920, 30.088879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.990478, 20.512054, 29.943378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456610, 0.318615, -0.830657,
		-0.141885, 0.895643, 0.421536,
		0.878280, 0.310336, -0.363753,
		12.253962, 20.605156, 29.834253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.587681, 21.104328, 29.914944>,  <11.639166, 20.387920, 30.088879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.587681, 21.104328, 29.914944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910763, 20.982824, 29.712818>,  <12.104611, 20.909922, 29.591543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910763, 20.982824, 29.712818>,  <11.587681, 21.104328, 29.914944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.910763, 20.982824, 29.712818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355086, 0.433572, -0.828209,
		0.470668, 0.848377, 0.242336,
		0.807704, -0.303761, -0.505315,
		12.153074, 20.891695, 29.561224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593227, 21.558998, 29.396387>,  <11.587681, 21.104328, 29.914944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593227, 21.558998, 29.396387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817045, 21.264931, 29.243320>,  <11.951336, 21.088490, 29.151480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817045, 21.264931, 29.243320>,  <11.593227, 21.558998, 29.396387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817045, 21.264931, 29.243320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472531, 0.096339, -0.876032,
		0.680899, 0.671002, -0.293485,
		0.559546, -0.735170, -0.382667,
		11.984909, 21.044380, 29.128521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720351, 21.794682, 28.731007>,  <11.593227, 21.558998, 29.396387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720351, 21.794682, 28.731007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823538, 21.408325, 28.722021>,  <11.885450, 21.176512, 28.716629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823538, 21.408325, 28.722021>,  <11.720351, 21.794682, 28.731007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.823538, 21.408325, 28.722021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460017, -0.102347, -0.881992,
		0.849610, 0.237860, -0.470729,
		0.257968, -0.965893, -0.022465,
		11.900928, 21.118557, 28.715282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.114038, 21.656168, 28.077188>,  <11.720351, 21.794682, 28.731007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.114038, 21.656168, 28.077188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.961203, 21.305479, 28.194059>,  <11.869502, 21.095066, 28.264181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.961203, 21.305479, 28.194059>,  <12.114038, 21.656168, 28.077188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961203, 21.305479, 28.194059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378652, -0.139881, -0.914908,
		0.842990, -0.460207, -0.278526,
		-0.382087, -0.876723, 0.292176,
		11.846577, 21.042461, 28.281712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309755, 21.228268, 27.580605>,  <12.114038, 21.656168, 28.077188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309755, 21.228268, 27.580605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001405, 21.057962, 27.770121>,  <11.816395, 20.955780, 27.883831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001405, 21.057962, 27.770121>,  <12.309755, 21.228268, 27.580605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.001405, 21.057962, 27.770121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301239, -0.411697, -0.860093,
		0.561254, -0.805749, 0.189111,
		-0.770875, -0.425763, 0.473790,
		11.770142, 20.930233, 27.912258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268566, 20.529408, 27.314657>,  <12.309755, 21.228268, 27.580605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268566, 20.529408, 27.314657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910757, 20.608507, 27.475018>,  <11.696072, 20.655968, 27.571234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910757, 20.608507, 27.475018>,  <12.268566, 20.529408, 27.314657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.910757, 20.608507, 27.475018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435606, -0.184227, -0.881083,
		-0.100372, -0.962786, 0.250935,
		-0.894524, 0.197745, 0.400904,
		11.642400, 20.667831, 27.595289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.855013, 19.978632, 26.877131>,  <12.268566, 20.529408, 27.314657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.855013, 19.978632, 26.877131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595186, 20.245554, 27.022881>,  <11.439290, 20.405706, 27.110331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.595186, 20.245554, 27.022881>,  <11.855013, 19.978632, 26.877131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595186, 20.245554, 27.022881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425456, 0.078160, -0.901597,
		-0.630120, -0.740672, 0.233139,
		-0.649566, 0.667305, 0.364374,
		11.400316, 20.445745, 27.132193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204472, 19.687744, 26.705040>,  <11.855013, 19.978632, 26.877131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204472, 19.687744, 26.705040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147610, 20.078093, 26.771336>,  <11.113493, 20.312302, 26.811113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147610, 20.078093, 26.771336>,  <11.204472, 19.687744, 26.705040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147610, 20.078093, 26.771336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389229, 0.098843, -0.915823,
		-0.910106, -0.194699, 0.365786,
		-0.142154, 0.975870, 0.165740,
		11.104963, 20.370853, 26.821058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.509034, 19.840649, 26.436291>,  <11.204472, 19.687744, 26.705040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.509034, 19.840649, 26.436291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.701480, 20.188950, 26.476921>,  <10.816947, 20.397930, 26.501299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.701480, 20.188950, 26.476921>,  <10.509034, 19.840649, 26.436291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.701480, 20.188950, 26.476921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363277, 0.303476, -0.880870,
		-0.797846, 0.386899, 0.462331,
		0.481114, 0.870753, 0.101576,
		10.845814, 20.450176, 26.507393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.061367, 20.316130, 26.268915>,  <10.509034, 19.840649, 26.436291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.061367, 20.316130, 26.268915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.442135, 20.425009, 26.212687>,  <10.670595, 20.490335, 26.178949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.442135, 20.425009, 26.212687>,  <10.061367, 20.316130, 26.268915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.442135, 20.425009, 26.212687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208630, 0.239995, -0.948091,
		-0.224331, 0.931832, 0.285244,
		0.951919, 0.272197, -0.140570,
		10.727711, 20.506668, 26.170515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.906353, 20.015795, 25.492777>,  <10.061367, 20.316130, 26.268915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.906353, 20.015795, 25.492777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.963825, 19.747114, 25.783480>,  <9.998308, 19.585905, 25.957901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.963825, 19.747114, 25.783480>,  <9.906353, 20.015795, 25.492777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.963825, 19.747114, 25.783480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195162, -0.700721, -0.686223,
		0.970190, 0.240431, 0.030412,
		0.143679, -0.671702, 0.726755,
		10.006929, 19.545603, 26.001507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.209858, 20.477264, 24.895460>,  <9.906353, 20.015795, 25.492777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.209858, 20.477264, 24.895460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564962, 20.603157, 24.761101>,  <10.778025, 20.678692, 24.680485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564962, 20.603157, 24.761101>,  <10.209858, 20.477264, 24.895460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564962, 20.603157, 24.761101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115586, -0.553921, -0.824507,
		-0.445558, 0.770789, -0.455371,
		0.887760, 0.314731, -0.335896,
		10.831290, 20.697577, 24.660332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.098919, 20.668537, 24.270557>,  <10.209858, 20.477264, 24.895460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.098919, 20.668537, 24.270557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493920, 20.607166, 24.284956>,  <10.730922, 20.570345, 24.293594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493920, 20.607166, 24.284956>,  <10.098919, 20.668537, 24.270557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.493920, 20.607166, 24.284956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048590, -0.513709, -0.856588,
		0.149913, 0.844135, -0.514745,
		0.987504, -0.153426, 0.035995,
		10.790172, 20.561138, 24.295755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.418129, 20.879456, 23.648977>,  <10.098919, 20.668537, 24.270557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.418129, 20.879456, 23.648977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.657174, 20.602114, 23.810032>,  <10.800601, 20.435709, 23.906664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.657174, 20.602114, 23.810032>,  <10.418129, 20.879456, 23.648977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.657174, 20.602114, 23.810032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121565, -0.418014, -0.900270,
		0.792515, 0.586959, -0.165523,
		0.597613, -0.693356, 0.402636,
		10.836458, 20.394106, 23.930822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.807901, 20.740042, 23.022018>,  <10.418129, 20.879456, 23.648977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.807901, 20.740042, 23.022018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.922577, 20.458679, 23.282181>,  <10.991383, 20.289862, 23.438278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.922577, 20.458679, 23.282181>,  <10.807901, 20.740042, 23.022018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.922577, 20.458679, 23.282181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218787, -0.612890, -0.759275,
		0.932707, 0.359976, -0.021813,
		0.286689, -0.703408, 0.650404,
		11.008584, 20.247656, 23.477303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.475461, 20.561621, 22.917948>,  <10.807901, 20.740042, 23.022018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.475461, 20.561621, 22.917948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.297529, 20.237417, 23.070372>,  <11.190770, 20.042896, 23.161825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.297529, 20.237417, 23.070372>,  <11.475461, 20.561621, 22.917948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.297529, 20.237417, 23.070372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383004, -0.556755, -0.737111,
		0.809590, -0.181941, 0.558088,
		-0.444829, -0.810507, 0.381059,
		11.164081, 19.994265, 23.184689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.872869, 19.962278, 22.680504>,  <11.475461, 20.561621, 22.917948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.872869, 19.962278, 22.680504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538454, 19.796448, 22.824265>,  <11.337805, 19.696949, 22.910521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538454, 19.796448, 22.824265>,  <11.872869, 19.962278, 22.680504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.538454, 19.796448, 22.824265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113403, -0.771455, -0.626097,
		0.536826, -0.482683, 0.691978,
		-0.836037, -0.414578, 0.359400,
		11.287643, 19.672075, 22.932085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.107147, 19.200447, 22.845257>,  <11.872869, 19.962278, 22.680504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.107147, 19.200447, 22.845257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708126, 19.182087, 22.824163>,  <11.468714, 19.171070, 22.811508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708126, 19.182087, 22.824163>,  <12.107147, 19.200447, 22.845257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.708126, 19.182087, 22.824163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069805, -0.695537, -0.715091,
		-0.003852, -0.717022, 0.697039,
		-0.997553, -0.045902, -0.052732,
		11.408860, 19.168316, 22.808344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.874142, 18.567793, 22.881680>,  <12.107147, 19.200447, 22.845257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.874142, 18.567793, 22.881680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542111, 18.710274, 22.710054>,  <11.342894, 18.795763, 22.607080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542111, 18.710274, 22.710054>,  <11.874142, 18.567793, 22.881680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542111, 18.710274, 22.710054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073428, -0.832525, -0.549099,
		-0.552795, -0.424289, 0.717215,
		-0.830076, 0.356203, -0.429061,
		11.293089, 18.817135, 22.581337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476665, 17.962330, 22.805462>,  <11.874142, 18.567793, 22.881680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476665, 17.962330, 22.805462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.350335, 18.247828, 22.555399>,  <11.274538, 18.419127, 22.405361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.350335, 18.247828, 22.555399>,  <11.476665, 17.962330, 22.805462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.350335, 18.247828, 22.555399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148216, -0.687905, -0.710506,
		-0.937170, -0.131736, 0.323044,
		-0.315823, 0.713745, -0.625159,
		11.255589, 18.461950, 22.367851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959785, 17.647356, 22.502569>,  <11.476665, 17.962330, 22.805462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959785, 17.647356, 22.502569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055175, 17.959366, 22.271158>,  <11.112409, 18.146572, 22.132311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055175, 17.959366, 22.271158>,  <10.959785, 17.647356, 22.502569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.055175, 17.959366, 22.271158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000387, -0.595640, -0.803252,
		-0.971149, 0.191777, -0.141742,
		0.238473, 0.780022, -0.578529,
		11.126717, 18.193373, 22.097599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.453575, 17.561953, 21.931780>,  <10.959785, 17.647356, 22.502569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.453575, 17.561953, 21.931780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.770891, 17.784649, 21.833206>,  <10.961281, 17.918266, 21.774061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.770891, 17.784649, 21.833206>,  <10.453575, 17.561953, 21.931780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.770891, 17.784649, 21.833206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207861, -0.628095, -0.749860,
		-0.572264, 0.543632, -0.613986,
		0.793289, 0.556742, -0.246436,
		11.008878, 17.951672, 21.759275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.426123, 17.651920, 21.246954>,  <10.453575, 17.561953, 21.931780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.426123, 17.651920, 21.246954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814660, 17.726292, 21.306175>,  <11.047783, 17.770914, 21.341707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814660, 17.726292, 21.306175>,  <10.426123, 17.651920, 21.246954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.814660, 17.726292, 21.306175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234877, -0.655584, -0.717664,
		-0.036374, 0.731874, -0.680469,
		0.971344, 0.185931, 0.148054,
		11.106064, 17.782070, 21.350592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.707182, 17.657106, 20.543400>,  <10.426123, 17.651920, 21.246954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.707182, 17.657106, 20.543400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030539, 17.640953, 20.778303>,  <11.224552, 17.631262, 20.919245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030539, 17.640953, 20.778303>,  <10.707182, 17.657106, 20.543400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.030539, 17.640953, 20.778303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443162, -0.614887, -0.652320,
		0.387440, 0.787581, -0.479173,
		0.808392, -0.040384, 0.587258,
		11.273056, 17.628838, 20.954481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333457, 17.788712, 20.119671>,  <10.707182, 17.657106, 20.543400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333457, 17.788712, 20.119671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465820, 17.580080, 20.434238>,  <11.545238, 17.454901, 20.622980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465820, 17.580080, 20.434238>,  <11.333457, 17.788712, 20.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.465820, 17.580080, 20.434238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367308, -0.696458, -0.616467,
		0.869244, 0.492852, -0.038884,
		0.330908, -0.521577, 0.786420,
		11.565093, 17.423607, 20.670164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.112864, 17.680880, 20.225712>,  <11.333457, 17.788712, 20.119671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.112864, 17.680880, 20.225712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949698, 17.366669, 20.411852>,  <11.851799, 17.178143, 20.523537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.949698, 17.366669, 20.411852>,  <12.112864, 17.680880, 20.225712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.949698, 17.366669, 20.411852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318960, -0.600173, -0.733523,
		0.855494, -0.150787, 0.495372,
		-0.407914, -0.785529, 0.465350,
		11.827324, 17.131010, 20.551456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.571486, 17.088129, 20.169493>,  <12.112864, 17.680880, 20.225712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.571486, 17.088129, 20.169493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.197824, 16.957169, 20.226294>,  <11.973626, 16.878593, 20.260374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.197824, 16.957169, 20.226294>,  <12.571486, 17.088129, 20.169493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.197824, 16.957169, 20.226294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093250, -0.608021, -0.788426,
		0.344470, -0.723270, 0.598515,
		-0.934155, -0.327400, 0.142000,
		11.917577, 16.858948, 20.268894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.839449, 17.224117, 19.373440>,  <12.571486, 17.088129, 20.169493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.839449, 17.224117, 19.373440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114056, 17.275244, 19.659756>,  <13.278820, 17.305920, 19.831545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114056, 17.275244, 19.659756>,  <12.839449, 17.224117, 19.373440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114056, 17.275244, 19.659756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727113, -0.121663, -0.675652,
		0.000725, 0.984307, -0.176463,
		0.686518, 0.127818, 0.715790,
		13.320011, 17.313589, 19.874493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314215, 17.574015, 19.026615>,  <12.839449, 17.224117, 19.373440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314215, 17.574015, 19.026615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494547, 17.411520, 19.344540>,  <13.602746, 17.314022, 19.535294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494547, 17.411520, 19.344540>,  <13.314215, 17.574015, 19.026615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494547, 17.411520, 19.344540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822402, -0.157111, -0.546783,
		0.346997, 0.900159, 0.263261,
		0.450830, -0.406238, 0.794810,
		13.629796, 17.289648, 19.582983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942891, 17.929203, 19.261393>,  <13.314215, 17.574015, 19.026615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.942891, 17.929203, 19.261393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976906, 17.548687, 19.379925>,  <13.997314, 17.320377, 19.451044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976906, 17.548687, 19.379925>,  <13.942891, 17.929203, 19.261393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976906, 17.548687, 19.379925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910570, -0.046547, -0.410726,
		0.404514, 0.304758, 0.862260,
		0.085036, -0.951292, 0.296332,
		14.002417, 17.263300, 19.468824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513003, 17.722878, 19.864197>,  <13.942891, 17.929203, 19.261393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513003, 17.722878, 19.864197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.419688, 17.465031, 19.572979>,  <14.363699, 17.310324, 19.398249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.419688, 17.465031, 19.572979>,  <14.513003, 17.722878, 19.864197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.419688, 17.465031, 19.572979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835615, 0.250013, -0.489122,
		0.497316, -0.722471, 0.480325,
		-0.233289, -0.644615, -0.728043,
		14.349702, 17.271646, 19.354567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.133094, 17.302557, 19.651981>,  <14.513003, 17.722878, 19.864197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.133094, 17.302557, 19.651981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.870069, 17.368219, 19.357862>,  <14.712254, 17.407618, 19.181391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.870069, 17.368219, 19.357862>,  <15.133094, 17.302557, 19.651981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870069, 17.368219, 19.357862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704171, 0.480919, -0.522360,
		0.267870, -0.861260, -0.431830,
		-0.657563, 0.164158, -0.735298,
		14.672800, 17.417467, 19.137274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218288, 16.979698, 18.942270>,  <15.133094, 17.302557, 19.651981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218288, 16.979698, 18.942270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044855, 17.339764, 18.925716>,  <14.940795, 17.555803, 18.915785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044855, 17.339764, 18.925716>,  <15.218288, 16.979698, 18.942270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044855, 17.339764, 18.925716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744834, 0.332161, -0.578699,
		-0.507178, -0.281737, -0.814491,
		-0.433583, 0.900163, -0.041383,
		14.914781, 17.609812, 18.913301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802745, 17.510342, 18.940832>,  <15.218288, 16.979698, 18.942270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802745, 17.510342, 18.940832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067732, 17.272976, 18.757969>,  <16.226725, 17.130556, 18.648251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067732, 17.272976, 18.757969>,  <15.802745, 17.510342, 18.940832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067732, 17.272976, 18.757969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191545, 0.724188, -0.662466,
		0.724188, 0.351295, 0.593417,
		0.662466, -0.593417, -0.457160,
		16.266472, 17.094952, 18.620821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305124, 17.912058, 18.748331>,  <15.802745, 17.510342, 18.940832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305124, 17.912058, 18.748331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389563, 17.600285, 18.512390>,  <16.440226, 17.413221, 18.370825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389563, 17.600285, 18.512390>,  <16.305124, 17.912058, 18.748331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389563, 17.600285, 18.512390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363928, 0.622737, -0.692644,
		0.907191, -0.068450, 0.415114,
		0.211095, -0.779432, -0.589852,
		16.452890, 17.366455, 18.335434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960810, 18.146990, 18.453928>,  <16.305124, 17.912058, 18.748331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960810, 18.146990, 18.453928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775803, 17.879810, 18.220716>,  <16.664799, 17.719501, 18.080790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775803, 17.879810, 18.220716>,  <16.960810, 18.146990, 18.453928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775803, 17.879810, 18.220716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203547, 0.560032, -0.803077,
		0.862930, -0.490109, -0.123064,
		-0.462515, -0.667950, -0.583029,
		16.637049, 17.679426, 18.045807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.418377, 18.040983, 17.953402>,  <16.960810, 18.146990, 18.453928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.418377, 18.040983, 17.953402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060478, 17.934528, 17.809958>,  <16.845739, 17.870655, 17.723892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.060478, 17.934528, 17.809958>,  <17.418377, 18.040983, 17.953402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060478, 17.934528, 17.809958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132312, 0.608980, -0.782072,
		0.426524, -0.747204, -0.509670,
		-0.894746, -0.266137, -0.358608,
		16.792055, 17.854687, 17.702375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501738, 17.710945, 17.402302>,  <17.418377, 18.040983, 17.953402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.501738, 17.710945, 17.402302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.128864, 17.852774, 17.373138>,  <16.905140, 17.937870, 17.355640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.128864, 17.852774, 17.373138>,  <17.501738, 17.710945, 17.402302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.128864, 17.852774, 17.373138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266421, 0.535672, -0.801296,
		-0.245061, -0.766378, -0.593809,
		-0.932183, 0.354570, -0.072907,
		16.849209, 17.959145, 17.351267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340260, 17.700663, 16.645210>,  <17.501738, 17.710945, 17.402302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340260, 17.700663, 16.645210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043810, 17.934450, 16.777349>,  <16.865940, 18.074722, 16.856632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043810, 17.934450, 16.777349>,  <17.340260, 17.700663, 16.645210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043810, 17.934450, 16.777349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004686, 0.496542, -0.868000,
		-0.671351, -0.641748, -0.370738,
		-0.741125, 0.584470, 0.330347,
		16.821472, 18.109791, 16.876453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855177, 17.768442, 16.131189>,  <17.340260, 17.700663, 16.645210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855177, 17.768442, 16.131189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802845, 18.094048, 16.357555>,  <16.771446, 18.289412, 16.493376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802845, 18.094048, 16.357555>,  <16.855177, 17.768442, 16.131189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802845, 18.094048, 16.357555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127526, 0.579899, -0.804645,
		-0.983169, -0.033101, -0.179675,
		-0.130828, 0.814016, 0.565917,
		16.763597, 18.338253, 16.527330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374735, 18.065716, 15.820501>,  <16.855177, 17.768442, 16.131189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374735, 18.065716, 15.820501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551371, 18.355753, 16.031874>,  <16.657352, 18.529776, 16.158697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551371, 18.355753, 16.031874>,  <16.374735, 18.065716, 15.820501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.551371, 18.355753, 16.031874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102087, 0.544535, -0.832502,
		-0.891390, 0.421571, 0.166439,
		0.441591, 0.725093, 0.528430,
		16.683847, 18.573280, 16.190403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033289, 18.619583, 15.574011>,  <16.374735, 18.065716, 15.820501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033289, 18.619583, 15.574011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.339209, 18.765965, 15.786109>,  <16.522760, 18.853794, 15.913368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.339209, 18.765965, 15.786109>,  <16.033289, 18.619583, 15.574011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339209, 18.765965, 15.786109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031896, 0.800504, -0.598478,
		-0.643478, 0.474628, 0.600552,
		0.764799, 0.365953, 0.530245,
		16.568649, 18.875750, 15.945183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921169, 19.356634, 15.806932>,  <16.033289, 18.619583, 15.574011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921169, 19.356634, 15.806932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314341, 19.287014, 15.783077>,  <16.550243, 19.245243, 15.768764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.314341, 19.287014, 15.783077>,  <15.921169, 19.356634, 15.806932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314341, 19.287014, 15.783077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096182, 0.762433, -0.639879,
		0.156840, 0.623220, 0.766158,
		0.982929, -0.174049, -0.059638,
		16.609219, 19.234798, 15.765186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129494, 19.995937, 15.858994>,  <15.921169, 19.356634, 15.806932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129494, 19.995937, 15.858994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448748, 19.799822, 15.718938>,  <16.640301, 19.682152, 15.634904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448748, 19.799822, 15.718938>,  <16.129494, 19.995937, 15.858994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448748, 19.799822, 15.718938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297445, 0.826064, -0.478690,
		0.523935, 0.277912, 0.805144,
		0.798134, -0.490289, -0.350141,
		16.688189, 19.652735, 15.613895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671139, 20.526741, 15.673335>,  <16.129494, 19.995937, 15.858994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671139, 20.526741, 15.673335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853216, 20.219637, 15.492961>,  <16.962461, 20.035374, 15.384736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853216, 20.219637, 15.492961>,  <16.671139, 20.526741, 15.673335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853216, 20.219637, 15.492961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479951, 0.638141, -0.602016,
		0.749965, 0.057605, 0.658964,
		0.455191, -0.767761, -0.450936,
		16.989773, 19.989309, 15.357680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499603, 20.603043, 15.724397>,  <16.671139, 20.526741, 15.673335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499603, 20.603043, 15.724397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.441574, 20.342068, 15.426866>,  <17.406757, 20.185482, 15.248347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.441574, 20.342068, 15.426866>,  <17.499603, 20.603043, 15.724397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.441574, 20.342068, 15.426866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710913, 0.454137, -0.536993,
		0.688154, -0.606699, 0.397944,
		-0.145072, -0.652438, -0.743827,
		17.398052, 20.146336, 15.203717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.027618, 20.653603, 15.411088>,  <17.499603, 20.603043, 15.724397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.027618, 20.653603, 15.411088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.841650, 20.430275, 15.136242>,  <17.730070, 20.296278, 14.971334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.841650, 20.430275, 15.136242>,  <18.027618, 20.653603, 15.411088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841650, 20.430275, 15.136242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703353, 0.238444, -0.669656,
		0.537722, -0.794620, 0.281840,
		-0.464919, -0.558321, -0.687115,
		17.702175, 20.262779, 14.930107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382347, 20.093176, 15.028416>,  <18.027618, 20.653603, 15.411088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382347, 20.093176, 15.028416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118975, 20.166405, 14.736401>,  <17.960951, 20.210342, 14.561192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.118975, 20.166405, 14.736401>,  <18.382347, 20.093176, 15.028416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118975, 20.166405, 14.736401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675229, 0.572155, -0.465516,
		0.332472, -0.799452, -0.500339,
		-0.658429, 0.183072, -0.730038,
		17.921446, 20.221327, 14.517389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.803682, 20.128683, 14.505420>,  <18.382347, 20.093176, 15.028416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.803682, 20.128683, 14.505420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469921, 20.312077, 14.383066>,  <18.269665, 20.422113, 14.309654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469921, 20.312077, 14.383066>,  <18.803682, 20.128683, 14.505420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469921, 20.312077, 14.383066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551151, 0.691722, -0.466642,
		-0.002361, -0.557955, -0.829868,
		-0.834402, 0.458484, -0.305884,
		18.219601, 20.449621, 14.291301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810659, 20.204088, 13.788177>,  <18.803682, 20.128683, 14.505420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810659, 20.204088, 13.788177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558401, 20.495283, 13.895744>,  <18.407045, 20.670000, 13.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558401, 20.495283, 13.895744>,  <18.810659, 20.204088, 13.788177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558401, 20.495283, 13.895744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598784, 0.676873, -0.428136,
		-0.493702, -0.108979, -0.862776,
		-0.630648, 0.727988, 0.268919,
		18.369207, 20.713680, 13.976419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.664230, 20.594999, 13.181666>,  <18.810659, 20.204088, 13.788177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.664230, 20.594999, 13.181666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572607, 20.838560, 13.485448>,  <18.517633, 20.984697, 13.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572607, 20.838560, 13.485448>,  <18.664230, 20.594999, 13.181666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572607, 20.838560, 13.485448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454927, 0.756714, -0.469495,
		-0.860566, 0.237954, -0.450338,
		-0.229059, 0.608902, 0.759454,
		18.503889, 21.021231, 13.713284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410173, 21.281389, 12.946304>,  <18.664230, 20.594999, 13.181666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.410173, 21.281389, 12.946304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543638, 21.371838, 13.312373>,  <18.623716, 21.426105, 13.532015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543638, 21.371838, 13.312373>,  <18.410173, 21.281389, 12.946304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543638, 21.371838, 13.312373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308999, 0.890938, -0.332789,
		-0.890612, 0.393826, 0.227401,
		0.333661, 0.226119, 0.915172,
		18.643736, 21.439672, 13.586925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.183132, 21.929964, 13.071234>,  <18.410173, 21.281389, 12.946304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.183132, 21.929964, 13.071234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.459463, 21.910305, 13.359774>,  <18.625261, 21.898510, 13.532897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.459463, 21.910305, 13.359774>,  <18.183132, 21.929964, 13.071234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459463, 21.910305, 13.359774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324021, 0.912936, -0.248108,
		-0.646351, 0.405132, 0.646605,
		0.690826, -0.049149, 0.721349,
		18.666710, 21.895561, 13.576179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058098, 22.629719, 13.563583>,  <18.183132, 21.929964, 13.071234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058098, 22.629719, 13.563583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.421515, 22.463530, 13.545972>,  <18.639565, 22.363817, 13.535405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.421515, 22.463530, 13.545972>,  <18.058098, 22.629719, 13.563583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.421515, 22.463530, 13.545972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403370, 0.899736, -0.166637,
		0.108846, 0.133637, 0.985035,
		0.908540, -0.415471, -0.044028,
		18.694077, 22.338888, 13.532763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522669, 23.208900, 13.834221>,  <18.058098, 22.629719, 13.563583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522669, 23.208900, 13.834221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771276, 22.951487, 13.655524>,  <18.920441, 22.797039, 13.548306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771276, 22.951487, 13.655524>,  <18.522669, 23.208900, 13.834221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771276, 22.951487, 13.655524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530550, 0.765344, -0.364371,
		0.576396, -0.010555, 0.817103,
		0.621519, -0.643535, -0.446741,
		18.957731, 22.758427, 13.521502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219170, 23.472542, 13.895435>,  <18.522669, 23.208900, 13.834221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219170, 23.472542, 13.895435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.204741, 23.220152, 13.585450>,  <19.196083, 23.068718, 13.399459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.204741, 23.220152, 13.585450>,  <19.219170, 23.472542, 13.895435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204741, 23.220152, 13.585450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530263, 0.645215, -0.550017,
		0.847066, -0.430774, 0.311310,
		-0.036071, -0.630977, -0.774963,
		19.193918, 23.030859, 13.352962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867443, 23.354780, 13.657988>,  <19.219170, 23.472542, 13.895435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867443, 23.354780, 13.657988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607437, 23.321167, 13.355883>,  <19.451433, 23.300999, 13.174620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607437, 23.321167, 13.355883>,  <19.867443, 23.354780, 13.657988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607437, 23.321167, 13.355883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606948, 0.540634, -0.582520,
		0.457270, -0.837051, -0.300416,
		-0.650014, -0.084032, -0.755262,
		19.412434, 23.295958, 13.129304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.377544, 22.973883, 13.867737>,  <19.867443, 23.354780, 13.657988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.377544, 22.973883, 13.867737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419447, 23.026302, 13.473407>,  <20.444590, 23.057755, 13.236809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419447, 23.026302, 13.473407>,  <20.377544, 22.973883, 13.867737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419447, 23.026302, 13.473407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952192, 0.299267, -0.061401,
		0.286978, 0.945127, 0.156133,
		0.104758, 0.131048, -0.985826,
		20.450874, 23.065617, 13.177659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.783627, 22.422441, 14.307880>,  <20.377544, 22.973883, 13.867737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.783627, 22.422441, 14.307880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.087137, 22.430908, 14.047477>,  <21.269243, 22.435989, 13.891234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.087137, 22.430908, 14.047477>,  <20.783627, 22.422441, 14.307880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.087137, 22.430908, 14.047477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507804, -0.645154, 0.570886,
		-0.407916, -0.763759, -0.500277,
		0.758775, 0.021169, -0.651009,
		21.314770, 22.437260, 13.852174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889973, 21.811363, 13.939317>,  <20.783627, 22.422441, 14.307880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889973, 21.811363, 13.939317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228453, 22.023251, 13.962458>,  <21.431540, 22.150383, 13.976342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228453, 22.023251, 13.962458>,  <20.889973, 21.811363, 13.939317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.228453, 22.023251, 13.962458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424371, -0.735582, 0.528042,
		0.322270, -0.422277, -0.847245,
		0.846198, 0.529719, 0.057853,
		21.482311, 22.182165, 13.979814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.431093, 21.337023, 13.725949>,  <20.889973, 21.811363, 13.939317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.431093, 21.337023, 13.725949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608379, 21.606836, 13.962107>,  <21.714750, 21.768724, 14.103802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608379, 21.606836, 13.962107>,  <21.431093, 21.337023, 13.725949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.608379, 21.606836, 13.962107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623297, -0.705243, 0.337835,
		0.644253, 0.218258, -0.733009,
		0.443214, 0.674533, 0.590395,
		21.741344, 21.809196, 14.139225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.018007, 21.285896, 13.472340>,  <21.431093, 21.337023, 13.725949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.018007, 21.285896, 13.472340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033255, 21.376934, 13.861544>,  <22.042402, 21.431557, 14.095066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033255, 21.376934, 13.861544>,  <22.018007, 21.285896, 13.472340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033255, 21.376934, 13.861544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751961, -0.647807, 0.122069,
		0.658104, 0.727012, -0.195837,
		0.038119, 0.227596, 0.973009,
		22.044691, 21.445213, 14.153446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.624298, 20.817038, 13.684109>,  <22.018007, 21.285896, 13.472340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.624298, 20.817038, 13.684109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.353020, 20.881214, 13.970970>,  <22.190252, 20.919720, 14.143086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.353020, 20.881214, 13.970970>,  <22.624298, 20.817038, 13.684109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.353020, 20.881214, 13.970970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265344, -0.856579, 0.442566,
		0.685305, 0.490439, 0.538356,
		-0.678196, 0.160444, 0.717153,
		22.149561, 20.929348, 14.186116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.914579, 20.751219, 14.382312>,  <22.624298, 20.817038, 13.684109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.914579, 20.751219, 14.382312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522264, 20.682159, 14.418641>,  <22.286875, 20.640724, 14.440438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522264, 20.682159, 14.418641>,  <22.914579, 20.751219, 14.382312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522264, 20.682159, 14.418641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195050, -0.859655, 0.472174,
		-0.003444, 0.480817, 0.876814,
		-0.980787, -0.172648, 0.090823,
		22.228027, 20.630365, 14.445888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.802288, 20.521585, 15.129587>,  <22.914579, 20.751219, 14.382312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.802288, 20.521585, 15.129587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518642, 20.375410, 14.888385>,  <22.348455, 20.287704, 14.743664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518642, 20.375410, 14.888385>,  <22.802288, 20.521585, 15.129587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.518642, 20.375410, 14.888385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090203, -0.895201, 0.436439,
		-0.699301, 0.255091, 0.667762,
		-0.709113, -0.365436, -0.603005,
		22.305908, 20.265779, 14.707483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.346567, 20.163061, 15.634982>,  <22.802288, 20.521585, 15.129587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.346567, 20.163061, 15.634982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.306721, 20.017048, 15.264722>,  <22.282812, 19.929440, 15.042566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.306721, 20.017048, 15.264722>,  <22.346567, 20.163061, 15.634982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.306721, 20.017048, 15.264722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131983, -0.926905, 0.351323,
		-0.986234, -0.087172, 0.140512,
		-0.099616, -0.365032, -0.925650,
		22.276836, 19.907537, 14.987027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.387594, 20.285543, 16.345686>,  <22.346567, 20.163061, 15.634982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.387594, 20.285543, 16.345686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012842, 20.372494, 16.455231>,  <21.787991, 20.424664, 16.520958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012842, 20.372494, 16.455231>,  <22.387594, 20.285543, 16.345686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012842, 20.372494, 16.455231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186883, -0.973307, 0.133225,
		0.295513, 0.073636, 0.952497,
		-0.936882, 0.217375, 0.273864,
		21.731777, 20.437706, 16.537390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143728, 19.890301, 16.997730>,  <22.387594, 20.285543, 16.345686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143728, 19.890301, 16.997730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.866297, 19.966349, 16.719793>,  <21.699839, 20.011978, 16.553032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.866297, 19.966349, 16.719793>,  <22.143728, 19.890301, 16.997730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.866297, 19.966349, 16.719793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412778, -0.895384, 0.167036,
		-0.590393, 0.402668, 0.699496,
		-0.693578, 0.190120, -0.694841,
		21.658224, 20.023384, 16.511341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.438190, 19.679008, 17.299591>,  <22.143728, 19.890301, 16.997730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.438190, 19.679008, 17.299591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.442017, 19.651031, 16.900589>,  <21.444313, 19.634245, 16.661188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.442017, 19.651031, 16.900589>,  <21.438190, 19.679008, 17.299591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.442017, 19.651031, 16.900589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423929, -0.903752, 0.059302,
		-0.905645, 0.422304, -0.038296,
		0.009566, -0.069942, -0.997505,
		21.444885, 19.630049, 16.601337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771038, 19.524363, 16.934450>,  <21.438190, 19.679008, 17.299591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771038, 19.524363, 16.934450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.100838, 19.390249, 16.752117>,  <21.298717, 19.309780, 16.642717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.100838, 19.390249, 16.752117>,  <20.771038, 19.524363, 16.934450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.100838, 19.390249, 16.752117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265863, -0.940638, 0.210992,
		-0.499516, -0.052774, -0.864696,
		0.824501, -0.335284, -0.455833,
		21.348188, 19.289663, 16.615368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520536, 18.977615, 16.398636>,  <20.771038, 19.524363, 16.934450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520536, 18.977615, 16.398636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883507, 18.894068, 16.544489>,  <21.101288, 18.843939, 16.632000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883507, 18.894068, 16.544489>,  <20.520536, 18.977615, 16.398636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883507, 18.894068, 16.544489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296340, -0.933289, 0.202864,
		0.297935, -0.292139, -0.908785,
		0.907424, -0.208869, 0.364632,
		21.155733, 18.831408, 16.653879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385592, 18.241943, 16.380669>,  <20.520536, 18.977615, 16.398636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385592, 18.241943, 16.380669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.133066, 17.976400, 16.220299>,  <19.981552, 17.817076, 16.124077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.133066, 17.976400, 16.220299>,  <20.385592, 18.241943, 16.380669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133066, 17.976400, 16.220299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422443, 0.727908, -0.540085,
		0.650374, -0.171595, -0.739979,
		-0.631313, -0.663856, -0.400923,
		19.943672, 17.777243, 16.100021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213064, 17.640978, 16.766361>,  <20.385592, 18.241943, 16.380669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213064, 17.640978, 16.766361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374023, 17.728559, 16.410803>,  <20.470598, 17.781109, 16.197468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374023, 17.728559, 16.410803>,  <20.213064, 17.640978, 16.766361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374023, 17.728559, 16.410803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759903, -0.621357, 0.190950,
		-0.510513, -0.752313, -0.416416,
		0.402397, 0.218954, -0.888896,
		20.494743, 17.794245, 16.144135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.295053, 17.033632, 16.392427>,  <20.213064, 17.640978, 16.766361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.295053, 17.033632, 16.392427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.569197, 17.280569, 16.237936>,  <20.733683, 17.428732, 16.145241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.569197, 17.280569, 16.237936>,  <20.295053, 17.033632, 16.392427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569197, 17.280569, 16.237936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714755, -0.671757, 0.194596,
		-0.139320, -0.409428, -0.901642,
		0.685357, 0.617342, -0.386230,
		20.774803, 17.465773, 16.122066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607037, 16.599379, 15.905499>,  <20.295053, 17.033632, 16.392427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607037, 16.599379, 15.905499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867035, 16.900517, 15.946932>,  <21.023033, 17.081200, 15.971791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867035, 16.900517, 15.946932>,  <20.607037, 16.599379, 15.905499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867035, 16.900517, 15.946932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748364, -0.657820, 0.084998,
		0.132127, 0.022268, -0.990983,
		0.649995, 0.752846, 0.103580,
		21.062033, 17.126369, 15.978005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193478, 16.352615, 15.479250>,  <20.607037, 16.599379, 15.905499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193478, 16.352615, 15.479250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324966, 16.618130, 15.747974>,  <21.403860, 16.777437, 15.909209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324966, 16.618130, 15.747974>,  <21.193478, 16.352615, 15.479250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324966, 16.618130, 15.747974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766014, -0.603477, 0.221447,
		0.552416, 0.441822, -0.706845,
		0.328724, 0.663784, 0.671812,
		21.423584, 16.817265, 15.949518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.881750, 16.275663, 15.450692>,  <21.193478, 16.352615, 15.479250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.881750, 16.275663, 15.450692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.812222, 16.448689, 15.804568>,  <21.770504, 16.552504, 16.016893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.812222, 16.448689, 15.804568>,  <21.881750, 16.275663, 15.450692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.812222, 16.448689, 15.804568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604708, -0.662163, 0.442570,
		0.777248, 0.611908, -0.146476,
		-0.173821, 0.432561, 0.884690,
		21.760075, 16.578457, 16.069975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.396580, 16.166607, 15.821848>,  <21.881750, 16.275663, 15.450692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.396580, 16.166607, 15.821848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171200, 16.261179, 16.138487>,  <22.035973, 16.317923, 16.328470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171200, 16.261179, 16.138487>,  <22.396580, 16.166607, 15.821848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.171200, 16.261179, 16.138487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501555, -0.663497, 0.555171,
		0.656480, 0.709841, 0.255266,
		-0.563451, 0.236429, 0.791597,
		22.002165, 16.332108, 16.375965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.744390, 16.555311, 16.408978>,  <22.396580, 16.166607, 15.821848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.744390, 16.555311, 16.408978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451221, 16.319971, 16.545607>,  <22.275320, 16.178766, 16.627583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451221, 16.319971, 16.545607>,  <22.744390, 16.555311, 16.408978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451221, 16.319971, 16.545607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620016, -0.371013, 0.691325,
		-0.280014, 0.718465, 0.636710,
		-0.732921, -0.588351, 0.341570,
		22.231346, 16.143465, 16.648077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.219280, 15.930024, 16.426271>,  <22.744390, 16.555311, 16.408978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.219280, 15.930024, 16.426271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.329565, 16.115032, 16.763330>,  <23.395735, 16.226038, 16.965567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.329565, 16.115032, 16.763330>,  <23.219280, 15.930024, 16.426271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329565, 16.115032, 16.763330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510679, -0.813161, 0.279243,
		0.814365, 0.353333, -0.460397,
		0.275711, 0.462521, 0.842649,
		23.412279, 16.253788, 17.016125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.685196, 16.026360, 15.893027>,  <23.219280, 15.930024, 16.426271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.685196, 16.026360, 15.893027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.856844, 15.716926, 16.079540>,  <23.959833, 15.531265, 16.191448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.856844, 15.716926, 16.079540>,  <23.685196, 16.026360, 15.893027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.856844, 15.716926, 16.079540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083716, -0.479944, -0.873296,
		0.899359, 0.413785, -0.141193,
		0.429121, -0.773586, 0.466282,
		23.985580, 15.484850, 16.219425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357708, 15.856321, 15.568765>,  <23.685196, 16.026360, 15.893027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357708, 15.856321, 15.568765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167755, 15.538221, 15.719529>,  <24.053783, 15.347362, 15.809988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167755, 15.538221, 15.719529>,  <24.357708, 15.856321, 15.568765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.167755, 15.538221, 15.719529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008287, -0.424225, -0.905519,
		0.880010, -0.433139, 0.194867,
		-0.474883, -0.795251, 0.376911,
		24.025290, 15.299646, 15.832603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745560, 15.306695, 15.278186>,  <24.357708, 15.856321, 15.568765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745560, 15.306695, 15.278186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370802, 15.180127, 15.337666>,  <24.145948, 15.104186, 15.373353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370802, 15.180127, 15.337666>,  <24.745560, 15.306695, 15.278186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370802, 15.180127, 15.337666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048239, -0.538243, -0.841408,
		0.346275, -0.781135, 0.519540,
		-0.936892, -0.316420, 0.148699,
		24.089735, 15.085201, 15.382276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732635, 14.594851, 14.935829>,  <24.745560, 15.306695, 15.278186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732635, 14.594851, 14.935829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738777, 14.927399, 14.713627>,  <24.742462, 15.126927, 14.580305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738777, 14.927399, 14.713627>,  <24.732635, 14.594851, 14.935829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738777, 14.927399, 14.713627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329529, -0.520326, -0.787827,
		-0.944021, 0.195152, 0.265972,
		0.015354, 0.831371, -0.555506,
		24.743383, 15.176810, 14.546975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308340, 14.461052, 14.580454>,  <24.732635, 14.594851, 14.935829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308340, 14.461052, 14.580454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088364, 14.274938, 14.857891>,  <24.956377, 14.163269, 15.024354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088364, 14.274938, 14.857891>,  <25.308340, 14.461052, 14.580454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088364, 14.274938, 14.857891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723536, 0.680238, -0.117357,
		-0.417204, -0.566379, -0.710743,
		-0.549943, -0.465286, 0.693594,
		24.923380, 14.135352, 15.065969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741671, 15.083913, 14.384330>,  <25.308340, 14.461052, 14.580454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741671, 15.083913, 14.384330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132362, 15.169231, 14.393277>,  <26.366777, 15.220423, 14.398645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132362, 15.169231, 14.393277>,  <25.741671, 15.083913, 14.384330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132362, 15.169231, 14.393277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026586, -0.223907, 0.974248,
		0.212813, -0.950984, -0.224368,
		0.976732, 0.213297, 0.022368,
		26.425383, 15.233221, 14.399987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096048, 14.510095, 14.717684>,  <25.741671, 15.083913, 14.384330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096048, 14.510095, 14.717684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330729, 14.832149, 14.752420>,  <26.471537, 15.025381, 14.773263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330729, 14.832149, 14.752420>,  <26.096048, 14.510095, 14.717684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330729, 14.832149, 14.752420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073686, -0.159871, 0.984384,
		0.806445, -0.571139, -0.153123,
		0.586700, 0.805134, 0.086842,
		26.506739, 15.073689, 14.778473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798775, 14.398674, 14.892579>,  <26.096048, 14.510095, 14.717684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798775, 14.398674, 14.892579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637960, 14.741599, 15.021193>,  <26.541471, 14.947354, 15.098360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637960, 14.741599, 15.021193>,  <26.798775, 14.398674, 14.892579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637960, 14.741599, 15.021193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152424, -0.408927, 0.899748,
		0.902848, 0.312722, 0.295078,
		-0.402036, 0.857312, 0.321533,
		26.517349, 14.998793, 15.117652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.989524, 14.725855, 29.641722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.383168, 14.662502, 29.609613>,  <15.619354, 14.624491, 29.590349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.383168, 14.662502, 29.609613>,  <14.989524, 14.725855, 29.641722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.383168, 14.662502, 29.609613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136362, -0.384596, -0.912958,
		0.113723, 0.909396, -0.400081,
		0.984110, -0.158381, -0.080270,
		15.678401, 14.614988, 29.585533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106282, 14.946255, 28.998386>,  <14.989524, 14.725855, 29.641722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106282, 14.946255, 28.998386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.432183, 14.723019, 29.061268>,  <15.627724, 14.589077, 29.098997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.432183, 14.723019, 29.061268>,  <15.106282, 14.946255, 28.998386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432183, 14.723019, 29.061268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085247, -0.383488, -0.919603,
		0.573507, 0.735848, -0.360023,
		0.814753, -0.558090, 0.157204,
		15.676609, 14.555592, 29.108429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470209, 14.938601, 28.356476>,  <15.106282, 14.946255, 28.998386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470209, 14.938601, 28.356476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.624370, 14.628878, 28.557240>,  <15.716866, 14.443044, 28.677698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.624370, 14.628878, 28.557240>,  <15.470209, 14.938601, 28.356476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624370, 14.628878, 28.557240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065968, -0.565656, -0.821998,
		0.920388, 0.283690, -0.269085,
		0.385402, -0.774308, 0.501909,
		15.739990, 14.396585, 28.707811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013117, 14.759958, 28.017460>,  <15.470209, 14.938601, 28.356476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013117, 14.759958, 28.017460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.898308, 14.437090, 28.223797>,  <15.829423, 14.243369, 28.347599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.898308, 14.437090, 28.223797>,  <16.013117, 14.759958, 28.017460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898308, 14.437090, 28.223797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231114, -0.464244, -0.855023,
		0.929627, -0.364627, -0.053301,
		-0.287020, -0.807171, 0.515844,
		15.812201, 14.194939, 28.378550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448496, 14.224887, 27.716492>,  <16.013117, 14.759958, 28.017460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448496, 14.224887, 27.716492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.151304, 14.025349, 27.894989>,  <15.972989, 13.905626, 28.002089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.151304, 14.025349, 27.894989>,  <16.448496, 14.224887, 27.716492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151304, 14.025349, 27.894989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183582, -0.489266, -0.852594,
		0.643645, -0.715383, 0.271936,
		-0.742980, -0.498845, 0.446245,
		15.928411, 13.875695, 28.028862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568470, 13.569879, 27.460707>,  <16.448496, 14.224887, 27.716492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568470, 13.569879, 27.460707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.187817, 13.591221, 27.581732>,  <15.959424, 13.604026, 27.654346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.187817, 13.591221, 27.581732>,  <16.568470, 13.569879, 27.460707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187817, 13.591221, 27.581732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291561, -0.467330, -0.834623,
		0.096865, -0.882472, 0.460284,
		-0.951635, 0.053355, 0.302562,
		15.902326, 13.607227, 27.672501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294411, 13.025191, 27.112904>,  <16.568470, 13.569879, 27.460707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294411, 13.025191, 27.112904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994392, 13.252359, 27.248489>,  <15.814381, 13.388660, 27.329842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994392, 13.252359, 27.248489>,  <16.294411, 13.025191, 27.112904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994392, 13.252359, 27.248489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590582, -0.344397, -0.729797,
		-0.297722, -0.747572, 0.593715,
		-0.750049, 0.567914, 0.338968,
		15.769379, 13.422735, 27.350180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735036, 12.620609, 27.170267>,  <16.294411, 13.025191, 27.112904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735036, 12.620609, 27.170267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.567528, 12.982415, 27.138063>,  <15.467023, 13.199499, 27.118740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.567528, 12.982415, 27.138063>,  <15.735036, 12.620609, 27.170267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567528, 12.982415, 27.138063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574552, -0.332571, -0.747854,
		-0.703222, -0.266922, 0.658963,
		-0.418771, 0.904516, -0.080511,
		15.441896, 13.253770, 27.113911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978453, 12.469645, 27.087959>,  <15.735036, 12.620609, 27.170267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978453, 12.469645, 27.087959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.053073, 12.843307, 26.966269>,  <15.097845, 13.067504, 26.893255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.053073, 12.843307, 26.966269>,  <14.978453, 12.469645, 27.087959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053073, 12.843307, 26.966269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593475, -0.139624, -0.792649,
		-0.782934, 0.328420, 0.528350,
		0.186551, 0.934155, -0.304225,
		15.109038, 13.123553, 26.875002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362147, 12.751055, 27.053158>,  <14.978453, 12.469645, 27.087959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362147, 12.751055, 27.053158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582390, 12.969917, 26.800983>,  <14.714536, 13.101235, 26.649679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582390, 12.969917, 26.800983>,  <14.362147, 12.751055, 27.053158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582390, 12.969917, 26.800983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671000, -0.159166, -0.724172,
		-0.496580, 0.821758, 0.279505,
		0.550606, 0.547157, -0.630438,
		14.747572, 13.134065, 26.611853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861282, 13.105788, 26.628643>,  <14.362147, 12.751055, 27.053158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861282, 13.105788, 26.628643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.181318, 13.140974, 26.391285>,  <14.373340, 13.162086, 26.248871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.181318, 13.140974, 26.391285>,  <13.861282, 13.105788, 26.628643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181318, 13.140974, 26.391285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598461, 0.049076, -0.799647,
		-0.041218, 0.994914, 0.091908,
		0.800091, 0.087964, -0.593395,
		14.421346, 13.167363, 26.213266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.769756, 13.734233, 26.257841>,  <13.861282, 13.105788, 26.628643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.769756, 13.734233, 26.257841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.020748, 13.489185, 26.065605>,  <14.171343, 13.342156, 25.950264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.020748, 13.489185, 26.065605>,  <13.769756, 13.734233, 26.257841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.020748, 13.489185, 26.065605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587996, 0.031793, -0.808239,
		0.510422, 0.789739, -0.340268,
		0.627480, -0.612619, -0.480591,
		14.208992, 13.305400, 25.921429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880116, 14.037193, 25.662271>,  <13.769756, 13.734233, 26.257841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.880116, 14.037193, 25.662271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.998804, 13.664179, 25.579967>,  <14.070017, 13.440371, 25.530586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.998804, 13.664179, 25.579967>,  <13.880116, 14.037193, 25.662271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.998804, 13.664179, 25.579967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543917, 0.012066, -0.839052,
		0.784928, 0.360878, -0.503641,
		0.296718, -0.932535, -0.205759,
		14.087820, 13.384418, 25.518240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183543, 13.999994, 25.006386>,  <13.880116, 14.037193, 25.662271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183543, 13.999994, 25.006386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.079847, 13.618509, 25.067350>,  <14.017630, 13.389619, 25.103930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.079847, 13.618509, 25.067350>,  <14.183543, 13.999994, 25.006386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079847, 13.618509, 25.067350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587356, 0.030408, -0.808758,
		0.766687, -0.299182, -0.568051,
		-0.259238, -0.953711, 0.152413,
		14.002076, 13.332396, 25.113073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333932, 13.597714, 24.361200>,  <14.183543, 13.999994, 25.006386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333932, 13.597714, 24.361200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.076991, 13.364102, 24.559711>,  <13.922827, 13.223935, 24.678818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.076991, 13.364102, 24.559711>,  <14.333932, 13.597714, 24.361200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076991, 13.364102, 24.559711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560622, -0.083460, -0.823855,
		0.522576, -0.807429, -0.273810,
		-0.642353, -0.584031, 0.496277,
		13.884285, 13.188893, 24.708595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.307116, 12.993250, 23.966757>,  <14.333932, 13.597714, 24.361200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.307116, 12.993250, 23.966757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.978301, 12.988697, 24.194487>,  <13.781013, 12.985966, 24.331123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.978301, 12.988697, 24.194487>,  <14.307116, 12.993250, 23.966757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.978301, 12.988697, 24.194487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539438, -0.304658, -0.784978,
		0.182384, -0.952394, 0.244299,
		-0.822035, -0.011383, 0.569322,
		13.731690, 12.985282, 24.365284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891245, 12.264892, 23.831594>,  <14.307116, 12.993250, 23.966757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891245, 12.264892, 23.831594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.655692, 12.557606, 23.968830>,  <13.514360, 12.733234, 24.051170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.655692, 12.557606, 23.968830>,  <13.891245, 12.264892, 23.831594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.655692, 12.557606, 23.968830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628361, -0.147557, -0.763799,
		-0.508311, -0.665370, 0.546719,
		-0.588882, 0.731785, 0.343088,
		13.479028, 12.777141, 24.071756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329117, 12.037887, 23.556250>,  <13.891245, 12.264892, 23.831594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329117, 12.037887, 23.556250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.217065, 12.405208, 23.668140>,  <13.149834, 12.625601, 23.735275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.217065, 12.405208, 23.668140>,  <13.329117, 12.037887, 23.556250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.217065, 12.405208, 23.668140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592311, 0.063969, -0.803166,
		-0.755444, -0.390675, 0.526001,
		-0.280129, 0.918303, 0.279726,
		13.133026, 12.680698, 23.752058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534459, 12.164601, 23.425980>,  <13.329117, 12.037887, 23.556250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.534459, 12.164601, 23.425980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.727612, 12.514869, 23.423885>,  <12.843505, 12.725029, 23.422628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.727612, 12.514869, 23.423885>,  <12.534459, 12.164601, 23.425980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.727612, 12.514869, 23.423885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365301, 0.196002, -0.910021,
		-0.795850, 0.441348, 0.414529,
		0.482884, 0.875669, -0.005237,
		12.872478, 12.777569, 23.422314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.107283, 12.575198, 23.104986>,  <12.534459, 12.164601, 23.425980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.107283, 12.575198, 23.104986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.427234, 12.814574, 23.086809>,  <12.619205, 12.958200, 23.075903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.427234, 12.814574, 23.086809>,  <12.107283, 12.575198, 23.104986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427234, 12.814574, 23.086809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331292, 0.377133, -0.864879,
		-0.500441, 0.706852, 0.499919,
		0.799878, 0.598440, -0.045442,
		12.667197, 12.994106, 23.073177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797961, 13.268793, 22.978300>,  <12.107283, 12.575198, 23.104986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797961, 13.268793, 22.978300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.182267, 13.266940, 22.867371>,  <12.412851, 13.265828, 22.800814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.182267, 13.266940, 22.867371>,  <11.797961, 13.268793, 22.978300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182267, 13.266940, 22.867371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216357, 0.613112, -0.759792,
		0.173551, 0.789983, 0.588054,
		0.960765, -0.004633, -0.277324,
		12.470497, 13.265551, 22.784174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.806591, 13.868186, 22.642038>,  <11.797961, 13.268793, 22.978300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.806591, 13.868186, 22.642038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.151516, 13.695897, 22.535534>,  <12.358471, 13.592524, 22.471630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.151516, 13.695897, 22.535534>,  <11.806591, 13.868186, 22.642038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.151516, 13.695897, 22.535534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024741, 0.561029, -0.827427,
		0.505772, 0.706913, 0.494438,
		0.862312, -0.430722, -0.266263,
		12.410210, 13.566681, 22.455654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.084774, 14.446142, 22.276880>,  <11.806591, 13.868186, 22.642038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.084774, 14.446142, 22.276880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.805332, 14.642982, 22.069117>,  <11.637667, 14.761086, 21.944458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.805332, 14.642982, 22.069117>,  <12.084774, 14.446142, 22.276880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.805332, 14.642982, 22.069117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336932, 0.414154, 0.845549,
		0.631211, 0.765711, -0.123526,
		-0.698605, 0.492100, -0.519411,
		11.595751, 14.790612, 21.913294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.172873, 15.126013, 22.461637>,  <12.084774, 14.446142, 22.276880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.172873, 15.126013, 22.461637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.807120, 15.081757, 22.305861>,  <11.587668, 15.055202, 22.212395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.807120, 15.081757, 22.305861>,  <12.172873, 15.126013, 22.461637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.807120, 15.081757, 22.305861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390457, 0.495251, 0.776061,
		0.107009, 0.861676, -0.496048,
		-0.914381, -0.110640, -0.389443,
		11.532806, 15.048565, 22.189028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.924916, 15.767299, 22.402447>,  <12.172873, 15.126013, 22.461637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.924916, 15.767299, 22.402447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.609415, 15.524696, 22.442490>,  <11.420115, 15.379135, 22.466516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.609415, 15.524696, 22.442490>,  <11.924916, 15.767299, 22.402447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.609415, 15.524696, 22.442490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299187, 0.521035, 0.799381,
		-0.536989, 0.600562, -0.592426,
		-0.788752, -0.606505, 0.100109,
		11.372789, 15.342745, 22.472523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.364914, 16.181587, 22.618143>,  <11.924916, 15.767299, 22.402447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.364914, 16.181587, 22.618143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.276043, 15.810410, 22.737846>,  <11.222720, 15.587703, 22.809668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.276043, 15.810410, 22.737846>,  <11.364914, 16.181587, 22.618143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.276043, 15.810410, 22.737846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172447, 0.339489, 0.924667,
		-0.959635, 0.153834, -0.235448,
		-0.222177, -0.927945, 0.299258,
		11.209390, 15.532026, 22.827623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.799702, 16.214102, 23.080372>,  <11.364914, 16.181587, 22.618143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.799702, 16.214102, 23.080372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.978994, 15.866837, 23.165581>,  <11.086570, 15.658477, 23.216705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.978994, 15.866837, 23.165581>,  <10.799702, 16.214102, 23.080372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.978994, 15.866837, 23.165581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320083, 0.066628, 0.945044,
		-0.834647, -0.491783, -0.248020,
		0.448231, -0.868165, 0.213022,
		11.113463, 15.606387, 23.229488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.384109, 15.950109, 23.706478>,  <10.799702, 16.214102, 23.080372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.384109, 15.950109, 23.706478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.724324, 15.739992, 23.716673>,  <10.928453, 15.613922, 23.722790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.724324, 15.739992, 23.716673>,  <10.384109, 15.950109, 23.706478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724324, 15.739992, 23.716673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035436, -0.008887, 0.999332,
		-0.524715, -0.850875, -0.026173,
		0.850540, -0.525292, 0.025488,
		10.979486, 15.582404, 23.724319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.247781, 15.537281, 24.336887>,  <10.384109, 15.950109, 23.706478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.247781, 15.537281, 24.336887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.640591, 15.512515, 24.265564>,  <10.876277, 15.497655, 24.222771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.640591, 15.512515, 24.265564>,  <10.247781, 15.537281, 24.336887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.640591, 15.512515, 24.265564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180420, 0.030375, 0.983121,
		-0.055456, -0.997619, 0.041000,
		0.982025, -0.061917, -0.178306,
		10.935198, 15.493940, 24.212072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.449417, 15.171204, 24.947275>,  <10.247781, 15.537281, 24.336887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.449417, 15.171204, 24.947275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.780447, 15.330548, 24.789072>,  <10.979065, 15.426155, 24.694151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.780447, 15.330548, 24.789072>,  <10.449417, 15.171204, 24.947275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.780447, 15.330548, 24.789072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417220, 0.034873, 0.908136,
		0.375560, -0.916564, -0.137345,
		0.827576, 0.398363, -0.395506,
		11.028720, 15.450057, 24.670420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048474, 14.824975, 25.209175>,  <10.449417, 15.171204, 24.947275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048474, 14.824975, 25.209175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.164613, 15.196491, 25.117046>,  <11.234296, 15.419401, 25.061769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.164613, 15.196491, 25.117046>,  <11.048474, 14.824975, 25.209175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164613, 15.196491, 25.117046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414620, 0.094820, 0.905041,
		0.862433, -0.358270, -0.357565,
		0.290345, 0.928791, -0.230322,
		11.251717, 15.475128, 25.047951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704782, 14.859507, 25.518085>,  <11.048474, 14.824975, 25.209175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704782, 14.859507, 25.518085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.583203, 15.236732, 25.464058>,  <11.510256, 15.463068, 25.431641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.583203, 15.236732, 25.464058>,  <11.704782, 14.859507, 25.518085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.583203, 15.236732, 25.464058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304379, 0.230475, 0.924248,
		0.902756, 0.239811, -0.357102,
		-0.303948, 0.943065, -0.135069,
		11.492019, 15.519652, 25.423536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.240944, 15.291445, 25.692360>,  <11.704782, 14.859507, 25.518085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.240944, 15.291445, 25.692360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.959426, 15.575581, 25.696180>,  <11.790515, 15.746062, 25.698473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.959426, 15.575581, 25.696180>,  <12.240944, 15.291445, 25.692360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.959426, 15.575581, 25.696180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375572, 0.360631, 0.853751,
		0.603007, 0.604454, -0.520594,
		-0.703795, 0.710339, 0.009553,
		11.748287, 15.788682, 25.699047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.590014, 15.928073, 25.878761>,  <12.240944, 15.291445, 25.692360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.590014, 15.928073, 25.878761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.202544, 15.972064, 25.967827>,  <11.970063, 15.998459, 26.021265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.202544, 15.972064, 25.967827>,  <12.590014, 15.928073, 25.878761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.202544, 15.972064, 25.967827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247213, 0.341658, 0.906728,
		0.023646, 0.933367, -0.358143,
		-0.968673, 0.109978, 0.222662,
		11.911942, 16.005058, 26.034626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599417, 16.622257, 26.372568>,  <12.590014, 15.928073, 25.878761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599417, 16.622257, 26.372568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.276325, 16.391912, 26.423098>,  <12.082471, 16.253706, 26.453415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.276325, 16.391912, 26.423098>,  <12.599417, 16.622257, 26.372568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.276325, 16.391912, 26.423098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120038, 0.049144, 0.991552,
		-0.577206, 0.816068, 0.029431,
		-0.807728, -0.575863, 0.126325,
		12.034007, 16.219154, 26.460995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.290962, 16.880735, 26.976265>,  <12.599417, 16.622257, 26.372568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.290962, 16.880735, 26.976265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.143028, 16.509918, 26.951574>,  <12.054268, 16.287428, 26.936760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.143028, 16.509918, 26.951574>,  <12.290962, 16.880735, 26.976265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.143028, 16.509918, 26.951574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145963, -0.123586, 0.981540,
		-0.917560, 0.353999, 0.181020,
		-0.369836, -0.927044, -0.061727,
		12.032078, 16.231806, 26.933056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946219, 16.784122, 27.620523>,  <12.290962, 16.880735, 26.976265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946219, 16.784122, 27.620523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.978303, 16.403145, 27.502939>,  <11.997553, 16.174559, 27.432388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.978303, 16.403145, 27.502939>,  <11.946219, 16.784122, 27.620523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.978303, 16.403145, 27.502939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371368, -0.245126, 0.895544,
		-0.925015, -0.180999, 0.334046,
		0.080209, -0.952446, -0.293962,
		12.002366, 16.117411, 27.414751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.633734, 16.495655, 28.184608>,  <11.946219, 16.784122, 27.620523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.633734, 16.495655, 28.184608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.855655, 16.219820, 27.998421>,  <11.988808, 16.054319, 27.886707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.855655, 16.219820, 27.998421>,  <11.633734, 16.495655, 28.184608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855655, 16.219820, 27.998421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422936, -0.248026, 0.871555,
		-0.716462, -0.680406, 0.154046,
		0.554804, -0.689588, -0.465470,
		12.022096, 16.012943, 27.858780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.566436, 15.854651, 28.649515>,  <11.633734, 16.495655, 28.184608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.566436, 15.854651, 28.649515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.902115, 15.839024, 28.432547>,  <12.103522, 15.829647, 28.302366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.902115, 15.839024, 28.432547>,  <11.566436, 15.854651, 28.649515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.902115, 15.839024, 28.432547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482964, -0.404948, 0.776378,
		-0.249984, -0.913505, -0.320962,
		0.839198, -0.039069, -0.542421,
		12.153874, 15.827303, 28.269821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.881803, 15.198265, 28.830965>,  <11.566436, 15.854651, 28.649515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.881803, 15.198265, 28.830965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.174584, 15.439736, 28.704592>,  <12.350253, 15.584620, 28.628767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.174584, 15.439736, 28.704592>,  <11.881803, 15.198265, 28.830965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.174584, 15.439736, 28.704592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509645, -0.177325, 0.841913,
		0.452222, -0.777257, -0.437455,
		0.731954, 0.603678, -0.315935,
		12.394171, 15.620840, 28.609812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.596693, 14.768261, 28.902166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.692053, 15.156718, 28.899387>,  <12.749269, 15.389792, 28.897720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.692053, 15.156718, 28.899387>,  <12.596693, 14.768261, 28.902166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.692053, 15.156718, 28.899387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486330, -0.113188, 0.866413,
		0.840624, -0.209932, -0.499280,
		0.238400, 0.971142, -0.006948,
		12.763573, 15.448061, 28.897303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282190, 14.731444, 29.122419>,  <12.596693, 14.768261, 28.902166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282190, 14.731444, 29.122419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.213337, 15.122652, 29.169493>,  <13.172025, 15.357377, 29.197737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.213337, 15.122652, 29.169493>,  <13.282190, 14.731444, 29.122419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213337, 15.122652, 29.169493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593028, 0.007494, 0.805147,
		0.786567, 0.208382, -0.581282,
		-0.172134, 0.978019, 0.117681,
		13.161696, 15.416058, 29.204798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.916115, 15.091367, 29.144598>,  <13.282190, 14.731444, 29.122419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.916115, 15.091367, 29.144598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.651192, 15.306572, 29.353170>,  <13.492238, 15.435696, 29.478313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.651192, 15.306572, 29.353170>,  <13.916115, 15.091367, 29.144598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651192, 15.306572, 29.353170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653659, 0.074798, 0.753084,
		0.366167, 0.839611, -0.401216,
		-0.662308, 0.538013, 0.521431,
		13.452499, 15.467976, 29.509600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347542, 15.651954, 29.538143>,  <13.916115, 15.091367, 29.144598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.347542, 15.651954, 29.538143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.978347, 15.677100, 29.690008>,  <13.756830, 15.692188, 29.781128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.978347, 15.677100, 29.690008>,  <14.347542, 15.651954, 29.538143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.978347, 15.677100, 29.690008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379349, 0.314566, 0.870140,
		-0.064727, 0.947152, -0.314188,
		-0.922987, 0.062865, 0.379662,
		13.701450, 15.695960, 29.803907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309381, 16.295362, 29.859304>,  <14.347542, 15.651954, 29.538143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309381, 16.295362, 29.859304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.027137, 16.066666, 30.026745>,  <13.857791, 15.929448, 30.127209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.027137, 16.066666, 30.026745>,  <14.309381, 16.295362, 29.859304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.027137, 16.066666, 30.026745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284084, 0.312943, 0.906291,
		-0.649162, 0.758405, -0.058393,
		-0.705610, -0.571741, 0.418601,
		13.815454, 15.895144, 30.152325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959400, 16.734907, 30.218428>,  <14.309381, 16.295362, 29.859304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.959400, 16.734907, 30.218428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.899650, 16.380770, 30.394545>,  <13.863799, 16.168287, 30.500216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.899650, 16.380770, 30.394545>,  <13.959400, 16.734907, 30.218428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899650, 16.380770, 30.394545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304531, 0.382450, 0.872349,
		-0.940717, 0.264391, 0.212485,
		-0.149376, -0.885341, 0.440292,
		13.854836, 16.115168, 30.526632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641421, 16.930662, 30.759052>,  <13.959400, 16.734907, 30.218428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.641421, 16.930662, 30.759052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.793385, 16.570786, 30.845057>,  <13.884562, 16.354860, 30.896660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.793385, 16.570786, 30.845057>,  <13.641421, 16.930662, 30.759052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.793385, 16.570786, 30.845057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300549, 0.339881, 0.891152,
		-0.874838, -0.273934, 0.399524,
		0.379908, -0.899689, 0.215010,
		13.907357, 16.300879, 30.909559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.551750, 16.936869, 31.452791>,  <13.641421, 16.930662, 30.759052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.551750, 16.936869, 31.452791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.801856, 16.630865, 31.391075>,  <13.951920, 16.447264, 31.354046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.801856, 16.630865, 31.391075>,  <13.551750, 16.936869, 31.452791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801856, 16.630865, 31.391075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396558, 0.141175, 0.907090,
		-0.672150, -0.628356, 0.391642,
		0.625265, -0.765009, -0.154288,
		13.989435, 16.401361, 31.344790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378020, 16.430613, 31.919697>,  <13.551750, 16.936869, 31.452791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378020, 16.430613, 31.919697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.758184, 16.436375, 31.795431>,  <13.986283, 16.439833, 31.720873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.758184, 16.436375, 31.795431>,  <13.378020, 16.430613, 31.919697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758184, 16.436375, 31.795431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299655, 0.224890, 0.927163,
		0.083221, -0.974278, 0.209421,
		0.950411, 0.014405, -0.310662,
		14.043308, 16.440697, 31.702232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.614495, 16.250986, 32.492432>,  <13.378020, 16.430613, 31.919697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.614495, 16.250986, 32.492432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.910099, 16.384275, 32.258224>,  <14.087461, 16.464249, 32.117702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.910099, 16.384275, 32.258224>,  <13.614495, 16.250986, 32.492432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910099, 16.384275, 32.258224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338830, 0.567349, 0.750540,
		0.582299, -0.753041, 0.306362,
		0.739001, 0.333233, -0.585519,
		14.131802, 16.484241, 32.082569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.269011, 15.942405, 32.842266>,  <13.614495, 16.250986, 32.492432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.269011, 15.942405, 32.842266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.382690, 16.240448, 32.600922>,  <14.450898, 16.419273, 32.456116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.382690, 16.240448, 32.600922>,  <14.269011, 15.942405, 32.842266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382690, 16.240448, 32.600922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358318, 0.501167, 0.787680,
		0.889292, -0.440052, -0.124555,
		0.284198, 0.745108, -0.603362,
		14.467950, 16.463980, 32.419914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865481, 16.187494, 33.126266>,  <14.269011, 15.942405, 32.842266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865481, 16.187494, 33.126266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.742337, 16.500504, 32.909794>,  <14.668451, 16.688309, 32.779911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.742337, 16.500504, 32.909794>,  <14.865481, 16.187494, 33.126266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742337, 16.500504, 32.909794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265268, 0.616851, 0.741032,
		0.913704, 0.084575, -0.397482,
		-0.307860, 0.782523, -0.541184,
		14.649980, 16.735260, 32.747440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422000, 16.586624, 33.195438>,  <14.865481, 16.187494, 33.126266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422000, 16.586624, 33.195438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.116869, 16.824587, 33.094105>,  <14.933790, 16.967365, 33.033302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.116869, 16.824587, 33.094105>,  <15.422000, 16.586624, 33.195438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116869, 16.824587, 33.094105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281398, 0.658187, 0.698287,
		0.582158, 0.461385, -0.669489,
		-0.762828, 0.594906, -0.253336,
		14.888021, 17.003059, 33.018105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673445, 17.205730, 33.145332>,  <15.422000, 16.586624, 33.195438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673445, 17.205730, 33.145332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.280557, 17.254658, 33.202301>,  <15.044824, 17.284014, 33.236481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.280557, 17.254658, 33.202301>,  <15.673445, 17.205730, 33.145332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280557, 17.254658, 33.202301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187309, 0.689758, 0.699392,
		-0.012685, 0.713632, -0.700406,
		-0.982219, 0.122320, 0.142419,
		14.985891, 17.291353, 33.245026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620804, 17.900269, 33.301720>,  <15.673445, 17.205730, 33.145332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620804, 17.900269, 33.301720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.287072, 17.730597, 33.442554>,  <15.086833, 17.628794, 33.527054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.287072, 17.730597, 33.442554>,  <15.620804, 17.900269, 33.301720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.287072, 17.730597, 33.442554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133947, 0.463557, 0.875884,
		-0.534746, 0.777936, -0.329941,
		-0.834329, -0.424181, 0.352088,
		15.036774, 17.603342, 33.548180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175292, 18.402525, 33.500916>,  <15.620804, 17.900269, 33.301720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175292, 18.402525, 33.500916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.009264, 18.105644, 33.711384>,  <14.909647, 17.927515, 33.837666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.009264, 18.105644, 33.711384>,  <15.175292, 18.402525, 33.500916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.009264, 18.105644, 33.711384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127023, 0.525399, 0.841321,
		-0.900878, 0.416044, -0.123801,
		-0.415071, -0.742202, 0.526168,
		14.884743, 17.882984, 33.869236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.734419, 18.733179, 33.960571>,  <15.175292, 18.402525, 33.500916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.734419, 18.733179, 33.960571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.780710, 18.368479, 34.118214>,  <14.808485, 18.149658, 34.212799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.780710, 18.368479, 34.118214>,  <14.734419, 18.733179, 33.960571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.780710, 18.368479, 34.118214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067764, 0.403090, 0.912648,
		-0.990967, -0.078913, 0.108433,
		0.115728, -0.911752, 0.394102,
		14.815429, 18.094954, 34.236443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194144, 18.681461, 34.422813>,  <14.734419, 18.733179, 33.960571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194144, 18.681461, 34.422813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.488856, 18.428511, 34.518528>,  <14.665684, 18.276741, 34.575954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.488856, 18.428511, 34.518528>,  <14.194144, 18.681461, 34.422813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488856, 18.428511, 34.518528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012904, 0.366985, 0.930137,
		-0.676010, -0.682218, 0.278547,
		0.736779, -0.632377, 0.239282,
		14.709890, 18.238798, 34.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.988222, 18.346357, 34.993694>,  <14.194144, 18.681461, 34.422813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.988222, 18.346357, 34.993694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.384593, 18.297640, 35.016422>,  <14.622416, 18.268410, 35.030060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.384593, 18.297640, 35.016422>,  <13.988222, 18.346357, 34.993694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.384593, 18.297640, 35.016422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046310, 0.087422, 0.995094,
		-0.126164, -0.988698, 0.080988,
		0.990927, -0.121795, 0.056816,
		14.681871, 18.261101, 35.033466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178977, 17.829584, 35.574093>,  <13.988222, 18.346357, 34.993694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178977, 17.829584, 35.574093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.510584, 18.043140, 35.507530>,  <14.709548, 18.171274, 35.467594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.510584, 18.043140, 35.507530>,  <14.178977, 17.829584, 35.574093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.510584, 18.043140, 35.507530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064504, 0.204290, 0.976783,
		0.555491, -0.820503, 0.134922,
		0.829017, 0.533891, -0.166407,
		14.759289, 18.203308, 35.457607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.542707, 17.576101, 36.034866>,  <14.178977, 17.829584, 35.574093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.542707, 17.576101, 36.034866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.713195, 17.919855, 35.921875>,  <14.815487, 18.126108, 35.854080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.713195, 17.919855, 35.921875>,  <14.542707, 17.576101, 36.034866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.713195, 17.919855, 35.921875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197503, 0.216325, 0.956136,
		0.882797, -0.463312, -0.077530,
		0.426218, 0.859387, -0.282477,
		14.841061, 18.177671, 35.837132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224239, 17.636694, 36.236698>,  <14.542707, 17.576101, 36.034866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224239, 17.636694, 36.236698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.117998, 18.021278, 36.208279>,  <15.054254, 18.252029, 36.191227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.117998, 18.021278, 36.208279>,  <15.224239, 17.636694, 36.236698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117998, 18.021278, 36.208279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336788, 0.161582, 0.927613,
		0.903343, 0.222448, -0.366725,
		-0.265602, 0.961461, -0.071046,
		15.038318, 18.309717, 36.186966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034143, 17.589006, 36.410538>,  <15.224239, 17.636694, 36.236698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034143, 17.589006, 36.410538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.274776, 17.545826, 36.093945>,  <16.419155, 17.519918, 35.903988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.274776, 17.545826, 36.093945>,  <16.034143, 17.589006, 36.410538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274776, 17.545826, 36.093945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724824, -0.342695, 0.597655,
		-0.335754, -0.933224, -0.127914,
		0.601581, -0.107950, -0.791484,
		16.455250, 17.513441, 35.856499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219971, 16.923605, 36.478386>,  <16.034143, 17.589006, 36.410538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.219971, 16.923605, 36.478386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.481354, 17.139675, 36.266273>,  <16.638184, 17.269318, 36.139004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.481354, 17.139675, 36.266273>,  <16.219971, 16.923605, 36.478386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481354, 17.139675, 36.266273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739587, -0.306380, 0.599285,
		0.161251, -0.783800, -0.599713,
		0.653460, 0.540175, -0.530284,
		16.677391, 17.301727, 36.107189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997501, 16.971891, 36.737312>,  <16.219971, 16.923605, 36.478386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997501, 16.971891, 36.737312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.395388, 16.934902, 36.719479>,  <17.634119, 16.912708, 36.708778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.395388, 16.934902, 36.719479>,  <16.997501, 16.971891, 36.737312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395388, 16.934902, 36.719479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084797, -0.495281, -0.864584,
		0.057866, 0.863797, -0.500506,
		0.994717, -0.092471, -0.044587,
		17.693802, 16.907162, 36.706104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373112, 17.350283, 36.219505>,  <16.997501, 16.971891, 36.737312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373112, 17.350283, 36.219505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.580050, 17.016863, 36.297012>,  <17.704212, 16.816811, 36.343517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.580050, 17.016863, 36.297012>,  <17.373112, 17.350283, 36.219505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.580050, 17.016863, 36.297012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001628, -0.225470, -0.974249,
		0.855775, 0.504338, -0.115289,
		0.517345, -0.833551, 0.193772,
		17.735252, 16.766798, 36.355145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904015, 17.362873, 35.763058>,  <17.373112, 17.350283, 36.219505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.904015, 17.362873, 35.763058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.903225, 16.971394, 35.845177>,  <17.902752, 16.736506, 35.894447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.903225, 16.971394, 35.845177>,  <17.904015, 17.362873, 35.763058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.903225, 16.971394, 35.845177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166678, -0.202751, -0.964941,
		0.986010, 0.032315, 0.163527,
		-0.001973, -0.978697, 0.205301,
		17.902634, 16.677784, 35.906769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361736, 17.082035, 35.278553>,  <17.904015, 17.362873, 35.763058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361736, 17.082035, 35.278553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.161907, 16.759958, 35.406357>,  <18.042009, 16.566711, 35.483040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.161907, 16.759958, 35.406357>,  <18.361736, 17.082035, 35.278553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161907, 16.759958, 35.406357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138342, -0.438259, -0.888139,
		0.855154, -0.399488, 0.330335,
		-0.499573, -0.805194, 0.319513,
		18.012035, 16.518400, 35.502213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726034, 16.503006, 34.986866>,  <18.361736, 17.082035, 35.278553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726034, 16.503006, 34.986866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.360664, 16.368118, 35.078030>,  <18.141443, 16.287186, 35.132729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.360664, 16.368118, 35.078030>,  <18.726034, 16.503006, 34.986866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360664, 16.368118, 35.078030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000122, -0.559729, -0.828676,
		0.407013, -0.756959, 0.511228,
		-0.913422, -0.337219, 0.227909,
		18.086637, 16.266953, 35.146404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.738995, 15.911300, 34.830730>,  <18.726034, 16.503006, 34.986866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.738995, 15.911300, 34.830730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.341759, 15.958181, 34.833023>,  <18.103416, 15.986310, 34.834400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.341759, 15.958181, 34.833023>,  <18.738995, 15.911300, 34.830730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341759, 15.958181, 34.833023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054014, -0.413212, -0.909032,
		-0.104172, -0.903061, 0.416688,
		-0.993091, 0.117203, 0.005733,
		18.043831, 15.993342, 34.834743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421656, 15.259598, 34.477535>,  <18.738995, 15.911300, 34.830730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421656, 15.259598, 34.477535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.120056, 15.522227, 34.469543>,  <17.939096, 15.679805, 34.464748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.120056, 15.522227, 34.469543>,  <18.421656, 15.259598, 34.477535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120056, 15.522227, 34.469543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368520, -0.447991, -0.814553,
		-0.543767, -0.606806, 0.579745,
		-0.753996, 0.656574, -0.019983,
		17.893858, 15.719200, 34.463551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.753347, 14.874343, 34.549099>,  <18.421656, 15.259598, 34.477535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.753347, 14.874343, 34.549099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.697176, 15.227089, 34.369057>,  <17.663473, 15.438737, 34.261032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.697176, 15.227089, 34.369057>,  <17.753347, 14.874343, 34.549099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697176, 15.227089, 34.369057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399766, -0.466406, -0.789083,
		-0.905796, 0.069124, 0.418038,
		-0.140430, 0.881866, -0.450102,
		17.655046, 15.491649, 34.234028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978651, 14.784702, 34.191963>,  <17.753347, 14.874343, 34.549099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978651, 14.784702, 34.191963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.147985, 15.114083, 34.040855>,  <17.249586, 15.311712, 33.950191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.147985, 15.114083, 34.040855>,  <16.978651, 14.784702, 34.191963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147985, 15.114083, 34.040855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485367, -0.145952, -0.862043,
		-0.764987, 0.548293, 0.337890,
		0.423336, 0.823452, -0.377774,
		17.274986, 15.361119, 33.927525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519007, 15.264343, 34.019371>,  <16.978651, 14.784702, 34.191963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519007, 15.264343, 34.019371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.838192, 15.349383, 33.793785>,  <17.029703, 15.400408, 33.658432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.838192, 15.349383, 33.793785>,  <16.519007, 15.264343, 34.019371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838192, 15.349383, 33.793785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576222, -0.005230, -0.817277,
		-0.176704, 0.977125, 0.118332,
		0.797963, 0.212601, -0.563965,
		17.077581, 15.413164, 33.624596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220028, 15.635537, 33.535904>,  <16.519007, 15.264343, 34.019371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220028, 15.635537, 33.535904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.571682, 15.515681, 33.387669>,  <16.782675, 15.443768, 33.298729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.571682, 15.515681, 33.387669>,  <16.220028, 15.635537, 33.535904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.571682, 15.515681, 33.387669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383166, 0.017970, -0.923505,
		0.283379, 0.953883, -0.099014,
		0.879136, -0.299640, -0.370588,
		16.835423, 15.425789, 33.276493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.367559, 16.179552, 33.067913>,  <16.220028, 15.635537, 33.535904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.367559, 16.179552, 33.067913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.578112, 15.849227, 32.986965>,  <16.704443, 15.651031, 32.938396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.578112, 15.849227, 32.986965>,  <16.367559, 16.179552, 33.067913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578112, 15.849227, 32.986965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223995, 0.094915, -0.969957,
		0.820212, 0.555898, -0.135017,
		0.526383, -0.825814, -0.202369,
		16.736027, 15.601482, 32.926254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825592, 16.360912, 32.459927>,  <16.367559, 16.179552, 33.067913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825592, 16.360912, 32.459927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.755899, 15.967141, 32.469242>,  <16.714083, 15.730878, 32.474831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.755899, 15.967141, 32.469242>,  <16.825592, 16.360912, 32.459927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755899, 15.967141, 32.469242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056094, -0.013686, -0.998332,
		0.983106, -0.175248, -0.052836,
		-0.174232, -0.984429, 0.023285,
		16.703630, 15.671812, 32.476227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192974, 16.059597, 31.843794>,  <16.825592, 16.360912, 32.459927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192974, 16.059597, 31.843794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.957407, 15.759046, 31.962864>,  <16.816067, 15.578715, 32.034306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.957407, 15.759046, 31.962864>,  <17.192974, 16.059597, 31.843794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957407, 15.759046, 31.962864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181187, -0.236200, -0.954663,
		0.787622, -0.616151, 0.002962,
		-0.588916, -0.751377, 0.297675,
		16.780731, 15.533632, 32.052166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561510, 15.536927, 31.590149>,  <17.192974, 16.059597, 31.843794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.561510, 15.536927, 31.590149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.183790, 15.413948, 31.637087>,  <16.957157, 15.340160, 31.665249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.183790, 15.413948, 31.637087>,  <17.561510, 15.536927, 31.590149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183790, 15.413948, 31.637087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074574, -0.147379, -0.986265,
		0.320520, -0.940082, 0.116242,
		-0.944301, -0.307449, 0.117344,
		16.900499, 15.321713, 31.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.541950, 14.943695, 31.162676>,  <17.561510, 15.536927, 31.590149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.541950, 14.943695, 31.162676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.160677, 15.040796, 31.234802>,  <16.931913, 15.099057, 31.278078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.160677, 15.040796, 31.234802>,  <17.541950, 14.943695, 31.162676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160677, 15.040796, 31.234802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253164, -0.314485, -0.914881,
		-0.165382, -0.917698, 0.361218,
		-0.953182, 0.242753, 0.180318,
		16.874722, 15.113623, 31.288897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.094999, 14.332082, 31.149244>,  <17.541950, 14.943695, 31.162676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.094999, 14.332082, 31.149244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.847059, 14.642135, 31.100325>,  <16.698296, 14.828166, 31.070972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.847059, 14.642135, 31.100325>,  <17.094999, 14.332082, 31.149244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847059, 14.642135, 31.100325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357633, -0.417764, -0.835208,
		-0.698488, -0.473965, 0.536163,
		-0.619849, 0.775132, -0.122298,
		16.661104, 14.874674, 31.063635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407700, 14.007407, 31.007170>,  <17.094999, 14.332082, 31.149244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.407700, 14.007407, 31.007170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.403807, 14.378838, 30.858763>,  <16.401470, 14.601696, 30.769718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.403807, 14.378838, 30.858763>,  <16.407700, 14.007407, 31.007170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403807, 14.378838, 30.858763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452039, -0.335042, -0.826685,
		-0.891945, 0.159668, 0.423013,
		-0.009732, 0.928576, -0.371015,
		16.400887, 14.657411, 30.747458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854530, 13.949419, 30.671312>,  <16.407700, 14.007407, 31.007170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854530, 13.949419, 30.671312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.003103, 14.295244, 30.535921>,  <16.092247, 14.502739, 30.454685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.003103, 14.295244, 30.535921>,  <15.854530, 13.949419, 30.671312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003103, 14.295244, 30.535921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439272, -0.157539, -0.884433,
		-0.817971, 0.477193, 0.321263,
		0.371433, 0.864563, -0.338480,
		16.114532, 14.554613, 30.434378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319210, 14.216061, 30.294188>,  <15.854530, 13.949419, 30.671312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319210, 14.216061, 30.294188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.639037, 14.406492, 30.147743>,  <15.830934, 14.520751, 30.059875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.639037, 14.406492, 30.147743>,  <15.319210, 14.216061, 30.294188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.639037, 14.406492, 30.147743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361250, -0.105743, -0.926454,
		-0.479779, 0.873022, 0.087435,
		0.799569, 0.476079, -0.366113,
		15.878908, 14.549316, 30.037909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.971695, 26.200029, 11.248740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.171968, 25.871469, 11.358006>,  <20.292133, 25.674334, 11.423565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.171968, 25.871469, 11.358006>,  <19.971695, 26.200029, 11.248740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.171968, 25.871469, 11.358006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697112, -0.195530, 0.689785,
		-0.513178, -0.535789, -0.670506,
		0.500684, -0.821400, 0.273163,
		20.322174, 25.625050, 11.439955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410442, 25.789976, 11.592598>,  <19.971695, 26.200029, 11.248740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410442, 25.789976, 11.592598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.748121, 25.616413, 11.718492>,  <19.950729, 25.512276, 11.794028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.748121, 25.616413, 11.718492>,  <19.410442, 25.789976, 11.592598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748121, 25.616413, 11.718492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438657, -0.221755, 0.870864,
		-0.308083, -0.873239, -0.377542,
		0.844195, -0.433910, 0.314733,
		20.001381, 25.486242, 11.812912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286613, 25.137293, 12.009916>,  <19.410442, 25.789976, 11.592598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286613, 25.137293, 12.009916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.647415, 25.255571, 12.135741>,  <19.863895, 25.326538, 12.211236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.647415, 25.255571, 12.135741>,  <19.286613, 25.137293, 12.009916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.647415, 25.255571, 12.135741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232858, -0.280328, 0.931232,
		0.363545, -0.913224, -0.184002,
		0.902004, 0.295698, 0.314563,
		19.918016, 25.344280, 12.230110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165129, 24.830854, 12.645776>,  <19.286613, 25.137293, 12.009916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165129, 24.830854, 12.645776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.510256, 25.032635, 12.658892>,  <19.717333, 25.153704, 12.666761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.510256, 25.032635, 12.658892>,  <19.165129, 24.830854, 12.645776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.510256, 25.032635, 12.658892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089672, -0.216565, 0.972141,
		0.497498, -0.835840, -0.232092,
		0.862818, 0.504450, 0.032789,
		19.769102, 25.183969, 12.668729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371576, 24.206570, 13.173789>,  <19.165129, 24.830854, 12.645776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371576, 24.206570, 13.173789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.636183, 24.006306, 12.950456>,  <19.794947, 23.886148, 12.816456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.636183, 24.006306, 12.950456>,  <19.371576, 24.206570, 13.173789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636183, 24.006306, 12.950456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421458, -0.864013, 0.275416,
		-0.620297, 0.053122, -0.782566,
		0.661517, -0.500659, -0.558334,
		19.834639, 23.856108, 12.782955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.030535, 23.645300, 12.750052>,  <19.371576, 24.206570, 13.173789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.030535, 23.645300, 12.750052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.406042, 23.551395, 12.850927>,  <19.631348, 23.495052, 12.911452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.406042, 23.551395, 12.850927>,  <19.030535, 23.645300, 12.750052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406042, 23.551395, 12.850927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309567, -0.896044, 0.318235,
		0.151262, -0.376819, -0.913853,
		0.938769, -0.234762, 0.252188,
		19.687674, 23.480967, 12.926583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.112534, 22.915287, 12.671171>,  <19.030535, 23.645300, 12.750052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.112534, 22.915287, 12.671171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.418245, 23.008183, 12.911818>,  <19.601673, 23.063919, 13.056206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.418245, 23.008183, 12.911818>,  <19.112534, 22.915287, 12.671171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.418245, 23.008183, 12.911818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061935, -0.902158, 0.426936,
		0.641904, -0.363559, -0.675117,
		0.764279, 0.232239, 0.601616,
		19.647530, 23.077854, 13.092302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491444, 22.298500, 12.686411>,  <19.112534, 22.915287, 12.671171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.491444, 22.298500, 12.686411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.512798, 22.520002, 13.018797>,  <19.525612, 22.652905, 13.218228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.512798, 22.520002, 13.018797>,  <19.491444, 22.298500, 12.686411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512798, 22.520002, 13.018797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359269, -0.765777, 0.533397,
		0.931706, -0.327017, 0.158064,
		0.053389, 0.553756, 0.830965,
		19.528814, 22.686129, 13.268086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988811, 21.992113, 13.156400>,  <19.491444, 22.298500, 12.686411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988811, 21.992113, 13.156400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.698101, 22.213345, 13.319325>,  <19.523676, 22.346083, 13.417081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.698101, 22.213345, 13.319325>,  <19.988811, 21.992113, 13.156400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.698101, 22.213345, 13.319325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288127, -0.783778, 0.550159,
		0.623524, 0.282483, 0.728986,
		-0.726774, 0.553078, 0.407314,
		19.480068, 22.379269, 13.441520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.927608, 21.868959, 13.935575>,  <19.988811, 21.992113, 13.156400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.927608, 21.868959, 13.935575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.576542, 22.011284, 13.807137>,  <19.365902, 22.096680, 13.730074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.576542, 22.011284, 13.807137>,  <19.927608, 21.868959, 13.935575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.576542, 22.011284, 13.807137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474110, -0.742647, 0.472965,
		-0.070172, 0.567339, 0.820489,
		-0.877665, 0.355813, -0.321094,
		19.313242, 22.118029, 13.710808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522625, 21.707008, 14.467497>,  <19.927608, 21.868959, 13.935575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522625, 21.707008, 14.467497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.245651, 21.783342, 14.189182>,  <19.079468, 21.829142, 14.022193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.245651, 21.783342, 14.189182>,  <19.522625, 21.707008, 14.467497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.245651, 21.783342, 14.189182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635095, -0.618806, 0.462313,
		-0.342332, 0.762011, 0.549679,
		-0.692433, 0.190834, -0.695787,
		19.037922, 21.840593, 13.980446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942259, 21.668482, 14.839703>,  <19.522625, 21.707008, 14.467497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942259, 21.668482, 14.839703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.842640, 21.603363, 14.457818>,  <18.782867, 21.564293, 14.228687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.842640, 21.603363, 14.457818>,  <18.942259, 21.668482, 14.839703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842640, 21.603363, 14.457818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673708, -0.679061, 0.291538,
		-0.695767, 0.715803, 0.059443,
		-0.249049, -0.162795, -0.954710,
		18.767925, 21.554525, 14.171405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203047, 21.742483, 14.760178>,  <18.942259, 21.668482, 14.839703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203047, 21.742483, 14.760178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.315323, 21.513315, 14.452158>,  <18.382689, 21.375814, 14.267346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.315323, 21.513315, 14.452158>,  <18.203047, 21.742483, 14.760178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315323, 21.513315, 14.452158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643426, -0.707645, 0.291961,
		-0.712194, 0.413525, -0.567254,
		0.280681, -0.572919, -0.770053,
		18.399529, 21.341438, 14.221144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.535454, 21.633631, 14.403986>,  <18.203047, 21.742483, 14.760178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.535454, 21.633631, 14.403986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.790884, 21.358370, 14.266193>,  <17.944141, 21.193213, 14.183517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.790884, 21.358370, 14.266193>,  <17.535454, 21.633631, 14.403986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.790884, 21.358370, 14.266193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688203, -0.710975, 0.144538,
		-0.344381, 0.144775, -0.927600,
		0.638575, -0.688154, -0.344481,
		17.982456, 21.151924, 14.162849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099562, 21.132959, 14.032490>,  <17.535454, 21.633631, 14.403986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099562, 21.132959, 14.032490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.426060, 20.920530, 14.123445>,  <17.621958, 20.793072, 14.178018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.426060, 20.920530, 14.123445>,  <17.099562, 21.132959, 14.032490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426060, 20.920530, 14.123445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572544, -0.796152, 0.195791,
		0.077055, -0.290002, -0.953919,
		0.816244, -0.531074, 0.227387,
		17.670933, 20.761208, 14.191661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.030582, 20.442926, 13.684352>,  <17.099562, 21.132959, 14.032490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.030582, 20.442926, 13.684352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.298510, 20.421545, 13.980591>,  <17.459267, 20.408716, 14.158335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.298510, 20.421545, 13.980591>,  <17.030582, 20.442926, 13.684352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.298510, 20.421545, 13.980591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442725, -0.829471, 0.340547,
		0.596102, -0.555986, -0.579260,
		0.669819, -0.053452, 0.740598,
		17.499454, 20.405510, 14.202770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875202, 19.881639, 14.025518>,  <17.030582, 20.442926, 13.684352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875202, 19.881639, 14.025518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.133837, 19.996189, 14.308338>,  <17.289017, 20.064919, 14.478029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.133837, 19.996189, 14.308338>,  <16.875202, 19.881639, 14.025518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133837, 19.996189, 14.308338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323331, -0.736605, 0.594028,
		0.690930, -0.612700, -0.383684,
		0.646585, 0.286375, 0.707048,
		17.327812, 20.082102, 14.520452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228323, 19.300079, 14.184247>,  <16.875202, 19.881639, 14.025518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228323, 19.300079, 14.184247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.270231, 19.553650, 14.490753>,  <17.295376, 19.705791, 14.674657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.270231, 19.553650, 14.490753>,  <17.228323, 19.300079, 14.184247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270231, 19.553650, 14.490753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411416, -0.673852, 0.613727,
		0.905406, -0.379555, 0.190207,
		0.104772, 0.633926, 0.766264,
		17.301662, 19.743828, 14.720633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496044, 18.928558, 14.769692>,  <17.228323, 19.300079, 14.184247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496044, 18.928558, 14.769692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.347805, 19.257160, 14.943030>,  <17.258862, 19.454321, 15.047033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.347805, 19.257160, 14.943030>,  <17.496044, 18.928558, 14.769692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347805, 19.257160, 14.943030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249151, -0.537397, 0.805685,
		0.894752, 0.190617, 0.403837,
		-0.370598, 0.821504, 0.433345,
		17.236626, 19.503611, 15.073033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928621, 19.173325, 15.272574>,  <17.496044, 18.928558, 14.769692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928621, 19.173325, 15.272574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.563023, 19.298061, 15.376391>,  <17.343662, 19.372904, 15.438682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.563023, 19.298061, 15.376391>,  <17.928621, 19.173325, 15.272574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563023, 19.298061, 15.376391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068477, -0.511967, 0.856272,
		0.399897, 0.800404, 0.446583,
		-0.913998, 0.311840, 0.259543,
		17.288822, 19.391613, 15.454254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886976, 18.957825, 15.834860>,  <17.928621, 19.173325, 15.272574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886976, 18.957825, 15.834860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.501596, 19.063482, 15.817019>,  <17.270369, 19.126877, 15.806315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.501596, 19.063482, 15.817019>,  <17.886976, 18.957825, 15.834860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501596, 19.063482, 15.817019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158245, -0.426851, 0.890369,
		0.216147, 0.864885, 0.453050,
		-0.963452, 0.264144, -0.044601,
		17.212561, 19.142725, 15.803639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712017, 19.209042, 16.486536>,  <17.886976, 18.957825, 15.834860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712017, 19.209042, 16.486536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.351292, 19.150320, 16.323965>,  <17.134857, 19.115088, 16.226423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.351292, 19.150320, 16.323965>,  <17.712017, 19.209042, 16.486536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351292, 19.150320, 16.323965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353150, -0.291649, 0.888946,
		-0.249036, 0.945193, 0.211168,
		-0.901813, -0.146805, -0.406426,
		17.080748, 19.106277, 16.202038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242622, 19.410656, 17.000278>,  <17.712017, 19.209042, 16.486536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242622, 19.410656, 17.000278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.039938, 19.185038, 16.739481>,  <16.918327, 19.049665, 16.583002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.039938, 19.185038, 16.739481>,  <17.242622, 19.410656, 17.000278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039938, 19.185038, 16.739481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361843, -0.547288, 0.754682,
		-0.782504, 0.618326, 0.073222,
		-0.506713, -0.564047, -0.651992,
		16.887924, 19.015823, 16.543884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400223, 19.380007, 17.129189>,  <17.242622, 19.410656, 17.000278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400223, 19.380007, 17.129189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.536600, 19.050743, 16.947567>,  <16.618427, 18.853186, 16.838594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.536600, 19.050743, 16.947567>,  <16.400223, 19.380007, 17.129189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536600, 19.050743, 16.947567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305733, -0.553828, 0.774468,
		-0.888979, -0.125230, -0.440491,
		0.340944, -0.823159, -0.454055,
		16.638884, 18.803795, 16.811350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886592, 18.877981, 17.369596>,  <16.400223, 19.380007, 17.129189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886592, 18.877981, 17.369596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.162516, 18.634146, 17.213360>,  <16.328070, 18.487844, 17.119617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.162516, 18.634146, 17.213360>,  <15.886592, 18.877981, 17.369596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.162516, 18.634146, 17.213360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245102, -0.704272, 0.666278,
		-0.681238, -0.363872, -0.635226,
		0.689812, -0.609589, -0.390591,
		16.369459, 18.451269, 17.096182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637895, 18.291288, 17.173271>,  <15.886592, 18.877981, 17.369596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.637895, 18.291288, 17.173271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.017084, 18.181767, 17.238234>,  <16.244598, 18.116053, 17.277212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.017084, 18.181767, 17.238234>,  <15.637895, 18.291288, 17.173271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017084, 18.181767, 17.238234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301010, -0.604855, 0.737254,
		-0.103632, -0.747784, -0.655805,
		0.947973, -0.273807, 0.162408,
		16.301476, 18.099625, 17.286957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657894, 17.541227, 17.188238>,  <15.637895, 18.291288, 17.173271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.657894, 17.541227, 17.188238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.991158, 17.654575, 17.378206>,  <16.191114, 17.722584, 17.492188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.991158, 17.654575, 17.378206>,  <15.657894, 17.541227, 17.188238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991158, 17.654575, 17.378206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114037, -0.752271, 0.648910,
		0.541151, -0.594803, -0.594445,
		0.833157, 0.283370, 0.474922,
		16.241104, 17.739586, 17.520683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086100, 16.810055, 17.251749>,  <15.657894, 17.541227, 17.188238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086100, 16.810055, 17.251749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.253473, 17.068501, 17.507076>,  <16.353897, 17.223568, 17.660273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.253473, 17.068501, 17.507076>,  <16.086100, 16.810055, 17.251749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253473, 17.068501, 17.507076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100528, -0.731430, 0.674465,
		0.902666, -0.218051, -0.371009,
		0.418435, 0.646114, 0.638317,
		16.379004, 17.262335, 17.698572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760723, 16.451874, 17.440893>,  <16.086100, 16.810055, 17.251749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760723, 16.451874, 17.440893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.636856, 16.720947, 17.709700>,  <16.562536, 16.882391, 17.870983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.636856, 16.720947, 17.709700>,  <16.760723, 16.451874, 17.440893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636856, 16.720947, 17.709700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348340, -0.577361, 0.738454,
		0.884740, 0.462765, -0.055532,
		-0.309668, 0.672684, 0.672014,
		16.543955, 16.922752, 17.911304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210024, 16.439455, 17.972975>,  <16.760723, 16.451874, 17.440893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210024, 16.439455, 17.972975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.901758, 16.626186, 18.146481>,  <16.716799, 16.738224, 18.250584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.901758, 16.626186, 18.146481>,  <17.210024, 16.439455, 17.972975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901758, 16.626186, 18.146481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208079, -0.459027, 0.863711,
		0.602313, 0.755888, 0.256619,
		-0.770664, 0.466827, 0.433762,
		16.670559, 16.766235, 18.276609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374998, 16.778156, 18.522121>,  <17.210024, 16.439455, 17.972975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374998, 16.778156, 18.522121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.987574, 16.687063, 18.562178>,  <16.755119, 16.632408, 18.586212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.987574, 16.687063, 18.562178>,  <17.374998, 16.778156, 18.522121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987574, 16.687063, 18.562178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216851, -0.575565, 0.788480,
		-0.121926, 0.785406, 0.606854,
		-0.968561, -0.227733, 0.100140,
		16.697006, 16.618744, 18.592220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588722, 16.471775, 19.156269>,  <17.374998, 16.778156, 18.522121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588722, 16.471775, 19.156269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.195650, 16.455915, 19.083860>,  <16.959806, 16.446400, 19.040415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.195650, 16.455915, 19.083860>,  <17.588722, 16.471775, 19.156269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195650, 16.455915, 19.083860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113630, -0.642729, 0.757620,
		-0.146388, 0.765067, 0.627091,
		-0.982679, -0.039650, -0.181022,
		16.900846, 16.444021, 19.029554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292027, 16.650404, 18.993391>,  <17.588722, 16.471775, 19.156269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292027, 16.650404, 18.993391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.517588, 16.624203, 19.322687>,  <18.652925, 16.608482, 19.520264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.517588, 16.624203, 19.322687>,  <18.292027, 16.650404, 18.993391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517588, 16.624203, 19.322687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020995, -0.997664, -0.065003,
		0.825573, 0.019372, -0.563962,
		0.563904, -0.065505, 0.823238,
		18.686760, 16.604551, 19.569658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837864, 16.262735, 18.807518>,  <18.292027, 16.650404, 18.993391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837864, 16.262735, 18.807518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.729870, 16.264929, 19.192657>,  <18.665073, 16.266245, 19.423740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.729870, 16.264929, 19.192657>,  <18.837864, 16.262735, 18.807518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.729870, 16.264929, 19.192657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180776, -0.982490, -0.045095,
		0.945742, -0.186235, 0.266250,
		-0.269986, 0.005483, 0.962849,
		18.648874, 16.266573, 19.481512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562939, 16.525167, 18.637583>,  <18.837864, 16.262735, 18.807518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562939, 16.525167, 18.637583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.947943, 16.632032, 18.618845>,  <20.178946, 16.696152, 18.607603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.947943, 16.632032, 18.618845>,  <19.562939, 16.525167, 18.637583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947943, 16.632032, 18.618845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254335, -0.948982, -0.186407,
		-0.094255, 0.167505, -0.981355,
		0.962512, 0.267162, -0.046844,
		20.236696, 16.712181, 18.604792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916460, 16.372509, 17.928625>,  <19.562939, 16.525167, 18.637583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916460, 16.372509, 17.928625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.138105, 16.352108, 18.260977>,  <20.271091, 16.339869, 18.460388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.138105, 16.352108, 18.260977>,  <19.916460, 16.372509, 17.928625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138105, 16.352108, 18.260977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072059, -0.991436, -0.108911,
		0.829318, 0.120221, -0.545691,
		0.554111, -0.051000, 0.830879,
		20.304338, 16.336807, 18.510241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646231, 16.032187, 17.812096>,  <19.916460, 16.372509, 17.928625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646231, 16.032187, 17.812096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.507639, 15.992385, 18.185202>,  <20.424484, 15.968504, 18.409065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.507639, 15.992385, 18.185202>,  <20.646231, 16.032187, 17.812096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.507639, 15.992385, 18.185202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142272, -0.988429, -0.052593,
		0.927206, 0.114484, 0.356625,
		-0.346478, -0.099503, 0.932766,
		20.403696, 15.962534, 18.465031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.180317, 16.502405, 17.356834>,  <20.646231, 16.032187, 17.812096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.180317, 16.502405, 17.356834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455431, 16.497240, 17.066515>,  <21.620501, 16.494141, 16.892324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455431, 16.497240, 17.066515>,  <21.180317, 16.502405, 17.356834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455431, 16.497240, 17.066515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481565, 0.740036, -0.469511,
		0.543179, 0.672443, 0.502769,
		0.687787, -0.012912, -0.725798,
		21.661768, 16.493366, 16.848776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.444620, 17.089153, 17.141430>,  <21.180317, 16.502405, 17.356834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.444620, 17.089153, 17.141430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.575130, 16.937082, 16.795250>,  <21.653437, 16.845840, 16.587542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.575130, 16.937082, 16.795250>,  <21.444620, 17.089153, 17.141430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.575130, 16.937082, 16.795250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226404, 0.857479, -0.462030,
		0.917760, 0.346692, 0.193702,
		0.326278, -0.380178, -0.865452,
		21.673014, 16.823029, 16.535614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879673, 17.688356, 16.796783>,  <21.444620, 17.089153, 17.141430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879673, 17.688356, 16.796783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731960, 17.426508, 16.532934>,  <21.643332, 17.269400, 16.374624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.731960, 17.426508, 16.532934>,  <21.879673, 17.688356, 16.796783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731960, 17.426508, 16.532934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358297, 0.755210, -0.548891,
		0.857469, 0.033645, -0.513435,
		-0.369284, -0.654619, -0.659624,
		21.621176, 17.230122, 16.335047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925085, 18.049997, 16.130592>,  <21.879673, 17.688356, 16.796783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925085, 18.049997, 16.130592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.653477, 17.762518, 16.070723>,  <21.490511, 17.590031, 16.034801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.653477, 17.762518, 16.070723>,  <21.925085, 18.049997, 16.130592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.653477, 17.762518, 16.070723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623287, 0.672119, -0.399712,
		0.387872, -0.178123, -0.904338,
		-0.679020, -0.718699, -0.149675,
		21.449770, 17.546907, 16.025820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.684996, 17.984188, 15.392370>,  <21.925085, 18.049997, 16.130592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.684996, 17.984188, 15.392370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.400314, 17.847916, 15.638106>,  <21.229506, 17.766153, 15.785548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.400314, 17.847916, 15.638106>,  <21.684996, 17.984188, 15.392370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.400314, 17.847916, 15.638106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692484, 0.487247, -0.532030,
		-0.118084, -0.804070, -0.582691,
		-0.711703, -0.340679, 0.614342,
		21.186804, 17.745712, 15.822409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.079031, 17.883150, 14.980584>,  <21.684996, 17.984188, 15.392370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.079031, 17.883150, 14.980584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.917385, 17.863382, 15.345933>,  <20.820398, 17.851522, 15.565143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.917385, 17.863382, 15.345933>,  <21.079031, 17.883150, 14.980584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.917385, 17.863382, 15.345933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844867, 0.402853, -0.352008,
		-0.350558, -0.913930, -0.204552,
		-0.404115, -0.049419, 0.913372,
		20.796150, 17.848557, 15.619945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386570, 17.722908, 14.828310>,  <21.079031, 17.883150, 14.980584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386570, 17.722908, 14.828310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.355913, 17.863060, 15.201696>,  <20.337519, 17.947151, 15.425729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.355913, 17.863060, 15.201696>,  <20.386570, 17.722908, 14.828310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.355913, 17.863060, 15.201696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777716, 0.564849, -0.275870,
		-0.623927, -0.747114, 0.229206,
		-0.076640, 0.350379, 0.933467,
		20.332922, 17.968174, 15.481736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205135, 16.972332, 14.707372>,  <20.386570, 17.722908, 14.828310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205135, 16.972332, 14.707372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031071, 17.270874, 14.505940>,  <19.926632, 17.449999, 14.385081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031071, 17.270874, 14.505940>,  <20.205135, 16.972332, 14.707372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031071, 17.270874, 14.505940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845250, 0.531316, 0.057054,
		0.310142, -0.400822, -0.862064,
		-0.435160, 0.746354, -0.503578,
		19.900522, 17.494780, 14.354867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659533, 17.179037, 14.035213>,  <20.205135, 16.972332, 14.707372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659533, 17.179037, 14.035213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.436554, 17.476200, 14.183452>,  <20.302767, 17.654497, 14.272394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.436554, 17.476200, 14.183452>,  <20.659533, 17.179037, 14.035213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436554, 17.476200, 14.183452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795783, 0.605357, -0.016511,
		-0.236609, 0.285710, -0.928648,
		-0.557446, 0.742908, 0.370596,
		20.269320, 17.699072, 14.294630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584545, 17.877197, 13.553477>,  <20.659533, 17.179037, 14.035213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584545, 17.877197, 13.553477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.556000, 17.956287, 13.944540>,  <20.538872, 18.003740, 14.179177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.556000, 17.956287, 13.944540>,  <20.584545, 17.877197, 13.553477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556000, 17.956287, 13.944540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903769, 0.427530, -0.020495,
		-0.422030, 0.882113, -0.209206,
		-0.071363, 0.197724, 0.977657,
		20.534592, 18.015604, 14.237837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202253, 18.154068, 13.559505>,  <20.584545, 17.877197, 13.553477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202253, 18.154068, 13.559505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.090054, 18.121904, 13.942098>,  <21.022734, 18.102606, 14.171653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.090054, 18.121904, 13.942098>,  <21.202253, 18.154068, 13.559505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.090054, 18.121904, 13.942098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899864, 0.324730, 0.291196,
		-0.334013, 0.942382, -0.018729,
		-0.280500, -0.080410, 0.956480,
		21.005903, 18.097782, 14.229042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393915, 18.797266, 14.029935>,  <21.202253, 18.154068, 13.559505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393915, 18.797266, 14.029935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.363546, 18.468048, 14.255086>,  <21.345325, 18.270517, 14.390177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.363546, 18.468048, 14.255086>,  <21.393915, 18.797266, 14.029935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363546, 18.468048, 14.255086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798273, 0.288092, 0.528926,
		-0.597491, 0.489489, 0.635142,
		-0.075924, -0.823045, 0.562878,
		21.340769, 18.221134, 14.423949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.823069, 19.403767, 13.937320>,  <21.393915, 18.797266, 14.029935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.823069, 19.403767, 13.937320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.954239, 19.549486, 14.285975>,  <22.032942, 19.636917, 14.495168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.954239, 19.549486, 14.285975>,  <21.823069, 19.403767, 13.937320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.954239, 19.549486, 14.285975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417507, 0.883548, -0.212202,
		-0.847439, -0.294329, 0.441835,
		0.327925, 0.364298, 0.871638,
		22.052616, 19.658775, 14.547466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.223385, 19.754683, 14.261386>,  <21.823069, 19.403767, 13.937320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.223385, 19.754683, 14.261386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.563456, 19.912184, 14.401190>,  <21.767498, 20.006685, 14.485072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.563456, 19.912184, 14.401190>,  <21.223385, 19.754683, 14.261386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.563456, 19.912184, 14.401190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302152, 0.908534, -0.288565,
		-0.431164, 0.139727, 0.891389,
		0.850177, 0.393754, 0.349509,
		21.818508, 20.030310, 14.506042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.989464, 20.369909, 14.642371>,  <21.223385, 19.754683, 14.261386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.989464, 20.369909, 14.642371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.374920, 20.454777, 14.577398>,  <21.606194, 20.505697, 14.538415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.374920, 20.454777, 14.577398>,  <20.989464, 20.369909, 14.642371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374920, 20.454777, 14.577398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234084, 0.963450, -0.130262,
		0.128857, 0.163549, 0.978084,
		0.963639, 0.212169, -0.162432,
		21.664011, 20.518427, 14.528668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<10.612332, 16.024338, 26.302235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006282, 16.008217, 26.234825>,  <11.242652, 15.998545, 26.194380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006282, 16.008217, 26.234825>,  <10.612332, 16.024338, 26.302235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.006282, 16.008217, 26.234825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172146, -0.116711, -0.978133,
		0.019752, 0.992348, -0.121883,
		0.984874, -0.040301, -0.168523,
		11.301744, 15.996126, 26.184269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.660394, 16.449532, 25.663589>,  <10.612332, 16.024338, 26.302235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.660394, 16.449532, 25.663589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.995012, 16.234442, 25.705620>,  <11.195784, 16.105387, 25.730839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.995012, 16.234442, 25.705620>,  <10.660394, 16.449532, 25.663589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.995012, 16.234442, 25.705620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076683, -0.304804, -0.949323,
		0.542504, 0.786095, -0.296216,
		0.836546, -0.537726, 0.105077,
		11.245976, 16.073124, 25.737143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.149845, 16.743910, 25.134409>,  <10.660394, 16.449532, 25.663589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.149845, 16.743910, 25.134409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.245377, 16.370991, 25.243063>,  <11.302695, 16.147240, 25.308254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.245377, 16.370991, 25.243063>,  <11.149845, 16.743910, 25.134409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.245377, 16.370991, 25.243063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028364, -0.272911, -0.961621,
		0.970647, 0.237367, -0.038735,
		0.238828, -0.932297, 0.271633,
		11.317025, 16.091301, 25.324553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.584124, 16.604345, 24.600410>,  <11.149845, 16.743910, 25.134409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.584124, 16.604345, 24.600410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.490947, 16.242958, 24.744345>,  <11.435040, 16.026125, 24.830706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.490947, 16.242958, 24.744345>,  <11.584124, 16.604345, 24.600410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.490947, 16.242958, 24.744345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329777, -0.274707, -0.903207,
		0.914869, -0.329062, -0.233952,
		-0.232943, -0.903468, 0.359838,
		11.421064, 15.971918, 24.852297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.978239, 16.156712, 24.087543>,  <11.584124, 16.604345, 24.600410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.978239, 16.156712, 24.087543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725957, 15.903900, 24.267654>,  <11.574588, 15.752213, 24.375721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725957, 15.903900, 24.267654>,  <11.978239, 16.156712, 24.087543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725957, 15.903900, 24.267654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130983, -0.485213, -0.864530,
		0.764888, -0.604243, 0.223242,
		-0.630706, -0.632027, 0.450279,
		11.536745, 15.714292, 24.402739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.256549, 15.408305, 23.969542>,  <11.978239, 16.156712, 24.087543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.256549, 15.408305, 23.969542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.867185, 15.444862, 24.053560>,  <11.633566, 15.466797, 24.103971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.867185, 15.444862, 24.053560>,  <12.256549, 15.408305, 23.969542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.867185, 15.444862, 24.053560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227770, -0.483621, -0.845122,
		0.024345, -0.870493, 0.491578,
		-0.973411, 0.091393, 0.210046,
		11.575161, 15.472281, 24.116573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998923, 14.799987, 23.869089>,  <12.256549, 15.408305, 23.969542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998923, 14.799987, 23.869089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.680786, 15.039740, 23.832932>,  <11.489904, 15.183591, 23.811237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.680786, 15.039740, 23.832932>,  <11.998923, 14.799987, 23.869089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.680786, 15.039740, 23.832932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194211, -0.393242, -0.898690,
		-0.574206, -0.697210, 0.429169,
		-0.795342, 0.599382, -0.090396,
		11.442183, 15.219554, 23.805813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.584027, 14.409635, 23.480942>,  <11.998923, 14.799987, 23.869089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.584027, 14.409635, 23.480942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410666, 14.761603, 23.403070>,  <11.306648, 14.972784, 23.356348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410666, 14.761603, 23.403070>,  <11.584027, 14.409635, 23.480942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.410666, 14.761603, 23.403070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148214, -0.282677, -0.947695,
		-0.888928, -0.381881, 0.252930,
		-0.433404, 0.879921, -0.194679,
		11.280644, 15.025579, 23.344667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993879, 14.269504, 23.018021>,  <11.584027, 14.409635, 23.480942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993879, 14.269504, 23.018021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.027321, 14.665530, 22.972799>,  <11.047386, 14.903146, 22.945667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.027321, 14.665530, 22.972799>,  <10.993879, 14.269504, 23.018021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.027321, 14.665530, 22.972799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157668, -0.098878, -0.982529,
		-0.983947, 0.099968, 0.147835,
		0.083604, 0.990066, -0.113052,
		11.052402, 14.962550, 22.938883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.395299, 14.516579, 22.581860>,  <10.993879, 14.269504, 23.018021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.395299, 14.516579, 22.581860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.702169, 14.772327, 22.561283>,  <10.886292, 14.925776, 22.548937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.702169, 14.772327, 22.561283>,  <10.395299, 14.516579, 22.581860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.702169, 14.772327, 22.561283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010733, -0.092983, -0.995610,
		-0.641348, 0.763255, -0.078197,
		0.767175, 0.639371, -0.051442,
		10.932323, 14.964139, 22.545851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.324218, 14.744488, 22.006342>,  <10.395299, 14.516579, 22.581860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.324218, 14.744488, 22.006342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.709530, 14.840689, 22.054089>,  <10.940718, 14.898409, 22.082737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.709530, 14.840689, 22.054089>,  <10.324218, 14.744488, 22.006342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.709530, 14.840689, 22.054089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145254, -0.092903, -0.985023,
		-0.225811, 0.966192, -0.124425,
		0.963281, 0.240502, 0.119364,
		10.998514, 14.912839, 22.089897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.412250, 15.214213, 21.484247>,  <10.324218, 14.744488, 22.006342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.412250, 15.214213, 21.484247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.768625, 15.067993, 21.592026>,  <10.982450, 14.980261, 21.656693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.768625, 15.067993, 21.592026>,  <10.412250, 15.214213, 21.484247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.768625, 15.067993, 21.592026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270603, -0.049145, -0.961436,
		0.364695, 0.929493, 0.055134,
		0.890939, -0.365550, 0.269446,
		11.035907, 14.958328, 21.672859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.018103, 15.655363, 21.283175>,  <10.412250, 15.214213, 21.484247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.018103, 15.655363, 21.283175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.164028, 15.282937, 21.285206>,  <11.251584, 15.059482, 21.286425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.164028, 15.282937, 21.285206>,  <11.018103, 15.655363, 21.283175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164028, 15.282937, 21.285206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337792, 0.127267, -0.932577,
		0.867644, 0.341934, 0.360936,
		0.364815, -0.931066, 0.005080,
		11.273473, 15.003617, 21.286730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.467937, 16.233562, 21.309740>,  <11.018103, 15.655363, 21.283175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.467937, 16.233562, 21.309740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618870, 16.535812, 21.095581>,  <11.709430, 16.717163, 20.967087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618870, 16.535812, 21.095581>,  <11.467937, 16.233562, 21.309740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.618870, 16.535812, 21.095581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278403, 0.643947, 0.712618,
		0.883239, -0.119839, 0.453351,
		0.377334, 0.755626, -0.535396,
		11.732070, 16.762501, 20.934963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.943995, 16.726492, 21.709398>,  <11.467937, 16.233562, 21.309740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.943995, 16.726492, 21.709398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.826180, 16.935339, 21.389238>,  <11.755490, 17.060648, 21.197144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.826180, 16.935339, 21.389238>,  <11.943995, 16.726492, 21.709398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.826180, 16.935339, 21.389238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037570, 0.830579, 0.555632,
		0.954901, 0.193727, -0.225022,
		-0.294539, 0.522119, -0.800399,
		11.737818, 17.091974, 21.149118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.356811, 17.394823, 21.637791>,  <11.943995, 16.726492, 21.709398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.356811, 17.394823, 21.637791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.008230, 17.461735, 21.453360>,  <11.799082, 17.501883, 21.342701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.008230, 17.461735, 21.453360>,  <12.356811, 17.394823, 21.637791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.008230, 17.461735, 21.453360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131229, 0.826257, 0.547794,
		0.472603, 0.537882, -0.698090,
		-0.871450, 0.167279, -0.461078,
		11.746796, 17.511919, 21.315037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352938, 18.083479, 21.398136>,  <12.356811, 17.394823, 21.637791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352938, 18.083479, 21.398136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969006, 17.975922, 21.430187>,  <11.738647, 17.911386, 21.449419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969006, 17.975922, 21.430187>,  <12.352938, 18.083479, 21.398136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.969006, 17.975922, 21.430187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210789, 0.879543, 0.426582,
		-0.185182, 0.392556, -0.900892,
		-0.959831, -0.268893, 0.080129,
		11.681056, 17.895254, 21.454226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027381, 18.632711, 21.332487>,  <12.352938, 18.083479, 21.398136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027381, 18.632711, 21.332487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.710792, 18.428614, 21.467081>,  <11.520838, 18.306156, 21.547838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.710792, 18.428614, 21.467081>,  <12.027381, 18.632711, 21.332487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.710792, 18.428614, 21.467081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327571, 0.818903, 0.471270,
		-0.516010, 0.262776, -0.815280,
		-0.791474, -0.510242, 0.336485,
		11.473350, 18.275541, 21.568026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.527320, 19.139366, 21.335365>,  <12.027381, 18.632711, 21.332487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.527320, 19.139366, 21.335365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.363733, 18.844393, 21.550377>,  <11.265581, 18.667408, 21.679384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.363733, 18.844393, 21.550377>,  <11.527320, 19.139366, 21.335365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.363733, 18.844393, 21.550377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281810, 0.662311, 0.694210,
		-0.867946, 0.132427, -0.478679,
		-0.408966, -0.737433, 0.537531,
		11.241043, 18.623163, 21.711636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.935341, 19.430124, 21.547867>,  <11.527320, 19.139366, 21.335365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.935341, 19.430124, 21.547867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006700, 19.126930, 21.798828>,  <11.049515, 18.945013, 21.949406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006700, 19.126930, 21.798828>,  <10.935341, 19.430124, 21.547867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.006700, 19.126930, 21.798828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111731, 0.617902, 0.778276,
		-0.977594, -0.208943, 0.025541,
		0.178397, -0.757984, 0.627403,
		11.060219, 18.899534, 21.987049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.385285, 19.438807, 21.936213>,  <10.935341, 19.430124, 21.547867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.385285, 19.438807, 21.936213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.640374, 19.240610, 22.172112>,  <10.793427, 19.121693, 22.313650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.640374, 19.240610, 22.172112>,  <10.385285, 19.438807, 21.936213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.640374, 19.240610, 22.172112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229775, 0.608406, 0.759635,
		-0.735197, -0.619945, 0.274142,
		0.637721, -0.495491, 0.589747,
		10.831691, 19.091963, 22.349035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081903, 19.274094, 22.650087>,  <10.385285, 19.438807, 21.936213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081903, 19.274094, 22.650087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.479490, 19.250046, 22.686773>,  <10.718042, 19.235617, 22.708784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.479490, 19.250046, 22.686773>,  <10.081903, 19.274094, 22.650087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.479490, 19.250046, 22.686773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045688, 0.533271, 0.844710,
		-0.099691, -0.843806, 0.527309,
		0.993969, -0.060118, 0.091714,
		10.777681, 19.232010, 22.714287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.260957, 19.111305, 23.449043>,  <10.081903, 19.274094, 22.650087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.260957, 19.111305, 23.449043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.580175, 19.270479, 23.268038>,  <10.771707, 19.365984, 23.159433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.580175, 19.270479, 23.268038>,  <10.260957, 19.111305, 23.449043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.580175, 19.270479, 23.268038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264176, 0.443898, 0.856251,
		0.541601, -0.802872, 0.249127,
		0.798048, 0.397933, -0.452515,
		10.819590, 19.389860, 23.132284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.776113, 19.032608, 23.885580>,  <10.260957, 19.111305, 23.449043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.776113, 19.032608, 23.885580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.952570, 19.320448, 23.671078>,  <11.058444, 19.493151, 23.542376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.952570, 19.320448, 23.671078>,  <10.776113, 19.032608, 23.885580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.952570, 19.320448, 23.671078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052298, 0.575915, 0.815835,
		0.895912, -0.387945, 0.216427,
		0.441142, 0.719598, -0.536258,
		11.084912, 19.536327, 23.510201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.226807, 19.223326, 24.309557>,  <10.776113, 19.032608, 23.885580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.226807, 19.223326, 24.309557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.180470, 19.519691, 24.044945>,  <11.152669, 19.697512, 23.886177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.180470, 19.519691, 24.044945>,  <11.226807, 19.223326, 24.309557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180470, 19.519691, 24.044945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005153, 0.666456, 0.745527,
		0.993254, 0.082954, -0.081021,
		-0.115842, 0.740915, -0.661533,
		11.145718, 19.741966, 23.846485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.737838, 19.591978, 24.366400>,  <11.226807, 19.223326, 24.309557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.737838, 19.591978, 24.366400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454940, 19.836201, 24.223837>,  <11.285201, 19.982735, 24.138298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454940, 19.836201, 24.223837>,  <11.737838, 19.591978, 24.366400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.454940, 19.836201, 24.223837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114247, 0.596216, 0.794654,
		0.697676, 0.521296, -0.491425,
		-0.707245, 0.610555, -0.356409,
		11.242766, 20.019367, 24.116915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.014743, 20.236576, 24.442860>,  <11.737838, 19.591978, 24.366400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.014743, 20.236576, 24.442860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628117, 20.328434, 24.397228>,  <11.396141, 20.383549, 24.369850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628117, 20.328434, 24.397228>,  <12.014743, 20.236576, 24.442860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.628117, 20.328434, 24.397228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077703, 0.686293, 0.723163,
		0.244361, 0.690120, -0.681191,
		-0.966566, 0.229643, -0.114079,
		11.338147, 20.397327, 24.363005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.081586, 20.943281, 24.488825>,  <12.014743, 20.236576, 24.442860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.081586, 20.943281, 24.488825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.700080, 20.833567, 24.537977>,  <11.471176, 20.767738, 24.567469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.700080, 20.833567, 24.537977>,  <12.081586, 20.943281, 24.488825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.700080, 20.833567, 24.537977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114181, 0.708865, 0.696041,
		-0.278020, 0.649829, -0.707408,
		-0.953765, -0.274286, 0.122881,
		11.413950, 20.751282, 24.574841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703101, 21.412870, 24.548309>,  <12.081586, 20.943281, 24.488825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703101, 21.412870, 24.548309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.868594, 21.049538, 24.572836>,  <12.967890, 20.831539, 24.587553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.868594, 21.049538, 24.572836>,  <12.703101, 21.412870, 24.548309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.868594, 21.049538, 24.572836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176648, -0.146169, -0.973360,
		0.893096, 0.391880, -0.220930,
		0.413733, -0.908331, 0.061319,
		12.992714, 20.777039, 24.591232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167374, 21.398478, 24.005896>,  <12.703101, 21.412870, 24.548309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.167374, 21.398478, 24.005896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.150240, 21.007881, 24.090399>,  <13.139959, 20.773523, 24.141102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.150240, 21.007881, 24.090399>,  <13.167374, 21.398478, 24.005896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.150240, 21.007881, 24.090399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012881, -0.211976, -0.977190,
		0.998999, -0.039136, 0.021659,
		-0.042835, -0.976491, 0.211260,
		13.137389, 20.714933, 24.153776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.760925, 21.045481, 23.612240>,  <13.167374, 21.398478, 24.005896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.760925, 21.045481, 23.612240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506838, 20.757038, 23.722876>,  <13.354385, 20.583973, 23.789257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506838, 20.757038, 23.722876>,  <13.760925, 21.045481, 23.612240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.506838, 20.757038, 23.722876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023019, -0.375641, -0.926479,
		0.771990, -0.582149, 0.255213,
		-0.635217, -0.721107, 0.276591,
		13.316273, 20.540707, 23.805853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106720, 20.432972, 23.283823>,  <13.760925, 21.045481, 23.612240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.106720, 20.432972, 23.283823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727514, 20.330915, 23.359900>,  <13.499991, 20.269682, 23.405544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727514, 20.330915, 23.359900>,  <14.106720, 20.432972, 23.283823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.727514, 20.330915, 23.359900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074370, -0.403471, -0.911965,
		0.309418, -0.878700, 0.363521,
		-0.948014, -0.255143, 0.190190,
		13.443110, 20.254372, 23.416956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967018, 19.679489, 23.056646>,  <14.106720, 20.432972, 23.283823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.967018, 19.679489, 23.056646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615494, 19.870014, 23.068079>,  <13.404579, 19.984329, 23.074938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615494, 19.870014, 23.068079>,  <13.967018, 19.679489, 23.056646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615494, 19.870014, 23.068079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211501, -0.335135, -0.918124,
		-0.427738, -0.812902, 0.395261,
		-0.878811, 0.476314, 0.028580,
		13.351851, 20.012907, 23.076653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.467957, 19.196733, 22.738712>,  <13.967018, 19.679489, 23.056646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.467957, 19.196733, 22.738712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310005, 19.563866, 22.722410>,  <13.215234, 19.784145, 22.712629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310005, 19.563866, 22.722410>,  <13.467957, 19.196733, 22.738712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310005, 19.563866, 22.722410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240817, -0.146213, -0.959494,
		-0.886610, -0.369070, 0.278765,
		-0.394879, 0.917828, -0.040755,
		13.191542, 19.839214, 22.710184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.006306, 19.007015, 22.321287>,  <13.467957, 19.196733, 22.738712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.006306, 19.007015, 22.321287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005680, 19.405298, 22.284271>,  <13.005304, 19.644268, 22.262062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005680, 19.405298, 22.284271>,  <13.006306, 19.007015, 22.321287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005680, 19.405298, 22.284271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149744, -0.091731, -0.984460,
		-0.988724, 0.012317, 0.149245,
		-0.001564, 0.995708, -0.092541,
		13.005211, 19.704010, 22.256510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421782, 19.221214, 21.831156>,  <13.006306, 19.007015, 22.321287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421782, 19.221214, 21.831156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683350, 19.523605, 21.819267>,  <12.840291, 19.705040, 21.812134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683350, 19.523605, 21.819267>,  <12.421782, 19.221214, 21.831156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683350, 19.523605, 21.819267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021477, -0.057818, -0.998096,
		-0.756258, 0.652037, -0.054044,
		0.653921, 0.755979, -0.029721,
		12.879526, 19.750399, 21.810350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.448241, 19.415333, 21.126354>,  <12.421782, 19.221214, 21.831156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.448241, 19.415333, 21.126354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760605, 19.628222, 21.257151>,  <12.948023, 19.755955, 21.335629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760605, 19.628222, 21.257151>,  <12.448241, 19.415333, 21.126354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760605, 19.628222, 21.257151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252168, 0.210328, -0.944549,
		-0.571484, 0.820063, 0.030039,
		0.780908, 0.532220, 0.326993,
		12.994877, 19.787888, 21.355249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372458, 20.156080, 20.842941>,  <12.448241, 19.415333, 21.126354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.372458, 20.156080, 20.842941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.744707, 20.017508, 20.890148>,  <12.968057, 19.934364, 20.918472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.744707, 20.017508, 20.890148>,  <12.372458, 20.156080, 20.842941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744707, 20.017508, 20.890148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119739, -0.016507, -0.992668,
		0.345838, 0.937931, 0.026120,
		0.930623, -0.346430, 0.118015,
		13.023894, 19.913578, 20.925552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.829426, 19.555691, 20.389275>,  <12.372458, 20.156080, 20.842941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.829426, 19.555691, 20.389275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.984565, 19.558641, 20.020597>,  <13.077648, 19.560411, 19.799391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.984565, 19.558641, 20.020597>,  <12.829426, 19.555691, 20.389275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.984565, 19.558641, 20.020597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921549, -0.022564, 0.387607,
		-0.017939, -0.999718, -0.015549,
		0.387848, 0.007376, -0.921694,
		13.100920, 19.560854, 19.744089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311360, 20.141197, 20.145355>,  <12.829426, 19.555691, 20.389275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311360, 20.141197, 20.145355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616153, 20.154217, 19.886642>,  <13.799028, 20.162029, 19.731415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616153, 20.154217, 19.886642>,  <13.311360, 20.141197, 20.145355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.616153, 20.154217, 19.886642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515648, -0.634704, 0.575550,
		-0.391779, -0.772069, -0.500417,
		0.761982, 0.032551, -0.646780,
		13.844748, 20.163982, 19.692608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.554392, 17.829430, 28.835878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.220304, 17.941301, 29.025272>,  <14.019852, 18.008425, 29.138908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.220304, 17.941301, 29.025272>,  <14.554392, 17.829430, 28.835878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.220304, 17.941301, 29.025272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190380, 0.954825, -0.228176,
		-0.515912, -0.100435, -0.850734,
		-0.835219, 0.279681, 0.473485,
		13.969739, 18.025206, 29.167318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.304170, 18.581625, 28.935110>,  <14.554392, 17.829430, 28.835878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.304170, 18.581625, 28.935110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.580935, 18.326204, 29.069876>,  <14.746993, 18.172953, 29.150736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.580935, 18.326204, 29.069876>,  <14.304170, 18.581625, 28.935110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.580935, 18.326204, 29.069876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436914, 0.001172, 0.899503,
		-0.574773, -0.769579, -0.278181,
		0.691912, -0.638551, 0.336914,
		14.788508, 18.134640, 29.170950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.934968, 19.133427, 28.916950>,  <14.304170, 18.581625, 28.935110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.934968, 19.133427, 28.916950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.240091, 19.374523, 28.823286>,  <15.423165, 19.519180, 28.767088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.240091, 19.374523, 28.823286>,  <14.934968, 19.133427, 28.916950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.240091, 19.374523, 28.823286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427374, 0.198189, -0.882084,
		-0.485259, 0.772933, 0.408775,
		0.762807, 0.602740, -0.234158,
		15.468933, 19.555346, 28.753038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643164, 19.708485, 28.741852>,  <14.934968, 19.133427, 28.916950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.643164, 19.708485, 28.741852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.011158, 19.758045, 28.593111>,  <15.231955, 19.787781, 28.503866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.011158, 19.758045, 28.593111>,  <14.643164, 19.708485, 28.741852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011158, 19.758045, 28.593111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391359, 0.342440, -0.854151,
		0.021506, 0.931334, 0.363531,
		0.919987, 0.123902, -0.371850,
		15.287154, 19.795216, 28.481556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.585133, 20.254885, 28.385719>,  <14.643164, 19.708485, 28.741852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.585133, 20.254885, 28.385719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.915667, 20.109709, 28.213465>,  <15.113987, 20.022604, 28.110113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.915667, 20.109709, 28.213465>,  <14.585133, 20.254885, 28.385719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915667, 20.109709, 28.213465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297934, 0.367169, -0.881148,
		0.477920, 0.856424, 0.195272,
		0.826334, -0.362940, -0.430635,
		15.163567, 20.000826, 28.084274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943326, 20.770288, 27.818060>,  <14.585133, 20.254885, 28.385719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943326, 20.770288, 27.818060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.999387, 20.380493, 27.747940>,  <15.033024, 20.146616, 27.705868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.999387, 20.380493, 27.747940>,  <14.943326, 20.770288, 27.818060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999387, 20.380493, 27.747940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482333, 0.087426, -0.871614,
		0.864703, 0.206713, -0.457775,
		0.140153, -0.974488, -0.175302,
		15.041432, 20.088146, 27.695349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169147, 20.793081, 27.229734>,  <14.943326, 20.770288, 27.818060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.169147, 20.793081, 27.229734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.072579, 20.406240, 27.261812>,  <15.014639, 20.174135, 27.281059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.072579, 20.406240, 27.261812>,  <15.169147, 20.793081, 27.229734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072579, 20.406240, 27.261812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365915, 0.014179, -0.930540,
		0.898790, -0.253994, -0.357300,
		-0.241418, -0.967102, 0.080196,
		15.000154, 20.116110, 27.285872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365677, 20.545452, 26.617437>,  <15.169147, 20.793081, 27.229734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365677, 20.545452, 26.617437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.098763, 20.285542, 26.763054>,  <14.938616, 20.129595, 26.850424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.098763, 20.285542, 26.763054>,  <15.365677, 20.545452, 26.617437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.098763, 20.285542, 26.763054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485765, 0.009165, -0.874042,
		0.564594, -0.760071, -0.321754,
		-0.667283, -0.649776, 0.364041,
		14.898579, 20.090609, 26.872267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138374, 20.014252, 26.038662>,  <15.365677, 20.545452, 26.617437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138374, 20.014252, 26.038662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.844004, 20.003424, 26.309269>,  <14.667381, 19.996927, 26.471634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.844004, 20.003424, 26.309269>,  <15.138374, 20.014252, 26.038662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.844004, 20.003424, 26.309269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675099, -0.046670, -0.736249,
		0.051506, -0.998543, 0.016069,
		-0.735927, -0.027073, 0.676520,
		14.623225, 19.995302, 26.512224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677176, 19.395220, 25.882689>,  <15.138374, 20.014252, 26.038662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.677176, 19.395220, 25.882689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.471949, 19.639824, 26.123623>,  <14.348812, 19.786587, 26.268185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.471949, 19.639824, 26.123623>,  <14.677176, 19.395220, 25.882689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471949, 19.639824, 26.123623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771835, -0.021664, -0.635454,
		-0.375539, -0.790938, 0.483102,
		-0.513070, 0.611513, 0.602338,
		14.318027, 19.823278, 26.304325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000906, 19.162521, 26.209234>,  <14.677176, 19.395220, 25.882689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000906, 19.162521, 26.209234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.000547, 19.557922, 26.148758>,  <14.000333, 19.795164, 26.112473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.000547, 19.557922, 26.148758>,  <14.000906, 19.162521, 26.209234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000547, 19.557922, 26.148758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699407, -0.108680, -0.706412,
		-0.714723, 0.105112, 0.691464,
		-0.000896, 0.988504, -0.151192,
		14.000278, 19.854473, 26.103399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333510, 19.178944, 25.867769>,  <14.000906, 19.162521, 26.209234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333510, 19.178944, 25.867769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.476325, 19.551893, 25.845135>,  <13.562014, 19.775663, 25.831554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.476325, 19.551893, 25.845135>,  <13.333510, 19.178944, 25.867769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.476325, 19.551893, 25.845135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631439, 0.196272, -0.750175,
		-0.688338, 0.303570, 0.658814,
		0.357037, 0.932375, -0.056584,
		13.583436, 19.831606, 25.828159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.689748, 19.546883, 25.824986>,  <13.333510, 19.178944, 25.867769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.689748, 19.546883, 25.824986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.974439, 19.782784, 25.672337>,  <13.145253, 19.924324, 25.580748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.974439, 19.782784, 25.672337>,  <12.689748, 19.546883, 25.824986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974439, 19.782784, 25.672337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559169, 0.146824, -0.815949,
		-0.425175, 0.794126, 0.434269,
		0.711728, 0.589751, -0.381624,
		13.187957, 19.959709, 25.557850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986571, 19.733156, 25.764503>,  <12.689748, 19.546883, 25.824986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986571, 19.733156, 25.764503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.028328, 19.788658, 25.370581>,  <12.053382, 19.821959, 25.134226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.028328, 19.788658, 25.370581>,  <11.986571, 19.733156, 25.764503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.028328, 19.788658, 25.370581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898395, 0.437907, -0.033533,
		0.426602, 0.888248, 0.170370,
		0.104392, 0.138755, -0.984810,
		12.059646, 19.830284, 25.075138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.758240, 20.408175, 25.766624>,  <11.986571, 19.733156, 25.764503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.758240, 20.408175, 25.766624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.446752, 20.655672, 25.725147>,  <11.259859, 20.804171, 25.700260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.446752, 20.655672, 25.725147>,  <11.758240, 20.408175, 25.766624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.446752, 20.655672, 25.725147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091638, 0.275689, 0.956869,
		0.620643, 0.735630, -0.271385,
		-0.778719, 0.618744, -0.103693,
		11.213136, 20.841295, 25.694040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858820, 21.154037, 25.943840>,  <11.758240, 20.408175, 25.766624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.858820, 21.154037, 25.943840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.485456, 21.027269, 26.011145>,  <11.261438, 20.951208, 26.051527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.485456, 21.027269, 26.011145>,  <11.858820, 21.154037, 25.943840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.485456, 21.027269, 26.011145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116565, 0.175675, 0.977523,
		-0.339356, 0.932041, -0.127034,
		-0.933408, -0.316920, 0.168260,
		11.205434, 20.932194, 26.061623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.498764, 21.579889, 26.511385>,  <11.858820, 21.154037, 25.943840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.498764, 21.579889, 26.511385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.293554, 21.236603, 26.517992>,  <11.170428, 21.030632, 26.521957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.293554, 21.236603, 26.517992>,  <11.498764, 21.579889, 26.511385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.293554, 21.236603, 26.517992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094394, -0.037277, 0.994837,
		-0.853168, 0.511936, 0.100134,
		-0.513025, -0.858214, 0.016520,
		11.139647, 20.979139, 26.522947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.935699, 21.668503, 27.001526>,  <11.498764, 21.579889, 26.511385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.935699, 21.668503, 27.001526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.013475, 21.279474, 26.950457>,  <11.060142, 21.046057, 26.919815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.013475, 21.279474, 26.950457>,  <10.935699, 21.668503, 27.001526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.013475, 21.279474, 26.950457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025971, -0.135217, 0.990475,
		-0.980570, -0.189273, -0.051551,
		0.194440, -0.972570, -0.127674,
		11.071808, 20.987703, 26.912155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.511135, 21.284986, 27.528389>,  <10.935699, 21.668503, 27.001526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.511135, 21.284986, 27.528389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<10.804337, 21.036886, 27.416679>,  <10.980257, 20.888025, 27.349653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<10.804337, 21.036886, 27.416679>,  <10.511135, 21.284986, 27.528389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.804337, 21.036886, 27.416679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244260, -0.143171, 0.959083,
		-0.634857, -0.771225, 0.046558,
		0.733003, -0.620253, -0.279272,
		11.024238, 20.850811, 27.332897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466621, 20.794254, 28.087484>,  <10.511135, 21.284986, 27.528389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466621, 20.794254, 28.087484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<10.831529, 20.726068, 27.938511>,  <11.050473, 20.685156, 27.849127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<10.831529, 20.726068, 27.938511>,  <10.466621, 20.794254, 28.087484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.831529, 20.726068, 27.938511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385006, 0.046588, 0.921738,
		-0.139775, -0.984261, 0.108131,
		0.912268, -0.170467, -0.372434,
		11.105209, 20.674929, 27.826780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.743252, 20.329744, 28.568439>,  <10.466621, 20.794254, 28.087484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.743252, 20.329744, 28.568439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.047452, 20.499119, 28.371527>,  <11.229972, 20.600742, 28.253378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.047452, 20.499119, 28.371527>,  <10.743252, 20.329744, 28.568439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047452, 20.499119, 28.371527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513198, 0.072534, 0.855200,
		0.397828, -0.903019, -0.162143,
		0.760501, 0.423434, -0.492283,
		11.275602, 20.626148, 28.223843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302036, 19.930454, 28.717062>,  <10.743252, 20.329744, 28.568439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302036, 19.930454, 28.717062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.462068, 20.268585, 28.575436>,  <11.558086, 20.471464, 28.490459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.462068, 20.268585, 28.575436>,  <11.302036, 19.930454, 28.717062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.462068, 20.268585, 28.575436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656899, 0.004899, 0.753963,
		0.639079, -0.534229, -0.553334,
		0.400078, 0.845326, -0.354065,
		11.582091, 20.522182, 28.469215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982515, 19.834501, 28.743784>,  <11.302036, 19.930454, 28.717062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982515, 19.834501, 28.743784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.991206, 20.232950, 28.709692>,  <11.996421, 20.472019, 28.689236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.991206, 20.232950, 28.709692>,  <11.982515, 19.834501, 28.743784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.991206, 20.232950, 28.709692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750077, 0.040121, 0.660132,
		0.660993, -0.078273, -0.746298,
		0.021728, 0.996124, -0.085231,
		11.997725, 20.531788, 28.684122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649345, 20.052048, 28.640829>,  <11.982515, 19.834501, 28.743784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649345, 20.052048, 28.640829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.456361, 20.366291, 28.795776>,  <12.340569, 20.554836, 28.888744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.456361, 20.366291, 28.795776>,  <12.649345, 20.052048, 28.640829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.456361, 20.366291, 28.795776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718360, 0.101839, 0.688177,
		0.501188, 0.610288, -0.613482,
		-0.482462, 0.785607, 0.387366,
		12.311622, 20.601973, 28.911985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.237407, 20.537424, 28.861481>,  <12.649345, 20.052048, 28.640829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.237407, 20.537424, 28.861481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.909891, 20.607948, 29.080021>,  <12.713382, 20.650263, 29.211145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.909891, 20.607948, 29.080021>,  <13.237407, 20.537424, 28.861481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909891, 20.607948, 29.080021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540822, -0.082398, 0.837091,
		0.192605, 0.980880, -0.027885,
		-0.818788, 0.176309, 0.546352,
		12.664254, 20.660841, 29.243927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.453506, 20.984852, 29.397207>,  <13.237407, 20.537424, 28.861481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.453506, 20.984852, 29.397207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.096701, 20.862837, 29.530634>,  <12.882618, 20.789627, 29.610691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.096701, 20.862837, 29.530634>,  <13.453506, 20.984852, 29.397207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.096701, 20.862837, 29.530634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308064, 0.129761, 0.942475,
		-0.330775, 0.943458, -0.021777,
		-0.892011, -0.305038, 0.333568,
		12.829097, 20.771326, 29.630705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.210285, 21.467365, 29.881376>,  <13.453506, 20.984852, 29.397207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.210285, 21.467365, 29.881376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.005521, 21.134380, 29.966187>,  <12.882662, 20.934589, 30.017073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.005521, 21.134380, 29.966187>,  <13.210285, 21.467365, 29.881376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005521, 21.134380, 29.966187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171152, 0.143033, 0.974807,
		-0.841816, 0.535303, 0.069257,
		-0.511911, -0.832461, 0.212026,
		12.851948, 20.884642, 30.029795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.903023, 21.678053, 30.470127>,  <13.210285, 21.467365, 29.881376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.903023, 21.678053, 30.470127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.921639, 21.278782, 30.454775>,  <12.932810, 21.039219, 30.445564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.921639, 21.278782, 30.454775>,  <12.903023, 21.678053, 30.470127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921639, 21.278782, 30.454775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178207, -0.029507, 0.983551,
		-0.982892, -0.052616, 0.176509,
		0.046542, -0.998179, -0.038378,
		12.935602, 20.979328, 30.443262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<19.579926, 15.192923, 29.376122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.226610, 15.379533, 29.394705>,  <19.014622, 15.491499, 29.405855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.226610, 15.379533, 29.394705>,  <19.579926, 15.192923, 29.376122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226610, 15.379533, 29.394705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364724, -0.621501, -0.693335,
		-0.294584, -0.629358, 0.719117,
		-0.883288, 0.466524, 0.046458,
		18.961624, 15.519490, 29.408642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101793, 14.681869, 29.532984>,  <19.579926, 15.192923, 29.376122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101793, 14.681869, 29.532984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.910007, 14.993779, 29.371956>,  <18.794935, 15.180925, 29.275339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.910007, 14.993779, 29.371956>,  <19.101793, 14.681869, 29.532984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910007, 14.993779, 29.371956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344441, -0.589143, -0.730939,
		-0.807139, -0.211799, 0.551061,
		-0.479466, 0.779777, -0.402568,
		18.766167, 15.227712, 29.251186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618074, 14.358044, 29.098019>,  <19.101793, 14.681869, 29.532984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618074, 14.358044, 29.098019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.533447, 14.733762, 28.989971>,  <18.482672, 14.959192, 28.925142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.533447, 14.733762, 28.989971>,  <18.618074, 14.358044, 29.098019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.533447, 14.733762, 28.989971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430389, -0.337674, -0.837103,
		-0.877499, -0.060846, 0.475703,
		-0.211567, 0.939294, -0.270121,
		18.469976, 15.015551, 28.908936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943241, 14.370131, 28.922119>,  <18.618074, 14.358044, 29.098019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.943241, 14.370131, 28.922119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.088598, 14.695920, 28.741196>,  <18.175812, 14.891393, 28.632641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.088598, 14.695920, 28.741196>,  <17.943241, 14.370131, 28.922119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088598, 14.695920, 28.741196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499769, -0.239308, -0.832444,
		-0.786242, 0.528554, 0.320084,
		0.363393, 0.814470, -0.452309,
		18.197617, 14.940261, 28.605503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360407, 14.712233, 28.665676>,  <17.943241, 14.370131, 28.922119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360407, 14.712233, 28.665676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.678581, 14.838833, 28.458946>,  <17.869486, 14.914793, 28.334908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.678581, 14.838833, 28.458946>,  <17.360407, 14.712233, 28.665676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678581, 14.838833, 28.458946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483852, -0.181842, -0.856049,
		-0.364921, 0.931000, 0.008496,
		0.795437, 0.316501, -0.516824,
		17.917212, 14.933784, 28.303900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073004, 15.029285, 28.153336>,  <17.360407, 14.712233, 28.665676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073004, 15.029285, 28.153336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.441479, 14.965611, 28.011309>,  <17.662563, 14.927407, 27.926092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.441479, 14.965611, 28.011309>,  <17.073004, 15.029285, 28.153336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.441479, 14.965611, 28.011309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379659, -0.167719, -0.909796,
		0.085275, 0.972898, -0.214937,
		0.921188, -0.159186, -0.355067,
		17.717834, 14.917856, 27.904789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120781, 15.370606, 27.533577>,  <17.073004, 15.029285, 28.153336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120781, 15.370606, 27.533577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.411762, 15.098492, 27.497759>,  <17.586351, 14.935223, 27.476267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.411762, 15.098492, 27.497759>,  <17.120781, 15.370606, 27.533577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.411762, 15.098492, 27.497759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147419, -0.027498, -0.988692,
		0.670132, 0.732430, -0.120291,
		0.727455, -0.680287, -0.089547,
		17.629999, 14.894405, 27.470894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772341, 15.691473, 27.129423>,  <17.120781, 15.370606, 27.533577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772341, 15.691473, 27.129423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.772026, 15.291492, 27.125568>,  <17.771837, 15.051503, 27.123255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.772026, 15.291492, 27.125568>,  <17.772341, 15.691473, 27.129423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772026, 15.291492, 27.125568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223065, 0.009569, -0.974757,
		0.974803, 0.001384, -0.223062,
		-0.000786, -0.999953, -0.009637,
		17.771790, 14.991506, 27.122677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945652, 15.561619, 26.461506>,  <17.772341, 15.691473, 27.129423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945652, 15.561619, 26.461506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.826410, 15.202221, 26.590405>,  <17.754866, 14.986583, 26.667744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.826410, 15.202221, 26.590405>,  <17.945652, 15.561619, 26.461506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826410, 15.202221, 26.590405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355191, -0.208940, -0.911144,
		0.885988, -0.386074, -0.256851,
		-0.298103, -0.898494, 0.322248,
		17.736979, 14.932673, 26.687078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221193, 15.062295, 25.993723>,  <17.945652, 15.561619, 26.461506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221193, 15.062295, 25.993723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.899584, 14.886976, 26.154444>,  <17.706619, 14.781785, 26.250875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.899584, 14.886976, 26.154444>,  <18.221193, 15.062295, 25.993723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899584, 14.886976, 26.154444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363055, -0.173281, -0.915513,
		0.470891, -0.881969, -0.019805,
		-0.804023, -0.438298, 0.401800,
		17.658377, 14.755487, 26.274984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115055, 14.472798, 25.522144>,  <18.221193, 15.062295, 25.993723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115055, 14.472798, 25.522144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.773258, 14.533379, 25.720903>,  <17.568180, 14.569727, 25.840158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.773258, 14.533379, 25.720903>,  <18.115055, 14.472798, 25.522144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773258, 14.533379, 25.720903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509974, -0.062542, -0.857913,
		-0.098871, -0.986481, 0.130687,
		-0.854489, 0.151470, 0.496897,
		17.516911, 14.578814, 25.869972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610048, 13.992993, 25.314718>,  <18.115055, 14.472798, 25.522144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610048, 13.992993, 25.314718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.371239, 14.267119, 25.481527>,  <17.227953, 14.431595, 25.581612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.371239, 14.267119, 25.481527>,  <17.610048, 13.992993, 25.314718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371239, 14.267119, 25.481527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693586, -0.179736, -0.697591,
		-0.403117, -0.705717, 0.582632,
		-0.597022, 0.685316, 0.417021,
		17.192133, 14.472714, 25.606634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979734, 13.704208, 25.577295>,  <17.610048, 13.992993, 25.314718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979734, 13.704208, 25.577295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.915470, 14.086622, 25.479162>,  <16.876911, 14.316071, 25.420282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.915470, 14.086622, 25.479162>,  <16.979734, 13.704208, 25.577295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915470, 14.086622, 25.479162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761671, -0.278173, -0.585215,
		-0.627730, 0.092843, 0.772874,
		-0.160659, 0.956034, -0.245333,
		16.867271, 14.373432, 25.405561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.311378, 13.722741, 25.606936>,  <16.979734, 13.704208, 25.577295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.311378, 13.722741, 25.606936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.380291, 14.056337, 25.397259>,  <16.421638, 14.256495, 25.271452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.380291, 14.056337, 25.397259>,  <16.311378, 13.722741, 25.606936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.380291, 14.056337, 25.397259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722742, -0.254553, -0.642532,
		-0.669300, 0.489552, 0.558906,
		0.172282, 0.833992, -0.524192,
		16.431976, 14.306535, 25.240002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552688, 13.906019, 25.862270>,  <16.311378, 13.722741, 25.606936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552688, 13.906019, 25.862270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.304931, 13.668678, 26.067905>,  <15.156277, 13.526274, 26.191286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.304931, 13.668678, 26.067905>,  <15.552688, 13.906019, 25.862270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.304931, 13.668678, 26.067905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365640, 0.361445, 0.857709,
		-0.694738, 0.719230, -0.006923,
		-0.619392, -0.593352, 0.514089,
		15.119113, 13.490673, 26.222132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254656, 14.312742, 26.296070>,  <15.552688, 13.906019, 25.862270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254656, 14.312742, 26.296070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.204913, 13.955901, 26.469824>,  <15.175068, 13.741796, 26.574076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.204913, 13.955901, 26.469824>,  <15.254656, 14.312742, 26.296070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204913, 13.955901, 26.469824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323360, 0.377446, 0.867740,
		-0.938069, 0.248372, 0.241532,
		-0.124357, -0.892102, 0.434384,
		15.167606, 13.688271, 26.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103949, 14.499694, 26.929628>,  <15.254656, 14.312742, 26.296070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103949, 14.499694, 26.929628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.199083, 14.112534, 26.962128>,  <15.256165, 13.880238, 26.981627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.199083, 14.112534, 26.962128>,  <15.103949, 14.499694, 26.929628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.199083, 14.112534, 26.962128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226985, 0.136718, 0.964254,
		-0.944411, -0.210893, 0.252215,
		0.237837, -0.967901, 0.081248,
		15.270434, 13.822164, 26.986502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748559, 14.213868, 27.406281>,  <15.103949, 14.499694, 26.929628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.748559, 14.213868, 27.406281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.054983, 13.956791, 27.402363>,  <15.238838, 13.802545, 27.400013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.054983, 13.956791, 27.402363>,  <14.748559, 14.213868, 27.406281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054983, 13.956791, 27.402363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158283, 0.173855, 0.971967,
		-0.622974, -0.746137, 0.234911,
		0.766061, -0.642693, -0.009794,
		15.284801, 13.763983, 27.399426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606104, 13.689625, 27.939585>,  <14.748559, 14.213868, 27.406281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606104, 13.689625, 27.939585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.998668, 13.673377, 27.864552>,  <15.234206, 13.663629, 27.819532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.998668, 13.673377, 27.864552>,  <14.606104, 13.689625, 27.939585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.998668, 13.673377, 27.864552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190314, 0.079344, 0.978512,
		-0.024865, -0.996019, 0.085600,
		0.981408, -0.040622, -0.187583,
		15.293090, 13.661191, 27.808277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882492, 13.246437, 28.401350>,  <14.606104, 13.689625, 27.939585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882492, 13.246437, 28.401350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.219248, 13.442259, 28.310522>,  <15.421301, 13.559752, 28.256025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.219248, 13.442259, 28.310522>,  <14.882492, 13.246437, 28.401350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219248, 13.442259, 28.310522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218111, 0.076195, 0.972945,
		0.493611, -0.868637, -0.042630,
		0.841888, 0.489554, -0.227069,
		15.471814, 13.589125, 28.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374113, 13.145956, 28.924885>,  <14.882492, 13.246437, 28.401350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374113, 13.145956, 28.924885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.526737, 13.474906, 28.756073>,  <15.618312, 13.672276, 28.654785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.526737, 13.474906, 28.756073>,  <15.374113, 13.145956, 28.924885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526737, 13.474906, 28.756073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316419, 0.312783, 0.895570,
		0.868499, -0.475253, -0.140870,
		0.381560, 0.822376, -0.422031,
		15.641206, 13.721619, 28.629463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012508, 13.306688, 29.326332>,  <15.374113, 13.145956, 28.924885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012508, 13.306688, 29.326332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.941455, 13.649897, 29.133564>,  <15.898823, 13.855822, 29.017904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.941455, 13.649897, 29.133564>,  <16.012508, 13.306688, 29.326332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941455, 13.649897, 29.133564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343438, 0.512967, 0.786712,
		0.922224, -0.025762, -0.385797,
		-0.177634, 0.858021, -0.481919,
		15.888165, 13.907303, 28.988989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587799, 13.676943, 29.464624>,  <16.012508, 13.306688, 29.326332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587799, 13.676943, 29.464624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.312094, 13.941021, 29.345255>,  <16.146671, 14.099468, 29.273632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.312094, 13.941021, 29.345255>,  <16.587799, 13.676943, 29.464624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.312094, 13.941021, 29.345255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326705, 0.650864, 0.685303,
		0.646668, 0.374858, -0.664306,
		-0.689264, 0.660195, -0.298425,
		16.105314, 14.139080, 29.255728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951302, 14.358343, 29.278900>,  <16.587799, 13.676943, 29.464624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951302, 14.358343, 29.278900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.574154, 14.436472, 29.386864>,  <16.347866, 14.483349, 29.451641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.574154, 14.436472, 29.386864>,  <16.951302, 14.358343, 29.278900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574154, 14.436472, 29.386864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329517, 0.666318, 0.668909,
		-0.049193, 0.719632, -0.692611,
		-0.942867, 0.195322, 0.269910,
		16.291294, 14.495069, 29.467836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014658, 15.014481, 29.630819>,  <16.951302, 14.358343, 29.278900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.014658, 15.014481, 29.630819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.662331, 14.873527, 29.757301>,  <16.450933, 14.788955, 29.833191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.662331, 14.873527, 29.757301>,  <17.014658, 15.014481, 29.630819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662331, 14.873527, 29.757301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088550, 0.533468, 0.841172,
		-0.465101, 0.768919, -0.438684,
		-0.880818, -0.352384, 0.316204,
		16.398085, 14.767812, 29.852163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.569355, 15.654400, 29.858906>,  <17.014658, 15.014481, 29.630819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.569355, 15.654400, 29.858906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.439243, 15.323770, 30.042631>,  <16.361177, 15.125392, 30.152866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.439243, 15.323770, 30.042631>,  <16.569355, 15.654400, 29.858906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439243, 15.323770, 30.042631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039552, 0.473411, 0.879953,
		-0.944791, 0.304395, -0.121297,
		-0.325277, -0.826575, 0.459314,
		16.341660, 15.075797, 30.180426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251690, 15.877822, 30.350473>,  <16.569355, 15.654400, 29.858906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251690, 15.877822, 30.350473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.296001, 15.503879, 30.485390>,  <16.322588, 15.279512, 30.566339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.296001, 15.503879, 30.485390>,  <16.251690, 15.877822, 30.350473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296001, 15.503879, 30.485390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089520, 0.347388, 0.933438,
		-0.989805, -0.073212, 0.122172,
		0.110780, -0.934859, 0.337293,
		16.329235, 15.223421, 30.586578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737638, 15.782178, 30.854687>,  <16.251690, 15.877822, 30.350473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.737638, 15.782178, 30.854687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.066254, 15.561816, 30.913448>,  <16.263422, 15.429600, 30.948706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.066254, 15.561816, 30.913448>,  <15.737638, 15.782178, 30.854687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066254, 15.561816, 30.913448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015362, 0.278951, 0.960182,
		-0.569947, -0.786570, 0.237632,
		0.821538, -0.550903, 0.146904,
		16.312716, 15.396545, 30.957520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958990, 15.597591, 31.109695>,  <15.737638, 15.782178, 30.854687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958990, 15.597591, 31.109695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.641646, 15.830441, 31.180929>,  <14.451241, 15.970150, 31.223669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.641646, 15.830441, 31.180929>,  <14.958990, 15.597591, 31.109695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641646, 15.830441, 31.180929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557103, -0.576358, -0.597869,
		-0.245392, -0.573537, 0.781561,
		-0.793360, 0.582123, 0.178085,
		14.403639, 16.005077, 31.234354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.348439, 15.131585, 31.109190>,  <14.958990, 15.597591, 31.109695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.348439, 15.131585, 31.109190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.188894, 15.495065, 31.059917>,  <14.093167, 15.713153, 31.030354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.188894, 15.495065, 31.059917>,  <14.348439, 15.131585, 31.109190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188894, 15.495065, 31.059917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503932, -0.329433, -0.798452,
		-0.766133, -0.256397, 0.589322,
		-0.398863, 0.908699, -0.123183,
		14.069236, 15.767674, 31.022963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.591243, 15.018984, 31.103008>,  <14.348439, 15.131585, 31.109190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.591243, 15.018984, 31.103008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.645467, 15.375081, 30.929070>,  <13.678001, 15.588739, 30.824707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.645467, 15.375081, 30.929070>,  <13.591243, 15.018984, 31.103008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645467, 15.375081, 30.929070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573581, -0.287352, -0.767094,
		-0.807854, 0.353406, 0.471674,
		0.135559, 0.890243, -0.434845,
		13.686134, 15.642154, 30.798616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957952, 15.117419, 30.654215>,  <13.591243, 15.018984, 31.103008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957952, 15.117419, 30.654215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.222227, 15.389514, 30.527237>,  <13.380792, 15.552771, 30.451050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.222227, 15.389514, 30.527237>,  <12.957952, 15.117419, 30.654215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.222227, 15.389514, 30.527237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448865, 0.019045, -0.893397,
		-0.601676, 0.732745, 0.317917,
		0.660687, 0.680237, -0.317444,
		13.420433, 15.593585, 30.432003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568935, 15.748712, 30.389677>,  <12.957952, 15.117419, 30.654215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568935, 15.748712, 30.389677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.935605, 15.745887, 30.229847>,  <13.155606, 15.744192, 30.133949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.935605, 15.745887, 30.229847>,  <12.568935, 15.748712, 30.389677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935605, 15.745887, 30.229847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377460, 0.313138, -0.871475,
		0.131277, 0.949681, 0.284379,
		0.916674, -0.007063, -0.399574,
		13.210608, 15.743768, 30.109974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561165, 16.335941, 30.002666>,  <12.568935, 15.748712, 30.389677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561165, 16.335941, 30.002666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.830693, 16.076479, 29.861128>,  <12.992411, 15.920801, 29.776205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.830693, 16.076479, 29.861128>,  <12.561165, 16.335941, 30.002666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.830693, 16.076479, 29.861128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346453, 0.145624, -0.926695,
		0.652637, 0.747018, -0.126605,
		0.673821, -0.648658, -0.353846,
		13.032840, 15.881882, 29.754974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834916, 16.664782, 29.357605>,  <12.561165, 16.335941, 30.002666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834916, 16.664782, 29.357605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.903256, 16.271063, 29.339832>,  <12.944261, 16.034832, 29.329168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.903256, 16.271063, 29.339832>,  <12.834916, 16.664782, 29.357605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.903256, 16.271063, 29.339832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246967, 0.000874, -0.969024,
		0.953844, 0.176531, -0.242939,
		0.170850, -0.984295, -0.044431,
		12.954512, 15.975775, 29.326504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.085566, 16.743000, 28.773375>,  <12.834916, 16.664782, 29.357605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.085566, 16.743000, 28.773375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.995986, 16.355635, 28.817236>,  <12.942239, 16.123215, 28.843552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.995986, 16.355635, 28.817236>,  <13.085566, 16.743000, 28.773375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995986, 16.355635, 28.817236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129264, -0.082001, -0.988214,
		0.965991, -0.235483, -0.106817,
		-0.223949, -0.968413, 0.109652,
		12.928802, 16.065111, 28.850132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344699, 16.383455, 28.171589>,  <13.085566, 16.743000, 28.773375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344699, 16.383455, 28.171589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.052879, 16.145180, 28.305998>,  <12.877788, 16.002214, 28.386642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.052879, 16.145180, 28.305998>,  <13.344699, 16.383455, 28.171589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052879, 16.145180, 28.305998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370084, -0.069331, -0.926408,
		0.575148, -0.800217, -0.169874,
		-0.729550, -0.595689, 0.336023,
		12.834015, 15.966473, 28.406805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301261, 15.740199, 27.725643>,  <13.344699, 16.383455, 28.171589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301261, 15.740199, 27.725643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.943791, 15.781337, 27.900351>,  <12.729309, 15.806020, 28.005175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.943791, 15.781337, 27.900351>,  <13.301261, 15.740199, 27.725643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943791, 15.781337, 27.900351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439036, 0.000679, -0.898469,
		-0.092705, -0.994697, 0.044548,
		-0.893674, 0.102851, 0.436770,
		12.675689, 15.812190, 28.031382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.885128, 15.184944, 27.381487>,  <13.301261, 15.740199, 27.725643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.885128, 15.184944, 27.381487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.605438, 15.442558, 27.505617>,  <12.437624, 15.597127, 27.580095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.605438, 15.442558, 27.505617>,  <12.885128, 15.184944, 27.381487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.605438, 15.442558, 27.505617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570603, -0.241255, -0.784989,
		-0.430693, -0.725958, 0.536180,
		-0.699225, 0.644035, 0.310327,
		12.395671, 15.635769, 27.598715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346824, 14.946790, 27.030478>,  <12.885128, 15.184944, 27.381487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346824, 14.946790, 27.030478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.239232, 15.307380, 27.166119>,  <12.174677, 15.523734, 27.247503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.239232, 15.307380, 27.166119>,  <12.346824, 14.946790, 27.030478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239232, 15.307380, 27.166119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662109, 0.082625, -0.744839,
		-0.699473, -0.424870, 0.574651,
		-0.268979, 0.901476, 0.339104,
		12.158539, 15.577823, 27.267851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.563656, 15.032769, 26.973621>,  <12.346824, 14.946790, 27.030478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.563656, 15.032769, 26.973621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718790, 15.399885, 26.939571>,  <11.811871, 15.620154, 26.919142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718790, 15.399885, 26.939571>,  <11.563656, 15.032769, 26.973621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.718790, 15.399885, 26.939571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546407, 0.154553, -0.823136,
		-0.742310, 0.365753, 0.561427,
		0.387835, 0.917790, -0.085124,
		11.835140, 15.675222, 26.914034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.036286, 15.354677, 26.595680>,  <11.563656, 15.032769, 26.973621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.036286, 15.354677, 26.595680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.334365, 15.617986, 26.553045>,  <11.513212, 15.775970, 26.527464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.334365, 15.617986, 26.553045>,  <11.036286, 15.354677, 26.595680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.334365, 15.617986, 26.553045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415234, 0.332987, -0.846581,
		-0.521788, 0.675129, 0.521477,
		0.745196, 0.658271, -0.106588,
		11.557924, 15.815467, 26.521069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.171705, 7.094581, 7.990581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.106035, 6.735742, 7.826501>,  <10.066633, 6.520438, 7.728054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.106035, 6.735742, 7.826501>,  <10.171705, 7.094581, 7.990581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.106035, 6.735742, 7.826501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032582, -0.410681, 0.911197,
		-0.985893, 0.162960, 0.038194,
		-0.164175, -0.897098, -0.410197,
		10.056783, 6.466612, 7.703442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.349072, 7.632915, 7.585520>,  <10.171705, 7.094581, 7.990581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.349072, 7.632915, 7.585520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.720465, 7.736670, 7.691834>,  <10.943300, 7.798923, 7.755623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.720465, 7.736670, 7.691834>,  <10.349072, 7.632915, 7.585520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.720465, 7.736670, 7.691834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231922, -0.153991, 0.960468,
		0.290063, -0.953417, -0.082820,
		0.928480, 0.259388, 0.265786,
		10.999009, 7.814487, 7.771570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683204, 7.610856, 8.295132>,  <10.349072, 7.632915, 7.585520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683204, 7.610856, 8.295132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.837391, 7.859797, 8.567629>,  <10.929903, 8.009162, 8.731127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.837391, 7.859797, 8.567629>,  <10.683204, 7.610856, 8.295132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.837391, 7.859797, 8.567629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094565, -0.707765, 0.700090,
		0.917863, -0.334284, -0.213968,
		0.385468, 0.622352, 0.681243,
		10.953032, 8.046503, 8.772002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.698468, 7.042388, 8.742312>,  <10.683204, 7.610856, 8.295132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.698468, 7.042388, 8.742312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.794289, 6.822525, 9.062435>,  <10.851781, 6.690607, 9.254509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.794289, 6.822525, 9.062435>,  <10.698468, 7.042388, 8.742312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.794289, 6.822525, 9.062435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412715, 0.688471, 0.596383,
		-0.878795, -0.473164, -0.061928,
		0.239552, -0.549658, 0.800307,
		10.866154, 6.657628, 9.302527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.271116, 7.225488, 9.351476>,  <10.698468, 7.042388, 8.742312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.271116, 7.225488, 9.351476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.505242, 6.971858, 9.553605>,  <10.645719, 6.819679, 9.674883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.505242, 6.971858, 9.553605>,  <10.271116, 7.225488, 9.351476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.505242, 6.971858, 9.553605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122656, 0.546820, 0.828217,
		-0.801474, -0.546749, 0.242289,
		0.585316, -0.634076, 0.505325,
		10.680837, 6.781635, 9.705202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.966344, 6.932882, 9.943189>,  <10.271116, 7.225488, 9.351476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.966344, 6.932882, 9.943189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.362587, 6.983456, 9.964021>,  <10.600332, 7.013801, 9.976521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.362587, 6.983456, 9.964021>,  <9.966344, 6.932882, 9.943189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.362587, 6.983456, 9.964021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118215, 0.600411, 0.790906,
		0.068729, -0.789633, 0.609718,
		0.990607, 0.126436, 0.052081,
		10.659769, 7.021387, 9.979645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.189640, 7.282216, 10.479802>,  <9.966344, 6.932882, 9.943189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.189640, 7.282216, 10.479802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.493160, 7.510692, 10.354605>,  <10.675272, 7.647777, 10.279486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.493160, 7.510692, 10.354605>,  <10.189640, 7.282216, 10.479802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.493160, 7.510692, 10.354605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315033, 0.742462, 0.591189,
		0.570066, -0.349991, 0.743324,
		0.758801, 0.571188, -0.312994,
		10.720800, 7.682048, 10.260707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.641790, 7.649749, 11.001826>,  <10.189640, 7.282216, 10.479802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.641790, 7.649749, 11.001826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.679357, 7.880021, 10.676921>,  <10.701897, 8.018185, 10.481977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.679357, 7.880021, 10.676921>,  <10.641790, 7.649749, 11.001826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.679357, 7.880021, 10.676921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319432, 0.790158, 0.523081,
		0.942944, 0.210338, 0.258099,
		0.093915, 0.575681, -0.812263,
		10.707531, 8.052725, 10.433242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.930182, 8.323758, 11.215487>,  <10.641790, 7.649749, 11.001826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.930182, 8.323758, 11.215487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.753874, 8.386842, 10.862024>,  <10.648089, 8.424692, 10.649946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.753874, 8.386842, 10.862024>,  <10.930182, 8.323758, 11.215487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753874, 8.386842, 10.862024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570250, 0.711063, 0.411345,
		0.693209, 0.685214, -0.223481,
		-0.440769, 0.157708, -0.883658,
		10.621643, 8.434155, 10.596927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.973258, 9.046477, 10.984741>,  <10.930182, 8.323758, 11.215487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.973258, 9.046477, 10.984741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.647028, 8.873684, 10.830739>,  <10.451290, 8.770008, 10.738338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.647028, 8.873684, 10.830739>,  <10.973258, 9.046477, 10.984741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.647028, 8.873684, 10.830739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572335, 0.700249, 0.426714,
		0.085266, 0.568369, -0.818344,
		-0.815575, -0.431983, -0.385004,
		10.402355, 8.744089, 10.715238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.520895, 9.553152, 11.029572>,  <10.973258, 9.046477, 10.984741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.520895, 9.553152, 11.029572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.267273, 9.257614, 10.938285>,  <10.115100, 9.080292, 10.883512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.267273, 9.257614, 10.938285>,  <10.520895, 9.553152, 11.029572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.267273, 9.257614, 10.938285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719754, 0.455975, 0.523489,
		-0.282715, 0.496182, -0.820899,
		-0.634055, -0.738844, -0.228219,
		10.077056, 9.035961, 10.869820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.851755, 9.911374, 10.825557>,  <10.520895, 9.553152, 11.029572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.851755, 9.911374, 10.825557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.764041, 9.532594, 10.919534>,  <9.711412, 9.305326, 10.975920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.764041, 9.532594, 10.919534>,  <9.851755, 9.911374, 10.825557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.764041, 9.532594, 10.919534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789234, 0.313738, 0.527900,
		-0.573606, -0.069664, -0.816164,
		-0.219286, -0.946951, 0.234943,
		9.698256, 9.248508, 10.990017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.137486, 9.878963, 10.734928>,  <9.851755, 9.911374, 10.825557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.137486, 9.878963, 10.734928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.240954, 9.578001, 10.977242>,  <9.303035, 9.397424, 11.122630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.240954, 9.578001, 10.977242>,  <9.137486, 9.878963, 10.734928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.240954, 9.578001, 10.977242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652048, 0.326689, 0.684184,
		-0.712687, -0.571978, -0.406101,
		0.258669, -0.752406, 0.605784,
		9.318555, 9.352279, 11.158977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.556155, 9.589078, 10.932698>,  <9.137486, 9.878963, 10.734928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.556155, 9.589078, 10.932698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.818796, 9.497721, 11.220228>,  <8.976380, 9.442906, 11.392746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.818796, 9.497721, 11.220228>,  <8.556155, 9.589078, 10.932698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.818796, 9.497721, 11.220228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642181, 0.330554, 0.691619,
		-0.395573, -0.915735, 0.070372,
		0.656601, -0.228395, 0.718826,
		9.015777, 9.429202, 11.435876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.188316, 9.413788, 11.579032>,  <8.556155, 9.589078, 10.932698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.188316, 9.413788, 11.579032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.538723, 9.484229, 11.758624>,  <8.748967, 9.526494, 11.866380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.538723, 9.484229, 11.758624>,  <8.188316, 9.413788, 11.579032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.538723, 9.484229, 11.758624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456829, 0.601428, 0.655432,
		-0.154606, -0.779276, 0.607310,
		0.876016, 0.176103, 0.448981,
		8.801528, 9.537060, 11.893318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.064714, 9.320286, 12.236462>,  <8.188316, 9.413788, 11.579032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.064714, 9.320286, 12.236462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.400539, 9.537585, 12.238040>,  <8.602035, 9.667965, 12.238987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.400539, 9.537585, 12.238040>,  <8.064714, 9.320286, 12.236462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.400539, 9.537585, 12.238040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366960, 0.561732, 0.741484,
		0.400592, -0.623971, 0.670959,
		0.839563, 0.543247, 0.003947,
		8.652409, 9.700560, 12.239223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.157017, 9.385784, 12.912358>,  <8.064714, 9.320286, 12.236462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.157017, 9.385784, 12.912358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.369564, 9.685555, 12.754367>,  <8.497092, 9.865417, 12.659573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.369564, 9.685555, 12.754367>,  <8.157017, 9.385784, 12.912358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.369564, 9.685555, 12.754367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453227, 0.645403, 0.614849,
		0.715704, -0.147698, 0.682608,
		0.531369, 0.749427, -0.394977,
		8.528975, 9.910382, 12.635874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.472027, 9.799422, 13.518733>,  <8.157017, 9.385784, 12.912358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.472027, 9.799422, 13.518733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.499083, 10.053195, 13.210728>,  <8.515316, 10.205459, 13.025925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.499083, 10.053195, 13.210728>,  <8.472027, 9.799422, 13.518733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.499083, 10.053195, 13.210728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220191, 0.762243, 0.608688,
		0.973109, 0.128379, 0.191253,
		0.067638, 0.634432, -0.770014,
		8.519374, 10.243525, 12.979724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.992467, 10.253765, 13.648931>,  <8.472027, 9.799422, 13.518733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.992467, 10.253765, 13.648931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.741301, 10.417670, 13.384259>,  <8.590601, 10.516013, 13.225456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.741301, 10.417670, 13.384259>,  <8.992467, 10.253765, 13.648931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.741301, 10.417670, 13.384259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079600, 0.811908, 0.578334,
		0.774201, 0.415814, -0.477192,
		-0.627915, 0.409762, -0.661678,
		8.552926, 10.540599, 13.185756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.285826, 10.824775, 13.475060>,  <8.992467, 10.253765, 13.648931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.285826, 10.824775, 13.475060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.891826, 10.851607, 13.411465>,  <8.655426, 10.867707, 13.373308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.891826, 10.851607, 13.411465>,  <9.285826, 10.824775, 13.475060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.891826, 10.851607, 13.411465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029851, 0.841212, 0.539880,
		0.169958, 0.536528, -0.826591,
		-0.984999, 0.067082, -0.158987,
		8.596326, 10.871732, 13.363769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.220211, 11.478246, 13.347098>,  <9.285826, 10.824775, 13.475060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.220211, 11.478246, 13.347098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.844807, 11.364905, 13.426001>,  <8.619564, 11.296901, 13.473342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.844807, 11.364905, 13.426001>,  <9.220211, 11.478246, 13.347098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.844807, 11.364905, 13.426001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118464, 0.800947, 0.586899,
		-0.324289, 0.527444, -0.785264,
		-0.938511, -0.283351, 0.197255,
		8.563253, 11.279901, 13.485177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.864244, 12.072929, 13.150952>,  <9.220211, 11.478246, 13.347098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.864244, 12.072929, 13.150952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.609579, 11.877070, 13.389248>,  <8.456779, 11.759555, 13.532226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.609579, 11.877070, 13.389248>,  <8.864244, 12.072929, 13.150952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.609579, 11.877070, 13.389248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178842, 0.845233, 0.503583,
		-0.750116, 0.214071, -0.625699,
		-0.636664, -0.489647, 0.595739,
		8.418580, 11.730176, 13.567969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.380589, 12.548499, 13.356407>,  <8.864244, 12.072929, 13.150952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.380589, 12.548499, 13.356407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.322405, 12.272067, 13.639603>,  <8.287495, 12.106208, 13.809520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.322405, 12.272067, 13.639603>,  <8.380589, 12.548499, 13.356407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.322405, 12.272067, 13.639603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036743, 0.718880, 0.694162,
		-0.988682, 0.074959, -0.129961,
		-0.145461, -0.691080, 0.707990,
		8.278767, 12.064743, 13.851999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.833377, 12.756990, 13.697457>,  <8.380589, 12.548499, 13.356407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.833377, 12.756990, 13.697457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.979664, 12.503039, 13.969687>,  <8.067436, 12.350669, 14.133024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.979664, 12.503039, 13.969687>,  <7.833377, 12.756990, 13.697457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.979664, 12.503039, 13.969687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077004, 0.708082, 0.701918,
		-0.927535, -0.309111, 0.210070,
		0.365718, -0.634877, 0.680574,
		8.089379, 12.312576, 14.173859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.344470, 12.767409, 14.183568>,  <7.833377, 12.756990, 13.697457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.344470, 12.767409, 14.183568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.684411, 12.662354, 14.366335>,  <7.888375, 12.599321, 14.475995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.684411, 12.662354, 14.366335>,  <7.344470, 12.767409, 14.183568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.684411, 12.662354, 14.366335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227532, 0.599171, 0.767609,
		-0.475375, -0.756317, 0.449447,
		0.849851, -0.262638, 0.456917,
		7.939366, 12.583563, 14.503410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.180920, 12.551013, 14.875903>,  <7.344470, 12.767409, 14.183568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.180920, 12.551013, 14.875903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.570624, 12.628801, 14.921509>,  <7.804446, 12.675474, 14.948873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.570624, 12.628801, 14.921509>,  <7.180920, 12.551013, 14.875903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.570624, 12.628801, 14.921509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205511, 0.558333, 0.803760,
		0.092650, -0.806502, 0.583927,
		0.974259, 0.194472, 0.114015,
		7.862902, 12.687143, 14.955713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.356897, 12.443180, 15.580750>,  <7.180920, 12.551013, 14.875903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.356897, 12.443180, 15.580750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.644294, 12.688378, 15.449292>,  <7.816732, 12.835497, 15.370418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.644294, 12.688378, 15.449292>,  <7.356897, 12.443180, 15.580750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.644294, 12.688378, 15.449292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073236, 0.536553, 0.840683,
		0.691669, -0.579955, 0.430402,
		0.718492, 0.612995, -0.328644,
		7.859842, 12.872276, 15.350699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.600656, 12.753212, 16.131306>,  <7.356897, 12.443180, 15.580750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.600656, 12.753212, 16.131306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.802039, 12.991570, 15.881045>,  <7.922868, 13.134585, 15.730889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.802039, 12.991570, 15.881045>,  <7.600656, 12.753212, 16.131306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.802039, 12.991570, 15.881045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032307, 0.736592, 0.675565,
		0.863417, -0.319905, 0.390093,
		0.503456, 0.595897, -0.625651,
		7.953076, 13.170340, 15.693350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.171648, 12.878433, 16.481188>,  <7.600656, 12.753212, 16.131306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.171648, 12.878433, 16.481188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.106076, 13.171254, 16.216696>,  <8.066733, 13.346947, 16.058001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.106076, 13.171254, 16.216696>,  <8.171648, 12.878433, 16.481188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.106076, 13.171254, 16.216696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069886, 0.659997, 0.748011,
		0.983994, 0.168831, -0.057032,
		-0.163928, 0.732052, -0.661232,
		8.056898, 13.390870, 16.018326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.542418, 13.394632, 16.763653>,  <8.171648, 12.878433, 16.481188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.542418, 13.394632, 16.763653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.288141, 13.593408, 16.527367>,  <8.135575, 13.712673, 16.385595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.288141, 13.593408, 16.527367>,  <8.542418, 13.394632, 16.763653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.288141, 13.593408, 16.527367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243976, 0.596671, 0.764500,
		0.732373, 0.630107, -0.258058,
		-0.635693, 0.496939, -0.590716,
		8.097433, 13.742489, 16.350151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.589045, 14.172232, 16.823952>,  <8.542418, 13.394632, 16.763653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.589045, 14.172232, 16.823952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.230989, 14.128510, 16.651081>,  <8.016155, 14.102277, 16.547358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.230989, 14.128510, 16.651081>,  <8.589045, 14.172232, 16.823952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.230989, 14.128510, 16.651081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406311, 0.598904, 0.690091,
		0.183403, 0.793326, -0.580514,
		-0.895139, -0.109304, -0.432178,
		7.962447, 14.095718, 16.521427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.119459, 14.038027, 17.338745>,  <8.589045, 14.172232, 16.823952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.119459, 14.038027, 17.338745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.481681, 13.970296, 17.494335>,  <9.699014, 13.929658, 17.587688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.481681, 13.970296, 17.494335>,  <9.119459, 14.038027, 17.338745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.481681, 13.970296, 17.494335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319670, -0.330429, -0.888047,
		0.278899, 0.928518, -0.245092,
		0.905553, -0.169327, 0.388976,
		9.753346, 13.919497, 17.611029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.605399, 14.137736, 16.696592>,  <9.119459, 14.038027, 17.338745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.605399, 14.137736, 16.696592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.785104, 13.927793, 16.985781>,  <9.892926, 13.801826, 17.159294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.785104, 13.927793, 16.985781>,  <9.605399, 14.137736, 16.696592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.785104, 13.927793, 16.985781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322986, -0.659082, -0.679184,
		0.832973, 0.538641, -0.126578,
		0.449261, -0.524859, 0.722971,
		9.919882, 13.770335, 17.202673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.381476, 14.132199, 16.587709>,  <9.605399, 14.137736, 16.696592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.381476, 14.132199, 16.587709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.291679, 13.826142, 16.829092>,  <10.237801, 13.642509, 16.973921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.291679, 13.826142, 16.829092>,  <10.381476, 14.132199, 16.587709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.291679, 13.826142, 16.829092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433412, -0.633039, -0.641417,
		0.872787, 0.117552, 0.473735,
		-0.224493, -0.765143, 0.603456,
		10.224332, 13.596600, 17.010128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.987314, 13.643479, 16.567678>,  <10.381476, 14.132199, 16.587709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.987314, 13.643479, 16.567678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.739715, 13.387084, 16.749216>,  <10.591155, 13.233247, 16.858139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.739715, 13.387084, 16.749216>,  <10.987314, 13.643479, 16.567678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739715, 13.387084, 16.749216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228662, -0.699905, -0.676644,
		0.751368, -0.315065, 0.579810,
		-0.618999, -0.640989, 0.453843,
		10.554015, 13.194787, 16.885368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.369272, 13.072864, 16.857384>,  <10.987314, 13.643479, 16.567678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.369272, 13.072864, 16.857384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.003966, 12.924932, 16.789066>,  <10.784782, 12.836172, 16.748075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.003966, 12.924932, 16.789066>,  <11.369272, 13.072864, 16.857384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003966, 12.924932, 16.789066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385398, -0.648596, -0.656347,
		0.131962, -0.665243, 0.734873,
		-0.913266, -0.369831, -0.170793,
		10.729986, 12.813982, 16.737829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.528542, 12.315774, 16.756184>,  <11.369272, 13.072864, 16.857384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.528542, 12.315774, 16.756184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.154546, 12.357263, 16.620514>,  <10.930148, 12.382155, 16.539112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.154546, 12.357263, 16.620514>,  <11.528542, 12.315774, 16.756184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.154546, 12.357263, 16.620514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224503, -0.567258, -0.792349,
		-0.274582, -0.816982, 0.507095,
		-0.934988, 0.103721, -0.339174,
		10.874049, 12.388379, 16.518763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.225683, 11.600223, 16.773106>,  <11.528542, 12.315774, 16.756184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.225683, 11.600223, 16.773106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.041951, 11.838965, 16.509962>,  <10.931712, 11.982211, 16.352076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.041951, 11.838965, 16.509962>,  <11.225683, 11.600223, 16.773106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.041951, 11.838965, 16.509962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223666, -0.639031, -0.735944,
		-0.859645, -0.485182, 0.160029,
		-0.459330, 0.596857, -0.657858,
		10.904152, 12.018023, 16.312605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.801744, 11.182580, 16.305716>,  <11.225683, 11.600223, 16.773106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.801744, 11.182580, 16.305716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.883397, 11.520656, 16.108137>,  <10.932389, 11.723501, 15.989590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.883397, 11.520656, 16.108137>,  <10.801744, 11.182580, 16.305716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.883397, 11.520656, 16.108137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078160, -0.517033, -0.852390,
		-0.975818, 0.135393, -0.171603,
		0.204132, 0.845190, -0.493948,
		10.944636, 11.774213, 15.959952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.333551, 11.114140, 15.771087>,  <10.801744, 11.182580, 16.305716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.333551, 11.114140, 15.771087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.628224, 11.362922, 15.664902>,  <10.805028, 11.512191, 15.601191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.628224, 11.362922, 15.664902>,  <10.333551, 11.114140, 15.771087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.628224, 11.362922, 15.664902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135315, -0.520196, -0.843259,
		-0.662562, 0.585293, -0.467379,
		0.736683, 0.621955, -0.265463,
		10.849229, 11.549508, 15.585263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.290887, 11.092340, 15.055953>,  <10.333551, 11.114140, 15.771087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.290887, 11.092340, 15.055953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.644145, 11.271486, 15.111767>,  <10.856100, 11.378974, 15.145255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.644145, 11.271486, 15.111767>,  <10.290887, 11.092340, 15.055953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.644145, 11.271486, 15.111767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304511, -0.321073, -0.896764,
		-0.356830, 0.834462, -0.419934,
		0.883145, 0.447867, 0.139534,
		10.909088, 11.405847, 15.153627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.383492, 11.536966, 14.546521>,  <10.290887, 11.092340, 15.055953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.383492, 11.536966, 14.546521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.757897, 11.460740, 14.664886>,  <10.982540, 11.415005, 14.735906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.757897, 11.460740, 14.664886>,  <10.383492, 11.536966, 14.546521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.757897, 11.460740, 14.664886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192957, -0.425304, -0.884242,
		0.294358, 0.884761, -0.361319,
		0.936013, -0.190565, 0.295912,
		11.038701, 11.403570, 14.753660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.793884, 11.693848, 13.973661>,  <10.383492, 11.536966, 14.546521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.793884, 11.693848, 13.973661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.025218, 11.439727, 14.178374>,  <11.164018, 11.287254, 14.301202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.025218, 11.439727, 14.178374>,  <10.793884, 11.693848, 13.973661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.025218, 11.439727, 14.178374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332138, -0.389630, -0.858995,
		0.745127, 0.666768, -0.014328,
		0.578334, -0.635302, 0.511783,
		11.198718, 11.249136, 14.331909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.326790, 11.563300, 13.607766>,  <10.793884, 11.693848, 13.973661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.326790, 11.563300, 13.607766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.364208, 11.265891, 13.872621>,  <11.386660, 11.087446, 14.031533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.364208, 11.265891, 13.872621>,  <11.326790, 11.563300, 13.607766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.364208, 11.265891, 13.872621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290736, -0.615665, -0.732413,
		0.952219, 0.261021, 0.158576,
		0.093546, -0.743522, 0.662136,
		11.392272, 11.042834, 14.071261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.929303, 11.224888, 13.396235>,  <11.326790, 11.563300, 13.607766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.929303, 11.224888, 13.396235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.739204, 10.950158, 13.616204>,  <11.625145, 10.785320, 13.748185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.739204, 10.950158, 13.616204>,  <11.929303, 11.224888, 13.396235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739204, 10.950158, 13.616204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369370, -0.723014, -0.583795,
		0.798566, -0.074321, 0.597302,
		-0.475246, -0.686824, 0.549922,
		11.596631, 10.744111, 13.781181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.424987, 10.760171, 13.463303>,  <11.929303, 11.224888, 13.396235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.424987, 10.760171, 13.463303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.076357, 10.574980, 13.527810>,  <11.867179, 10.463865, 13.566515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.076357, 10.574980, 13.527810>,  <12.424987, 10.760171, 13.463303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.076357, 10.574980, 13.527810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306402, -0.771189, -0.558019,
		0.382720, -0.436942, 0.814007,
		-0.871575, -0.462978, 0.161270,
		11.814884, 10.436087, 13.576191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.570744, 10.083513, 13.693223>,  <12.424987, 10.760171, 13.463303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.570744, 10.083513, 13.693223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.187860, 10.040469, 13.585762>,  <11.958131, 10.014643, 13.521285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.187860, 10.040469, 13.585762>,  <12.570744, 10.083513, 13.693223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.187860, 10.040469, 13.585762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226522, -0.856340, -0.464079,
		-0.180118, -0.505075, 0.844071,
		-0.957207, -0.107611, -0.268653,
		11.900699, 10.008185, 13.505166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562199, 9.362989, 13.662316>,  <12.570744, 10.083513, 13.693223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562199, 9.362989, 13.662316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.243034, 9.490944, 13.457959>,  <12.051536, 9.567717, 13.335344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.243034, 9.490944, 13.457959>,  <12.562199, 9.362989, 13.662316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.243034, 9.490944, 13.457959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073905, -0.893089, -0.443768,
		-0.598229, -0.316330, 0.736246,
		-0.797910, 0.319887, -0.510893,
		12.003661, 9.586910, 13.304691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040700, 8.873511, 13.643645>,  <12.562199, 9.362989, 13.662316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040700, 8.873511, 13.643645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.991258, 9.110041, 13.324883>,  <11.961593, 9.251958, 13.133625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.991258, 9.110041, 13.324883>,  <12.040700, 8.873511, 13.643645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.991258, 9.110041, 13.324883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027720, -0.804809, -0.592887,
		-0.991944, -0.051194, 0.115870,
		-0.123606, 0.591323, -0.796906,
		11.954176, 9.287437, 13.085811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.514089, 8.583873, 13.367206>,  <12.040700, 8.873511, 13.643645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.514089, 8.583873, 13.367206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.661304, 8.807728, 13.070193>,  <11.749634, 8.942040, 12.891986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.661304, 8.807728, 13.070193>,  <11.514089, 8.583873, 13.367206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.661304, 8.807728, 13.070193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154671, -0.750608, -0.642389,
		-0.916855, 0.351273, -0.189695,
		0.368040, 0.559638, -0.742531,
		11.771716, 8.975619, 12.847434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.015183, 8.481509, 12.742481>,  <11.514089, 8.583873, 13.367206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.015183, 8.481509, 12.742481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.352859, 8.640378, 12.598481>,  <11.555464, 8.735699, 12.512081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.352859, 8.640378, 12.598481>,  <11.015183, 8.481509, 12.742481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.352859, 8.640378, 12.598481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085477, -0.563255, -0.821850,
		-0.529187, 0.724568, -0.441545,
		0.844189, 0.397171, -0.360001,
		11.606115, 8.759529, 12.490480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.791342, 8.652653, 12.087249>,  <11.015183, 8.481509, 12.742481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.791342, 8.652653, 12.087249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.187500, 8.597433, 12.084129>,  <11.425195, 8.564301, 12.082258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.187500, 8.597433, 12.084129>,  <10.791342, 8.652653, 12.087249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.187500, 8.597433, 12.084129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066120, -0.423317, -0.903566,
		0.121436, 0.895402, -0.428379,
		0.990395, -0.138049, -0.007798,
		11.484618, 8.556018, 12.081790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<12.492364, 21.235371, 31.228426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.696616, 20.933054, 31.064457>,  <12.819167, 20.751665, 30.966076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.696616, 20.933054, 31.064457>,  <12.492364, 21.235371, 31.228426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696616, 20.933054, 31.064457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484789, -0.140668, 0.863245,
		-0.710096, -0.639525, 0.294570,
		0.510630, -0.755791, -0.409923,
		12.849805, 20.706316, 30.941481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.302349, 20.595459, 31.534773>,  <12.492364, 21.235371, 31.228426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.302349, 20.595459, 31.534773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.664008, 20.511946, 31.385683>,  <12.881004, 20.461838, 31.296228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.664008, 20.511946, 31.385683>,  <12.302349, 20.595459, 31.534773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664008, 20.511946, 31.385683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408553, 0.167494, 0.897234,
		-0.124897, -0.963512, 0.236739,
		0.904149, -0.208782, -0.372727,
		12.935253, 20.449310, 31.273865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.635353, 20.038666, 31.889536>,  <12.302349, 20.595459, 31.534773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.635353, 20.038666, 31.889536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.950840, 20.232241, 31.737890>,  <13.140132, 20.348387, 31.646904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.950840, 20.232241, 31.737890>,  <12.635353, 20.038666, 31.889536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.950840, 20.232241, 31.737890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465499, -0.067337, 0.882483,
		0.401540, -0.872507, -0.278383,
		0.788718, 0.483940, -0.379112,
		13.187455, 20.377422, 31.624157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.241414, 19.728945, 32.196999>,  <12.635353, 20.038666, 31.889536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.241414, 19.728945, 32.196999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.392468, 20.072992, 32.059837>,  <13.483101, 20.279421, 31.977541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.392468, 20.072992, 32.059837>,  <13.241414, 19.728945, 32.196999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.392468, 20.072992, 32.059837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516279, 0.111833, 0.849087,
		0.768665, -0.497680, -0.401831,
		0.377636, 0.860121, -0.342904,
		13.505759, 20.331028, 31.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006294, 19.686413, 32.268314>,  <13.241414, 19.728945, 32.196999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006294, 19.686413, 32.268314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.909873, 20.073763, 32.242569>,  <13.852020, 20.306173, 32.227123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.909873, 20.073763, 32.242569>,  <14.006294, 19.686413, 32.268314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909873, 20.073763, 32.242569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585515, 0.198000, 0.786109,
		0.773993, 0.151809, -0.614727,
		-0.241054, 0.968375, -0.064365,
		13.837557, 20.364275, 32.223259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.648560, 20.030464, 32.196239>,  <14.006294, 19.686413, 32.268314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.648560, 20.030464, 32.196239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.370513, 20.278549, 32.341652>,  <14.203685, 20.427401, 32.428898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.370513, 20.278549, 32.341652>,  <14.648560, 20.030464, 32.196239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370513, 20.278549, 32.341652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582516, 0.189589, 0.790399,
		0.421293, 0.761180, -0.493069,
		-0.695117, 0.620210, 0.363527,
		14.161978, 20.464613, 32.450710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037219, 20.529343, 32.384659>,  <14.648560, 20.030464, 32.196239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037219, 20.529343, 32.384659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.702130, 20.575020, 32.598270>,  <14.501078, 20.602427, 32.726437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.702130, 20.575020, 32.598270>,  <15.037219, 20.529343, 32.384659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702130, 20.575020, 32.598270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545671, 0.213714, 0.810290,
		-0.021601, 0.970199, -0.241343,
		-0.837721, 0.114191, 0.534026,
		14.450814, 20.609278, 32.758476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196726, 21.061817, 32.870979>,  <15.037219, 20.529343, 32.384659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196726, 21.061817, 32.870979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.870369, 20.876226, 33.008991>,  <14.674555, 20.764872, 33.091801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.870369, 20.876226, 33.008991>,  <15.196726, 21.061817, 32.870979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870369, 20.876226, 33.008991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274102, 0.215049, 0.937348,
		-0.509107, 0.859348, -0.048279,
		-0.815891, -0.463977, 0.345032,
		14.625602, 20.737034, 33.112499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991692, 21.433083, 33.438931>,  <15.196726, 21.061817, 32.870979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.991692, 21.433083, 33.438931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.799523, 21.093803, 33.528152>,  <14.684222, 20.890236, 33.581688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.799523, 21.093803, 33.528152>,  <14.991692, 21.433083, 33.438931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799523, 21.093803, 33.528152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321313, 0.066426, 0.944640,
		-0.816060, 0.525495, 0.240625,
		-0.480420, -0.848199, 0.223056,
		14.655397, 20.839344, 33.595070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680537, 21.557878, 34.054741>,  <14.991692, 21.433083, 33.438931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680537, 21.557878, 34.054741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.707593, 21.159719, 34.027588>,  <14.723826, 20.920824, 34.011295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.707593, 21.159719, 34.027588>,  <14.680537, 21.557878, 34.054741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707593, 21.159719, 34.027588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448228, -0.030467, 0.893400,
		-0.891357, -0.090856, 0.444104,
		0.067640, -0.995398, -0.067881,
		14.727885, 20.861099, 34.007225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547607, 21.337200, 34.678902>,  <14.680537, 21.557878, 34.054741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547607, 21.337200, 34.678902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.707370, 21.012983, 34.507557>,  <14.803227, 20.818453, 34.404751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.707370, 21.012983, 34.507557>,  <14.547607, 21.337200, 34.678902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707370, 21.012983, 34.507557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483838, -0.210510, 0.849463,
		-0.778701, -0.546538, 0.308093,
		0.399407, -0.810544, -0.428360,
		14.827191, 20.769819, 34.379047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444849, 20.705767, 35.084042>,  <14.547607, 21.337200, 34.678902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444849, 20.705767, 35.084042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.773044, 20.639589, 34.865162>,  <14.969961, 20.599884, 34.733833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.773044, 20.639589, 34.865162>,  <14.444849, 20.705767, 35.084042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773044, 20.639589, 34.865162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490702, -0.287246, 0.822618,
		-0.293315, -0.943453, -0.154474,
		0.820475, -0.165486, -0.547208,
		15.019190, 20.589956, 34.701000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762157, 20.079445, 35.212997>,  <14.444849, 20.705767, 35.084042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762157, 20.079445, 35.212997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.040162, 20.349829, 35.114990>,  <15.206965, 20.512060, 35.056187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.040162, 20.349829, 35.114990>,  <14.762157, 20.079445, 35.212997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040162, 20.349829, 35.114990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432224, -0.120466, 0.893683,
		0.574579, -0.727024, -0.375892,
		0.695012, 0.675961, -0.245020,
		15.248666, 20.552616, 35.041485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173245, 20.149942, 35.794785>,  <14.762157, 20.079445, 35.212997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173245, 20.149942, 35.794785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.325654, 20.433046, 35.556828>,  <15.417099, 20.602909, 35.414055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.325654, 20.433046, 35.556828>,  <15.173245, 20.149942, 35.794785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.325654, 20.433046, 35.556828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540380, 0.351613, 0.764433,
		0.750208, -0.612733, -0.248488,
		0.381022, 0.707761, -0.594892,
		15.439960, 20.645374, 35.378361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912369, 19.490959, 35.714142>,  <15.173245, 20.149942, 35.794785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912369, 19.490959, 35.714142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.973772, 19.127417, 35.869274>,  <15.010614, 18.909290, 35.962353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.973772, 19.127417, 35.869274>,  <14.912369, 19.490959, 35.714142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973772, 19.127417, 35.869274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241905, -0.345980, -0.906521,
		0.958080, 0.232978, 0.166746,
		0.153508, -0.908856, 0.387835,
		15.019825, 18.854759, 35.985626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570669, 19.262569, 35.412766>,  <14.912369, 19.490959, 35.714142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570669, 19.262569, 35.412766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.367953, 18.943747, 35.544140>,  <15.246324, 18.752453, 35.622963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.367953, 18.943747, 35.544140>,  <15.570669, 19.262569, 35.412766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367953, 18.943747, 35.544140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121844, -0.443382, -0.888013,
		0.853416, -0.410018, 0.321818,
		-0.506789, -0.797056, 0.328431,
		15.215917, 18.704630, 35.642670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898499, 18.714790, 35.165783>,  <15.570669, 19.262569, 35.412766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898499, 18.714790, 35.165783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.547666, 18.560980, 35.280930>,  <15.337166, 18.468693, 35.350018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.547666, 18.560980, 35.280930>,  <15.898499, 18.714790, 35.165783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547666, 18.560980, 35.280930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033834, -0.647261, -0.761517,
		0.479149, -0.658173, 0.580711,
		-0.877081, -0.384528, 0.287865,
		15.284541, 18.445621, 35.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944743, 17.975397, 35.100243>,  <15.898499, 18.714790, 35.165783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944743, 17.975397, 35.100243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554359, 18.060307, 35.080463>,  <15.320129, 18.111252, 35.068596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554359, 18.060307, 35.080463>,  <15.944743, 17.975397, 35.100243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554359, 18.060307, 35.080463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061306, -0.485064, -0.872327,
		-0.209156, -0.848324, 0.486416,
		-0.975958, 0.212273, -0.049447,
		15.261572, 18.123989, 35.065628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565718, 17.303410, 34.871117>,  <15.944743, 17.975397, 35.100243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565718, 17.303410, 34.871117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.313692, 17.603737, 34.791828>,  <15.162477, 17.783934, 34.744255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.313692, 17.603737, 34.791828>,  <15.565718, 17.303410, 34.871117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313692, 17.603737, 34.791828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139486, -0.360538, -0.922256,
		-0.763914, -0.553430, 0.331890,
		-0.630063, 0.750818, -0.198224,
		15.124673, 17.828981, 34.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059827, 16.917459, 34.642578>,  <15.565718, 17.303410, 34.871117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059827, 16.917459, 34.642578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.967568, 17.288338, 34.524517>,  <14.912213, 17.510864, 34.453682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.967568, 17.288338, 34.524517>,  <15.059827, 16.917459, 34.642578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.967568, 17.288338, 34.524517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229987, -0.346681, -0.909350,
		-0.945467, -0.141856, 0.293203,
		-0.230645, 0.927194, -0.295150,
		14.898375, 17.566496, 34.435970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.422274, 16.868412, 34.451050>,  <15.059827, 16.917459, 34.642578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.422274, 16.868412, 34.451050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.562781, 17.199724, 34.276436>,  <14.647086, 17.398512, 34.171669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.562781, 17.199724, 34.276436>,  <14.422274, 16.868412, 34.451050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562781, 17.199724, 34.276436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352810, -0.314776, -0.881159,
		-0.867257, 0.463536, 0.181655,
		0.351268, 0.828281, -0.436532,
		14.668161, 17.448208, 34.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912902, 17.057318, 33.949394>,  <14.422274, 16.868412, 34.451050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912902, 17.057318, 33.949394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.254132, 17.228294, 33.829693>,  <14.458871, 17.330881, 33.757870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.254132, 17.228294, 33.829693>,  <13.912902, 17.057318, 33.949394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.254132, 17.228294, 33.829693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222802, -0.220207, -0.949667,
		-0.471826, 0.876813, -0.092619,
		0.853076, 0.427443, -0.299255,
		14.510056, 17.356527, 33.739918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.732615, 17.481548, 33.296604>,  <13.912902, 17.057318, 33.949394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.732615, 17.481548, 33.296604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.124933, 17.405037, 33.311821>,  <14.360325, 17.359129, 33.320950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.124933, 17.405037, 33.311821>,  <13.732615, 17.481548, 33.296604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124933, 17.405037, 33.311821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021134, -0.298153, -0.954284,
		0.193878, 0.935156, -0.296471,
		0.980798, -0.191280, 0.038042,
		14.419172, 17.347652, 33.323235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861045, 17.723965, 32.764332>,  <13.732615, 17.481548, 33.296604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861045, 17.723965, 32.764332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.182170, 17.500984, 32.848942>,  <14.374845, 17.367195, 32.899708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.182170, 17.500984, 32.848942>,  <13.861045, 17.723965, 32.764332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182170, 17.500984, 32.848942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049977, -0.290600, -0.955539,
		0.594134, 0.777689, -0.205437,
		0.802812, -0.557451, 0.211522,
		14.423014, 17.333750, 32.912399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278973, 17.836060, 32.222618>,  <13.861045, 17.723965, 32.764332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278973, 17.836060, 32.222618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399334, 17.486458, 32.375237>,  <14.471551, 17.276697, 32.466808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399334, 17.486458, 32.375237>,  <14.278973, 17.836060, 32.222618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399334, 17.486458, 32.375237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006262, -0.401886, -0.915668,
		0.953634, 0.273138, -0.126401,
		0.300903, -0.874004, 0.381542,
		14.489605, 17.224257, 32.489700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761394, 17.468597, 31.711308>,  <14.278973, 17.836060, 32.222618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761394, 17.468597, 31.711308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.659637, 17.168274, 31.955135>,  <14.598584, 16.988081, 32.101433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.659637, 17.168274, 31.955135>,  <14.761394, 17.468597, 31.711308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659637, 17.168274, 31.955135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020774, -0.625918, -0.779612,
		0.966879, -0.210989, 0.143629,
		-0.254389, -0.750807, 0.609570,
		14.583321, 16.943031, 32.138008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.177371, 16.931765, 31.471107>,  <14.761394, 17.468597, 31.711308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.177371, 16.931765, 31.471107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.840875, 16.808939, 31.649107>,  <14.638977, 16.735243, 31.755907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.840875, 16.808939, 31.649107>,  <15.177371, 16.931765, 31.471107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.840875, 16.808939, 31.649107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131784, -0.681787, -0.719583,
		0.524355, -0.663986, 0.533080,
		-0.841240, -0.307065, 0.445001,
		14.588503, 16.716820, 31.782608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230942, 16.165318, 31.440716>,  <15.177371, 16.931765, 31.471107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230942, 16.165318, 31.440716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.849601, 16.274397, 31.492495>,  <14.620796, 16.339844, 31.523561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.849601, 16.274397, 31.492495>,  <15.230942, 16.165318, 31.440716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849601, 16.274397, 31.492495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265858, -0.555415, -0.787930,
		-0.142969, -0.785589, 0.602005,
		-0.953351, 0.272698, 0.129448,
		14.563596, 16.356207, 31.531328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631700, 15.535803, 31.528355>,  <15.230942, 16.165318, 31.440716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631700, 15.535803, 31.528355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.002028, 15.403344, 31.455473>,  <16.224224, 15.323869, 31.411743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.002028, 15.403344, 31.455473>,  <15.631700, 15.535803, 31.528355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002028, 15.403344, 31.455473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184960, -0.023468, 0.982466,
		-0.329616, -0.943287, 0.039521,
		0.925820, -0.331146, -0.182206,
		16.279774, 15.304001, 31.400810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680597, 14.980365, 31.942953>,  <15.631700, 15.535803, 31.528355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680597, 14.980365, 31.942953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.054432, 15.087022, 31.848764>,  <16.278732, 15.151016, 31.792252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.054432, 15.087022, 31.848764>,  <15.680597, 14.980365, 31.942953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054432, 15.087022, 31.848764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230926, 0.048753, 0.971749,
		0.270591, -0.962561, -0.016011,
		0.934588, 0.266644, -0.235473,
		16.334808, 15.167015, 31.778122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.987630, 14.576449, 32.445671>,  <15.680597, 14.980365, 31.942953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.987630, 14.576449, 32.445671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.216780, 14.877295, 32.315357>,  <16.354269, 15.057803, 32.237171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.216780, 14.877295, 32.315357>,  <15.987630, 14.576449, 32.445671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216780, 14.877295, 32.315357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499058, -0.004772, 0.866556,
		0.650196, -0.659013, -0.378083,
		0.572876, 0.752116, -0.325783,
		16.388643, 15.102930, 32.217621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.715544, 14.375066, 32.568581>,  <15.987630, 14.576449, 32.445671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.715544, 14.375066, 32.568581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.715740, 14.771566, 32.515785>,  <16.715858, 15.009466, 32.484108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.715740, 14.771566, 32.515785>,  <16.715544, 14.375066, 32.568581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715740, 14.771566, 32.515785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634480, 0.101710, 0.766218,
		0.772939, -0.084122, -0.628879,
		0.000493, 0.991251, -0.131990,
		16.715887, 15.068942, 32.476189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442636, 14.555077, 32.505356>,  <16.715544, 14.375066, 32.568581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.442636, 14.555077, 32.505356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.230021, 14.870832, 32.628208>,  <17.102451, 15.060287, 32.701920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.230021, 14.870832, 32.628208>,  <17.442636, 14.555077, 32.505356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.230021, 14.870832, 32.628208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580385, 0.075330, 0.810850,
		0.616941, 0.609252, -0.498192,
		-0.531541, 0.789390, 0.307127,
		17.070559, 15.107650, 32.720345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.901968, 15.013843, 32.701691>,  <17.442636, 14.555077, 32.505356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.901968, 15.013843, 32.701691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.584150, 15.171226, 32.886684>,  <17.393459, 15.265656, 32.997681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.584150, 15.171226, 32.886684>,  <17.901968, 15.013843, 32.701691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584150, 15.171226, 32.886684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585487, 0.294547, 0.755279,
		0.160946, 0.870881, -0.464395,
		-0.794545, 0.393456, 0.462484,
		17.345787, 15.289263, 33.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182375, 15.646250, 32.927395>,  <17.901968, 15.013843, 32.701691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.182375, 15.646250, 32.927395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.846315, 15.571134, 33.130917>,  <17.644680, 15.526064, 33.253029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.846315, 15.571134, 33.130917>,  <18.182375, 15.646250, 32.927395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846315, 15.571134, 33.130917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441396, 0.308378, 0.842658,
		-0.315147, 0.932544, -0.176194,
		-0.840150, -0.187789, 0.508805,
		17.594271, 15.514797, 33.283558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.164288, 16.264380, 32.382946>,  <18.182375, 15.646250, 32.927395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.164288, 16.264380, 32.382946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.511356, 16.409056, 32.246521>,  <18.719599, 16.495861, 32.164665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.511356, 16.409056, 32.246521>,  <18.164288, 16.264380, 32.382946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511356, 16.409056, 32.246521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142527, -0.476264, -0.867674,
		-0.476264, 0.801469, -0.361691,
		0.867674, 0.361691, -0.341059,
		18.771658, 16.517563, 32.144203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059225, 16.454370, 31.629932>,  <18.164288, 16.264380, 32.382946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059225, 16.454370, 31.629932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.456921, 16.449402, 31.672514>,  <18.695538, 16.446421, 31.698063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.456921, 16.449402, 31.672514>,  <18.059225, 16.454370, 31.629932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456921, 16.449402, 31.672514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086862, -0.488463, -0.868250,
		0.062784, 0.872496, -0.484571,
		0.994240, -0.012421, 0.106455,
		18.755192, 16.445675, 31.704451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303101, 16.869335, 31.145119>,  <18.059225, 16.454370, 31.629932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303101, 16.869335, 31.145119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.600147, 16.617037, 31.235167>,  <18.778376, 16.465658, 31.289196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.600147, 16.617037, 31.235167>,  <18.303101, 16.869335, 31.145119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600147, 16.617037, 31.235167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042001, -0.291617, -0.955613,
		0.668396, 0.719111, -0.190069,
		0.742619, -0.630744, 0.225119,
		18.822933, 16.427813, 31.302702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915573, 17.067427, 30.692499>,  <18.303101, 16.869335, 31.145119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915573, 17.067427, 30.692499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.978191, 16.689610, 30.807970>,  <19.015762, 16.462919, 30.877253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.978191, 16.689610, 30.807970>,  <18.915573, 17.067427, 30.692499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978191, 16.689610, 30.807970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086697, -0.278013, -0.956657,
		0.983858, 0.174788, 0.038367,
		0.156546, -0.944541, 0.288679,
		19.025156, 16.406248, 30.894573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107330, 16.800653, 30.051249>,  <18.915573, 17.067427, 30.692499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.107330, 16.800653, 30.051249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.100969, 16.450274, 30.244106>,  <19.097153, 16.240046, 30.359821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.100969, 16.450274, 30.244106>,  <19.107330, 16.800653, 30.051249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.100969, 16.450274, 30.244106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158376, -0.478324, -0.863784,
		0.987251, 0.062624, 0.146336,
		-0.015902, -0.875948, 0.482144,
		19.096199, 16.187489, 30.388750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.605989, 16.564169, 29.723003>,  <19.107330, 16.800653, 30.051249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.605989, 16.564169, 29.723003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.357985, 16.295954, 29.885956>,  <19.209181, 16.135025, 29.983728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.357985, 16.295954, 29.885956>,  <19.605989, 16.564169, 29.723003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357985, 16.295954, 29.885956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029768, -0.498752, -0.866233,
		0.784026, -0.549204, 0.289273,
		-0.620014, -0.670538, 0.407383,
		19.171980, 16.094791, 30.008171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766888, 15.857119, 29.541389>,  <19.605989, 16.564169, 29.723003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766888, 15.857119, 29.541389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.391817, 15.817924, 29.674753>,  <19.166775, 15.794407, 29.754772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.391817, 15.817924, 29.674753>,  <19.766888, 15.857119, 29.541389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391817, 15.817924, 29.674753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216862, -0.584692, -0.781733,
		0.271543, -0.805316, 0.527002,
		-0.937675, -0.097988, 0.333411,
		19.110514, 15.788527, 29.774776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.062271, 20.125666, 32.336163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.296583, 20.001244, 32.635525>,  <16.437170, 19.926590, 32.815140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.296583, 20.001244, 32.635525>,  <16.062271, 20.125666, 32.336163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296583, 20.001244, 32.635525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568072, -0.816202, 0.105400,
		0.578061, -0.486887, -0.654817,
		0.585781, -0.311055, 0.748402,
		16.472317, 19.907927, 32.860046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148592, 19.328281, 32.340813>,  <16.062271, 20.125666, 32.336163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148592, 19.328281, 32.340813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.215275, 19.397150, 32.729156>,  <16.255285, 19.438471, 32.962162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.215275, 19.397150, 32.729156>,  <16.148592, 19.328281, 32.340813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215275, 19.397150, 32.729156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775114, -0.585702, 0.236964,
		0.609432, -0.792029, 0.035813,
		0.166706, 0.172173, 0.970858,
		16.265287, 19.448801, 33.020412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354969, 18.647089, 32.654427>,  <16.148592, 19.328281, 32.340813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354969, 18.647089, 32.654427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.198946, 18.865225, 32.951199>,  <16.105331, 18.996105, 33.129261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.198946, 18.865225, 32.951199>,  <16.354969, 18.647089, 32.654427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198946, 18.865225, 32.951199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752360, -0.653292, 0.084645,
		0.530858, -0.525183, 0.665111,
		-0.390057, 0.545337, 0.741932,
		16.081928, 19.028826, 33.173779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622998, 18.787716, 32.446980>,  <16.354969, 18.647089, 32.654427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622998, 18.787716, 32.446980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.463796, 19.139185, 32.341511>,  <15.368275, 19.350067, 32.278229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.463796, 19.139185, 32.341511>,  <15.622998, 18.787716, 32.446980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463796, 19.139185, 32.341511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019019, -0.279451, -0.959972,
		-0.917186, -0.387089, 0.094512,
		-0.398006, 0.878675, -0.263671,
		15.344394, 19.402788, 32.262409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870923, 18.848875, 32.317368>,  <15.622998, 18.787716, 32.446980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870923, 18.848875, 32.317368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.171670, 19.047289, 32.143635>,  <15.352118, 19.166336, 32.039394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.171670, 19.047289, 32.143635>,  <14.870923, 18.848875, 32.317368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.171670, 19.047289, 32.143635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067169, -0.597713, -0.798892,
		-0.655884, 0.629834, -0.416083,
		0.751867, 0.496033, -0.434335,
		15.397230, 19.196098, 32.013332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.740114, 18.922773, 31.692148>,  <14.870923, 18.848875, 32.317368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.740114, 18.922773, 31.692148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.137500, 18.898067, 31.653757>,  <15.375932, 18.883244, 31.630722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.137500, 18.898067, 31.653757>,  <14.740114, 18.922773, 31.692148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137500, 18.898067, 31.653757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114106, -0.517965, -0.847757,
		0.002649, 0.853169, -0.521628,
		0.993465, -0.061767, -0.095979,
		15.435539, 18.879538, 31.624964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020241, 18.805336, 30.917259>,  <14.740114, 18.922773, 31.692148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020241, 18.805336, 30.917259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.314627, 18.699177, 31.166393>,  <15.491259, 18.635483, 31.315874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.314627, 18.699177, 31.166393>,  <15.020241, 18.805336, 30.917259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314627, 18.699177, 31.166393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297445, -0.699667, -0.649609,
		0.608179, 0.663348, -0.435990,
		0.735965, -0.265396, 0.622833,
		15.535417, 18.619558, 31.353243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236624, 19.410248, 31.281597>,  <15.020241, 18.805336, 30.917259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.236624, 19.410248, 31.281597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.633943, 19.450943, 31.259642>,  <15.872334, 19.475359, 31.246468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.633943, 19.450943, 31.259642>,  <15.236624, 19.410248, 31.281597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633943, 19.450943, 31.259642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062721, 0.075457, -0.995175,
		-0.097104, 0.991945, 0.081332,
		0.993296, 0.101737, -0.054888,
		15.931931, 19.481464, 31.243176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393491, 19.903572, 30.812593>,  <15.236624, 19.410248, 31.281597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393491, 19.903572, 30.812593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.753731, 19.729771, 30.817068>,  <15.969874, 19.625488, 30.819754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.753731, 19.729771, 30.817068>,  <15.393491, 19.903572, 30.812593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.753731, 19.729771, 30.817068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000747, -0.027285, -0.999627,
		0.434649, 0.900256, -0.024898,
		0.900599, -0.434506, 0.011187,
		16.023911, 19.599419, 30.820425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861980, 20.336365, 30.390574>,  <15.393491, 19.903572, 30.812593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861980, 20.336365, 30.390574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.060947, 19.989719, 30.374802>,  <16.180326, 19.781733, 30.365339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.060947, 19.989719, 30.374802>,  <15.861980, 20.336365, 30.390574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060947, 19.989719, 30.374802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148882, 0.130053, -0.980265,
		0.854641, 0.481730, 0.193714,
		0.497416, -0.866615, -0.039428,
		16.210173, 19.729734, 30.362974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534239, 20.456739, 30.171719>,  <15.861980, 20.336365, 30.390574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.534239, 20.456739, 30.171719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.479948, 20.074272, 30.067934>,  <16.447374, 19.844791, 30.005663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.479948, 20.074272, 30.067934>,  <16.534239, 20.456739, 30.171719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479948, 20.074272, 30.067934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388923, 0.189440, -0.901583,
		0.911217, -0.223279, 0.346164,
		-0.135727, -0.956169, -0.259459,
		16.439230, 19.787422, 29.990097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.897682, 20.520987, 29.406794>,  <16.534239, 20.456739, 30.171719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.897682, 20.520987, 29.406794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.028376, 20.143326, 29.389702>,  <17.106792, 19.916729, 29.379448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.028376, 20.143326, 29.389702>,  <16.897682, 20.520987, 29.406794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028376, 20.143326, 29.389702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581627, -0.165233, -0.796497,
		0.744953, 0.285095, -0.603130,
		0.326734, -0.944150, -0.042728,
		17.126396, 19.860081, 29.376883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626446, 20.585293, 29.475899>,  <16.897682, 20.520987, 29.406794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626446, 20.585293, 29.475899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.963367, 20.415802, 29.342648>,  <18.165522, 20.314108, 29.262697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.963367, 20.415802, 29.342648>,  <17.626446, 20.585293, 29.475899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.963367, 20.415802, 29.342648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385528, 0.041702, 0.921753,
		-0.376681, -0.904829, 0.198486,
		0.842306, -0.423729, -0.333128,
		18.216059, 20.288683, 29.242708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705999, 20.068830, 29.916798>,  <17.626446, 20.585293, 29.475899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.705999, 20.068830, 29.916798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.054199, 20.130150, 29.729723>,  <18.263119, 20.166941, 29.617477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.054199, 20.130150, 29.729723>,  <17.705999, 20.068830, 29.916798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054199, 20.130150, 29.729723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470066, 0.022630, 0.882341,
		0.145845, -0.987921, -0.052361,
		0.870498, 0.153299, -0.467689,
		18.315348, 20.176140, 29.589417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122536, 19.781109, 30.443346>,  <17.705999, 20.068830, 29.916798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122536, 19.781109, 30.443346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.341194, 20.011921, 30.200624>,  <18.472389, 20.150408, 30.054991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.341194, 20.011921, 30.200624>,  <18.122536, 19.781109, 30.443346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341194, 20.011921, 30.200624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583916, 0.256722, 0.770153,
		0.600183, -0.775324, -0.196602,
		0.546646, 0.577032, -0.606805,
		18.505188, 20.185030, 30.018583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.757423, 19.508991, 30.495228>,  <18.122536, 19.781109, 30.443346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.757423, 19.508991, 30.495228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.800922, 19.890427, 30.382910>,  <18.827021, 20.119287, 30.315519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.800922, 19.890427, 30.382910>,  <18.757423, 19.508991, 30.495228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800922, 19.890427, 30.382910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678678, 0.135173, 0.721890,
		0.726340, -0.269071, -0.632479,
		0.108746, 0.953587, -0.280794,
		18.833546, 20.176502, 30.298672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442093, 19.697992, 30.515728>,  <18.757423, 19.508991, 30.495228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442093, 19.697992, 30.515728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.259993, 20.052698, 30.547710>,  <19.150732, 20.265522, 30.566900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.259993, 20.052698, 30.547710>,  <19.442093, 19.697992, 30.515728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259993, 20.052698, 30.547710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636795, 0.261518, 0.725327,
		0.622286, 0.381122, -0.683745,
		-0.455250, 0.886766, 0.079957,
		19.123417, 20.318727, 30.571697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816427, 20.042694, 30.861183>,  <19.442093, 19.697992, 30.515728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816427, 20.042694, 30.861183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.531275, 20.322989, 30.872318>,  <19.360184, 20.491165, 30.879000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.531275, 20.322989, 30.872318>,  <19.816427, 20.042694, 30.861183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.531275, 20.322989, 30.872318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376143, 0.348558, 0.858501,
		0.591879, 0.622478, -0.512056,
		-0.712879, 0.700735, 0.027837,
		19.317411, 20.533209, 30.880669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187996, 20.709970, 31.017551>,  <19.816427, 20.042694, 30.861183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187996, 20.709970, 31.017551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.800968, 20.736935, 31.114929>,  <19.568752, 20.753113, 31.173357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.800968, 20.736935, 31.114929>,  <20.187996, 20.709970, 31.017551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800968, 20.736935, 31.114929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250659, 0.136745, 0.958369,
		0.031314, 0.988310, -0.149207,
		-0.967569, 0.067411, 0.243447,
		19.510698, 20.757158, 31.187963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.280737, 21.185665, 31.541634>,  <20.187996, 20.709970, 31.017551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.280737, 21.185665, 31.541634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.906889, 21.047062, 31.573690>,  <19.682581, 20.963900, 31.592924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.906889, 21.047062, 31.573690>,  <20.280737, 21.185665, 31.541634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906889, 21.047062, 31.573690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048244, 0.099733, 0.993844,
		-0.352365, 0.932731, -0.076495,
		-0.934618, -0.346506, 0.080141,
		19.626503, 20.943110, 31.597733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840988, 21.712793, 32.030285>,  <20.280737, 21.185665, 31.541634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840988, 21.712793, 32.030285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.683256, 21.345289, 32.022461>,  <19.588617, 21.124786, 32.017765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.683256, 21.345289, 32.022461>,  <19.840988, 21.712793, 32.030285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683256, 21.345289, 32.022461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077885, -0.054620, 0.995465,
		-0.915662, 0.391019, 0.093096,
		-0.394330, -0.918761, -0.019559,
		19.564957, 21.069660, 32.016594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.260468, 21.711821, 32.493805>,  <19.840988, 21.712793, 32.030285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.260468, 21.711821, 32.493805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.344912, 21.321836, 32.465843>,  <19.395578, 21.087847, 32.449066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.344912, 21.321836, 32.465843>,  <19.260468, 21.711821, 32.493805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344912, 21.321836, 32.465843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335964, -0.139537, 0.931481,
		-0.917911, -0.173159, -0.357009,
		0.211111, -0.974959, -0.069908,
		19.408245, 21.029348, 32.444870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566978, 21.433249, 32.671089>,  <19.260468, 21.711821, 32.493805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566978, 21.433249, 32.671089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.882109, 21.198244, 32.745018>,  <19.071188, 21.057241, 32.789375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.882109, 21.198244, 32.745018>,  <18.566978, 21.433249, 32.671089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.882109, 21.198244, 32.745018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395748, -0.252950, 0.882836,
		-0.471924, -0.768667, -0.431787,
		0.787827, -0.587510, 0.184825,
		19.118458, 21.021992, 32.800465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223156, 20.932331, 33.095043>,  <18.566978, 21.433249, 32.671089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223156, 20.932331, 33.095043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.613937, 20.878136, 33.161015>,  <18.848406, 20.845617, 33.200596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.613937, 20.878136, 33.161015>,  <18.223156, 20.932331, 33.095043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613937, 20.878136, 33.161015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198728, -0.295478, 0.934451,
		-0.077876, -0.945693, -0.315595,
		0.976955, -0.135489, 0.164925,
		18.907024, 20.837488, 33.210491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.221165, 20.344036, 33.392174>,  <18.223156, 20.932331, 33.095043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.221165, 20.344036, 33.392174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.562359, 20.526033, 33.494461>,  <18.767076, 20.635233, 33.555836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.562359, 20.526033, 33.494461>,  <18.221165, 20.344036, 33.392174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.562359, 20.526033, 33.494461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123694, -0.299766, 0.945960,
		0.507063, -0.838523, -0.199417,
		0.852987, 0.454994, 0.255720,
		18.818254, 20.662531, 33.571178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500147, 19.909166, 33.824543>,  <18.221165, 20.344036, 33.392174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.500147, 19.909166, 33.824543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.702808, 20.245155, 33.902260>,  <18.824406, 20.446749, 33.948891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.702808, 20.245155, 33.902260>,  <18.500147, 19.909166, 33.824543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702808, 20.245155, 33.902260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026997, -0.240709, 0.970222,
		0.861728, -0.486319, -0.144632,
		0.506651, 0.839972, 0.194297,
		18.854803, 20.497147, 33.960548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.017426, 19.304569, 33.774181>,  <18.500147, 19.909166, 33.824543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.017426, 19.304569, 33.774181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.153692, 18.969830, 33.945587>,  <19.235453, 18.768986, 34.048431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.153692, 18.969830, 33.945587>,  <19.017426, 19.304569, 33.774181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153692, 18.969830, 33.945587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052377, -0.471963, -0.880061,
		0.938723, 0.277365, -0.204615,
		0.340669, -0.836851, 0.428516,
		19.255894, 18.718775, 34.074142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.661036, 19.013258, 33.344936>,  <19.017426, 19.304569, 33.774181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.661036, 19.013258, 33.344936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.456333, 18.724998, 33.532028>,  <19.333511, 18.552042, 33.644283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.456333, 18.724998, 33.532028>,  <19.661036, 19.013258, 33.344936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.456333, 18.724998, 33.532028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097211, -0.589496, -0.801900,
		0.853614, -0.364908, 0.371733,
		-0.511755, -0.720650, 0.467729,
		19.302807, 18.508804, 33.672348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061411, 18.475414, 33.345482>,  <19.661036, 19.013258, 33.344936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061411, 18.475414, 33.345482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.687222, 18.341215, 33.389904>,  <19.462708, 18.260695, 33.416557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.687222, 18.341215, 33.389904>,  <20.061411, 18.475414, 33.345482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687222, 18.341215, 33.389904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141373, -0.643265, -0.752479,
		0.323894, -0.688222, 0.649186,
		-0.935471, -0.335500, 0.111053,
		19.406580, 18.240564, 33.423222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081417, 17.733355, 33.231827>,  <20.061411, 18.475414, 33.345482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081417, 17.733355, 33.231827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.682922, 17.753195, 33.203381>,  <19.443827, 17.765099, 33.186314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.682922, 17.753195, 33.203381>,  <20.081417, 17.733355, 33.231827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.682922, 17.753195, 33.203381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001495, -0.810259, -0.586071,
		-0.086687, -0.583970, 0.807134,
		-0.996235, 0.049599, -0.071112,
		19.384052, 17.768074, 33.182049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.807686, 17.027302, 33.256527>,  <20.081417, 17.733355, 33.231827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.807686, 17.027302, 33.256527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.484886, 17.216284, 33.114803>,  <19.291206, 17.329674, 33.029770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.484886, 17.216284, 33.114803>,  <19.807686, 17.027302, 33.256527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.484886, 17.216284, 33.114803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155444, -0.748750, -0.644368,
		-0.569724, -0.464931, 0.677683,
		-0.807002, 0.472454, -0.354310,
		19.242786, 17.358021, 33.008511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232546, 16.497971, 33.278572>,  <19.807686, 17.027302, 33.256527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232546, 16.497971, 33.278572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.134802, 16.773722, 33.005795>,  <19.076155, 16.939173, 32.842129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.134802, 16.773722, 33.005795>,  <19.232546, 16.497971, 33.278572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.134802, 16.773722, 33.005795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249725, -0.724280, -0.642694,
		-0.936977, 0.013250, 0.349140,
		-0.244359, 0.689379, -0.681942,
		19.061495, 16.980536, 32.801212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.562941, 16.336655, 32.982018>,  <19.232546, 16.497971, 33.278572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.562941, 16.336655, 32.982018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.733063, 16.585480, 32.719063>,  <18.835136, 16.734776, 32.561291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.733063, 16.585480, 32.719063>,  <18.562941, 16.336655, 32.982018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.733063, 16.585480, 32.719063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081474, -0.697085, -0.712343,
		-0.901376, 0.356523, -0.245792,
		0.425304, 0.622064, -0.657384,
		18.860655, 16.772099, 32.521847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842474, 16.329697, 33.308952>,  <18.562941, 16.336655, 32.982018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842474, 16.329697, 33.308952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.673813, 16.030130, 33.513435>,  <17.572617, 15.850390, 33.636124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.673813, 16.030130, 33.513435>,  <17.842474, 16.329697, 33.308952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673813, 16.030130, 33.513435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121894, 0.511842, 0.850388,
		-0.898526, 0.420883, -0.124533,
		-0.421655, -0.748916, 0.511206,
		17.547316, 15.805455, 33.666798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373980, 16.688194, 33.748932>,  <17.842474, 16.329697, 33.308952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373980, 16.688194, 33.748932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.460415, 16.324499, 33.891247>,  <17.512276, 16.106281, 33.976635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.460415, 16.324499, 33.891247>,  <17.373980, 16.688194, 33.748932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460415, 16.324499, 33.891247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203056, 0.398283, 0.894505,
		-0.955025, -0.121048, 0.270692,
		0.216090, -0.909240, 0.355791,
		17.525242, 16.051727, 33.997986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996099, 16.649347, 34.349072>,  <17.373980, 16.688194, 33.748932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996099, 16.649347, 34.349072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.273806, 16.364267, 34.389179>,  <17.440430, 16.193220, 34.413246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.273806, 16.364267, 34.389179>,  <16.996099, 16.649347, 34.349072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273806, 16.364267, 34.389179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113472, 0.245972, 0.962612,
		-0.710717, -0.656930, 0.251642,
		0.694266, -0.712700, 0.100273,
		17.482086, 16.150457, 34.419262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758562, 16.271484, 34.940495>,  <16.996099, 16.649347, 34.349072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758562, 16.271484, 34.940495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.145157, 16.183662, 34.887276>,  <17.377113, 16.130968, 34.855343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.145157, 16.183662, 34.887276>,  <16.758562, 16.271484, 34.940495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145157, 16.183662, 34.887276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180166, 0.210883, 0.960765,
		-0.182884, -0.952535, 0.243372,
		0.966485, -0.219556, -0.133047,
		17.435102, 16.117796, 34.847363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866812, 15.829288, 35.438957>,  <16.758562, 16.271484, 34.940495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866812, 15.829288, 35.438957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.238092, 15.958587, 35.365250>,  <17.460861, 16.036165, 35.321026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.238092, 15.958587, 35.365250>,  <16.866812, 15.829288, 35.438957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.238092, 15.958587, 35.365250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073345, 0.326568, 0.942324,
		0.364780, -0.888180, 0.279412,
		0.928200, 0.323248, -0.184269,
		17.516552, 16.055561, 35.309971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333319, 15.447975, 35.921139>,  <16.866812, 15.829288, 35.438957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333319, 15.447975, 35.921139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.531319, 15.769609, 35.789429>,  <17.650120, 15.962590, 35.710403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.531319, 15.769609, 35.789429>,  <17.333319, 15.447975, 35.921139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531319, 15.769609, 35.789429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236295, 0.240100, 0.941550,
		0.836145, -0.543874, -0.071152,
		0.495001, 0.804086, -0.329273,
		17.679819, 16.010836, 35.690647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015200, 15.383355, 36.249138>,  <17.333319, 15.447975, 35.921139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015200, 15.383355, 36.249138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.945992, 15.766258, 36.156425>,  <17.904467, 15.996000, 36.100800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.945992, 15.766258, 36.156425>,  <18.015200, 15.383355, 36.249138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945992, 15.766258, 36.156425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244825, 0.269745, 0.931289,
		0.954004, 0.104387, -0.281032,
		-0.173022, 0.957257, -0.231781,
		17.894085, 16.053436, 36.086891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455055, 15.694591, 36.687527>,  <18.015200, 15.383355, 36.249138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455055, 15.694591, 36.687527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.240847, 16.009457, 36.565159>,  <18.112322, 16.198376, 36.491737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.240847, 16.009457, 36.565159>,  <18.455055, 15.694591, 36.687527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240847, 16.009457, 36.565159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141056, 0.440522, 0.886591,
		0.832658, 0.431638, -0.346943,
		-0.535522, 0.787165, -0.305919,
		18.080191, 16.245605, 36.473385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.892277, 16.251078, 36.869217>,  <18.455055, 15.694591, 36.687527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.892277, 16.251078, 36.869217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.510223, 16.363379, 36.831474>,  <18.280993, 16.430759, 36.808826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.510223, 16.363379, 36.831474>,  <18.892277, 16.251078, 36.869217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.510223, 16.363379, 36.831474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024131, 0.391290, 0.919951,
		0.295198, 0.876397, -0.380508,
		-0.955131, 0.280750, -0.094360,
		18.223684, 16.447603, 36.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.419967, 12.966142, 21.813457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.160799, 13.173979, 22.036249>,  <13.005299, 13.298681, 22.169924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.160799, 13.173979, 22.036249>,  <13.419967, 12.966142, 21.813457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.160799, 13.173979, 22.036249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373951, -0.420055, 0.826870,
		0.663596, 0.744028, 0.077860,
		-0.647920, 0.519592, 0.556977,
		12.966423, 13.329857, 22.203342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742542, 13.342757, 22.388994>,  <13.419967, 12.966142, 21.813457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.742542, 13.342757, 22.388994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363920, 13.306652, 22.512856>,  <13.136747, 13.284989, 22.587173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363920, 13.306652, 22.512856>,  <13.742542, 13.342757, 22.388994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.363920, 13.306652, 22.512856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322302, -0.301729, 0.897263,
		0.012443, 0.949111, 0.314695,
		-0.946555, -0.090262, 0.309655,
		13.079954, 13.279573, 22.605753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.706512, 13.736012, 22.907158>,  <13.742542, 13.342757, 22.388994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.706512, 13.736012, 22.907158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391694, 13.500107, 22.979532>,  <13.202803, 13.358563, 23.022957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391694, 13.500107, 22.979532>,  <13.706512, 13.736012, 22.907158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391694, 13.500107, 22.979532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312695, -0.128564, 0.941113,
		-0.531772, 0.797277, 0.285602,
		-0.787046, -0.589763, 0.180938,
		13.155581, 13.323177, 23.033813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.318070, 14.003860, 23.461454>,  <13.706512, 13.736012, 22.907158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.318070, 14.003860, 23.461454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199406, 13.622111, 23.447790>,  <13.128207, 13.393063, 23.439592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199406, 13.622111, 23.447790>,  <13.318070, 14.003860, 23.461454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199406, 13.622111, 23.447790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259351, -0.114940, 0.958919,
		-0.919091, 0.275616, 0.281616,
		-0.296662, -0.954371, -0.034159,
		13.110407, 13.335800, 23.437542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.751022, 13.942543, 23.967514>,  <13.318070, 14.003860, 23.461454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.751022, 13.942543, 23.967514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883645, 13.568903, 23.914555>,  <12.963219, 13.344719, 23.882780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883645, 13.568903, 23.914555>,  <12.751022, 13.942543, 23.967514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883645, 13.568903, 23.914555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232658, -0.055046, 0.971000,
		-0.914298, -0.352745, 0.199075,
		0.331557, -0.934099, -0.132397,
		12.983112, 13.288673, 23.874836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523572, 13.544762, 24.534267>,  <12.751022, 13.942543, 23.967514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523572, 13.544762, 24.534267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.827622, 13.317795, 24.407621>,  <13.010053, 13.181615, 24.331635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.827622, 13.317795, 24.407621>,  <12.523572, 13.544762, 24.534267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.827622, 13.317795, 24.407621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349055, -0.054413, 0.935521,
		-0.548060, -0.821630, 0.156699,
		0.760126, -0.567418, -0.316616,
		13.055660, 13.147570, 24.312637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.620202, 13.068507, 25.105906>,  <12.523572, 13.544762, 24.534267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.620202, 13.068507, 25.105906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.956371, 13.049770, 24.889944>,  <13.158072, 13.038528, 24.760366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.956371, 13.049770, 24.889944>,  <12.620202, 13.068507, 25.105906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.956371, 13.049770, 24.889944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524162, -0.182766, 0.831776,
		-0.137638, -0.982040, -0.129048,
		0.840422, -0.046842, -0.539904,
		13.208498, 13.035718, 24.727974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.014979, 12.483210, 25.289717>,  <12.620202, 13.068507, 25.105906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.014979, 12.483210, 25.289717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296125, 12.732304, 25.152208>,  <13.464813, 12.881761, 25.069702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296125, 12.732304, 25.152208>,  <13.014979, 12.483210, 25.289717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296125, 12.732304, 25.152208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571305, -0.206284, 0.794391,
		0.423781, -0.754750, -0.500762,
		0.702866, 0.622736, -0.343773,
		13.506985, 12.919125, 25.049076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.721915, 12.102398, 25.167578>,  <13.014979, 12.483210, 25.289717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.721915, 12.102398, 25.167578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785589, 12.497117, 25.179504>,  <13.823793, 12.733949, 25.186661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785589, 12.497117, 25.179504>,  <13.721915, 12.102398, 25.167578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.785589, 12.497117, 25.179504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761839, -0.141992, 0.632012,
		0.627902, -0.077891, -0.774385,
		0.159184, 0.986798, 0.029817,
		13.833344, 12.793157, 25.188450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.426492, 12.220471, 25.176079>,  <13.721915, 12.102398, 25.167578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.426492, 12.220471, 25.176079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.323887, 12.586175, 25.301512>,  <14.262324, 12.805597, 25.376772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.323887, 12.586175, 25.301512>,  <14.426492, 12.220471, 25.176079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323887, 12.586175, 25.301512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739035, -0.023569, 0.673255,
		0.622920, 0.404445, -0.669623,
		-0.256512, 0.914259, 0.313580,
		14.246933, 12.860453, 25.395586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.131849, 12.580421, 25.279839>,  <14.426492, 12.220471, 25.176079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.131849, 12.580421, 25.279839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853016, 12.799932, 25.464409>,  <14.685716, 12.931640, 25.575151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.853016, 12.799932, 25.464409>,  <15.131849, 12.580421, 25.279839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853016, 12.799932, 25.464409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665341, 0.255277, 0.701537,
		0.267196, 0.796038, -0.543075,
		-0.697085, 0.548778, 0.461428,
		14.643890, 12.964566, 25.602837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537131, 13.177393, 25.515150>,  <15.131849, 12.580421, 25.279839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.537131, 13.177393, 25.515150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195067, 13.194746, 25.721769>,  <14.989829, 13.205158, 25.845741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195067, 13.194746, 25.721769>,  <15.537131, 13.177393, 25.515150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.195067, 13.194746, 25.721769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506544, 0.281539, 0.814954,
		-0.110072, 0.958569, -0.262737,
		-0.855160, 0.043384, 0.516546,
		14.938519, 13.207761, 25.876734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.676001, 13.805572, 25.163080>,  <15.537131, 13.177393, 25.515150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.676001, 13.805572, 25.163080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935786, 14.072799, 25.017818>,  <16.091658, 14.233135, 24.930660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.935786, 14.072799, 25.017818>,  <15.676001, 13.805572, 25.163080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935786, 14.072799, 25.017818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656935, 0.252462, -0.710422,
		-0.382926, 0.699964, 0.602842,
		0.649464, 0.668067, -0.363156,
		16.130625, 14.273219, 24.908871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391418, 14.439669, 25.181726>,  <15.676001, 13.805572, 25.163080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391418, 14.439669, 25.181726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671596, 14.420729, 24.896872>,  <15.839702, 14.409365, 24.725960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.671596, 14.420729, 24.896872>,  <15.391418, 14.439669, 25.181726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671596, 14.420729, 24.896872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690067, 0.209754, -0.692684,
		0.182172, 0.976607, 0.114246,
		0.700443, -0.047350, -0.712135,
		15.881728, 14.406524, 24.683231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206470, 14.890107, 24.794701>,  <15.391418, 14.439669, 25.181726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206470, 14.890107, 24.794701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.465224, 14.710273, 24.548315>,  <15.620478, 14.602372, 24.400484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.465224, 14.710273, 24.548315>,  <15.206470, 14.890107, 24.794701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465224, 14.710273, 24.548315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496496, 0.364779, -0.787673,
		0.578816, 0.815359, 0.012753,
		0.646888, -0.449585, -0.615962,
		15.659290, 14.575397, 24.363527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178785, 15.405465, 24.129564>,  <15.206470, 14.890107, 24.794701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178785, 15.405465, 24.129564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349382, 15.057241, 24.031399>,  <15.451741, 14.848307, 23.972500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.349382, 15.057241, 24.031399>,  <15.178785, 15.405465, 24.129564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.349382, 15.057241, 24.031399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353411, 0.089369, -0.931190,
		0.832589, 0.483879, -0.269550,
		0.426493, -0.870560, -0.245415,
		15.477330, 14.796073, 23.957773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798750, 15.494503, 23.549862>,  <15.178785, 15.405465, 24.129564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798750, 15.494503, 23.549862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637640, 15.128670, 23.564341>,  <15.540975, 14.909170, 23.573029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637640, 15.128670, 23.564341>,  <15.798750, 15.494503, 23.549862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637640, 15.128670, 23.564341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367133, 0.125203, -0.921704,
		0.838443, -0.384528, -0.386202,
		-0.402774, -0.914583, 0.036198,
		15.516808, 14.854295, 23.575199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851773, 15.240559, 22.779442>,  <15.798750, 15.494503, 23.549862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851773, 15.240559, 22.779442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596032, 14.983459, 22.948250>,  <15.442587, 14.829200, 23.049534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.596032, 14.983459, 22.948250>,  <15.851773, 15.240559, 22.779442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.596032, 14.983459, 22.948250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464608, -0.114392, -0.878097,
		0.612672, -0.757488, -0.225489,
		-0.639354, -0.642749, 0.422020,
		15.404226, 14.790635, 23.074856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849802, 14.671189, 22.390360>,  <15.851773, 15.240559, 22.779442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849802, 14.671189, 22.390360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.497154, 14.658409, 22.578712>,  <15.285565, 14.650742, 22.691723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.497154, 14.658409, 22.578712>,  <15.849802, 14.671189, 22.390360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497154, 14.658409, 22.578712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456598, -0.194759, -0.868094,
		0.119444, -0.980330, 0.157115,
		-0.881618, -0.031951, 0.470880,
		15.232669, 14.648825, 22.719976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613828, 14.044089, 22.072971>,  <15.849802, 14.671189, 22.390360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613828, 14.044089, 22.072971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.305207, 14.221132, 22.255753>,  <15.120035, 14.327358, 22.365421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.305207, 14.221132, 22.255753>,  <15.613828, 14.044089, 22.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305207, 14.221132, 22.255753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597982, -0.259465, -0.758351,
		-0.217084, -0.858359, 0.464859,
		-0.771552, 0.442603, 0.456957,
		15.073742, 14.353915, 22.392839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079459, 13.496162, 22.093483>,  <15.613828, 14.044089, 22.072971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079459, 13.496162, 22.093483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927761, 13.864882, 22.125631>,  <14.836742, 14.086114, 22.144920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927761, 13.864882, 22.125631>,  <15.079459, 13.496162, 22.093483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927761, 13.864882, 22.125631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619909, -0.188633, -0.761663,
		-0.686939, -0.338680, 0.642970,
		-0.379245, 0.921799, 0.080372,
		14.813988, 14.141422, 22.149742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.346028, 13.402433, 21.837519>,  <15.079459, 13.496162, 22.093483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.346028, 13.402433, 21.837519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417268, 13.795949, 21.829107>,  <14.460011, 14.032058, 21.824060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417268, 13.795949, 21.829107>,  <14.346028, 13.402433, 21.837519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417268, 13.795949, 21.829107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595485, 0.090741, -0.798225,
		-0.783376, 0.154685, 0.601992,
		0.178099, 0.983788, -0.021028,
		14.470697, 14.091085, 21.822800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.668018, 13.703171, 21.737181>,  <14.346028, 13.402433, 21.837519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.668018, 13.703171, 21.737181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922532, 13.991856, 21.628168>,  <14.075240, 14.165067, 21.562761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922532, 13.991856, 21.628168>,  <13.668018, 13.703171, 21.737181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922532, 13.991856, 21.628168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499501, 0.116197, -0.858485,
		-0.587912, 0.682371, 0.434430,
		0.636285, 0.721712, -0.272532,
		14.113418, 14.208369, 21.546410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239600, 14.228798, 21.459551>,  <13.668018, 13.703171, 21.737181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.239600, 14.228798, 21.459551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.594427, 14.342875, 21.314346>,  <13.807323, 14.411322, 21.227224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.594427, 14.342875, 21.314346>,  <13.239600, 14.228798, 21.459551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.594427, 14.342875, 21.314346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453785, 0.394238, -0.799160,
		-0.084802, 0.873637, 0.479131,
		0.887067, 0.285193, -0.363011,
		13.860547, 14.428433, 21.205442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157209, 14.952255, 21.243858>,  <13.239600, 14.228798, 21.459551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157209, 14.952255, 21.243858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414295, 14.722604, 21.040960>,  <13.568546, 14.584813, 20.919222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414295, 14.722604, 21.040960>,  <13.157209, 14.952255, 21.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414295, 14.722604, 21.040960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468360, 0.229502, -0.853210,
		0.606266, 0.785942, -0.121395,
		0.642713, -0.574129, -0.507243,
		13.607109, 14.550365, 20.888788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.175422, 15.296785, 20.674568>,  <13.157209, 14.952255, 21.243858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.175422, 15.296785, 20.674568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347216, 14.953329, 20.562656>,  <13.450293, 14.747255, 20.495508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347216, 14.953329, 20.562656>,  <13.175422, 15.296785, 20.674568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.347216, 14.953329, 20.562656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508099, 0.026368, -0.860895,
		0.746577, 0.511899, -0.424950,
		0.429486, -0.858641, -0.279781,
		13.476062, 14.695737, 20.478722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.670576, 15.424466, 20.176399>,  <13.175422, 15.296785, 20.674568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.670576, 15.424466, 20.176399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.474788, 15.076412, 20.153481>,  <13.357314, 14.867579, 20.139729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.474788, 15.076412, 20.153481>,  <13.670576, 15.424466, 20.176399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.474788, 15.076412, 20.153481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548740, 0.358413, -0.755265,
		0.677719, -0.338239, -0.652910,
		-0.489472, -0.870135, -0.057298,
		13.327946, 14.815372, 20.136292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633224, 16.144793, 20.410997>,  <13.670576, 15.424466, 20.176399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633224, 16.144793, 20.410997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771727, 16.518744, 20.379732>,  <13.854829, 16.743114, 20.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.771727, 16.518744, 20.379732>,  <13.633224, 16.144793, 20.410997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771727, 16.518744, 20.379732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292693, -0.028496, 0.955782,
		0.891312, -0.353825, -0.283499,
		0.346258, 0.934877, -0.078163,
		13.875604, 16.799208, 20.356283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268020, 16.097729, 20.658279>,  <13.633224, 16.144793, 20.410997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.268020, 16.097729, 20.658279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144329, 16.473093, 20.719940>,  <14.070114, 16.698311, 20.756937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144329, 16.473093, 20.719940>,  <14.268020, 16.097729, 20.658279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144329, 16.473093, 20.719940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509390, 0.026562, 0.860126,
		0.803057, 0.344499, -0.486231,
		-0.309228, 0.938411, 0.154153,
		14.051560, 16.754616, 20.766186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816066, 16.361670, 20.890396>,  <14.268020, 16.097729, 20.658279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816066, 16.361670, 20.890396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.543376, 16.639374, 20.982702>,  <14.379762, 16.805996, 21.038086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.543376, 16.639374, 20.982702>,  <14.816066, 16.361670, 20.890396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543376, 16.639374, 20.982702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524230, 0.243528, 0.816013,
		0.510328, 0.677271, -0.529971,
		-0.681725, 0.694261, 0.230767,
		14.338859, 16.847652, 21.051933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247557, 16.855143, 21.215792>,  <14.816066, 16.361670, 20.890396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247557, 16.855143, 21.215792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.873269, 16.946211, 21.323565>,  <14.648696, 17.000853, 21.388227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.873269, 16.946211, 21.323565>,  <15.247557, 16.855143, 21.215792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873269, 16.946211, 21.323565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339821, 0.376969, 0.861636,
		0.094603, 0.897808, -0.430105,
		-0.935720, 0.227672, 0.269432,
		14.592553, 17.014513, 21.404394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267017, 17.566513, 21.327574>,  <15.247557, 16.855143, 21.215792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267017, 17.566513, 21.327574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944441, 17.438349, 21.526365>,  <14.750895, 17.361450, 21.645639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944441, 17.438349, 21.526365>,  <15.267017, 17.566513, 21.327574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944441, 17.438349, 21.526365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367988, 0.385938, 0.845953,
		-0.462857, 0.865094, -0.193328,
		-0.806442, -0.320413, 0.496979,
		14.702508, 17.342224, 21.675459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924129, 18.141947, 21.665194>,  <15.267017, 17.566513, 21.327574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924129, 18.141947, 21.665194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841890, 17.801043, 21.857601>,  <14.792547, 17.596500, 21.973045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841890, 17.801043, 21.857601>,  <14.924129, 18.141947, 21.665194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841890, 17.801043, 21.857601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144778, 0.459625, 0.876233,
		-0.967869, 0.249790, 0.028892,
		-0.205595, -0.852262, 0.481020,
		14.780211, 17.545364, 22.001907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623178, 18.277882, 22.306864>,  <14.924129, 18.141947, 21.665194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623178, 18.277882, 22.306864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.762467, 17.907021, 22.362190>,  <14.846041, 17.684504, 22.395386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.762467, 17.907021, 22.362190>,  <14.623178, 18.277882, 22.306864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.762467, 17.907021, 22.362190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270054, 0.240515, 0.932321,
		-0.897670, -0.287304, 0.334134,
		0.348224, -0.927151, 0.138316,
		14.866935, 17.628876, 22.403685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536592, 18.184265, 22.968670>,  <14.623178, 18.277882, 22.306864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536592, 18.184265, 22.968670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.806850, 17.902918, 22.880331>,  <14.969006, 17.734110, 22.827328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.806850, 17.902918, 22.880331>,  <14.536592, 18.184265, 22.968670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.806850, 17.902918, 22.880331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498601, 0.215308, 0.839666,
		-0.543045, -0.677433, 0.496173,
		0.675647, -0.703368, -0.220847,
		15.009544, 17.691908, 22.814077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722571, 17.752602, 23.623417>,  <14.536592, 18.184265, 22.968670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.722571, 17.752602, 23.623417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.028779, 17.666452, 23.380898>,  <15.212503, 17.614763, 23.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.028779, 17.666452, 23.380898>,  <14.722571, 17.752602, 23.623417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.028779, 17.666452, 23.380898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638582, 0.369580, 0.674999,
		0.078698, -0.903895, 0.420454,
		0.765519, -0.215373, -0.606296,
		15.258434, 17.601841, 23.199009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222935, 17.321766, 24.043852>,  <14.722571, 17.752602, 23.623417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.222935, 17.321766, 24.043852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425372, 17.477850, 23.736187>,  <15.546835, 17.571501, 23.551588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425372, 17.477850, 23.736187>,  <15.222935, 17.321766, 24.043852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425372, 17.477850, 23.736187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647445, 0.417300, 0.637711,
		0.569811, -0.820730, -0.041446,
		0.506093, 0.390209, -0.769160,
		15.577200, 17.594913, 23.505440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859602, 17.142616, 24.218563>,  <15.222935, 17.321766, 24.043852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859602, 17.142616, 24.218563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.910174, 17.438805, 23.954527>,  <15.940517, 17.616518, 23.796106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.910174, 17.438805, 23.954527>,  <15.859602, 17.142616, 24.218563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910174, 17.438805, 23.954527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655905, 0.436802, 0.615624,
		0.744180, -0.510790, -0.430453,
		0.126431, 0.740471, -0.660089,
		15.948104, 17.660946, 23.756500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514132, 17.061956, 24.099648>,  <15.859602, 17.142616, 24.218563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514132, 17.061956, 24.099648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405956, 17.438803, 24.020369>,  <16.341051, 17.664911, 23.972801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405956, 17.438803, 24.020369>,  <16.514132, 17.061956, 24.099648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405956, 17.438803, 24.020369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763545, 0.335282, 0.551893,
		0.586398, -0.002078, -0.810020,
		-0.270438, 0.942115, -0.198196,
		16.324825, 17.721437, 23.960911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099531, 17.421852, 24.343958>,  <16.514132, 17.061956, 24.099648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099531, 17.421852, 24.343958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844849, 17.721767, 24.271933>,  <16.692039, 17.901716, 24.228718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844849, 17.721767, 24.271933>,  <17.099531, 17.421852, 24.343958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844849, 17.721767, 24.271933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617693, 0.635711, 0.462954,
		0.461584, 0.183543, -0.867901,
		-0.636706, 0.749789, -0.180061,
		16.653837, 17.946705, 24.217915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432669, 18.035206, 24.027655>,  <17.099531, 17.421852, 24.343958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432669, 18.035206, 24.027655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111603, 18.193785, 24.205894>,  <16.918962, 18.288933, 24.312838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111603, 18.193785, 24.205894>,  <17.432669, 18.035206, 24.027655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.111603, 18.193785, 24.205894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576821, 0.705989, 0.410923,
		-0.151677, 0.586864, -0.795352,
		-0.802666, 0.396448, 0.445598,
		16.870804, 18.312719, 24.339573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478247, 18.832094, 24.007607>,  <17.432669, 18.035206, 24.027655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478247, 18.832094, 24.007607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247334, 18.724634, 24.316040>,  <17.108786, 18.660158, 24.501101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247334, 18.724634, 24.316040>,  <17.478247, 18.832094, 24.007607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247334, 18.724634, 24.316040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435963, 0.697059, 0.569249,
		-0.690422, 0.664782, -0.285277,
		-0.577282, -0.268651, 0.771085,
		17.074148, 18.644039, 24.547365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367853, 19.500847, 24.288761>,  <17.478247, 18.832094, 24.007607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.367853, 19.500847, 24.288761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277817, 19.238647, 24.577110>,  <17.223795, 19.081327, 24.750120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277817, 19.238647, 24.577110>,  <17.367853, 19.500847, 24.288761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277817, 19.238647, 24.577110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373092, 0.625482, 0.685255,
		-0.900076, 0.423195, 0.103773,
		-0.225089, -0.655499, 0.720872,
		17.210291, 19.041998, 24.793371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204693, 19.937305, 24.824125>,  <17.367853, 19.500847, 24.288761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204693, 19.937305, 24.824125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264736, 19.587982, 25.009510>,  <17.300762, 19.378387, 25.120741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264736, 19.587982, 25.009510>,  <17.204693, 19.937305, 24.824125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264736, 19.587982, 25.009510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686203, 0.429505, 0.587070,
		-0.711753, 0.229904, 0.663741,
		0.150110, -0.873310, 0.463462,
		17.309769, 19.325989, 25.148548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086334, 20.117472, 25.584005>,  <17.204693, 19.937305, 24.824125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086334, 20.117472, 25.584005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313511, 19.789474, 25.555569>,  <17.449816, 19.592676, 25.538507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313511, 19.789474, 25.555569>,  <17.086334, 20.117472, 25.584005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313511, 19.789474, 25.555569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655763, 0.398606, 0.641162,
		-0.497412, -0.410760, 0.764106,
		0.567941, -0.819994, -0.071090,
		17.483892, 19.543476, 25.534241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165449, 19.966146, 26.276268>,  <17.086334, 20.117472, 25.584005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165449, 19.966146, 26.276268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466000, 19.800407, 26.070843>,  <17.646330, 19.700964, 25.947588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.466000, 19.800407, 26.070843>,  <17.165449, 19.966146, 26.276268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466000, 19.800407, 26.070843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605706, 0.124274, 0.785923,
		-0.261825, -0.901593, 0.344351,
		0.751377, -0.414350, -0.513563,
		17.691412, 19.676102, 25.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.384787, 19.543972, 26.690851>,  <17.165449, 19.966146, 26.276268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.384787, 19.543972, 26.690851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702524, 19.543953, 26.447865>,  <17.893167, 19.543941, 26.302073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702524, 19.543953, 26.447865>,  <17.384787, 19.543972, 26.690851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702524, 19.543953, 26.447865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605170, -0.086809, 0.791349,
		-0.052774, -0.996225, -0.068926,
		0.794345, -0.000051, -0.607467,
		17.940828, 19.543940, 26.265625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.820826, 19.134148, 27.067410>,  <17.384787, 19.543972, 26.690851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.820826, 19.134148, 27.067410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.024467, 19.375904, 26.822290>,  <18.146652, 19.520958, 26.675219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.024467, 19.375904, 26.822290>,  <17.820826, 19.134148, 27.067410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.024467, 19.375904, 26.822290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671511, 0.166459, 0.722056,
		0.538411, -0.779103, -0.321111,
		0.509104, 0.604392, -0.612799,
		18.177198, 19.557222, 26.638451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494143, 18.967701, 27.201828>,  <17.820826, 19.134148, 27.067410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494143, 18.967701, 27.201828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492390, 19.325191, 27.022392>,  <18.491337, 19.539686, 26.914730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492390, 19.325191, 27.022392>,  <18.494143, 18.967701, 27.201828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492390, 19.325191, 27.022392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692576, 0.326302, 0.643324,
		0.721332, -0.307862, -0.620404,
		-0.004384, 0.893727, -0.448590,
		18.491074, 19.593309, 26.887815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117119, 19.182878, 27.236662>,  <18.494143, 18.967701, 27.201828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117119, 19.182878, 27.236662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.879332, 19.504332, 27.225458>,  <18.736660, 19.697203, 27.218737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.879332, 19.504332, 27.225458>,  <19.117119, 19.182878, 27.236662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.879332, 19.504332, 27.225458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526275, 0.415163, 0.742074,
		0.607983, 0.426398, -0.669732,
		-0.594467, 0.803632, -0.028010,
		18.700991, 19.745420, 27.217054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.518219, 19.670549, 27.501812>,  <19.117119, 19.182878, 27.236662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.518219, 19.670549, 27.501812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.154083, 19.836002, 27.507378>,  <18.935602, 19.935274, 27.510717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.154083, 19.836002, 27.507378>,  <19.518219, 19.670549, 27.501812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154083, 19.836002, 27.507378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236846, 0.493101, 0.837111,
		0.339396, 0.765349, -0.546855,
		-0.910338, 0.413632, 0.013913,
		18.880981, 19.960093, 27.511551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589756, 20.279270, 27.879894>,  <19.518219, 19.670549, 27.501812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589756, 20.279270, 27.879894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.192207, 20.235264, 27.875654>,  <18.953678, 20.208860, 27.873110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.192207, 20.235264, 27.875654>,  <19.589756, 20.279270, 27.879894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.192207, 20.235264, 27.875654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058877, 0.445826, 0.893182,
		-0.093538, 0.888333, -0.449572,
		-0.993873, -0.110016, -0.010600,
		18.894045, 20.202259, 27.872475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.420435, 20.907463, 28.143913>,  <19.589756, 20.279270, 27.879894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.420435, 20.907463, 28.143913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.121672, 20.646833, 28.196945>,  <18.942413, 20.490456, 28.228764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.121672, 20.646833, 28.196945>,  <19.420435, 20.907463, 28.143913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.121672, 20.646833, 28.196945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152386, 0.361822, 0.919708,
		-0.647228, 0.666736, -0.369539,
		-0.746910, -0.651573, 0.132580,
		18.897598, 20.451361, 28.236719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818106, 21.258684, 28.380920>,  <19.420435, 20.907463, 28.143913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818106, 21.258684, 28.380920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811277, 20.882915, 28.517857>,  <18.807180, 20.657455, 28.600018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811277, 20.882915, 28.517857>,  <18.818106, 21.258684, 28.380920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.811277, 20.882915, 28.517857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094758, 0.342370, 0.934775,
		-0.995354, -0.016481, -0.094863,
		-0.017072, -0.939421, 0.342341,
		18.806156, 20.601089, 28.620560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
