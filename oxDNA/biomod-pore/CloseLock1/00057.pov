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
	<24.199329, 34.764679, 35.453880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188173, 35.079441, 35.207302>,  <24.181479, 35.268299, 35.059357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188173, 35.079441, 35.207302>,  <24.199329, 34.764679, 35.453880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188173, 35.079441, 35.207302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278059, 0.586239, 0.760925,
		0.960159, 0.192632, 0.202454,
		-0.027892, 0.786904, -0.616445,
		24.179806, 35.315514, 35.022369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482523, 34.910793, 34.709995>,  <24.199329, 34.764679, 35.453880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482523, 34.910793, 34.709995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661047, 34.558289, 34.647797>,  <24.768162, 34.346786, 34.610477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661047, 34.558289, 34.647797>,  <24.482523, 34.910793, 34.709995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.661047, 34.558289, 34.647797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859629, 0.373914, 0.348175,
		-0.248691, -0.289066, 0.924442,
		0.446308, -0.881266, -0.155500,
		24.794939, 34.293907, 34.601147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211037, 34.805790, 34.626766>,  <24.482523, 34.910793, 34.709995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211037, 34.805790, 34.626766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264006, 35.195560, 34.554150>,  <25.295786, 35.429424, 34.510578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264006, 35.195560, 34.554150>,  <25.211037, 34.805790, 34.626766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264006, 35.195560, 34.554150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926598, -0.056659, 0.371759,
		0.351966, -0.217448, -0.910405,
		0.132421, 0.974426, -0.181544,
		25.303732, 35.487888, 34.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901031, 34.904095, 34.268764>,  <25.211037, 34.805790, 34.626766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901031, 34.904095, 34.268764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780283, 35.215412, 34.488998>,  <25.707834, 35.402203, 34.621140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780283, 35.215412, 34.488998>,  <25.901031, 34.904095, 34.268764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780283, 35.215412, 34.488998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776490, -0.134345, 0.615641,
		0.553115, 0.613366, -0.563779,
		-0.301873, 0.778289, 0.550581,
		25.689722, 35.448898, 34.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052130, 34.841251, 33.496948>,  <25.901031, 34.904095, 34.268764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052130, 34.841251, 33.496948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423624, 34.908993, 33.628872>,  <26.646521, 34.949638, 33.708027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423624, 34.908993, 33.628872>,  <26.052130, 34.841251, 33.496948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423624, 34.908993, 33.628872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284394, 0.245273, -0.926802,
		-0.237851, 0.954547, 0.179630,
		0.928734, 0.169356, 0.329806,
		26.702244, 34.959801, 33.727814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170780, 35.479965, 33.200550>,  <26.052130, 34.841251, 33.496948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170780, 35.479965, 33.200550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498257, 35.259068, 33.263508>,  <26.694742, 35.126530, 33.301285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498257, 35.259068, 33.263508>,  <26.170780, 35.479965, 33.200550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498257, 35.259068, 33.263508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366495, 0.291488, -0.883582,
		0.442069, 0.781067, 0.441032,
		0.818692, -0.552240, 0.157399,
		26.743864, 35.093395, 33.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775253, 35.901764, 32.886715>,  <26.170780, 35.479965, 33.200550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775253, 35.901764, 32.886715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880207, 35.515942, 32.897896>,  <26.943178, 35.284447, 32.904606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880207, 35.515942, 32.897896>,  <26.775253, 35.901764, 32.886715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880207, 35.515942, 32.897896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320272, 0.059720, -0.945441,
		0.910264, 0.257021, 0.324591,
		0.262383, -0.964559, 0.027956,
		26.958921, 35.226574, 32.906284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419481, 35.860973, 32.594032>,  <26.775253, 35.901764, 32.886715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419481, 35.860973, 32.594032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313017, 35.477581, 32.553112>,  <27.249138, 35.247543, 32.528561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313017, 35.477581, 32.553112>,  <27.419481, 35.860973, 32.594032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313017, 35.477581, 32.553112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322696, 0.011402, -0.946434,
		0.908309, -0.284914, 0.306264,
		-0.266160, -0.958485, -0.102297,
		27.233170, 35.190037, 32.522423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049295, 35.528858, 32.342121>,  <27.419481, 35.860973, 32.594032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049295, 35.528858, 32.342121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740631, 35.292896, 32.246994>,  <27.555433, 35.151321, 32.189919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740631, 35.292896, 32.246994>,  <28.049295, 35.528858, 32.342121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740631, 35.292896, 32.246994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258610, 0.050615, -0.964655,
		0.581089, -0.805887, 0.113497,
		-0.771658, -0.589902, -0.237822,
		27.509134, 35.115925, 32.175648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345671, 34.964821, 31.963461>,  <28.049295, 35.528858, 32.342121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345671, 34.964821, 31.963461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958954, 34.938393, 31.864708>,  <27.726925, 34.922535, 31.805456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958954, 34.938393, 31.864708>,  <28.345671, 34.964821, 31.963461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958954, 34.938393, 31.864708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253555, -0.126945, -0.958955,
		0.032023, -0.989706, 0.139483,
		-0.966791, -0.066075, -0.246880,
		27.668917, 34.918571, 31.790644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317789, 34.377724, 31.489889>,  <28.345671, 34.964821, 31.963461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317789, 34.377724, 31.489889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990395, 34.596729, 31.420246>,  <27.793959, 34.728134, 31.378460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990395, 34.596729, 31.420246>,  <28.317789, 34.377724, 31.489889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990395, 34.596729, 31.420246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160541, -0.073015, -0.984325,
		-0.551644, -0.833605, -0.028137,
		-0.818484, 0.547514, -0.174106,
		27.744850, 34.760983, 31.368013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037884, 34.089920, 30.960247>,  <28.317789, 34.377724, 31.489889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037884, 34.089920, 30.960247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865284, 34.450672, 30.952076>,  <27.761724, 34.667122, 30.947174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865284, 34.450672, 30.952076>,  <28.037884, 34.089920, 30.960247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865284, 34.450672, 30.952076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129007, 0.039282, -0.990865,
		-0.892841, -0.430193, -0.133299,
		-0.431500, 0.901882, -0.020426,
		27.735834, 34.721237, 30.945948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432163, 34.028427, 30.536497>,  <28.037884, 34.089920, 30.960247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432163, 34.028427, 30.536497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539656, 34.413597, 30.546032>,  <27.604151, 34.644699, 30.551752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539656, 34.413597, 30.546032>,  <27.432163, 34.028427, 30.536497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539656, 34.413597, 30.546032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046005, 0.011886, -0.998871,
		-0.962116, 0.269524, -0.041105,
		0.268731, 0.962920, 0.023835,
		27.620275, 34.702473, 30.553183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000608, 34.363247, 30.035484>,  <27.432163, 34.028427, 30.536497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000608, 34.363247, 30.035484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329535, 34.584255, 30.089922>,  <27.526890, 34.716858, 30.122585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329535, 34.584255, 30.089922>,  <27.000608, 34.363247, 30.035484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329535, 34.584255, 30.089922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151844, 0.017432, -0.988251,
		-0.548399, 0.833318, -0.069562,
		0.822315, 0.552518, 0.136094,
		27.576229, 34.750011, 30.130751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933212, 34.836498, 29.521652>,  <27.000608, 34.363247, 30.035484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933212, 34.836498, 29.521652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316433, 34.915901, 29.604342>,  <27.546366, 34.963543, 29.653955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316433, 34.915901, 29.604342>,  <26.933212, 34.836498, 29.521652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316433, 34.915901, 29.604342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191016, 0.095467, -0.976934,
		-0.213660, 0.975440, 0.053545,
		0.958051, 0.198504, 0.206722,
		27.603848, 34.975452, 29.666359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236933, 35.136425, 28.912399>,  <26.933212, 34.836498, 29.521652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236933, 35.136425, 28.912399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584093, 35.058170, 29.095037>,  <27.792389, 35.011219, 29.204620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584093, 35.058170, 29.095037>,  <27.236933, 35.136425, 28.912399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584093, 35.058170, 29.095037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474495, 0.054516, -0.878569,
		0.146989, 0.979160, 0.140143,
		0.867899, -0.195637, 0.456593,
		27.844463, 34.999477, 29.232016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713011, 35.645744, 28.625216>,  <27.236933, 35.136425, 28.912399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713011, 35.645744, 28.625216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850245, 35.298763, 28.769333>,  <27.932585, 35.090572, 28.855804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850245, 35.298763, 28.769333>,  <27.713011, 35.645744, 28.625216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850245, 35.298763, 28.769333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285852, -0.268961, -0.919755,
		0.894753, 0.418544, 0.155688,
		0.343084, -0.867457, 0.360295,
		27.953169, 35.038525, 28.877420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372337, 35.551941, 28.270550>,  <27.713011, 35.645744, 28.625216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372337, 35.551941, 28.270550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263681, 35.191788, 28.406500>,  <28.198488, 34.975697, 28.488070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263681, 35.191788, 28.406500>,  <28.372337, 35.551941, 28.270550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263681, 35.191788, 28.406500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001438, -0.352775, -0.935707,
		0.962397, -0.254666, 0.094533,
		-0.271642, -0.900386, 0.339876,
		28.182188, 34.921673, 28.508463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927494, 35.099369, 28.065893>,  <28.372337, 35.551941, 28.270550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927494, 35.099369, 28.065893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598963, 34.882668, 28.137367>,  <28.401844, 34.752647, 28.180252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598963, 34.882668, 28.137367>,  <28.927494, 35.099369, 28.065893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598963, 34.882668, 28.137367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096393, -0.440527, -0.892549,
		0.562255, -0.715850, 0.414038,
		-0.821327, -0.541751, 0.178686,
		28.352564, 34.720142, 28.190973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143309, 34.454796, 27.717710>,  <28.927494, 35.099369, 28.065893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143309, 34.454796, 27.717710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745150, 34.434864, 27.750446>,  <28.506254, 34.422905, 27.770088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745150, 34.434864, 27.750446>,  <29.143309, 34.454796, 27.717710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745150, 34.434864, 27.750446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044757, -0.513452, -0.856950,
		0.084720, -0.856670, 0.508860,
		-0.995399, -0.049826, 0.081842,
		28.446529, 34.419918, 27.775000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951969, 33.779797, 27.469856>,  <29.143309, 34.454796, 27.717710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951969, 33.779797, 27.469856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601646, 33.972836, 27.466677>,  <28.391453, 34.088657, 27.464769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601646, 33.972836, 27.466677>,  <28.951969, 33.779797, 27.469856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601646, 33.972836, 27.466677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145554, -0.279781, -0.948966,
		-0.460195, -0.829952, 0.315278,
		-0.875805, 0.482599, -0.007951,
		28.338905, 34.117615, 27.464291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520374, 33.373756, 27.093121>,  <28.951969, 33.779797, 27.469856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520374, 33.373756, 27.093121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320175, 33.718662, 27.062115>,  <28.200056, 33.925606, 27.043510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320175, 33.718662, 27.062115>,  <28.520374, 33.373756, 27.093121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320175, 33.718662, 27.062115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142144, -0.170167, -0.975109,
		-0.853988, -0.477023, 0.207733,
		-0.500499, 0.862260, -0.077515,
		28.170025, 33.977341, 27.038860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965532, 33.306152, 26.514345>,  <28.520374, 33.373756, 27.093121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965532, 33.306152, 26.514345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024120, 33.699688, 26.555559>,  <28.059273, 33.935810, 26.580288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024120, 33.699688, 26.555559>,  <27.965532, 33.306152, 26.514345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024120, 33.699688, 26.555559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028295, 0.108280, -0.993718,
		-0.988810, 0.142633, 0.043697,
		0.146469, 0.983835, 0.103033,
		28.068062, 33.994839, 26.586470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349047, 33.598095, 26.165770>,  <27.965532, 33.306152, 26.514345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349047, 33.598095, 26.165770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659508, 33.850266, 26.160807>,  <27.845785, 34.001568, 26.157829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659508, 33.850266, 26.160807>,  <27.349047, 33.598095, 26.165770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659508, 33.850266, 26.160807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166731, 0.186214, -0.968259,
		-0.608101, 0.753586, 0.249642,
		0.776153, 0.630422, -0.012409,
		27.892353, 34.039391, 26.157084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156971, 34.261742, 25.997465>,  <27.349047, 33.598095, 26.165770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156971, 34.261742, 25.997465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523413, 34.200909, 25.849077>,  <27.743279, 34.164410, 25.760044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523413, 34.200909, 25.849077>,  <27.156971, 34.261742, 25.997465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523413, 34.200909, 25.849077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334200, 0.221495, -0.916106,
		0.221495, 0.963229, 0.152086,
		0.916106, -0.152086, -0.370971,
		27.798244, 34.155285, 25.737785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369202, 34.913486, 25.575787>,  <27.156971, 34.261742, 25.997465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369202, 34.913486, 25.575787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503862, 34.553905, 25.463678>,  <27.584658, 34.338158, 25.396414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503862, 34.553905, 25.463678>,  <27.369202, 34.913486, 25.575787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503862, 34.553905, 25.463678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244460, 0.204002, -0.947957,
		0.909344, 0.387645, -0.151081,
		0.336650, -0.898952, -0.280272,
		27.604856, 34.284222, 25.379597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902803, 34.979458, 24.934757>,  <27.369202, 34.913486, 25.575787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902803, 34.979458, 24.934757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675497, 34.655746, 24.994284>,  <27.539114, 34.461521, 25.030001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675497, 34.655746, 24.994284>,  <27.902803, 34.979458, 24.934757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675497, 34.655746, 24.994284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302660, 0.037395, -0.952365,
		0.765162, -0.586235, -0.266186,
		-0.568264, -0.809277, 0.148817,
		27.505018, 34.412964, 25.038929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925909, 34.502331, 24.358189>,  <27.902803, 34.979458, 24.934757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925909, 34.502331, 24.358189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576084, 34.499279, 24.552130>,  <27.366188, 34.497448, 24.668493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576084, 34.499279, 24.552130>,  <27.925909, 34.502331, 24.358189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576084, 34.499279, 24.552130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484692, 0.043800, -0.873588,
		-0.014575, -0.999011, -0.042002,
		-0.874563, -0.007625, 0.484851,
		27.313715, 34.496990, 24.697584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549242, 34.243835, 24.521629>,  <27.925909, 34.502331, 24.358189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549242, 34.243835, 24.521629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392410, 33.982437, 24.262642>,  <28.298311, 33.825596, 24.107250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392410, 33.982437, 24.262642>,  <28.549242, 34.243835, 24.521629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392410, 33.982437, 24.262642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901697, -0.412441, -0.129745,
		-0.182255, -0.634691, 0.750967,
		-0.392078, -0.653498, -0.647468,
		28.274788, 33.786388, 24.068401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575497, 33.480927, 24.805218>,  <28.549242, 34.243835, 24.521629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575497, 33.480927, 24.805218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591005, 33.487411, 24.405571>,  <28.600309, 33.491302, 24.165783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591005, 33.487411, 24.405571>,  <28.575497, 33.480927, 24.805218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591005, 33.487411, 24.405571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821533, -0.569712, 0.022636,
		-0.568842, -0.821685, -0.035405,
		0.038770, 0.016210, -0.999117,
		28.602636, 33.492275, 24.105837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155375, 33.917110, 24.833241>,  <28.575497, 33.480927, 24.805218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155375, 33.917110, 24.833241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276222, 33.541630, 24.766842>,  <29.348732, 33.316341, 24.727003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276222, 33.541630, 24.766842>,  <29.155375, 33.917110, 24.833241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276222, 33.541630, 24.766842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401624, 0.283267, -0.870895,
		0.864535, 0.196447, 0.462587,
		0.302120, -0.938706, -0.165997,
		29.366858, 33.260017, 24.717043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834270, 33.941711, 24.628237>,  <29.155375, 33.917110, 24.833241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834270, 33.941711, 24.628237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708012, 33.593506, 24.477200>,  <29.632256, 33.384583, 24.386578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708012, 33.593506, 24.477200>,  <29.834270, 33.941711, 24.628237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708012, 33.593506, 24.477200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561122, 0.149658, -0.814091,
		0.765185, -0.468843, 0.441224,
		-0.315648, -0.870511, -0.377594,
		29.613317, 33.332352, 24.363922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127703, 33.261623, 24.635115>,  <29.834270, 33.941711, 24.628237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127703, 33.261623, 24.635115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525204, 33.283546, 24.673996>,  <30.763704, 33.296700, 24.697325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525204, 33.283546, 24.673996>,  <30.127703, 33.261623, 24.635115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525204, 33.283546, 24.673996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060717, -0.465247, 0.883096,
		0.093626, -0.883483, -0.459013,
		0.993754, 0.054811, 0.097202,
		30.823330, 33.299988, 24.703157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137383, 32.738670, 24.966717>,  <30.127703, 33.261623, 24.635115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137383, 32.738670, 24.966717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507689, 32.878830, 25.023540>,  <30.729872, 32.962925, 25.057634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507689, 32.878830, 25.023540>,  <30.137383, 32.738670, 24.966717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507689, 32.878830, 25.023540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030086, -0.442787, 0.896122,
		0.376905, -0.825322, -0.420458,
		0.925763, 0.350403, 0.142059,
		30.785418, 32.983952, 25.066158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478823, 32.275551, 25.256363>,  <30.137383, 32.738670, 24.966717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478823, 32.275551, 25.256363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685417, 32.604549, 25.351648>,  <30.809374, 32.801949, 25.408819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685417, 32.604549, 25.351648>,  <30.478823, 32.275551, 25.256363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685417, 32.604549, 25.351648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006765, -0.282099, 0.959361,
		0.856270, -0.493883, -0.151264,
		0.516484, 0.822496, 0.238212,
		30.840363, 32.851299, 25.423111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047995, 31.958273, 25.651766>,  <30.478823, 32.275551, 25.256363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047995, 31.958273, 25.651766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920710, 32.329735, 25.728022>,  <30.844337, 32.552612, 25.773775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920710, 32.329735, 25.728022>,  <31.047995, 31.958273, 25.651766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920710, 32.329735, 25.728022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009877, -0.197833, 0.980186,
		0.947967, 0.313793, 0.053781,
		-0.318215, 0.928653, 0.190638,
		30.825245, 32.608330, 25.785213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475615, 32.208778, 26.158403>,  <31.047995, 31.958273, 25.651766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475615, 32.208778, 26.158403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120558, 32.392841, 26.150904>,  <30.907524, 32.503277, 26.146404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120558, 32.392841, 26.150904>,  <31.475615, 32.208778, 26.158403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120558, 32.392841, 26.150904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004102, 0.048605, 0.998810,
		0.460517, 0.886508, -0.045032,
		-0.887642, 0.460153, -0.018747,
		30.854265, 32.530888, 26.145279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546104, 32.908436, 26.414522>,  <31.475615, 32.208778, 26.158403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546104, 32.908436, 26.414522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177620, 32.763607, 26.471474>,  <30.956530, 32.676708, 26.505644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177620, 32.763607, 26.471474>,  <31.546104, 32.908436, 26.414522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177620, 32.763607, 26.471474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050664, 0.251197, 0.966609,
		-0.385750, 0.897665, -0.213062,
		-0.921211, -0.362075, 0.142379,
		30.901257, 32.654984, 26.514187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197731, 33.383171, 26.848166>,  <31.546104, 32.908436, 26.414522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197731, 33.383171, 26.848166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010023, 33.032017, 26.886337>,  <30.897398, 32.821323, 26.909241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010023, 33.032017, 26.886337>,  <31.197731, 33.383171, 26.848166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010023, 33.032017, 26.886337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030541, 0.124139, 0.991795,
		-0.882526, 0.462507, -0.085066,
		-0.469272, -0.877882, 0.095431,
		30.869242, 32.768654, 26.914967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742088, 33.484512, 27.325777>,  <31.197731, 33.383171, 26.848166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742088, 33.484512, 27.325777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733177, 33.084698, 27.334053>,  <30.727831, 32.844810, 27.339018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733177, 33.084698, 27.334053>,  <30.742088, 33.484512, 27.325777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733177, 33.084698, 27.334053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169532, 0.024173, 0.985228,
		-0.985273, 0.018439, -0.169992,
		-0.022276, -0.999538, 0.020691,
		30.726494, 32.784836, 27.340260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146885, 33.342648, 27.674610>,  <30.742088, 33.484512, 27.325777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146885, 33.342648, 27.674610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381392, 33.020077, 27.705521>,  <30.522095, 32.826534, 27.724068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381392, 33.020077, 27.705521>,  <30.146885, 33.342648, 27.674610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381392, 33.020077, 27.705521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284246, -0.115440, 0.951776,
		-0.758615, -0.579959, -0.296902,
		0.586266, -0.806425, 0.077276,
		30.557272, 32.778149, 27.728704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660295, 32.849567, 28.066032>,  <30.146885, 33.342648, 27.674610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660295, 32.849567, 28.066032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025265, 32.693520, 28.115496>,  <30.244246, 32.599892, 28.145174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025265, 32.693520, 28.115496>,  <29.660295, 32.849567, 28.066032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025265, 32.693520, 28.115496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185411, -0.124678, 0.974719,
		-0.364842, -0.912283, -0.186092,
		0.912422, -0.390122, 0.123660,
		30.298992, 32.576485, 28.152594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559795, 32.201534, 28.441519>,  <29.660295, 32.849567, 28.066032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559795, 32.201534, 28.441519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928009, 32.353165, 28.479294>,  <30.148937, 32.444145, 28.501959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928009, 32.353165, 28.479294>,  <29.559795, 32.201534, 28.441519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928009, 32.353165, 28.479294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096440, -0.013745, 0.995244,
		0.378574, -0.925262, 0.023906,
		0.920533, 0.379079, 0.094435,
		30.204168, 32.466888, 28.507624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738237, 31.934311, 28.938143>,  <29.559795, 32.201534, 28.441519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738237, 31.934311, 28.938143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027283, 32.210396, 28.922977>,  <30.200710, 32.376049, 28.913877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027283, 32.210396, 28.922977>,  <29.738237, 31.934311, 28.938143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027283, 32.210396, 28.922977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005971, 0.061078, 0.998115,
		0.691230, -0.721022, 0.048257,
		0.722611, 0.690215, -0.037914,
		30.244066, 32.417461, 28.911604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292063, 31.764168, 29.408878>,  <29.738237, 31.934311, 28.938143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292063, 31.764168, 29.408878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324701, 32.158474, 29.350077>,  <30.344284, 32.395058, 29.314796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324701, 32.158474, 29.350077>,  <30.292063, 31.764168, 29.408878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324701, 32.158474, 29.350077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176434, 0.159453, 0.971312,
		0.980925, -0.053317, 0.186933,
		0.081594, 0.985765, -0.147004,
		30.349180, 32.454205, 29.305975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563278, 31.915277, 30.006306>,  <30.292063, 31.764168, 29.408878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563278, 31.915277, 30.006306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514044, 32.279743, 29.849014>,  <30.484503, 32.498425, 29.754641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514044, 32.279743, 29.849014>,  <30.563278, 31.915277, 30.006306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514044, 32.279743, 29.849014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061357, 0.388495, 0.919406,
		0.990498, 0.137293, 0.008088,
		-0.123086, 0.911165, -0.393227,
		30.477118, 32.553093, 29.731047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054518, 32.424942, 30.299742>,  <30.563278, 31.915277, 30.006306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054518, 32.424942, 30.299742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739784, 32.638916, 30.176624>,  <30.550945, 32.767300, 30.102755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739784, 32.638916, 30.176624>,  <31.054518, 32.424942, 30.299742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739784, 32.638916, 30.176624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149487, 0.318678, 0.936001,
		0.598790, 0.782486, -0.170779,
		-0.786831, 0.534939, -0.307793,
		30.503735, 32.799397, 30.084286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124678, 33.106415, 30.599882>,  <31.054518, 32.424942, 30.299742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124678, 33.106415, 30.599882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736406, 33.085144, 30.506107>,  <30.503445, 33.072384, 30.449842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736406, 33.085144, 30.506107>,  <31.124678, 33.106415, 30.599882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736406, 33.085144, 30.506107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227864, 0.514225, 0.826832,
		0.076588, 0.856006, -0.511261,
		-0.970676, -0.053172, -0.234436,
		30.445204, 33.069191, 30.435776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923058, 33.673508, 30.942438>,  <31.124678, 33.106415, 30.599882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923058, 33.673508, 30.942438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598536, 33.449726, 30.874561>,  <30.403822, 33.315456, 30.833836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598536, 33.449726, 30.874561>,  <30.923058, 33.673508, 30.942438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598536, 33.449726, 30.874561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425062, 0.365201, 0.828221,
		-0.401378, 0.744071, -0.534092,
		-0.811306, -0.559452, -0.169693,
		30.355145, 33.281891, 30.823654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322857, 34.139732, 31.041521>,  <30.923058, 33.673508, 30.942438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322857, 34.139732, 31.041521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205969, 33.759644, 31.084776>,  <30.135836, 33.531590, 31.110729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205969, 33.759644, 31.084776>,  <30.322857, 34.139732, 31.041521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205969, 33.759644, 31.084776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504937, 0.249327, 0.826362,
		-0.812186, 0.186876, -0.552658,
		-0.292220, -0.950218, 0.108139,
		30.118303, 33.474579, 31.117218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593796, 34.265896, 31.329298>,  <30.322857, 34.139732, 31.041521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593796, 34.265896, 31.329298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670277, 33.884109, 31.420897>,  <29.716166, 33.655037, 31.475855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670277, 33.884109, 31.420897>,  <29.593796, 34.265896, 31.329298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670277, 33.884109, 31.420897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359201, 0.149077, 0.921277,
		-0.913465, -0.258404, -0.314341,
		0.191201, -0.954465, 0.228996,
		29.727636, 33.597771, 31.489595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914017, 33.929214, 31.522755>,  <29.593796, 34.265896, 31.329298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914017, 33.929214, 31.522755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233387, 33.751343, 31.685125>,  <29.425009, 33.644619, 31.782547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233387, 33.751343, 31.685125>,  <28.914017, 33.929214, 31.522755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233387, 33.751343, 31.685125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435003, 0.040088, 0.899536,
		-0.416276, -0.894793, -0.161429,
		0.798427, -0.444678, 0.405925,
		29.472916, 33.617939, 31.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655481, 33.498196, 32.037128>,  <28.914017, 33.929214, 31.522755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655481, 33.498196, 32.037128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046110, 33.508492, 32.122585>,  <29.280487, 33.514668, 32.173859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046110, 33.508492, 32.122585>,  <28.655481, 33.498196, 32.037128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046110, 33.508492, 32.122585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209083, -0.121333, 0.970342,
		0.050900, -0.992278, -0.113108,
		0.976572, 0.025741, 0.213644,
		29.339083, 33.516212, 32.186680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769907, 33.056885, 32.616344>,  <28.655481, 33.498196, 32.037128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769907, 33.056885, 32.616344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073719, 33.317062, 32.618713>,  <29.256006, 33.473171, 32.620132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073719, 33.317062, 32.618713>,  <28.769907, 33.056885, 32.616344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073719, 33.317062, 32.618713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019646, 0.013843, 0.999711,
		0.650178, -0.759425, 0.023293,
		0.759528, 0.650447, 0.005919,
		29.301577, 33.512196, 32.620491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022511, 32.856098, 33.219421>,  <28.769907, 33.056885, 32.616344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022511, 32.856098, 33.219421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181108, 33.213490, 33.135052>,  <29.276266, 33.427925, 33.084431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181108, 33.213490, 33.135052>,  <29.022511, 32.856098, 33.219421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181108, 33.213490, 33.135052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034411, 0.215130, 0.975979,
		0.917393, -0.394226, 0.054552,
		0.396492, 0.893479, -0.210925,
		29.300056, 33.481533, 33.071774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735619, 32.953178, 33.730247>,  <29.022511, 32.856098, 33.219421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735619, 32.953178, 33.730247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561920, 33.289764, 33.601639>,  <29.457701, 33.491714, 33.524475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561920, 33.289764, 33.601639>,  <29.735619, 32.953178, 33.730247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561920, 33.289764, 33.601639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001776, 0.357726, 0.933825,
		0.900792, 0.404940, -0.156836,
		-0.434247, 0.841460, -0.321518,
		29.431646, 33.542202, 33.505184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106939, 33.434441, 34.156750>,  <29.735619, 32.953178, 33.730247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106939, 33.434441, 34.156750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775106, 33.609291, 34.017773>,  <29.576006, 33.714203, 33.934387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775106, 33.609291, 34.017773>,  <30.106939, 33.434441, 34.156750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775106, 33.609291, 34.017773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297257, 0.180998, 0.937485,
		0.472686, 0.880999, -0.020213,
		-0.829581, 0.437128, -0.347439,
		29.526232, 33.740429, 33.913540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073664, 34.005363, 34.608849>,  <30.106939, 33.434441, 34.156750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073664, 34.005363, 34.608849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720015, 33.944904, 34.431995>,  <29.507826, 33.908627, 34.325886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720015, 33.944904, 34.431995>,  <30.073664, 34.005363, 34.608849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720015, 33.944904, 34.431995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467155, 0.266473, 0.843065,
		-0.009614, 0.951917, -0.306205,
		-0.884123, -0.151151, -0.442131,
		29.454777, 33.899559, 34.299355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714319, 34.132126, 34.643250>,  <30.073664, 34.005363, 34.608849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714319, 34.132126, 34.643250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011593, 34.399689, 34.637081>,  <31.189957, 34.560226, 34.633381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011593, 34.399689, 34.637081>,  <30.714319, 34.132126, 34.643250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011593, 34.399689, 34.637081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574390, -0.649655, -0.498020,
		-0.343151, 0.361262, -0.867028,
		0.743185, 0.668908, -0.015425,
		31.234549, 34.600361, 34.632454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001236, 34.303944, 33.927116>,  <30.714319, 34.132126, 34.643250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001236, 34.303944, 33.927116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296772, 34.386909, 34.183582>,  <31.474092, 34.436691, 34.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296772, 34.386909, 34.183582>,  <31.001236, 34.303944, 33.927116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296772, 34.386909, 34.183582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597771, -0.640977, -0.481475,
		0.311108, 0.739004, -0.597566,
		0.738838, 0.207417, 0.641168,
		31.518423, 34.449135, 34.375931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614195, 34.484875, 33.575428>,  <31.001236, 34.303944, 33.927116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614195, 34.484875, 33.575428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716776, 34.340012, 33.933887>,  <31.778324, 34.253094, 34.148964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716776, 34.340012, 33.933887>,  <31.614195, 34.484875, 33.575428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716776, 34.340012, 33.933887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403007, -0.802651, -0.439701,
		0.878532, 0.473915, -0.059890,
		0.256452, -0.362155, 0.896145,
		31.793711, 34.231365, 34.202732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305180, 34.233158, 33.462978>,  <31.614195, 34.484875, 33.575428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305180, 34.233158, 33.462978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143181, 34.050674, 33.779926>,  <32.045982, 33.941185, 33.970093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143181, 34.050674, 33.779926>,  <32.305180, 34.233158, 33.462978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143181, 34.050674, 33.779926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244126, -0.889117, -0.387135,
		0.881122, 0.036647, 0.471466,
		-0.405001, -0.456211, 0.792367,
		32.021679, 33.913811, 34.017635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862404, 33.911243, 33.882568>,  <32.305180, 34.233158, 33.462978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862404, 33.911243, 33.882568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499767, 33.754574, 33.819710>,  <32.282185, 33.660572, 33.781994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499767, 33.754574, 33.819710>,  <32.862404, 33.911243, 33.882568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499767, 33.754574, 33.819710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410778, -0.733612, -0.541365,
		0.096753, -0.555346, 0.825972,
		-0.906587, -0.391670, -0.157144,
		32.227791, 33.637074, 33.772568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295170, 34.339054, 34.408707>,  <32.862404, 33.911243, 33.882568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295170, 34.339054, 34.408707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608162, 34.345295, 34.657700>,  <33.795956, 34.349037, 34.807095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608162, 34.345295, 34.657700>,  <33.295170, 34.339054, 34.408707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608162, 34.345295, 34.657700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517961, 0.571160, 0.636782,
		-0.345605, -0.820690, 0.455000,
		0.782479, 0.015597, 0.622482,
		33.842907, 34.349976, 34.844444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042309, 34.714668, 34.973331>,  <33.295170, 34.339054, 34.408707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042309, 34.714668, 34.973331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392799, 34.600784, 35.128857>,  <33.603092, 34.532455, 35.222172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392799, 34.600784, 35.128857>,  <33.042309, 34.714668, 34.973331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392799, 34.600784, 35.128857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191536, 0.534613, 0.823106,
		-0.442209, -0.795695, 0.413908,
		0.876222, -0.284707, 0.388815,
		33.655666, 34.515373, 35.245502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933403, 34.493183, 35.690098>,  <33.042309, 34.714668, 34.973331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933403, 34.493183, 35.690098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313263, 34.607529, 35.638798>,  <33.541180, 34.676136, 35.608017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313263, 34.607529, 35.638798>,  <32.933403, 34.493183, 35.690098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313263, 34.607529, 35.638798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082392, 0.622774, 0.778052,
		0.302292, -0.728308, 0.614969,
		0.949648, 0.285867, -0.128253,
		33.598156, 34.693291, 35.600323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137558, 34.442642, 36.311893>,  <32.933403, 34.493183, 35.690098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137558, 34.442642, 36.311893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401199, 34.695755, 36.149326>,  <33.559383, 34.847622, 36.051785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401199, 34.695755, 36.149326>,  <33.137558, 34.442642, 36.311893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401199, 34.695755, 36.149326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081229, 0.597148, 0.798007,
		0.747657, -0.492953, 0.444980,
		0.659099, 0.632781, -0.406420,
		33.598930, 34.885590, 36.027401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603916, 34.605721, 36.858654>,  <33.137558, 34.442642, 36.311893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603916, 34.605721, 36.858654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634098, 34.902641, 36.592335>,  <33.652206, 35.080795, 36.432545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634098, 34.902641, 36.592335>,  <33.603916, 34.605721, 36.858654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634098, 34.902641, 36.592335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048403, 0.664189, 0.745996,
		0.995974, -0.088516, 0.014187,
		0.075455, 0.742306, -0.665799,
		33.656734, 35.125332, 36.392593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012882, 35.058674, 37.137417>,  <33.603916, 34.605721, 36.858654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012882, 35.058674, 37.137417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855408, 35.280388, 36.844082>,  <33.760925, 35.413418, 36.668079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855408, 35.280388, 36.844082>,  <34.012882, 35.058674, 37.137417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855408, 35.280388, 36.844082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040045, 0.807342, 0.588724,
		0.918374, 0.202403, -0.340032,
		-0.393682, 0.554285, -0.733337,
		33.737305, 35.446674, 36.624081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433666, 35.729141, 37.106949>,  <34.012882, 35.058674, 37.137417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433666, 35.729141, 37.106949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064785, 35.798698, 36.968788>,  <33.843456, 35.840431, 36.885891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064785, 35.798698, 36.968788>,  <34.433666, 35.729141, 37.106949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064785, 35.798698, 36.968788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015526, 0.875825, 0.482378,
		0.386391, 0.450214, -0.804990,
		-0.922204, 0.173888, -0.345401,
		33.788124, 35.850864, 36.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466015, 36.451256, 36.827591>,  <34.433666, 35.729141, 37.106949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466015, 36.451256, 36.827591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079472, 36.376862, 36.898643>,  <33.847546, 36.332226, 36.941277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079472, 36.376862, 36.898643>,  <34.466015, 36.451256, 36.827591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079472, 36.376862, 36.898643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068419, 0.851707, 0.519532,
		-0.247919, 0.489902, -0.835782,
		-0.966362, -0.185986, 0.177636,
		33.789562, 36.321068, 36.951935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167549, 37.078320, 36.824013>,  <34.466015, 36.451256, 36.827591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167549, 37.078320, 36.824013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910088, 36.856861, 37.035370>,  <33.755611, 36.723988, 37.162182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910088, 36.856861, 37.035370>,  <34.167549, 37.078320, 36.824013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910088, 36.856861, 37.035370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019151, 0.701852, 0.712066,
		-0.765080, 0.448202, -0.462350,
		-0.643650, -0.553642, 0.528389,
		33.716991, 36.690769, 37.193886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630344, 37.577744, 37.021225>,  <34.167549, 37.078320, 36.824013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630344, 37.577744, 37.021225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579662, 37.279716, 37.283165>,  <33.549252, 37.100903, 37.440327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579662, 37.279716, 37.283165>,  <33.630344, 37.577744, 37.021225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579662, 37.279716, 37.283165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302673, 0.657724, 0.689774,
		-0.944635, -0.110807, -0.308848,
		-0.126705, -0.745064, 0.654847,
		33.541653, 37.056198, 37.479618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078449, 37.910206, 37.485104>,  <33.630344, 37.577744, 37.021225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078449, 37.910206, 37.485104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252861, 37.613483, 37.688911>,  <33.357506, 37.435452, 37.811195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252861, 37.613483, 37.688911>,  <33.078449, 37.910206, 37.485104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252861, 37.613483, 37.688911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189091, 0.478013, 0.857758,
		-0.879844, -0.470350, 0.068158,
		0.436027, -0.741805, 0.509515,
		33.383671, 37.390942, 37.841766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747997, 37.913368, 38.119278>,  <33.078449, 37.910206, 37.485104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747997, 37.913368, 38.119278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064079, 37.679970, 38.194229>,  <33.253727, 37.539932, 38.239201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064079, 37.679970, 38.194229>,  <32.747997, 37.913368, 38.119278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064079, 37.679970, 38.194229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070858, 0.390698, 0.917788,
		-0.608732, -0.711963, 0.350076,
		0.790205, -0.583493, 0.187382,
		33.301140, 37.504921, 38.250443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615749, 37.608307, 38.796581>,  <32.747997, 37.913368, 38.119278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615749, 37.608307, 38.796581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011810, 37.570541, 38.755253>,  <33.249447, 37.547882, 38.730457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011810, 37.570541, 38.755253>,  <32.615749, 37.608307, 38.796581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011810, 37.570541, 38.755253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131754, 0.379733, 0.915666,
		-0.047221, -0.920265, 0.388436,
		0.990157, -0.094417, -0.103318,
		33.308857, 37.542217, 38.724258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846207, 37.295303, 39.408966>,  <32.615749, 37.608307, 38.796581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846207, 37.295303, 39.408966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162209, 37.474117, 39.241135>,  <33.351810, 37.581406, 39.140434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162209, 37.474117, 39.241135>,  <32.846207, 37.295303, 39.408966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162209, 37.474117, 39.241135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260791, 0.374337, 0.889865,
		0.554864, -0.812424, 0.179147,
		0.790009, 0.447034, -0.419579,
		33.399212, 37.608227, 39.115261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438358, 37.061619, 39.735306>,  <32.846207, 37.295303, 39.408966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438358, 37.061619, 39.735306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545074, 37.406799, 39.563660>,  <33.609104, 37.613907, 39.460670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545074, 37.406799, 39.563660>,  <33.438358, 37.061619, 39.735306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545074, 37.406799, 39.563660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121214, 0.411676, 0.903233,
		0.956102, -0.292988, 0.005229,
		0.266789, 0.862949, -0.429119,
		33.625111, 37.665684, 39.434925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890949, 37.377739, 40.177502>,  <33.438358, 37.061619, 39.735306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890949, 37.377739, 40.177502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773266, 37.676044, 39.938412>,  <33.702656, 37.855026, 39.794956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773266, 37.676044, 39.938412>,  <33.890949, 37.377739, 40.177502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773266, 37.676044, 39.938412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050102, 0.636583, 0.769579,
		0.954428, 0.196468, -0.224652,
		-0.294207, 0.745763, -0.597729,
		33.685005, 37.899773, 39.759094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368393, 37.918091, 40.293213>,  <33.890949, 37.377739, 40.177502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368393, 37.918091, 40.293213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028973, 38.065208, 40.141064>,  <33.825321, 38.153481, 40.049774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028973, 38.065208, 40.141064>,  <34.368393, 37.918091, 40.293213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028973, 38.065208, 40.141064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065125, 0.640824, 0.764920,
		0.525087, 0.673847, -0.519821,
		-0.848553, 0.367796, -0.380373,
		33.774406, 38.175549, 40.026951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371540, 38.439213, 40.680859>,  <34.368393, 37.918091, 40.293213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371540, 38.439213, 40.680859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000206, 38.416229, 40.533951>,  <33.777405, 38.402439, 40.445805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000206, 38.416229, 40.533951>,  <34.371540, 38.439213, 40.680859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000206, 38.416229, 40.533951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350649, 0.463395, 0.813824,
		0.123427, 0.884287, -0.450336,
		-0.928338, -0.057462, -0.367270,
		33.721706, 38.398991, 40.423771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078495, 39.007179, 40.807228>,  <34.371540, 38.439213, 40.680859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078495, 39.007179, 40.807228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750797, 38.781712, 40.765064>,  <33.554180, 38.646431, 40.739765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750797, 38.781712, 40.765064>,  <34.078495, 39.007179, 40.807228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750797, 38.781712, 40.765064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345606, 0.338654, 0.875140,
		-0.457595, 0.753384, -0.472249,
		-0.819246, -0.563671, -0.105408,
		33.505024, 38.612610, 40.733440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501724, 39.453255, 40.875973>,  <34.078495, 39.007179, 40.807228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501724, 39.453255, 40.875973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375141, 39.082386, 40.956177>,  <33.299191, 38.859863, 41.004299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375141, 39.082386, 40.956177>,  <33.501724, 39.453255, 40.875973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375141, 39.082386, 40.956177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498850, 0.342439, 0.796169,
		-0.806849, 0.151930, -0.570888,
		-0.316456, -0.927174, 0.200506,
		33.280205, 38.804234, 41.016327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796356, 39.543091, 40.964069>,  <33.501724, 39.453255, 40.875973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796356, 39.543091, 40.964069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859470, 39.187077, 41.135159>,  <32.897339, 38.973469, 41.237812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859470, 39.187077, 41.135159>,  <32.796356, 39.543091, 40.964069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859470, 39.187077, 41.135159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545597, 0.282452, 0.789015,
		-0.823060, -0.357854, -0.441035,
		0.157781, -0.890034, 0.427719,
		32.906803, 38.920067, 41.263474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184673, 39.419842, 41.409531>,  <32.796356, 39.543091, 40.964069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184673, 39.419842, 41.409531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447063, 39.159245, 41.561977>,  <32.604496, 39.002884, 41.653446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447063, 39.159245, 41.561977>,  <32.184673, 39.419842, 41.409531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447063, 39.159245, 41.561977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442657, 0.076923, 0.893385,
		-0.611355, -0.754741, -0.237930,
		0.655972, -0.651498, 0.381119,
		32.643856, 38.963795, 41.676311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823816, 38.868542, 41.738258>,  <32.184673, 39.419842, 41.409531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823816, 38.868542, 41.738258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177753, 38.919025, 41.917648>,  <32.390114, 38.949314, 42.025280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177753, 38.919025, 41.917648>,  <31.823816, 38.868542, 41.738258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177753, 38.919025, 41.917648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456477, 0.042323, 0.888728,
		0.093183, -0.991101, 0.095059,
		0.884842, 0.126206, 0.448470,
		32.443207, 38.956886, 42.052189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702398, 38.526653, 42.394283>,  <31.823816, 38.868542, 41.738258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702398, 38.526653, 42.394283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034962, 38.745968, 42.430367>,  <32.234501, 38.877556, 42.452019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034962, 38.745968, 42.430367>,  <31.702398, 38.526653, 42.394283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034962, 38.745968, 42.430367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280512, 0.274006, 0.919909,
		0.479659, -0.790126, 0.381613,
		0.831409, 0.548290, 0.090210,
		32.284386, 38.910454, 42.457428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671188, 38.425175, 43.056652>,  <31.702398, 38.526653, 42.394283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671188, 38.425175, 43.056652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926369, 38.730106, 43.013054>,  <32.079475, 38.913063, 42.986897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926369, 38.730106, 43.013054>,  <31.671188, 38.425175, 43.056652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926369, 38.730106, 43.013054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246364, 0.336136, 0.909020,
		0.729606, -0.553057, 0.402247,
		0.637949, 0.762326, -0.108994,
		32.117752, 38.958805, 42.980354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100941, 38.415405, 43.671356>,  <31.671188, 38.425175, 43.056652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100941, 38.415405, 43.671356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108124, 38.773670, 43.493607>,  <32.112434, 38.988628, 43.386955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108124, 38.773670, 43.493607>,  <32.100941, 38.415405, 43.671356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108124, 38.773670, 43.493607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168442, 0.440808, 0.881655,
		0.985548, 0.059017, 0.158784,
		0.017961, 0.895659, -0.444379,
		32.113510, 39.042366, 43.360294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566631, 38.720684, 44.094425>,  <32.100941, 38.415405, 43.671356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566631, 38.720684, 44.094425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349384, 39.002907, 43.912342>,  <32.219036, 39.172241, 43.803093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349384, 39.002907, 43.912342>,  <32.566631, 38.720684, 44.094425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349384, 39.002907, 43.912342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004717, 0.539561, 0.841933,
		0.839643, 0.459416, -0.289717,
		-0.543118, 0.705557, -0.455206,
		32.186447, 39.214573, 43.775780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967216, 39.318150, 44.037994>,  <32.566631, 38.720684, 44.094425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967216, 39.318150, 44.037994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588387, 39.446430, 44.032330>,  <32.361088, 39.523399, 44.028931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588387, 39.446430, 44.032330>,  <32.967216, 39.318150, 44.037994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588387, 39.446430, 44.032330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167636, 0.531724, 0.830161,
		0.273765, 0.783850, -0.557344,
		-0.947075, 0.320700, -0.014166,
		32.304264, 39.542641, 44.028080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973297, 40.087811, 44.204777>,  <32.967216, 39.318150, 44.037994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973297, 40.087811, 44.204777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620457, 39.934399, 44.314178>,  <32.408752, 39.842350, 44.379822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620457, 39.934399, 44.314178>,  <32.973297, 40.087811, 44.204777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620457, 39.934399, 44.314178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058680, 0.665559, 0.744035,
		-0.467395, 0.640263, -0.609594,
		-0.882099, -0.383529, 0.273508,
		32.355827, 39.819340, 44.396233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667999, 40.689354, 44.356949>,  <32.973297, 40.087811, 44.204777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667999, 40.689354, 44.356949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461300, 40.397373, 44.535896>,  <32.337280, 40.222183, 44.643265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461300, 40.397373, 44.535896>,  <32.667999, 40.689354, 44.356949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461300, 40.397373, 44.535896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144858, 0.589558, 0.794630,
		-0.843791, 0.345821, -0.410394,
		-0.516751, -0.729951, 0.447369,
		32.306274, 40.178387, 44.670109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981083, 40.973148, 44.469902>,  <32.667999, 40.689354, 44.356949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981083, 40.973148, 44.469902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021805, 40.658722, 44.713783>,  <32.046238, 40.470066, 44.860111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021805, 40.658722, 44.713783>,  <31.981083, 40.973148, 44.469902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021805, 40.658722, 44.713783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317542, 0.555144, 0.768753,
		-0.942763, -0.271870, -0.193092,
		0.101807, -0.786067, 0.609700,
		32.052345, 40.422901, 44.896694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310270, 40.961891, 44.774132>,  <31.981083, 40.973148, 44.469902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310270, 40.961891, 44.774132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593309, 40.789845, 44.998383>,  <31.763134, 40.686615, 45.132935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593309, 40.789845, 44.998383>,  <31.310270, 40.961891, 44.774132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593309, 40.789845, 44.998383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249075, 0.590649, 0.767526,
		-0.661260, -0.682739, 0.310811,
		0.707600, -0.430119, 0.560626,
		31.805590, 40.660809, 45.166569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033569, 41.144783, 45.377678>,  <31.310270, 40.961891, 44.774132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033569, 41.144783, 45.377678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383148, 40.999100, 45.506409>,  <31.592896, 40.911690, 45.583645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383148, 40.999100, 45.506409>,  <31.033569, 41.144783, 45.377678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383148, 40.999100, 45.506409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193813, 0.346074, 0.917970,
		-0.445703, -0.864632, 0.231863,
		0.873948, -0.364204, 0.321823,
		31.645332, 40.889839, 45.602955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797911, 40.859955, 46.054825>,  <31.033569, 41.144783, 45.377678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797911, 40.859955, 46.054825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196695, 40.891102, 46.054001>,  <31.435966, 40.909790, 46.053509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196695, 40.891102, 46.054001>,  <30.797911, 40.859955, 46.054825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196695, 40.891102, 46.054001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027338, 0.374528, 0.926813,
		0.072935, -0.923941, 0.375518,
		0.996962, 0.077863, -0.002058,
		31.495785, 40.914459, 46.053383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016544, 40.561546, 46.636906>,  <30.797911, 40.859955, 46.054825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016544, 40.561546, 46.636906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329725, 40.793980, 46.548073>,  <31.517633, 40.933441, 46.494774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329725, 40.793980, 46.548073>,  <31.016544, 40.561546, 46.636906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329725, 40.793980, 46.548073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158862, 0.158400, 0.974511,
		0.601454, -0.798278, 0.031707,
		0.782953, 0.581087, -0.222086,
		31.564611, 40.968304, 46.481445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555408, 40.306000, 46.889423>,  <31.016544, 40.561546, 46.636906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555408, 40.306000, 46.889423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631596, 40.698395, 46.874493>,  <31.677309, 40.933830, 46.865532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631596, 40.698395, 46.874493>,  <31.555408, 40.306000, 46.889423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631596, 40.698395, 46.874493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112703, 0.015922, 0.993501,
		0.975202, -0.193439, -0.107527,
		0.190470, 0.980983, -0.037329,
		31.688736, 40.992691, 46.863293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054382, 40.434616, 47.398808>,  <31.555408, 40.306000, 46.889423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054382, 40.434616, 47.398808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905842, 40.795971, 47.313023>,  <31.816717, 41.012783, 47.261551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905842, 40.795971, 47.313023>,  <32.054382, 40.434616, 47.398808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905842, 40.795971, 47.313023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121780, 0.181598, 0.975803,
		0.920472, 0.388482, 0.042578,
		-0.371350, 0.903385, -0.214465,
		31.794437, 41.066986, 47.248684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221760, 40.838112, 47.967339>,  <32.054382, 40.434616, 47.398808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221760, 40.838112, 47.967339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951077, 41.075367, 47.792870>,  <31.788666, 41.217720, 47.688187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951077, 41.075367, 47.792870>,  <32.221760, 40.838112, 47.967339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951077, 41.075367, 47.792870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222275, 0.400190, 0.889068,
		0.701895, 0.698592, -0.138972,
		-0.676710, 0.593142, -0.436171,
		31.748064, 41.253311, 47.662018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302170, 41.507198, 48.257694>,  <32.221760, 40.838112, 47.967339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302170, 41.507198, 48.257694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927935, 41.467731, 48.122086>,  <31.703392, 41.444050, 48.040722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927935, 41.467731, 48.122086>,  <32.302170, 41.507198, 48.257694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927935, 41.467731, 48.122086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349191, 0.116322, 0.929803,
		-0.052304, 0.988299, -0.143283,
		-0.935591, -0.098666, -0.339021,
		31.647257, 41.438133, 48.020378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876053, 42.204098, 48.495209>,  <32.302170, 41.507198, 48.257694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876053, 42.204098, 48.495209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626520, 41.902218, 48.413948>,  <31.476801, 41.721092, 48.365192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626520, 41.902218, 48.413948>,  <31.876053, 42.204098, 48.495209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626520, 41.902218, 48.413948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466882, 0.151400, 0.871263,
		-0.626781, 0.638368, -0.446802,
		-0.623832, -0.754695, -0.203148,
		31.439371, 41.675808, 48.353004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290737, 42.446796, 48.820919>,  <31.876053, 42.204098, 48.495209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290737, 42.446796, 48.820919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214705, 42.063534, 48.735306>,  <31.169085, 41.833576, 48.683937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214705, 42.063534, 48.735306>,  <31.290737, 42.446796, 48.820919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214705, 42.063534, 48.735306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560487, -0.073080, 0.824933,
		-0.806054, 0.276766, -0.523142,
		-0.190082, -0.958154, -0.214030,
		31.157681, 41.776089, 48.671097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583046, 42.450993, 49.076004>,  <31.290737, 42.446796, 48.820919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583046, 42.450993, 49.076004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699272, 42.070137, 49.038059>,  <30.769007, 41.841621, 49.015293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699272, 42.070137, 49.038059>,  <30.583046, 42.450993, 49.076004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699272, 42.070137, 49.038059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439071, -0.220761, 0.870908,
		-0.850170, -0.211403, -0.482203,
		0.290564, -0.952142, -0.094863,
		30.786442, 41.784496, 49.009602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112347, 42.027695, 49.448322>,  <30.583046, 42.450993, 49.076004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112347, 42.027695, 49.448322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399010, 41.755550, 49.386990>,  <30.571007, 41.592262, 49.350189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399010, 41.755550, 49.386990>,  <30.112347, 42.027695, 49.448322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399010, 41.755550, 49.386990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332517, -0.526578, 0.782399,
		-0.613054, -0.509727, -0.603608,
		0.716657, -0.680363, -0.153328,
		30.614008, 41.551441, 49.340992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822557, 41.325600, 49.420757>,  <30.112347, 42.027695, 49.448322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822557, 41.325600, 49.420757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198021, 41.320152, 49.558586>,  <30.423300, 41.316883, 49.641285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198021, 41.320152, 49.558586>,  <29.822557, 41.325600, 49.420757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198021, 41.320152, 49.558586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315254, -0.438847, 0.841444,
		0.139757, -0.898459, -0.416221,
		0.938660, -0.013617, 0.344575,
		30.479618, 41.316067, 49.661957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002323, 40.567249, 49.639061>,  <29.822557, 41.325600, 49.420757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002323, 40.567249, 49.639061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185831, 40.858021, 49.843452>,  <30.295935, 41.032486, 49.966087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185831, 40.858021, 49.843452>,  <30.002323, 40.567249, 49.639061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185831, 40.858021, 49.843452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202563, -0.474368, 0.856705,
		0.865159, -0.496536, -0.070375,
		0.458768, 0.726930, 0.510983,
		30.323462, 41.076099, 49.996746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624475, 40.261631, 50.057697>,  <30.002323, 40.567249, 49.639061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624475, 40.261631, 50.057697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465384, 40.569710, 50.257141>,  <30.369928, 40.754559, 50.376808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465384, 40.569710, 50.257141>,  <30.624475, 40.261631, 50.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465384, 40.569710, 50.257141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123764, -0.583509, 0.802621,
		0.909117, 0.257517, 0.327402,
		-0.397731, 0.770196, 0.498607,
		30.346064, 40.800770, 50.406723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052958, 40.446339, 50.672016>,  <30.624475, 40.261631, 50.057697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052958, 40.446339, 50.672016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660614, 40.496803, 50.731339>,  <30.425207, 40.527084, 50.766933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660614, 40.496803, 50.731339>,  <31.052958, 40.446339, 50.672016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660614, 40.496803, 50.731339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037135, -0.626479, 0.778553,
		0.191137, 0.769159, 0.609803,
		-0.980861, 0.126165, 0.148306,
		30.366356, 40.534653, 50.775829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010052, 40.680962, 51.344528>,  <31.052958, 40.446339, 50.672016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010052, 40.680962, 51.344528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648573, 40.528839, 51.265846>,  <30.431684, 40.437565, 51.218636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648573, 40.528839, 51.265846>,  <31.010052, 40.680962, 51.344528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648573, 40.528839, 51.265846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009970, -0.477980, 0.878314,
		-0.428051, 0.791771, 0.435742,
		-0.903699, -0.380308, -0.196706,
		30.377462, 40.414745, 51.206833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481550, 41.159874, 51.164158>,  <31.010052, 40.680962, 51.344528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481550, 41.159874, 51.164158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791838, 41.225113, 51.408012>,  <30.978010, 41.264256, 51.554325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791838, 41.225113, 51.408012>,  <30.481550, 41.159874, 51.164158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791838, 41.225113, 51.408012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592458, -0.520963, -0.614485,
		0.217375, 0.837852, -0.500751,
		0.775720, 0.163100, 0.609636,
		31.024553, 41.274044, 51.590904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991104, 41.442863, 50.638596>,  <30.481550, 41.159874, 51.164158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991104, 41.442863, 50.638596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157650, 41.314220, 50.978764>,  <31.257578, 41.237034, 51.182865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157650, 41.314220, 50.978764>,  <30.991104, 41.442863, 50.638596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157650, 41.314220, 50.978764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715569, -0.461116, -0.524722,
		0.560895, 0.827008, 0.038137,
		0.416364, -0.321604, 0.850419,
		31.282558, 41.217739, 51.233891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746239, 41.563248, 50.677155>,  <30.991104, 41.442863, 50.638596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746239, 41.563248, 50.677155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652868, 41.242599, 50.897305>,  <31.596846, 41.050209, 51.029396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652868, 41.242599, 50.897305>,  <31.746239, 41.563248, 50.677155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652868, 41.242599, 50.897305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653936, -0.548312, -0.521269,
		0.719639, 0.238234, 0.652200,
		-0.233425, -0.801623, 0.550376,
		31.582840, 41.002113, 51.062416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394341, 41.282059, 50.858341>,  <31.746239, 41.563248, 50.677155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394341, 41.282059, 50.858341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104961, 41.006077, 50.848709>,  <31.931334, 40.840488, 50.842930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104961, 41.006077, 50.848709>,  <32.394341, 41.282059, 50.858341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104961, 41.006077, 50.848709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568768, -0.575890, -0.587243,
		0.391306, -0.438536, 0.809052,
		-0.723452, -0.689954, -0.024076,
		31.887926, 40.799091, 50.841488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674126, 40.643635, 51.077271>,  <32.394341, 41.282059, 50.858341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674126, 40.643635, 51.077271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426662, 40.716202, 50.771500>,  <32.278183, 40.759743, 50.588039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426662, 40.716202, 50.771500>,  <32.674126, 40.643635, 51.077271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426662, 40.716202, 50.771500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749635, -0.154929, -0.643463,
		-0.235168, -0.971125, -0.040150,
		-0.618663, 0.181420, -0.764423,
		32.241062, 40.770630, 50.542171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860737, 40.132565, 50.552368>,  <32.674126, 40.643635, 51.077271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860737, 40.132565, 50.552368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652702, 40.424236, 50.374470>,  <32.527882, 40.599239, 50.267731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652702, 40.424236, 50.374470>,  <32.860737, 40.132565, 50.552368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652702, 40.424236, 50.374470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649941, 0.000034, -0.759985,
		-0.554152, -0.684319, -0.473944,
		-0.520088, 0.729183, -0.444748,
		32.496677, 40.642990, 50.241047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624599, 39.850918, 49.889118>,  <32.860737, 40.132565, 50.552368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624599, 39.850918, 49.889118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636452, 40.250477, 49.874554>,  <32.643562, 40.490211, 49.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636452, 40.250477, 49.874554>,  <32.624599, 39.850918, 49.889118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636452, 40.250477, 49.874554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700572, -0.046736, -0.712049,
		-0.712966, -0.004405, -0.701185,
		0.029634, 0.998898, -0.036407,
		32.645344, 40.550148, 49.863632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568401, 39.937840, 49.224369>,  <32.624599, 39.850918, 49.889118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568401, 39.937840, 49.224369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697338, 40.293396, 49.354580>,  <32.774700, 40.506729, 49.432709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697338, 40.293396, 49.354580>,  <32.568401, 39.937840, 49.224369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697338, 40.293396, 49.354580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745994, -0.026840, -0.665411,
		-0.582739, 0.457337, -0.671758,
		0.322347, 0.888889, 0.325530,
		32.794041, 40.560062, 49.452240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625145, 40.276394, 48.581242>,  <32.568401, 39.937840, 49.224369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625145, 40.276394, 48.581242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842712, 40.431004, 48.879169>,  <32.973251, 40.523769, 49.057926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842712, 40.431004, 48.879169>,  <32.625145, 40.276394, 48.581242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842712, 40.431004, 48.879169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807504, 0.000314, -0.589862,
		-0.228230, 0.922279, -0.311949,
		0.543920, 0.386524, 0.744816,
		33.005890, 40.546959, 49.102615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949776, 40.834873, 48.224602>,  <32.625145, 40.276394, 48.581242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949776, 40.834873, 48.224602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155853, 40.758488, 48.558815>,  <33.279499, 40.712658, 48.759342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155853, 40.758488, 48.558815>,  <32.949776, 40.834873, 48.224602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155853, 40.758488, 48.558815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851874, 0.006878, -0.523701,
		0.094260, 0.981573, 0.166220,
		0.515194, -0.190963, 0.835529,
		33.310413, 40.701199, 48.809475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529625, 41.095230, 48.032497>,  <32.949776, 40.834873, 48.224602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529625, 41.095230, 48.032497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619099, 40.837959, 48.325424>,  <33.672783, 40.683598, 48.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619099, 40.837959, 48.325424>,  <33.529625, 41.095230, 48.032497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619099, 40.837959, 48.325424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845388, -0.245900, -0.474185,
		0.485062, 0.725162, 0.488729,
		0.223682, -0.643175, 0.732320,
		33.686203, 40.645008, 48.545120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196285, 41.120743, 48.103230>,  <33.529625, 41.095230, 48.032497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196285, 41.120743, 48.103230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147797, 40.782619, 48.311371>,  <34.118706, 40.579746, 48.436256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147797, 40.782619, 48.311371>,  <34.196285, 41.120743, 48.103230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147797, 40.782619, 48.311371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718219, -0.436541, -0.541843,
		0.685177, 0.308045, 0.660031,
		-0.121218, -0.845305, 0.520351,
		34.111431, 40.529026, 48.467476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875214, 40.770782, 48.137676>,  <34.196285, 41.120743, 48.103230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875214, 40.770782, 48.137676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601311, 40.487698, 48.207256>,  <34.436970, 40.317848, 48.249004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601311, 40.487698, 48.207256>,  <34.875214, 40.770782, 48.137676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601311, 40.487698, 48.207256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534701, -0.650065, -0.539917,
		0.495182, -0.276701, 0.823548,
		-0.684756, -0.707709, 0.173948,
		34.395885, 40.275387, 48.259441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289509, 40.158207, 48.192348>,  <34.875214, 40.770782, 48.137676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289509, 40.158207, 48.192348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919037, 40.026302, 48.119183>,  <34.696754, 39.947159, 48.075283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919037, 40.026302, 48.119183>,  <35.289509, 40.158207, 48.192348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919037, 40.026302, 48.119183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368403, -0.687761, -0.625510,
		0.080468, -0.646718, 0.758472,
		-0.926177, -0.329757, -0.182911,
		34.641182, 39.927376, 48.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240479, 39.423126, 48.286198>,  <35.289509, 40.158207, 48.192348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240479, 39.423126, 48.286198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961224, 39.524036, 48.018181>,  <34.793671, 39.584583, 47.857368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961224, 39.524036, 48.018181>,  <35.240479, 39.423126, 48.286198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961224, 39.524036, 48.018181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379455, -0.663239, -0.645079,
		-0.607140, -0.704606, 0.367304,
		-0.698137, 0.252278, -0.670045,
		34.751781, 39.599720, 47.817165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962482, 38.742680, 48.005589>,  <35.240479, 39.423126, 48.286198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962482, 38.742680, 48.005589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869919, 39.015282, 47.727882>,  <34.814381, 39.178844, 47.561260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869919, 39.015282, 47.727882>,  <34.962482, 38.742680, 48.005589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869919, 39.015282, 47.727882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282858, -0.635671, -0.718271,
		-0.930829, -0.362590, -0.045670,
		-0.231407, 0.681506, -0.694262,
		34.800495, 39.219734, 47.519604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008194, 38.303219, 47.426517>,  <34.962482, 38.742680, 48.005589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008194, 38.303219, 47.426517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924805, 38.661339, 47.269047>,  <34.874771, 38.876209, 47.174564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924805, 38.661339, 47.269047>,  <35.008194, 38.303219, 47.426517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924805, 38.661339, 47.269047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123536, -0.375197, -0.918676,
		-0.970195, -0.240153, -0.032383,
		-0.208472, 0.895295, -0.393681,
		34.862263, 38.929928, 47.150944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401718, 38.243542, 46.900833>,  <35.008194, 38.303219, 47.426517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401718, 38.243542, 46.900833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657143, 38.538330, 46.812187>,  <34.810398, 38.715202, 46.758999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657143, 38.538330, 46.812187>,  <34.401718, 38.243542, 46.900833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657143, 38.538330, 46.812187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165914, -0.413035, -0.895474,
		-0.751474, 0.535046, -0.386022,
		0.638561, 0.736972, -0.221614,
		34.848709, 38.759422, 46.745705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138950, 38.627632, 46.359161>,  <34.401718, 38.243542, 46.900833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138950, 38.627632, 46.359161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537067, 38.666309, 46.361553>,  <34.775940, 38.689514, 46.362988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537067, 38.666309, 46.361553>,  <34.138950, 38.627632, 46.359161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537067, 38.666309, 46.361553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033492, -0.285543, -0.957780,
		-0.090900, 0.953476, -0.287439,
		0.995297, 0.096689, 0.005978,
		34.835655, 38.695316, 46.363346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336330, 38.995716, 45.643017>,  <34.138950, 38.627632, 46.359161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336330, 38.995716, 45.643017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655285, 38.812149, 45.799770>,  <34.846657, 38.702011, 45.893822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655285, 38.812149, 45.799770>,  <34.336330, 38.995716, 45.643017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655285, 38.812149, 45.799770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169550, -0.452862, -0.875311,
		0.579162, 0.764404, -0.283298,
		0.797386, -0.458913, 0.391885,
		34.894501, 38.674477, 45.917336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838192, 39.088127, 45.187283>,  <34.336330, 38.995716, 45.643017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838192, 39.088127, 45.187283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990299, 38.785145, 45.399567>,  <35.081566, 38.603355, 45.526936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990299, 38.785145, 45.399567>,  <34.838192, 39.088127, 45.187283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990299, 38.785145, 45.399567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353744, -0.411072, -0.840170,
		0.854552, 0.507229, 0.111626,
		0.380272, -0.757455, 0.530712,
		35.104382, 38.557907, 45.558781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482662, 38.945545, 44.861488>,  <34.838192, 39.088127, 45.187283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482662, 38.945545, 44.861488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386562, 38.609497, 45.056004>,  <35.328903, 38.407867, 45.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386562, 38.609497, 45.056004>,  <35.482662, 38.945545, 44.861488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386562, 38.609497, 45.056004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336604, -0.541981, -0.770035,
		0.910483, -0.021310, 0.412997,
		-0.240246, -0.840121, 0.486292,
		35.314487, 38.357460, 45.201893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024399, 38.435101, 44.770805>,  <35.482662, 38.945545, 44.861488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024399, 38.435101, 44.770805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709637, 38.218655, 44.889446>,  <35.520779, 38.088787, 44.960632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709637, 38.218655, 44.889446>,  <36.024399, 38.435101, 44.770805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709637, 38.218655, 44.889446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175256, -0.656849, -0.733372,
		0.591667, -0.525111, 0.611710,
		-0.786903, -0.541118, 0.296607,
		35.473564, 38.056320, 44.978428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295319, 37.746868, 44.730919>,  <36.024399, 38.435101, 44.770805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295319, 37.746868, 44.730919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895420, 37.750137, 44.722443>,  <35.655483, 37.752098, 44.717358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895420, 37.750137, 44.722443>,  <36.295319, 37.746868, 44.730919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895420, 37.750137, 44.722443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013612, -0.531225, -0.847121,
		-0.018176, -0.847191, 0.530977,
		-0.999742, 0.008170, -0.021187,
		35.595497, 37.752590, 44.716087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215130, 37.052174, 44.560013>,  <36.295319, 37.746868, 44.730919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215130, 37.052174, 44.560013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876446, 37.241161, 44.462151>,  <35.673237, 37.354553, 44.403431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876446, 37.241161, 44.462151>,  <36.215130, 37.052174, 44.560013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876446, 37.241161, 44.462151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099719, -0.592607, -0.799296,
		-0.522629, -0.652373, 0.548879,
		-0.846709, 0.472469, -0.244659,
		35.622433, 37.382904, 44.388752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731422, 36.502506, 44.630215>,  <36.215130, 37.052174, 44.560013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731422, 36.502506, 44.630215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595135, 36.803921, 44.405327>,  <35.513363, 36.984768, 44.270393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595135, 36.803921, 44.405327>,  <35.731422, 36.502506, 44.630215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595135, 36.803921, 44.405327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250553, -0.649155, -0.718207,
		-0.906163, -0.103844, 0.409983,
		-0.340724, 0.753535, -0.562221,
		35.492916, 37.029980, 44.236660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110516, 36.158337, 44.281113>,  <35.731422, 36.502506, 44.630215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110516, 36.158337, 44.281113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215981, 36.477020, 44.063587>,  <35.279259, 36.668232, 43.933071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215981, 36.477020, 44.063587>,  <35.110516, 36.158337, 44.281113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215981, 36.477020, 44.063587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227189, -0.496612, -0.837712,
		-0.937479, 0.344420, 0.050067,
		0.263661, 0.796713, -0.543812,
		35.295078, 36.716034, 43.900444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572823, 36.325214, 43.717030>,  <35.110516, 36.158337, 44.281113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572823, 36.325214, 43.717030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896473, 36.533176, 43.607475>,  <35.090664, 36.657955, 43.541744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896473, 36.533176, 43.607475>,  <34.572823, 36.325214, 43.717030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896473, 36.533176, 43.607475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089875, -0.351110, -0.932011,
		-0.580723, 0.778729, -0.237366,
		0.809125, 0.519907, -0.273886,
		35.139210, 36.689148, 43.525311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381233, 36.598343, 43.064850>,  <34.572823, 36.325214, 43.717030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381233, 36.598343, 43.064850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781151, 36.596375, 43.072655>,  <35.021103, 36.595192, 43.077339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781151, 36.596375, 43.072655>,  <34.381233, 36.598343, 43.064850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781151, 36.596375, 43.072655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016040, -0.390673, -0.920390,
		0.012153, 0.920517, -0.390515,
		0.999798, -0.004921, 0.019513,
		35.081089, 36.594898, 43.078510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660206, 36.990959, 42.421448>,  <34.381233, 36.598343, 43.064850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660206, 36.990959, 42.421448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927341, 36.732525, 42.569271>,  <35.087624, 36.577465, 42.657963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927341, 36.732525, 42.569271>,  <34.660206, 36.990959, 42.421448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927341, 36.732525, 42.569271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169933, -0.351043, -0.920810,
		0.724650, 0.677750, -0.124648,
		0.667836, -0.646083, 0.369555,
		35.127693, 36.538700, 42.680138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115799, 36.892555, 41.980515>,  <34.660206, 36.990959, 42.421448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115799, 36.892555, 41.980515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220753, 36.577412, 42.203377>,  <35.283726, 36.388325, 42.337093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220753, 36.577412, 42.203377>,  <35.115799, 36.892555, 41.980515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220753, 36.577412, 42.203377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097299, -0.552845, -0.827584,
		0.960045, 0.271357, -0.068401,
		0.262386, -0.787863, 0.557158,
		35.299469, 36.341053, 42.370525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723206, 36.691685, 41.703751>,  <35.115799, 36.892555, 41.980515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723206, 36.691685, 41.703751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588985, 36.382908, 41.919716>,  <35.508453, 36.197643, 42.049297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588985, 36.382908, 41.919716>,  <35.723206, 36.691685, 41.703751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588985, 36.382908, 41.919716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173039, -0.613905, -0.770180,
		0.925992, -0.165011, 0.339575,
		-0.335555, -0.771940, 0.539918,
		35.488319, 36.151325, 42.081692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167549, 36.168953, 41.672905>,  <35.723206, 36.691685, 41.703751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167549, 36.168953, 41.672905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846485, 35.957756, 41.783878>,  <35.653847, 35.831039, 41.850464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846485, 35.957756, 41.783878>,  <36.167549, 36.168953, 41.672905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846485, 35.957756, 41.783878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203570, -0.679729, -0.704647,
		0.560626, -0.509112, 0.653072,
		-0.802656, -0.527990, 0.277434,
		35.605690, 35.799358, 41.867107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335056, 35.517185, 41.812710>,  <36.167549, 36.168953, 41.672905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335056, 35.517185, 41.812710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945850, 35.454563, 41.744900>,  <35.712326, 35.416992, 41.704212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945850, 35.454563, 41.744900>,  <36.335056, 35.517185, 41.812710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945850, 35.454563, 41.744900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230621, -0.634738, -0.737511,
		0.007853, -0.756703, 0.653712,
		-0.973012, -0.156551, -0.169527,
		35.653946, 35.407597, 41.694042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322235, 34.828243, 41.497623>,  <36.335056, 35.517185, 41.812710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322235, 34.828243, 41.497623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955196, 34.968563, 41.422844>,  <35.734974, 35.052753, 41.377975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955196, 34.968563, 41.422844>,  <36.322235, 34.828243, 41.497623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955196, 34.968563, 41.422844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020330, -0.428285, -0.903415,
		-0.396975, -0.832778, 0.385864,
		-0.917604, 0.350789, -0.186949,
		35.679916, 35.073803, 41.366760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067211, 34.322475, 41.251801>,  <36.322235, 34.828243, 41.497623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067211, 34.322475, 41.251801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855247, 34.631207, 41.111240>,  <35.728069, 34.816444, 41.026905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855247, 34.631207, 41.111240>,  <36.067211, 34.322475, 41.251801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855247, 34.631207, 41.111240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026767, -0.429370, -0.902732,
		-0.847633, -0.468958, 0.248186,
		-0.529907, 0.771829, -0.351396,
		35.696274, 34.862755, 41.005821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499237, 33.991623, 41.014496>,  <36.067211, 34.322475, 41.251801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499237, 33.991623, 41.014496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524788, 34.355053, 40.849373>,  <35.540119, 34.573112, 40.750301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524788, 34.355053, 40.849373>,  <35.499237, 33.991623, 41.014496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524788, 34.355053, 40.849373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071462, -0.408424, -0.909991,
		-0.995396, 0.087630, 0.038839,
		0.063880, 0.908576, -0.412806,
		35.543953, 34.627625, 40.725533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943935, 34.073006, 40.420547>,  <35.499237, 33.991623, 41.014496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943935, 34.073006, 40.420547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228157, 34.342255, 40.338558>,  <35.398689, 34.503803, 40.289364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228157, 34.342255, 40.338558>,  <34.943935, 34.073006, 40.420547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228157, 34.342255, 40.338558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122361, -0.405077, -0.906058,
		-0.692917, 0.618726, -0.370194,
		0.710558, 0.673120, -0.204977,
		35.441326, 34.544189, 40.277065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627781, 34.472958, 39.861816>,  <34.943935, 34.073006, 40.420547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627781, 34.472958, 39.861816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019230, 34.541759, 39.816711>,  <35.254101, 34.583038, 39.789650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019230, 34.541759, 39.816711>,  <34.627781, 34.472958, 39.861816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019230, 34.541759, 39.816711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055926, -0.305054, -0.950692,
		-0.197920, 0.936674, -0.288912,
		0.978622, 0.172003, -0.112761,
		35.312817, 34.593361, 39.782883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720909, 34.947395, 39.278423>,  <34.627781, 34.472958, 39.861816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720909, 34.947395, 39.278423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082932, 34.782402, 39.319862>,  <35.300144, 34.683407, 39.344727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082932, 34.782402, 39.319862>,  <34.720909, 34.947395, 39.278423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082932, 34.782402, 39.319862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000661, -0.244957, -0.969534,
		0.425294, 0.877413, -0.221972,
		0.905055, -0.412483, 0.103599,
		35.354446, 34.658657, 39.350941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008900, 35.097931, 38.638573>,  <34.720909, 34.947395, 39.278423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008900, 35.097931, 38.638573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242947, 34.806511, 38.781040>,  <35.383373, 34.631657, 38.866520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242947, 34.806511, 38.781040>,  <35.008900, 35.097931, 38.638573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242947, 34.806511, 38.781040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039493, -0.413076, -0.909840,
		0.809989, 0.546426, -0.212924,
		0.585114, -0.728552, 0.356166,
		35.418480, 34.587944, 38.887890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604706, 35.151062, 38.204220>,  <35.008900, 35.097931, 38.638573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604706, 35.151062, 38.204220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619640, 34.784683, 38.364048>,  <35.628601, 34.564857, 38.459946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619640, 34.784683, 38.364048>,  <35.604706, 35.151062, 38.204220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619640, 34.784683, 38.364048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252631, -0.378208, -0.890582,
		0.966842, 0.134191, 0.217277,
		0.037332, -0.915943, 0.399568,
		35.630840, 34.509899, 38.483917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178085, 34.886013, 38.012077>,  <35.604706, 35.151062, 38.204220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178085, 34.886013, 38.012077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978107, 34.555622, 38.116241>,  <35.858120, 34.357388, 38.178741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978107, 34.555622, 38.116241>,  <36.178085, 34.886013, 38.012077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978107, 34.555622, 38.116241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453142, -0.505719, -0.734105,
		0.738053, -0.249005, 0.627116,
		-0.499940, -0.825981, 0.260413,
		35.828125, 34.307827, 38.194366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706585, 34.473412, 38.252277>,  <36.178085, 34.886013, 38.012077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706585, 34.473412, 38.252277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401196, 34.244350, 38.132828>,  <36.217964, 34.106915, 38.061157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401196, 34.244350, 38.132828>,  <36.706585, 34.473412, 38.252277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401196, 34.244350, 38.132828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606687, -0.477357, -0.635659,
		0.221463, -0.666479, 0.711871,
		-0.763469, -0.572658, -0.298627,
		36.172153, 34.072552, 38.043240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820358, 35.177258, 38.500801>,  <36.706585, 34.473412, 38.252277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820358, 35.177258, 38.500801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212467, 35.108288, 38.462147>,  <37.447731, 35.066906, 38.438953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212467, 35.108288, 38.462147>,  <36.820358, 35.177258, 38.500801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212467, 35.108288, 38.462147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176800, 0.546314, 0.818708,
		-0.088371, -0.819641, 0.566020,
		0.980272, -0.172423, -0.096634,
		37.506550, 35.056561, 38.433155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215481, 34.880783, 39.151344>,  <36.820358, 35.177258, 38.500801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215481, 34.880783, 39.151344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491432, 35.067894, 38.930344>,  <37.657001, 35.180161, 38.797745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491432, 35.067894, 38.930344>,  <37.215481, 34.880783, 39.151344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491432, 35.067894, 38.930344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411249, 0.374854, 0.830878,
		0.595772, -0.800418, 0.066230,
		0.689877, 0.467777, -0.552499,
		37.698395, 35.208225, 38.764595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905827, 34.820656, 39.476334>,  <37.215481, 34.880783, 39.151344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905827, 34.820656, 39.476334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950146, 35.128132, 39.224354>,  <37.976738, 35.312618, 39.073166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950146, 35.128132, 39.224354>,  <37.905827, 34.820656, 39.476334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950146, 35.128132, 39.224354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393728, 0.548037, 0.737993,
		0.912525, -0.329794, -0.241937,
		0.110795, 0.768695, -0.629946,
		37.983383, 35.358742, 39.035370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496220, 35.028263, 39.517365>,  <37.905827, 34.820656, 39.476334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496220, 35.028263, 39.517365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299664, 35.351227, 39.386753>,  <38.181728, 35.545006, 39.308388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299664, 35.351227, 39.386753>,  <38.496220, 35.028263, 39.517365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299664, 35.351227, 39.386753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405727, 0.543969, 0.734495,
		0.770661, 0.228444, -0.594890,
		-0.491393, 0.807410, -0.326530,
		38.152245, 35.593449, 39.288795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078205, 35.548195, 39.516502>,  <38.496220, 35.028263, 39.517365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078205, 35.548195, 39.516502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734547, 35.752682, 39.507412>,  <38.528351, 35.875374, 39.501957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734547, 35.752682, 39.507412>,  <39.078205, 35.548195, 39.516502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734547, 35.752682, 39.507412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313317, 0.560639, 0.766496,
		0.404591, 0.651413, -0.641847,
		-0.859150, 0.511218, -0.022731,
		38.476803, 35.906048, 39.500591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348026, 36.271732, 39.619045>,  <39.078205, 35.548195, 39.516502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348026, 36.271732, 39.619045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963867, 36.232990, 39.723549>,  <38.733372, 36.209743, 39.786251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963867, 36.232990, 39.723549>,  <39.348026, 36.271732, 39.619045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963867, 36.232990, 39.723549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193164, 0.444303, 0.874804,
		-0.200806, 0.890626, -0.407999,
		-0.960398, -0.096855, 0.261256,
		38.675747, 36.203934, 39.801926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252300, 36.882347, 39.977844>,  <39.348026, 36.271732, 39.619045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252300, 36.882347, 39.977844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937832, 36.660923, 40.087757>,  <38.749149, 36.528069, 40.153706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937832, 36.660923, 40.087757>,  <39.252300, 36.882347, 39.977844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937832, 36.660923, 40.087757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015039, 0.427350, 0.903961,
		-0.617826, 0.714800, -0.327646,
		-0.786171, -0.553563, 0.274778,
		38.701981, 36.494854, 40.170189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906895, 37.310711, 40.236889>,  <39.252300, 36.882347, 39.977844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906895, 37.310711, 40.236889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732254, 36.981178, 40.381489>,  <38.627468, 36.783459, 40.468250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732254, 36.981178, 40.381489>,  <38.906895, 37.310711, 40.236889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732254, 36.981178, 40.381489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197457, 0.479776, 0.854883,
		-0.877716, 0.301866, -0.372144,
		-0.436606, -0.823827, 0.361502,
		38.601273, 36.734032, 40.489941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208633, 37.465488, 40.632122>,  <38.906895, 37.310711, 40.236889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208633, 37.465488, 40.632122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362743, 37.127918, 40.781441>,  <38.455212, 36.925377, 40.871033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362743, 37.127918, 40.781441>,  <38.208633, 37.465488, 40.632122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362743, 37.127918, 40.781441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138635, 0.346997, 0.927563,
		-0.912327, -0.409122, 0.016693,
		0.385279, -0.843927, 0.373293,
		38.478329, 36.874741, 40.893429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955914, 37.418041, 41.393009>,  <38.208633, 37.465488, 40.632122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955914, 37.418041, 41.393009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213448, 37.112080, 41.401005>,  <38.367970, 36.928505, 41.405800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213448, 37.112080, 41.401005>,  <37.955914, 37.418041, 41.393009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213448, 37.112080, 41.401005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126430, 0.132108, 0.983139,
		-0.754645, -0.630455, 0.181762,
		0.643838, -0.764901, 0.019986,
		38.406597, 36.882610, 41.407001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817810, 37.047897, 42.033913>,  <37.955914, 37.418041, 41.393009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817810, 37.047897, 42.033913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192234, 36.949379, 41.933403>,  <38.416889, 36.890266, 41.873096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192234, 36.949379, 41.933403>,  <37.817810, 37.047897, 42.033913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192234, 36.949379, 41.933403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278334, 0.081439, 0.957026,
		-0.215247, -0.965767, 0.144784,
		0.936055, -0.246295, -0.251276,
		38.473049, 36.875492, 41.858021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963512, 36.505474, 42.455597>,  <37.817810, 37.047897, 42.033913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963512, 36.505474, 42.455597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304539, 36.680336, 42.341034>,  <38.509155, 36.785252, 42.272297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304539, 36.680336, 42.341034>,  <37.963512, 36.505474, 42.455597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304539, 36.680336, 42.341034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178044, 0.272292, 0.945599,
		0.491357, -0.857179, 0.154315,
		0.852566, 0.437151, -0.286408,
		38.560310, 36.811481, 42.255112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558006, 36.212799, 42.819275>,  <37.963512, 36.505474, 42.455597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558006, 36.212799, 42.819275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678368, 36.580654, 42.718296>,  <38.750584, 36.801365, 42.657707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678368, 36.580654, 42.718296>,  <38.558006, 36.212799, 42.819275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678368, 36.580654, 42.718296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068019, 0.243346, 0.967552,
		0.951226, -0.308311, 0.010671,
		0.300904, 0.919634, -0.252448,
		38.768639, 36.856544, 42.642563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218445, 36.349426, 43.163387>,  <38.558006, 36.212799, 42.819275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218445, 36.349426, 43.163387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031982, 36.695541, 43.089657>,  <38.920105, 36.903210, 43.045418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031982, 36.695541, 43.089657>,  <39.218445, 36.349426, 43.163387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031982, 36.695541, 43.089657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086120, 0.251735, 0.963957,
		0.880503, 0.433476, -0.191866,
		-0.466152, 0.865291, -0.184323,
		38.892136, 36.955128, 43.034359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292492, 36.629150, 43.795544>,  <39.218445, 36.349426, 43.163387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292492, 36.629150, 43.795544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087456, 36.912201, 43.601009>,  <38.964436, 37.082031, 43.484287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087456, 36.912201, 43.601009>,  <39.292492, 36.629150, 43.795544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087456, 36.912201, 43.601009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086572, 0.520929, 0.849199,
		0.854260, 0.477390, -0.205760,
		-0.512586, 0.707624, -0.486337,
		38.933681, 37.124489, 43.455109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611435, 37.374813, 43.904480>,  <39.292492, 36.629150, 43.795544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611435, 37.374813, 43.904480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242180, 37.430252, 43.761036>,  <39.020626, 37.463516, 43.674969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242180, 37.430252, 43.761036>,  <39.611435, 37.374813, 43.904480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242180, 37.430252, 43.761036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195178, 0.634689, 0.747713,
		0.331238, 0.760238, -0.558856,
		-0.923140, 0.138594, -0.358615,
		38.965237, 37.471828, 43.653450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492821, 38.180458, 44.009277>,  <39.611435, 37.374813, 43.904480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492821, 38.180458, 44.009277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125862, 38.025787, 43.971607>,  <38.905689, 37.932983, 43.949005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125862, 38.025787, 43.971607>,  <39.492821, 38.180458, 44.009277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125862, 38.025787, 43.971607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318670, 0.571953, 0.755857,
		-0.238406, 0.723430, -0.647928,
		-0.917394, -0.386677, -0.094179,
		38.850643, 37.909786, 43.943352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990452, 38.776611, 43.946827>,  <39.492821, 38.180458, 44.009277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990452, 38.776611, 43.946827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770996, 38.460117, 44.054855>,  <38.639320, 38.270222, 44.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770996, 38.460117, 44.054855>,  <38.990452, 38.776611, 43.946827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770996, 38.460117, 44.054855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424312, 0.541851, 0.725505,
		-0.720382, 0.283449, -0.633013,
		-0.548643, -0.791236, 0.270069,
		38.606403, 38.222748, 44.135876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265526, 38.955719, 44.078808>,  <38.990452, 38.776611, 43.946827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265526, 38.955719, 44.078808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311028, 38.603462, 44.262775>,  <38.338329, 38.392109, 44.373158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311028, 38.603462, 44.262775>,  <38.265526, 38.955719, 44.078808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311028, 38.603462, 44.262775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438866, 0.370771, 0.818490,
		-0.891323, -0.294953, -0.344307,
		0.113757, -0.880643, 0.459921,
		38.345154, 38.339268, 44.400753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649162, 38.888218, 44.316284>,  <38.265526, 38.955719, 44.078808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649162, 38.888218, 44.316284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889336, 38.648853, 44.528465>,  <38.033440, 38.505234, 44.655773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889336, 38.648853, 44.528465>,  <37.649162, 38.888218, 44.316284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889336, 38.648853, 44.528465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263122, 0.478561, 0.837703,
		-0.755149, -0.642557, 0.129887,
		0.600431, -0.598414, 0.530455,
		38.069466, 38.469330, 44.687603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210754, 38.643784, 44.892319>,  <37.649162, 38.888218, 44.316284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210754, 38.643784, 44.892319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595703, 38.597336, 44.990585>,  <37.826672, 38.569466, 45.049545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595703, 38.597336, 44.990585>,  <37.210754, 38.643784, 44.892319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595703, 38.597336, 44.990585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191632, 0.350918, 0.916588,
		-0.192645, -0.929178, 0.315462,
		0.962375, -0.116124, 0.245662,
		37.884415, 38.562500, 45.064285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266869, 38.189941, 45.519005>,  <37.210754, 38.643784, 44.892319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266869, 38.189941, 45.519005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612186, 38.390671, 45.497494>,  <37.819378, 38.511108, 45.484589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612186, 38.390671, 45.497494>,  <37.266869, 38.189941, 45.519005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612186, 38.390671, 45.497494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170572, 0.390382, 0.904714,
		0.475003, -0.771862, 0.422612,
		0.863295, 0.501827, -0.053775,
		37.871174, 38.541218, 45.481361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521439, 38.093399, 46.239876>,  <37.266869, 38.189941, 45.519005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521439, 38.093399, 46.239876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736633, 38.395027, 46.089169>,  <37.865749, 38.576004, 45.998745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736633, 38.395027, 46.089169>,  <37.521439, 38.093399, 46.239876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736633, 38.395027, 46.089169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137096, 0.519280, 0.843536,
		0.831731, -0.402157, 0.382745,
		0.537986, 0.754068, -0.376767,
		37.898029, 38.621246, 45.976139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014641, 38.315796, 46.748493>,  <37.521439, 38.093399, 46.239876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014641, 38.315796, 46.748493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998230, 38.630295, 46.501873>,  <37.988384, 38.818993, 46.353901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998230, 38.630295, 46.501873>,  <38.014641, 38.315796, 46.748493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998230, 38.630295, 46.501873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344577, 0.568078, 0.747365,
		0.937861, 0.243111, 0.247615,
		-0.041028, 0.786247, -0.616548,
		37.985920, 38.866169, 46.316910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228096, 38.895939, 47.129589>,  <38.014641, 38.315796, 46.748493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228096, 38.895939, 47.129589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000572, 39.030678, 46.829460>,  <37.864056, 39.111523, 46.649384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000572, 39.030678, 46.829460>,  <38.228096, 38.895939, 47.129589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000572, 39.030678, 46.829460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437421, 0.648663, 0.622815,
		0.696501, 0.682473, -0.221623,
		-0.568813, 0.336849, -0.750323,
		37.829929, 39.131733, 46.604362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378719, 39.650688, 47.121712>,  <38.228096, 38.895939, 47.129589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378719, 39.650688, 47.121712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028717, 39.535126, 46.966331>,  <37.818714, 39.465786, 46.873104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028717, 39.535126, 46.966331>,  <38.378719, 39.650688, 47.121712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028717, 39.535126, 46.966331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469966, 0.699475, 0.538392,
		0.116164, 0.653655, -0.747824,
		-0.875007, -0.288911, -0.388450,
		37.766216, 39.448452, 46.849796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172176, 40.066826, 46.629883>,  <38.378719, 39.650688, 47.121712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172176, 40.066826, 46.629883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836342, 39.909042, 46.779282>,  <37.634842, 39.814373, 46.868919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836342, 39.909042, 46.779282>,  <38.172176, 40.066826, 46.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836342, 39.909042, 46.779282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329520, 0.916421, 0.227131,
		-0.431873, 0.067622, -0.899396,
		-0.839585, -0.394461, 0.373494,
		37.584465, 39.790703, 46.891331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873493, 40.558743, 46.540936>,  <38.172176, 40.066826, 46.629883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873493, 40.558743, 46.540936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654171, 40.341999, 46.795731>,  <37.522579, 40.211952, 46.948608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654171, 40.341999, 46.795731>,  <37.873493, 40.558743, 46.540936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654171, 40.341999, 46.795731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487696, 0.825941, 0.282796,
		-0.679350, -0.155598, -0.717128,
		-0.548303, -0.541858, 0.636988,
		37.489681, 40.179443, 46.986828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124176, 40.864231, 46.431595>,  <37.873493, 40.558743, 46.540936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124176, 40.864231, 46.431595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106285, 40.658173, 46.773968>,  <37.095551, 40.534538, 46.979393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106285, 40.658173, 46.773968>,  <37.124176, 40.864231, 46.431595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106285, 40.658173, 46.773968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512462, 0.747303, 0.422990,
		-0.857544, -0.419715, -0.297418,
		-0.044726, -0.515148, 0.855934,
		37.092869, 40.503628, 47.030746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389839, 40.926682, 46.620632>,  <37.124176, 40.864231, 46.431595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389839, 40.926682, 46.620632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592487, 40.810574, 46.945366>,  <36.714077, 40.740910, 47.140205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592487, 40.810574, 46.945366>,  <36.389839, 40.926682, 46.620632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592487, 40.810574, 46.945366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362213, 0.782833, 0.505938,
		-0.782391, -0.550377, 0.291461,
		0.506622, -0.290271, 0.811835,
		36.744473, 40.723492, 47.188915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910038, 40.897957, 47.138477>,  <36.389839, 40.926682, 46.620632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910038, 40.897957, 47.138477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248165, 40.910801, 47.351799>,  <36.451042, 40.918507, 47.479790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248165, 40.910801, 47.351799>,  <35.910038, 40.897957, 47.138477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248165, 40.910801, 47.351799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425394, 0.644367, 0.635478,
		-0.323238, -0.764042, 0.558352,
		0.845315, 0.032109, 0.533302,
		36.501759, 40.920433, 47.511791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751282, 40.936863, 47.843258>,  <35.910038, 40.897957, 47.138477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751282, 40.936863, 47.843258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126347, 41.073711, 47.818783>,  <36.351387, 41.155819, 47.804100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126347, 41.073711, 47.818783>,  <35.751282, 40.936863, 47.843258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126347, 41.073711, 47.818783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235259, 0.754389, 0.612822,
		0.255814, -0.560226, 0.787849,
		0.937663, 0.342117, -0.061185,
		36.407646, 41.176346, 47.800426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810341, 41.280632, 48.451427>,  <35.751282, 40.936863, 47.843258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810341, 41.280632, 48.451427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106731, 41.430283, 48.228363>,  <36.284565, 41.520073, 48.094524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106731, 41.430283, 48.228363>,  <35.810341, 41.280632, 48.451427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106731, 41.430283, 48.228363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074479, 0.871094, 0.485437,
		0.667391, -0.318162, 0.673322,
		0.740974, 0.374124, -0.557664,
		36.329025, 41.542519, 48.061062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265125, 41.657719, 48.902390>,  <35.810341, 41.280632, 48.451427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265125, 41.657719, 48.902390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305965, 41.785732, 48.525635>,  <36.330471, 41.862541, 48.299583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305965, 41.785732, 48.525635>,  <36.265125, 41.657719, 48.902390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305965, 41.785732, 48.525635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267916, 0.920697, 0.283791,
		0.958017, 0.223371, 0.179746,
		0.102101, 0.320034, -0.941889,
		36.336597, 41.881741, 48.243069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635929, 42.359894, 48.889168>,  <36.265125, 41.657719, 48.902390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635929, 42.359894, 48.889168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469791, 42.355450, 48.525330>,  <36.370110, 42.352783, 48.307026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469791, 42.355450, 48.525330>,  <36.635929, 42.359894, 48.889168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469791, 42.355450, 48.525330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217372, 0.972170, 0.087377,
		0.883312, 0.234013, -0.406198,
		-0.415341, -0.011115, -0.909598,
		36.345188, 42.352116, 48.252449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869446, 43.005825, 48.628078>,  <36.635929, 42.359894, 48.889168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869446, 43.005825, 48.628078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543892, 42.922760, 48.411018>,  <36.348560, 42.872921, 48.280781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543892, 42.922760, 48.411018>,  <36.869446, 43.005825, 48.628078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543892, 42.922760, 48.411018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308951, 0.945647, 0.101492,
		0.492081, 0.250256, -0.833803,
		-0.813883, -0.207662, -0.542652,
		36.299728, 42.860462, 48.248222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745647, 43.653698, 48.306465>,  <36.869446, 43.005825, 48.628078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745647, 43.653698, 48.306465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395973, 43.471176, 48.240028>,  <36.186169, 43.361664, 48.200165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395973, 43.471176, 48.240028>,  <36.745647, 43.653698, 48.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395973, 43.471176, 48.240028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478629, 0.867397, 0.136150,
		0.081945, 0.198518, -0.976666,
		-0.874185, -0.456303, -0.166095,
		36.133717, 43.334286, 48.190201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407932, 44.075764, 47.892052>,  <36.745647, 43.653698, 48.306465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407932, 44.075764, 47.892052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144363, 43.843529, 48.083359>,  <35.986221, 43.704189, 48.198143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144363, 43.843529, 48.083359>,  <36.407932, 44.075764, 47.892052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144363, 43.843529, 48.083359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592561, 0.792294, 0.145398,
		-0.463348, -0.187599, -0.866092,
		-0.658923, -0.580583, 0.478272,
		35.946686, 43.669353, 48.226841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923260, 44.488781, 48.203602>,  <36.407932, 44.075764, 47.892052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923260, 44.488781, 48.203602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136646, 44.763172, 48.005672>,  <36.264679, 44.927807, 47.886913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136646, 44.763172, 48.005672>,  <35.923260, 44.488781, 48.203602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136646, 44.763172, 48.005672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203862, -0.672054, -0.711887,
		-0.820888, 0.278890, -0.498361,
		0.533464, 0.685976, -0.494826,
		36.296684, 44.968964, 47.857224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719395, 44.487740, 47.515465>,  <35.923260, 44.488781, 48.203602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719395, 44.487740, 47.515465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076859, 44.663197, 47.477581>,  <36.291336, 44.768471, 47.454853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076859, 44.663197, 47.477581>,  <35.719395, 44.487740, 47.515465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076859, 44.663197, 47.477581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176965, -0.538424, -0.823883,
		-0.412378, 0.719511, -0.558791,
		0.893660, 0.438638, -0.094706,
		36.344955, 44.794788, 47.449169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807224, 44.719376, 46.785221>,  <35.719395, 44.487740, 47.515465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807224, 44.719376, 46.785221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181736, 44.696873, 46.923908>,  <36.406445, 44.683372, 47.007122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181736, 44.696873, 46.923908>,  <35.807224, 44.719376, 46.785221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181736, 44.696873, 46.923908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269827, -0.516787, -0.812480,
		0.224887, 0.854264, -0.468679,
		0.936280, -0.056254, 0.346722,
		36.462620, 44.679996, 47.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237724, 44.945393, 46.275681>,  <35.807224, 44.719376, 46.785221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237724, 44.945393, 46.275681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475876, 44.732567, 46.516491>,  <36.618767, 44.604870, 46.660976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475876, 44.732567, 46.516491>,  <36.237724, 44.945393, 46.275681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475876, 44.732567, 46.516491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427927, -0.424184, -0.798089,
		0.680004, 0.732787, -0.024865,
		0.595377, -0.532063, 0.602026,
		36.654488, 44.572948, 46.697098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916428, 45.052898, 46.000675>,  <36.237724, 44.945393, 46.275681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916428, 45.052898, 46.000675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940563, 44.710827, 46.206596>,  <36.955044, 44.505585, 46.330151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940563, 44.710827, 46.206596>,  <36.916428, 45.052898, 46.000675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940563, 44.710827, 46.206596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622280, -0.371026, -0.689280,
		0.780466, 0.361946, 0.509773,
		0.060343, -0.855181, 0.514805,
		36.958668, 44.454273, 46.361038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674011, 44.898228, 46.024502>,  <36.916428, 45.052898, 46.000675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674011, 44.898228, 46.024502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487343, 44.554466, 46.108059>,  <37.375340, 44.348209, 46.158192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487343, 44.554466, 46.108059>,  <37.674011, 44.898228, 46.024502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487343, 44.554466, 46.108059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437666, -0.429643, -0.789845,
		0.768546, -0.277176, 0.576637,
		-0.466674, -0.859407, 0.208890,
		37.347340, 44.296646, 46.170727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131962, 44.414165, 46.071960>,  <37.674011, 44.898228, 46.024502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131962, 44.414165, 46.071960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790886, 44.225861, 45.981361>,  <37.586239, 44.112877, 45.927002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790886, 44.225861, 45.981361>,  <38.131962, 44.414165, 46.071960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790886, 44.225861, 45.981361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494471, -0.587386, -0.640684,
		0.168564, -0.658305, 0.733635,
		-0.852693, -0.470758, -0.226501,
		37.535080, 44.084633, 45.913410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370003, 43.805531, 45.990273>,  <38.131962, 44.414165, 46.071960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370003, 43.805531, 45.990273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009972, 43.775311, 45.818623>,  <37.793953, 43.757179, 45.715633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009972, 43.775311, 45.818623>,  <38.370003, 43.805531, 45.990273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009972, 43.775311, 45.818623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360260, -0.682993, -0.635400,
		-0.245084, -0.726507, 0.641967,
		-0.900082, -0.075549, -0.429121,
		37.739948, 43.752647, 45.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321228, 43.059277, 45.830723>,  <38.370003, 43.805531, 45.990273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321228, 43.059277, 45.830723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039829, 43.224426, 45.599335>,  <37.870991, 43.323517, 45.460503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039829, 43.224426, 45.599335>,  <38.321228, 43.059277, 45.830723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039829, 43.224426, 45.599335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316715, -0.546520, -0.775247,
		-0.636225, -0.728593, 0.253711,
		-0.703498, 0.412878, -0.578466,
		37.828781, 43.348289, 45.425797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055058, 42.577484, 45.429150>,  <38.321228, 43.059277, 45.830723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055058, 42.577484, 45.429150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958466, 42.904823, 45.220535>,  <37.900509, 43.101227, 45.095367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958466, 42.904823, 45.220535>,  <38.055058, 42.577484, 45.429150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958466, 42.904823, 45.220535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357537, -0.424603, -0.831793,
		-0.902138, -0.387333, -0.190053,
		-0.241484, 0.818343, -0.521536,
		37.886021, 43.150326, 45.064075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588581, 42.266525, 44.969925>,  <38.055058, 42.577484, 45.429150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588581, 42.266525, 44.969925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715542, 42.613800, 44.817337>,  <37.791718, 42.822163, 44.725784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715542, 42.613800, 44.817337>,  <37.588581, 42.266525, 44.969925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715542, 42.613800, 44.817337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350277, -0.481152, -0.803616,
		-0.881229, 0.121447, -0.456821,
		0.317397, 0.868184, -0.381465,
		37.810760, 42.874256, 44.702896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198051, 42.366245, 44.474464>,  <37.588581, 42.266525, 44.969925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198051, 42.366245, 44.474464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496635, 42.613647, 44.376282>,  <37.675785, 42.762089, 44.317371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496635, 42.613647, 44.376282>,  <37.198051, 42.366245, 44.474464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496635, 42.613647, 44.376282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141658, -0.508118, -0.849558,
		-0.650178, 0.599390, -0.466906,
		0.746460, 0.618505, -0.245459,
		37.720573, 42.799198, 44.302643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151585, 42.460262, 43.775055>,  <37.198051, 42.366245, 44.474464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151585, 42.460262, 43.775055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524841, 42.561100, 43.877575>,  <37.748795, 42.621601, 43.939087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524841, 42.561100, 43.877575>,  <37.151585, 42.460262, 43.775055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524841, 42.561100, 43.877575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359328, -0.631883, -0.686737,
		-0.011168, 0.732921, -0.680222,
		0.933145, 0.252092, 0.256302,
		37.804783, 42.636726, 43.954464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532463, 42.594479, 43.142971>,  <37.151585, 42.460262, 43.775055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532463, 42.594479, 43.142971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793327, 42.486797, 43.426441>,  <37.949844, 42.422188, 43.596523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793327, 42.486797, 43.426441>,  <37.532463, 42.594479, 43.142971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793327, 42.486797, 43.426441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359565, -0.713141, -0.601783,
		0.667386, 0.647272, -0.368286,
		0.652157, -0.269199, 0.708677,
		37.988976, 42.406036, 43.639046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982235, 42.335747, 42.794708>,  <37.532463, 42.594479, 43.142971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982235, 42.335747, 42.794708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102890, 42.212212, 43.155514>,  <38.175282, 42.138092, 43.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102890, 42.212212, 43.155514>,  <37.982235, 42.335747, 42.794708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102890, 42.212212, 43.155514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531903, -0.730661, -0.428036,
		0.791261, 0.608898, -0.056126,
		0.301639, -0.308834, 0.902017,
		38.193382, 42.119560, 43.426121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695690, 42.442017, 42.791634>,  <37.982235, 42.335747, 42.794708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695690, 42.442017, 42.791634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597656, 42.152546, 43.049694>,  <38.538834, 41.978863, 43.204529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597656, 42.152546, 43.049694>,  <38.695690, 42.442017, 42.791634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597656, 42.152546, 43.049694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632373, -0.623730, -0.459418,
		0.734872, 0.295378, 0.610505,
		-0.245088, -0.723680, 0.645150,
		38.524132, 41.935440, 43.243240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338314, 42.030079, 42.937111>,  <38.695690, 42.442017, 42.791634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338314, 42.030079, 42.937111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066051, 41.777954, 43.086460>,  <38.902695, 41.626678, 43.176071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066051, 41.777954, 43.086460>,  <39.338314, 42.030079, 42.937111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066051, 41.777954, 43.086460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433793, -0.757468, -0.487919,
		0.590362, -0.170139, 0.789003,
		-0.680659, -0.630313, 0.373376,
		38.861855, 41.588860, 43.198471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748230, 41.525696, 43.214333>,  <39.338314, 42.030079, 42.937111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748230, 41.525696, 43.214333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389359, 41.353806, 43.173542>,  <39.174034, 41.250671, 43.149067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389359, 41.353806, 43.173542>,  <39.748230, 41.525696, 43.214333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389359, 41.353806, 43.173542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420432, -0.760260, -0.495218,
		0.135282, -0.487174, 0.862763,
		-0.897182, -0.429727, -0.101974,
		39.120205, 41.224888, 43.142948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650242, 40.798370, 43.578625>,  <39.748230, 41.525696, 43.214333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650242, 40.798370, 43.578625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358166, 40.785297, 43.305641>,  <39.182919, 40.777454, 43.141853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358166, 40.785297, 43.305641>,  <39.650242, 40.798370, 43.578625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358166, 40.785297, 43.305641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411106, -0.818821, -0.400654,
		-0.545718, -0.573117, 0.611334,
		-0.730195, -0.032679, -0.682457,
		39.139107, 40.775494, 43.100903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553452, 40.133865, 43.603722>,  <39.650242, 40.798370, 43.578625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553452, 40.133865, 43.603722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426342, 40.277428, 43.252678>,  <39.350075, 40.363567, 43.042049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426342, 40.277428, 43.252678>,  <39.553452, 40.133865, 43.603722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426342, 40.277428, 43.252678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543376, -0.689584, -0.478765,
		-0.777021, -0.629013, 0.024109,
		-0.317774, 0.358910, -0.877612,
		39.331009, 40.385101, 42.989395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313095, 39.574844, 43.327106>,  <39.553452, 40.133865, 43.603722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313095, 39.574844, 43.327106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382538, 39.820068, 43.018814>,  <39.424202, 39.967201, 42.833839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382538, 39.820068, 43.018814>,  <39.313095, 39.574844, 43.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382538, 39.820068, 43.018814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596070, -0.688390, -0.413302,
		-0.783940, -0.387657, -0.484933,
		0.173603, 0.613058, -0.770728,
		39.434620, 40.003986, 42.787594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966644, 39.342255, 42.678192>,  <39.313095, 39.574844, 43.327106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966644, 39.342255, 42.678192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272919, 39.564507, 42.548576>,  <39.456684, 39.697857, 42.470806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272919, 39.564507, 42.548576>,  <38.966644, 39.342255, 42.678192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272919, 39.564507, 42.548576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250098, -0.721318, -0.645873,
		-0.592604, 0.413492, -0.691263,
		0.765684, 0.555631, -0.324042,
		39.502625, 39.731197, 42.451363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058418, 39.228050, 41.964329>,  <38.966644, 39.342255, 42.678192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058418, 39.228050, 41.964329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413124, 39.396557, 42.040409>,  <39.625950, 39.497662, 42.086060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413124, 39.396557, 42.040409>,  <39.058418, 39.228050, 41.964329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413124, 39.396557, 42.040409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421626, -0.568609, -0.706339,
		-0.189408, 0.706553, -0.681841,
		0.886767, 0.421268, 0.190203,
		39.679153, 39.522938, 42.097469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345695, 39.547787, 41.362873>,  <39.058418, 39.228050, 41.964329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345695, 39.547787, 41.362873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653309, 39.468410, 41.605919>,  <39.837879, 39.420784, 41.751747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653309, 39.468410, 41.605919>,  <39.345695, 39.547787, 41.362873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653309, 39.468410, 41.605919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383279, -0.617581, -0.686797,
		0.511544, 0.761061, -0.398884,
		0.769038, -0.198443, 0.607619,
		39.884022, 39.408878, 41.788204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030544, 39.592178, 40.966438>,  <39.345695, 39.547787, 41.362873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030544, 39.592178, 40.966438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122787, 39.369648, 41.285767>,  <40.178131, 39.236130, 41.477364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122787, 39.369648, 41.285767>,  <40.030544, 39.592178, 40.966438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122787, 39.369648, 41.285767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557818, -0.596655, -0.576924,
		0.797283, 0.578360, 0.172740,
		0.230604, -0.556329, 0.798323,
		40.191967, 39.202747, 41.525265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709984, 39.412399, 40.863335>,  <40.030544, 39.592178, 40.966438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709984, 39.412399, 40.863335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602585, 39.155190, 41.150230>,  <40.538147, 39.000862, 41.322369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602585, 39.155190, 41.150230>,  <40.709984, 39.412399, 40.863335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602585, 39.155190, 41.150230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674675, -0.656980, -0.336440,
		0.687550, 0.393570, 0.610227,
		-0.268494, -0.643024, 0.717238,
		40.522038, 38.962284, 41.365402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233723, 39.338371, 41.340725>,  <40.709984, 39.412399, 40.863335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233723, 39.338371, 41.340725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005722, 39.010075, 41.356159>,  <40.868923, 38.813099, 41.365421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005722, 39.010075, 41.356159>,  <41.233723, 39.338371, 41.340725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005722, 39.010075, 41.356159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791951, -0.561304, -0.240315,
		0.218896, -0.106418, 0.969928,
		-0.569998, -0.820739, 0.038589,
		40.834724, 38.763851, 41.367737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676178, 38.867622, 41.572845>,  <41.233723, 39.338371, 41.340725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676178, 38.867622, 41.572845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385159, 38.636787, 41.424446>,  <41.210545, 38.498287, 41.335407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385159, 38.636787, 41.424446>,  <41.676178, 38.867622, 41.572845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385159, 38.636787, 41.424446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685804, -0.626367, -0.370590,
		-0.018514, -0.524052, 0.851485,
		-0.727551, -0.577091, -0.370994,
		41.166893, 38.463661, 41.313148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790470, 38.203678, 41.862537>,  <41.676178, 38.867622, 41.572845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790470, 38.203678, 41.862537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571930, 38.136177, 41.534386>,  <41.440807, 38.095676, 41.337494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571930, 38.136177, 41.534386>,  <41.790470, 38.203678, 41.862537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571930, 38.136177, 41.534386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773424, -0.477558, -0.416838,
		-0.321435, -0.862241, 0.391433,
		-0.546347, -0.168758, -0.820382,
		41.408028, 38.085548, 41.288273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825882, 37.440613, 41.682995>,  <41.790470, 38.203678, 41.862537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825882, 37.440613, 41.682995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725216, 37.631866, 41.346413>,  <41.664818, 37.746620, 41.144463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725216, 37.631866, 41.346413>,  <41.825882, 37.440613, 41.682995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725216, 37.631866, 41.346413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740073, -0.465198, -0.485677,
		-0.623664, -0.744968, -0.236781,
		-0.251664, 0.478135, -0.841459,
		41.649715, 37.775307, 41.093975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949596, 37.004177, 41.206390>,  <41.825882, 37.440613, 41.682995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949596, 37.004177, 41.206390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924229, 37.345909, 41.000050>,  <41.909008, 37.550949, 40.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924229, 37.345909, 41.000050>,  <41.949596, 37.004177, 41.206390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924229, 37.345909, 41.000050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725401, -0.315531, -0.611746,
		-0.685399, -0.412996, -0.599719,
		-0.063419, 0.854327, -0.515852,
		41.905205, 37.602207, 40.845295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657471, 36.810936, 40.522121>,  <41.949596, 37.004177, 41.206390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657471, 36.810936, 40.522121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853783, 37.159321, 40.512615>,  <41.971569, 37.368351, 40.506912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853783, 37.159321, 40.512615>,  <41.657471, 36.810936, 40.522121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853783, 37.159321, 40.512615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497379, -0.302462, -0.813100,
		-0.715365, 0.387232, -0.581639,
		0.490782, 0.870958, -0.023770,
		42.001019, 37.420609, 40.505486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624756, 37.064808, 39.882553>,  <41.657471, 36.810936, 40.522121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624756, 37.064808, 39.882553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936501, 37.266548, 40.031273>,  <42.123547, 37.387592, 40.120502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936501, 37.266548, 40.031273>,  <41.624756, 37.064808, 39.882553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936501, 37.266548, 40.031273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596670, -0.416246, -0.686094,
		-0.191270, 0.756554, -0.625334,
		0.779360, 0.504346, 0.371797,
		42.170307, 37.417850, 40.142811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927197, 37.446270, 39.319592>,  <41.624756, 37.064808, 39.882553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927197, 37.446270, 39.319592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223663, 37.406300, 39.585129>,  <42.401543, 37.382317, 39.744450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223663, 37.406300, 39.585129>,  <41.927197, 37.446270, 39.319592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223663, 37.406300, 39.585129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607532, -0.320884, -0.726594,
		0.285621, 0.941833, -0.177121,
		0.741165, -0.099923, 0.663844,
		42.446014, 37.376324, 39.784283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584030, 37.687454, 39.034172>,  <41.927197, 37.446270, 39.319592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584030, 37.687454, 39.034172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728710, 37.502342, 39.357903>,  <42.815517, 37.391273, 39.552139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728710, 37.502342, 39.357903>,  <42.584030, 37.687454, 39.034172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728710, 37.502342, 39.357903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770531, -0.340309, -0.538954,
		0.524838, 0.818550, 0.233497,
		0.361700, -0.462781, 0.809325,
		42.837219, 37.363506, 39.600700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249592, 37.797073, 38.926865>,  <42.584030, 37.687454, 39.034172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249592, 37.797073, 38.926865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234520, 37.494850, 39.188461>,  <43.225475, 37.313515, 39.345421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234520, 37.494850, 39.188461>,  <43.249592, 37.797073, 38.926865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234520, 37.494850, 39.188461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801287, -0.413897, -0.432006,
		0.597093, 0.507757, 0.621018,
		-0.037684, -0.755561, 0.653994,
		43.223213, 37.268181, 39.384659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950970, 37.753483, 39.149811>,  <43.249592, 37.797073, 38.926865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950970, 37.753483, 39.149811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804173, 37.386333, 39.210228>,  <43.716095, 37.166042, 39.246479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804173, 37.386333, 39.210228>,  <43.950970, 37.753483, 39.149811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804173, 37.386333, 39.210228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758195, -0.389230, -0.523106,
		0.538938, -0.077458, 0.838776,
		-0.366996, -0.917878, 0.151042,
		43.694073, 37.110970, 39.255539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506149, 37.211754, 39.173088>,  <43.950970, 37.753483, 39.149811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506149, 37.211754, 39.173088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173180, 37.010437, 39.080334>,  <43.973400, 36.889645, 39.024681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173180, 37.010437, 39.080334>,  <44.506149, 37.211754, 39.173088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173180, 37.010437, 39.080334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526603, -0.588187, -0.613779,
		0.172521, -0.633033, 0.754656,
		-0.832422, -0.503294, -0.231883,
		43.923454, 36.859447, 39.010769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767136, 36.410748, 39.096649>,  <44.506149, 37.211754, 39.173088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767136, 36.410748, 39.096649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415108, 36.428593, 38.907551>,  <44.203892, 36.439301, 38.794094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415108, 36.428593, 38.907551>,  <44.767136, 36.410748, 39.096649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415108, 36.428593, 38.907551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352718, -0.605121, -0.713735,
		-0.317907, -0.794882, 0.516814,
		-0.880071, 0.044612, -0.472742,
		44.151085, 36.441975, 38.765728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459049, 35.701630, 39.016552>,  <44.767136, 36.410748, 39.096649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459049, 35.701630, 39.016552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324299, 35.946964, 38.730801>,  <44.243450, 36.094166, 38.559349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324299, 35.946964, 38.730801>,  <44.459049, 35.701630, 39.016552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324299, 35.946964, 38.730801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399317, -0.594041, -0.698327,
		-0.852680, -0.520509, -0.044801,
		-0.336872, 0.613339, -0.714375,
		44.223236, 36.130966, 38.516487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037689, 35.333019, 38.572857>,  <44.459049, 35.701630, 39.016552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037689, 35.333019, 38.572857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177578, 35.637829, 38.354858>,  <44.261513, 35.820713, 38.224060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177578, 35.637829, 38.354858>,  <44.037689, 35.333019, 38.572857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177578, 35.637829, 38.354858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248737, -0.636375, -0.730176,
		-0.903229, 0.119801, -0.412098,
		0.349725, 0.762020, -0.544994,
		44.282494, 35.866436, 38.191360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874538, 35.319199, 37.831173>,  <44.037689, 35.333019, 38.572857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874538, 35.319199, 37.831173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218071, 35.518570, 37.878452>,  <44.424191, 35.638195, 37.906818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218071, 35.518570, 37.878452>,  <43.874538, 35.319199, 37.831173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218071, 35.518570, 37.878452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476907, -0.693769, -0.539670,
		-0.186985, 0.519857, -0.833538,
		0.858834, 0.498430, 0.118199,
		44.475719, 35.668098, 37.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152035, 35.398033, 37.146633>,  <43.874538, 35.319199, 37.831173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152035, 35.398033, 37.146633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407604, 35.387413, 37.454159>,  <44.560947, 35.381042, 37.638672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407604, 35.387413, 37.454159>,  <44.152035, 35.398033, 37.146633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407604, 35.387413, 37.454159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410450, -0.833495, -0.369886,
		0.650620, 0.551888, -0.521645,
		0.638924, -0.026546, 0.768811,
		44.599281, 35.379448, 37.684803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383469, 36.040840, 37.047585>,  <44.152035, 35.398033, 37.146633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383469, 36.040840, 37.047585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236530, 36.291779, 36.772923>,  <44.148365, 36.442341, 36.608124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236530, 36.291779, 36.772923>,  <44.383469, 36.040840, 37.047585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236530, 36.291779, 36.772923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918055, 0.126220, -0.375825,
		-0.149101, -0.768445, -0.622303,
		-0.367348, 0.627344, -0.686655,
		44.126328, 36.479980, 36.566925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348839, 35.713734, 36.327812>,  <44.383469, 36.040840, 37.047585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348839, 35.713734, 36.327812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448288, 36.097740, 36.379295>,  <44.507957, 36.328144, 36.410187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448288, 36.097740, 36.379295>,  <44.348839, 35.713734, 36.327812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448288, 36.097740, 36.379295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896190, -0.177579, -0.406583,
		-0.367468, 0.216434, -0.904502,
		0.248619, 0.960012, 0.128711,
		44.522873, 36.385742, 36.417908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495377, 36.108841, 35.721420>,  <44.348839, 35.713734, 36.327812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495377, 36.108841, 35.721420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707066, 36.249981, 36.030075>,  <44.834080, 36.334667, 36.215267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707066, 36.249981, 36.030075>,  <44.495377, 36.108841, 35.721420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707066, 36.249981, 36.030075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845381, -0.141557, -0.515065,
		-0.072512, 0.924909, -0.373210,
		0.529218, 0.352853, 0.771636,
		44.865829, 36.355839, 36.261566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888741, 36.821827, 35.476692>,  <44.495377, 36.108841, 35.721420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888741, 36.821827, 35.476692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030567, 36.554523, 35.738293>,  <45.115662, 36.394142, 35.895252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030567, 36.554523, 35.738293>,  <44.888741, 36.821827, 35.476692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030567, 36.554523, 35.738293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829211, -0.098491, -0.550189,
		0.432081, 0.737383, 0.519204,
		0.354564, -0.668256, 0.654002,
		45.136936, 36.354046, 35.934494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562527, 36.826332, 35.224525>,  <44.888741, 36.821827, 35.476692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562527, 36.826332, 35.224525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742897, 36.548962, 34.999729>,  <45.851120, 36.382542, 34.864853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742897, 36.548962, 34.999729>,  <45.562527, 36.826332, 35.224525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742897, 36.548962, 34.999729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408538, 0.399461, -0.820687,
		0.793575, 0.599664, -0.103161,
		0.450927, -0.693422, -0.561988,
		45.878174, 36.340935, 34.831131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029068, 37.188755, 34.627537>,  <45.562527, 36.826332, 35.224525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029068, 37.188755, 34.627537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871128, 36.834835, 34.528564>,  <45.776363, 36.622482, 34.469181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871128, 36.834835, 34.528564>,  <46.029068, 37.188755, 34.627537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871128, 36.834835, 34.528564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532731, 0.439912, -0.722963,
		0.748526, -0.153647, -0.645060,
		-0.394851, -0.884799, -0.247433,
		45.752674, 36.569397, 34.454334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126442, 37.169174, 33.942005>,  <46.029068, 37.188755, 34.627537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126442, 37.169174, 33.942005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826157, 36.927189, 34.048172>,  <45.645985, 36.781998, 34.111870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826157, 36.927189, 34.048172>,  <46.126442, 37.169174, 33.942005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826157, 36.927189, 34.048172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604489, 0.466978, -0.645388,
		0.266493, -0.644943, -0.716261,
		-0.750716, -0.604963, 0.265414,
		45.600941, 36.745701, 34.127796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847828, 36.949780, 33.273899>,  <46.126442, 37.169174, 33.942005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847828, 36.949780, 33.273899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544056, 36.839760, 33.509735>,  <45.361794, 36.773750, 33.651237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544056, 36.839760, 33.509735>,  <45.847828, 36.949780, 33.273899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544056, 36.839760, 33.509735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650536, 0.332253, -0.682943,
		-0.008051, -0.902196, -0.431251,
		-0.759433, -0.275046, 0.589586,
		45.316227, 36.757244, 33.686611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387745, 36.480309, 32.949734>,  <45.847828, 36.949780, 33.273899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387745, 36.480309, 32.949734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159622, 36.650330, 33.230896>,  <45.022747, 36.752342, 33.399593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159622, 36.650330, 33.230896>,  <45.387745, 36.480309, 32.949734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159622, 36.650330, 33.230896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684518, 0.227095, -0.692722,
		-0.454072, -0.876216, 0.161443,
		-0.570311, 0.425056, 0.702903,
		44.988529, 36.777847, 33.441769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733646, 36.267529, 32.812466>,  <45.387745, 36.480309, 32.949734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733646, 36.267529, 32.812466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674454, 36.589588, 33.042194>,  <44.638939, 36.782822, 33.180031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674454, 36.589588, 33.042194>,  <44.733646, 36.267529, 32.812466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674454, 36.589588, 33.042194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740563, 0.294679, -0.603929,
		-0.655491, -0.514686, 0.552657,
		-0.147977, 0.805148, 0.574317,
		44.630062, 36.831131, 33.214489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980286, 36.253174, 32.795002>,  <44.733646, 36.267529, 32.812466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980286, 36.253174, 32.795002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110947, 36.607861, 32.925861>,  <44.189342, 36.820675, 33.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110947, 36.607861, 32.925861>,  <43.980286, 36.253174, 32.795002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110947, 36.607861, 32.925861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702091, 0.459380, -0.544094,
		-0.632746, -0.051961, 0.772615,
		0.326652, 0.886719, 0.327152,
		44.208942, 36.873875, 33.024006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409172, 36.634495, 32.896671>,  <43.980286, 36.253174, 32.795002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409172, 36.634495, 32.896671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680443, 36.928402, 32.902264>,  <43.843204, 37.104744, 32.905621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680443, 36.928402, 32.902264>,  <43.409172, 36.634495, 32.896671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680443, 36.928402, 32.902264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577394, 0.544506, -0.608383,
		-0.454632, 0.404518, 0.793521,
		0.678179, 0.734764, 0.013984,
		43.883896, 37.148830, 32.906460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043037, 37.302124, 33.148319>,  <43.409172, 36.634495, 32.896671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043037, 37.302124, 33.148319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361164, 37.385338, 32.920570>,  <43.552040, 37.435265, 32.783920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361164, 37.385338, 32.920570>,  <43.043037, 37.302124, 33.148319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361164, 37.385338, 32.920570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579749, 0.535410, -0.614189,
		0.177077, 0.818571, 0.546429,
		0.795321, 0.208033, -0.569375,
		43.599762, 37.447746, 32.749760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979576, 38.053761, 32.992001>,  <43.043037, 37.302124, 33.148319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979576, 38.053761, 32.992001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232105, 37.896481, 32.724621>,  <43.383621, 37.802113, 32.564194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232105, 37.896481, 32.724621>,  <42.979576, 38.053761, 32.992001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232105, 37.896481, 32.724621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453714, 0.511760, -0.729551,
		0.628946, 0.763867, 0.144685,
		0.631324, -0.393202, -0.668447,
		43.421501, 37.778519, 32.524086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343735, 38.608742, 32.609131>,  <42.979576, 38.053761, 32.992001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343735, 38.608742, 32.609131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374687, 38.297241, 32.360115>,  <43.393261, 38.110340, 32.210705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374687, 38.297241, 32.360115>,  <43.343735, 38.608742, 32.609131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374687, 38.297241, 32.360115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387900, 0.551698, -0.738352,
		0.918447, 0.298621, -0.259384,
		0.077386, -0.778752, -0.622540,
		43.397903, 38.063614, 32.173351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618256, 38.968426, 31.994825>,  <43.343735, 38.608742, 32.609131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618256, 38.968426, 31.994825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488377, 38.604008, 31.893177>,  <43.410450, 38.385357, 31.832188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488377, 38.604008, 31.893177>,  <43.618256, 38.968426, 31.994825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488377, 38.604008, 31.893177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263714, 0.345224, -0.900708,
		0.908310, -0.225441, -0.352347,
		-0.324695, -0.911042, -0.254119,
		43.390968, 38.330696, 31.816942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959404, 38.821102, 31.385344>,  <43.618256, 38.968426, 31.994825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959404, 38.821102, 31.385344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631748, 38.591663, 31.385092>,  <43.435154, 38.454002, 31.384941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631748, 38.591663, 31.385092>,  <43.959404, 38.821102, 31.385344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631748, 38.591663, 31.385092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157371, 0.225793, -0.961380,
		0.551584, -0.787405, -0.275223,
		-0.819139, -0.573594, -0.000629,
		43.386005, 38.419586, 31.384903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032867, 38.203751, 30.784050>,  <43.959404, 38.821102, 31.385344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032867, 38.203751, 30.784050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645912, 38.248379, 30.875006>,  <43.413738, 38.275158, 30.929579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645912, 38.248379, 30.875006>,  <44.032867, 38.203751, 30.784050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645912, 38.248379, 30.875006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214582, 0.115962, -0.969798,
		-0.134573, -0.986967, -0.088238,
		-0.967391, 0.111574, 0.227391,
		43.355694, 38.281849, 30.943222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624466, 37.955944, 30.161188>,  <44.032867, 38.203751, 30.784050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624466, 37.955944, 30.161188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343121, 38.153568, 30.365612>,  <43.174313, 38.272141, 30.488266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343121, 38.153568, 30.365612>,  <43.624466, 37.955944, 30.161188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343121, 38.153568, 30.365612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508330, 0.152949, -0.847471,
		-0.496866, -0.855869, 0.143566,
		-0.703366, 0.494059, 0.511060,
		43.132111, 38.301785, 30.518930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893246, 37.731033, 29.945705>,  <43.624466, 37.955944, 30.161188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893246, 37.731033, 29.945705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844204, 38.089729, 30.115801>,  <42.814781, 38.304947, 30.217859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844204, 38.089729, 30.115801>,  <42.893246, 37.731033, 29.945705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844204, 38.089729, 30.115801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543746, 0.297749, -0.784657,
		-0.830246, -0.327424, 0.451093,
		-0.122602, 0.896738, 0.425240,
		42.807423, 38.358749, 30.243374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099403, 37.784328, 29.866617>,  <42.893246, 37.731033, 29.945705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099403, 37.784328, 29.866617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292198, 38.130836, 29.919176>,  <42.407875, 38.338741, 29.950712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292198, 38.130836, 29.919176>,  <42.099403, 37.784328, 29.866617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292198, 38.130836, 29.919176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263961, 0.286562, -0.920982,
		-0.835472, 0.409217, 0.366780,
		0.481987, 0.866270, 0.131397,
		42.436794, 38.390717, 29.958595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696262, 38.340084, 29.649681>,  <42.099403, 37.784328, 29.866617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696262, 38.340084, 29.649681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051422, 38.524078, 29.646708>,  <42.264519, 38.634476, 29.644924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051422, 38.524078, 29.646708>,  <41.696262, 38.340084, 29.649681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051422, 38.524078, 29.646708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147079, 0.268521, -0.951979,
		-0.435897, 0.846353, 0.306073,
		0.887898, 0.459981, -0.007433,
		42.317791, 38.662071, 29.644478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585171, 39.033604, 29.321846>,  <41.696262, 38.340084, 29.649681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585171, 39.033604, 29.321846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963169, 38.903656, 29.306700>,  <42.189968, 38.825687, 29.297611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963169, 38.903656, 29.306700>,  <41.585171, 39.033604, 29.321846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963169, 38.903656, 29.306700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015363, 0.159732, -0.987041,
		0.326711, 0.932171, 0.155938,
		0.944999, -0.324873, -0.037865,
		42.246670, 38.806194, 29.295340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885864, 39.591084, 29.072197>,  <41.585171, 39.033604, 29.321846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885864, 39.591084, 29.072197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156796, 39.306698, 28.996548>,  <42.319355, 39.136066, 28.951159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156796, 39.306698, 28.996548>,  <41.885864, 39.591084, 29.072197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156796, 39.306698, 28.996548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065540, 0.314365, -0.947037,
		0.732759, 0.629056, 0.259523,
		0.677324, -0.710960, -0.189125,
		42.359993, 39.093410, 28.939810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518391, 39.938168, 28.768909>,  <41.885864, 39.591084, 29.072197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518391, 39.938168, 28.768909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551918, 39.555958, 28.655811>,  <42.572037, 39.326633, 28.587952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.551918, 39.555958, 28.655811>,  <42.518391, 39.938168, 28.768909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551918, 39.555958, 28.655811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385132, 0.292762, -0.875194,
		0.919047, -0.035535, 0.392543,
		0.083822, -0.955525, -0.282748,
		42.577065, 39.269299, 28.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241802, 39.702347, 28.659466>,  <42.518391, 39.938168, 28.768909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241802, 39.702347, 28.659466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947403, 39.547424, 28.437365>,  <42.770763, 39.454472, 28.304104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947403, 39.547424, 28.437365>,  <43.241802, 39.702347, 28.659466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947403, 39.547424, 28.437365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472827, 0.292906, -0.831048,
		0.484507, -0.874185, -0.032449,
		-0.735994, -0.387306, -0.555254,
		42.726604, 39.431232, 28.270788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580536, 39.306015, 28.219921>,  <43.241802, 39.702347, 28.659466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580536, 39.306015, 28.219921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221661, 39.388481, 28.063688>,  <43.006336, 39.437962, 27.969948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221661, 39.388481, 28.063688>,  <43.580536, 39.306015, 28.219921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221661, 39.388481, 28.063688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432234, 0.228206, -0.872408,
		-0.090726, -0.951535, -0.293854,
		-0.897186, 0.206164, -0.390581,
		42.952503, 39.450329, 27.946514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689079, 39.553421, 27.569855>,  <43.580536, 39.306015, 28.219921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689079, 39.553421, 27.569855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290112, 39.576805, 27.553175>,  <43.050732, 39.590836, 27.543167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290112, 39.576805, 27.553175>,  <43.689079, 39.553421, 27.569855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290112, 39.576805, 27.553175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056101, 0.271868, -0.960698,
		-0.044829, -0.960557, -0.274446,
		-0.997418, 0.058464, -0.041701,
		42.990887, 39.594345, 27.540665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094547, 39.123760, 27.229498>,  <43.689079, 39.553421, 27.569855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094547, 39.123760, 27.229498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254093, 39.280941, 26.898077>,  <43.349823, 39.375248, 26.699224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254093, 39.280941, 26.898077>,  <43.094547, 39.123760, 27.229498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254093, 39.280941, 26.898077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675326, -0.737113, -0.024477,
		-0.620354, -0.549779, -0.559379,
		0.398868, 0.392948, -0.828551,
		43.373753, 39.398827, 26.649511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148014, 38.596161, 26.703886>,  <43.094547, 39.123760, 27.229498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148014, 38.596161, 26.703886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443726, 38.855789, 26.632135>,  <43.621151, 39.011566, 26.589085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443726, 38.855789, 26.632135>,  <43.148014, 38.596161, 26.703886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443726, 38.855789, 26.632135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655424, -0.754682, -0.029569,
		-0.154564, -0.095707, -0.983336,
		0.739276, 0.649072, -0.179376,
		43.665508, 39.050510, 26.578323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814571, 38.036499, 26.326490>,  <43.148014, 38.596161, 26.703886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814571, 38.036499, 26.326490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467438, 38.177994, 26.466057>,  <42.259159, 38.262890, 26.549797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467438, 38.177994, 26.466057>,  <42.814571, 38.036499, 26.326490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467438, 38.177994, 26.466057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012870, 0.718005, -0.695919,
		-0.496696, -0.599448, -0.627659,
		-0.867830, 0.353738, 0.348915,
		42.207088, 38.284115, 26.570732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364452, 38.142464, 25.839621>,  <42.814571, 38.036499, 26.326490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364452, 38.142464, 25.839621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286041, 38.409641, 26.126791>,  <42.238995, 38.569950, 26.299093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286041, 38.409641, 26.126791>,  <42.364452, 38.142464, 25.839621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286041, 38.409641, 26.126791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015193, 0.734112, -0.678859,
		-0.980480, -0.122171, -0.154058,
		-0.196032, 0.667948, 0.717925,
		42.227230, 38.610027, 26.342169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908043, 38.110104, 25.274168>,  <42.364452, 38.142464, 25.839621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908043, 38.110104, 25.274168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967369, 38.201633, 24.889326>,  <43.002964, 38.256550, 24.658421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967369, 38.201633, 24.889326>,  <42.908043, 38.110104, 25.274168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967369, 38.201633, 24.889326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030256, 0.973457, 0.226861,
		0.988478, -0.004537, 0.151299,
		0.148312, 0.228825, -0.962103,
		43.011864, 38.270283, 24.600695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392349, 37.805779, 25.900625>,  <42.908043, 38.110104, 25.274168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392349, 37.805779, 25.900625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517616, 38.175858, 25.986362>,  <43.592777, 38.397903, 26.037806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517616, 38.175858, 25.986362>,  <43.392349, 37.805779, 25.900625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517616, 38.175858, 25.986362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310699, -0.313086, 0.897465,
		0.897438, -0.214457, -0.385504,
		0.313163, 0.925195, 0.214344,
		43.611565, 38.453415, 26.050665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171051, 37.754639, 26.002649>,  <43.392349, 37.805779, 25.900625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171051, 37.754639, 26.002649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942196, 38.009521, 26.209194>,  <43.804882, 38.162449, 26.333122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942196, 38.009521, 26.209194>,  <44.171051, 37.754639, 26.002649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942196, 38.009521, 26.209194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376238, -0.355523, 0.855598,
		0.728769, 0.683795, -0.036332,
		-0.572137, 0.637203, 0.516364,
		43.770554, 38.200684, 26.364103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611076, 38.003784, 26.458162>,  <44.171051, 37.754639, 26.002649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611076, 38.003784, 26.458162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232235, 38.013180, 26.586195>,  <44.004932, 38.018818, 26.663013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232235, 38.013180, 26.586195>,  <44.611076, 38.003784, 26.458162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232235, 38.013180, 26.586195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284963, -0.397269, 0.872338,
		0.147646, 0.917402, 0.369560,
		-0.947099, 0.023486, 0.320081,
		43.948105, 38.020226, 26.682219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599022, 38.378323, 27.169395>,  <44.611076, 38.003784, 26.458162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599022, 38.378323, 27.169395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258099, 38.173489, 27.126789>,  <44.053547, 38.050591, 27.101225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258099, 38.173489, 27.126789>,  <44.599022, 38.378323, 27.169395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258099, 38.173489, 27.126789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241872, -0.566438, 0.787811,
		-0.463759, 0.645692, 0.606637,
		-0.852306, -0.512083, -0.106516,
		44.002407, 38.019863, 27.094835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408504, 38.328663, 27.841854>,  <44.599022, 38.378323, 27.169395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408504, 38.328663, 27.841854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221191, 38.043175, 27.633505>,  <44.108803, 37.871883, 27.508495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221191, 38.043175, 27.633505>,  <44.408504, 38.328663, 27.841854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221191, 38.043175, 27.633505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243163, -0.670844, 0.700600,
		-0.849458, 0.201424, 0.487698,
		-0.468287, -0.713721, -0.520875,
		44.080704, 37.829060, 27.477242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839798, 37.976887, 28.329430>,  <44.408504, 38.328663, 27.841854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839798, 37.976887, 28.329430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946606, 37.725243, 28.037424>,  <44.010689, 37.574257, 27.862221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946606, 37.725243, 28.037424>,  <43.839798, 37.976887, 28.329430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946606, 37.725243, 28.037424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145257, -0.722588, 0.675846,
		-0.952682, -0.286500, -0.101559,
		0.267015, -0.629114, -0.730013,
		44.026711, 37.536507, 27.818420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706013, 37.330204, 28.632710>,  <43.839798, 37.976887, 28.329430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706013, 37.330204, 28.632710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942879, 37.263050, 28.317455>,  <44.084999, 37.222759, 28.128302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942879, 37.263050, 28.317455>,  <43.706013, 37.330204, 28.632710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942879, 37.263050, 28.317455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316001, -0.851337, 0.418771,
		-0.741274, -0.497032, -0.451078,
		0.592162, -0.167883, -0.788137,
		44.120525, 37.212685, 28.081015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662956, 36.579521, 28.509336>,  <43.706013, 37.330204, 28.632710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662956, 36.579521, 28.509336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000816, 36.737320, 28.364592>,  <44.203533, 36.831997, 28.277744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000816, 36.737320, 28.364592>,  <43.662956, 36.579521, 28.509336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000816, 36.737320, 28.364592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519267, -0.768085, 0.374709,
		-0.130122, -0.504401, -0.853609,
		0.844648, 0.394493, -0.361864,
		44.254211, 36.855667, 28.256033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078049, 35.988998, 28.232937>,  <43.662956, 36.579521, 28.509336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078049, 35.988998, 28.232937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344978, 36.281559, 28.289114>,  <44.505138, 36.457096, 28.322821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344978, 36.281559, 28.289114>,  <44.078049, 35.988998, 28.232937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344978, 36.281559, 28.289114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601676, -0.640582, 0.477118,
		0.438931, -0.233891, -0.867545,
		0.667327, 0.731403, 0.140445,
		44.545177, 36.500980, 28.331247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696316, 35.657181, 28.273483>,  <44.078049, 35.988998, 28.232937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696316, 35.657181, 28.273483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850937, 36.005974, 28.393631>,  <44.943710, 36.215248, 28.465719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850937, 36.005974, 28.393631>,  <44.696316, 35.657181, 28.273483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850937, 36.005974, 28.393631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609782, -0.485987, 0.626086,
		0.691910, -0.058859, -0.719580,
		0.386557, 0.871982, 0.300368,
		44.966904, 36.267567, 28.483742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458881, 35.708668, 28.260815>,  <44.696316, 35.657181, 28.273483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458881, 35.708668, 28.260815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.353394, 35.968407, 28.546137>,  <45.290100, 36.124249, 28.717331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.353394, 35.968407, 28.546137>,  <45.458881, 35.708668, 28.260815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353394, 35.968407, 28.546137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753889, -0.322566, 0.572366,
		0.601751, 0.688696, -0.404466,
		-0.263719, 0.649344, 0.713305,
		45.274277, 36.163212, 28.760128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072933, 35.925961, 28.490997>,  <45.458881, 35.708668, 28.260815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072933, 35.925961, 28.490997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820629, 35.994415, 28.793745>,  <45.669247, 36.035488, 28.975393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820629, 35.994415, 28.793745>,  <46.072933, 35.925961, 28.490997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820629, 35.994415, 28.793745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668257, -0.375982, 0.641927,
		0.394429, 0.910686, 0.122789,
		-0.630760, 0.171140, 0.756871,
		45.631401, 36.045757, 29.020805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357433, 36.425888, 28.929407>,  <46.072933, 35.925961, 28.490997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357433, 36.425888, 28.929407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100506, 36.253799, 29.183126>,  <45.946350, 36.150547, 29.335358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100506, 36.253799, 29.183126>,  <46.357433, 36.425888, 28.929407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100506, 36.253799, 29.183126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730345, -0.092597, 0.676774,
		-0.232430, 0.897960, 0.373689,
		-0.642318, -0.430224, 0.634298,
		45.907810, 36.124733, 29.373417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550865, 36.695194, 29.626209>,  <46.357433, 36.425888, 28.929407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550865, 36.695194, 29.626209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318642, 36.385300, 29.726400>,  <46.179310, 36.199364, 29.786516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318642, 36.385300, 29.726400>,  <46.550865, 36.695194, 29.626209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318642, 36.385300, 29.726400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558443, -0.155001, 0.814933,
		-0.592533, 0.612992, 0.522632,
		-0.580556, -0.774736, 0.250479,
		46.144474, 36.152878, 29.801544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499203, 36.756981, 30.341408>,  <46.550865, 36.695194, 29.626209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499203, 36.756981, 30.341408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.387997, 36.381363, 30.260502>,  <46.321274, 36.155994, 30.211958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.387997, 36.381363, 30.260502>,  <46.499203, 36.756981, 30.341408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.387997, 36.381363, 30.260502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298357, -0.284565, 0.911046,
		-0.913068, 0.192934, 0.359282,
		-0.278011, -0.939042, -0.202264,
		46.304592, 36.099651, 30.199823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206604, 36.519569, 30.823790>,  <46.499203, 36.756981, 30.341408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206604, 36.519569, 30.823790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287628, 36.165455, 30.656343>,  <46.336243, 35.952988, 30.555876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287628, 36.165455, 30.656343>,  <46.206604, 36.519569, 30.823790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287628, 36.165455, 30.656343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190971, -0.383559, 0.903556,
		-0.960469, -0.262964, 0.091372,
		0.202556, -0.885287, -0.418615,
		46.348396, 35.899868, 30.530760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822002, 36.058056, 31.228748>,  <46.206604, 36.519569, 30.823790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822002, 36.058056, 31.228748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102428, 35.825584, 31.063461>,  <46.270683, 35.686104, 30.964289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102428, 35.825584, 31.063461>,  <45.822002, 36.058056, 31.228748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102428, 35.825584, 31.063461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219206, -0.375772, 0.900413,
		-0.678572, -0.721825, -0.136043,
		0.701062, -0.581174, -0.413217,
		46.312748, 35.651234, 30.939497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655422, 35.343170, 31.452833>,  <45.822002, 36.058056, 31.228748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655422, 35.343170, 31.452833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043755, 35.373158, 31.361734>,  <46.276752, 35.391151, 31.307076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043755, 35.373158, 31.361734>,  <45.655422, 35.343170, 31.452833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043755, 35.373158, 31.361734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236799, -0.448857, 0.861658,
		-0.037627, -0.890453, -0.453517,
		0.970830, 0.074971, -0.227747,
		46.335003, 35.395649, 31.293409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958717, 34.641384, 31.677406>,  <45.655422, 35.343170, 31.452833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958717, 34.641384, 31.677406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.275864, 34.880573, 31.630421>,  <46.466152, 35.024086, 31.602228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.275864, 34.880573, 31.630421>,  <45.958717, 34.641384, 31.677406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275864, 34.880573, 31.630421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425270, -0.404865, 0.809462,
		0.436478, -0.691747, -0.575302,
		0.792863, 0.597971, -0.117465,
		46.513721, 35.059963, 31.595181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455994, 34.252827, 31.829094>,  <45.958717, 34.641384, 31.677406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455994, 34.252827, 31.829094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594662, 34.627167, 31.854435>,  <46.677860, 34.851768, 31.869640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594662, 34.627167, 31.854435>,  <46.455994, 34.252827, 31.829094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594662, 34.627167, 31.854435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458312, -0.227929, 0.859068,
		0.818396, -0.268776, -0.507926,
		0.346667, 0.935846, 0.063353,
		46.698662, 34.907921, 31.873442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057400, 34.242752, 32.147732>,  <46.455994, 34.252827, 31.829094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057400, 34.242752, 32.147732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995033, 34.629539, 32.228390>,  <46.957615, 34.861614, 32.276783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995033, 34.629539, 32.228390>,  <47.057400, 34.242752, 32.147732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995033, 34.629539, 32.228390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549121, -0.084838, 0.831426,
		0.821071, 0.240357, -0.517756,
		-0.155913, 0.966970, 0.201642,
		46.948257, 34.919632, 32.288883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.734097, 34.479134, 32.465038>,  <47.057400, 34.242752, 32.147732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.734097, 34.479134, 32.465038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456692, 34.751282, 32.559807>,  <47.290249, 34.914570, 32.616669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456692, 34.751282, 32.559807>,  <47.734097, 34.479134, 32.465038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456692, 34.751282, 32.559807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365490, 0.048862, 0.929532,
		0.620848, 0.731239, -0.282555,
		-0.693516, 0.680369, 0.236925,
		47.248638, 34.955391, 32.630886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.039261, 35.089832, 32.813263>,  <47.734097, 34.479134, 32.465038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.039261, 35.089832, 32.813263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664440, 35.020813, 32.934700>,  <47.439548, 34.979401, 33.007561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664440, 35.020813, 32.934700>,  <48.039261, 35.089832, 32.813263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.664440, 35.020813, 32.934700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309922, -0.010368, 0.950706,
		-0.160894, 0.984947, 0.063192,
		-0.937050, -0.172547, 0.303588,
		47.383324, 34.969048, 33.025776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.990635, 35.617672, 33.259483>,  <48.039261, 35.089832, 32.813263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.990635, 35.617672, 33.259483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726097, 35.327061, 33.334080>,  <47.567375, 35.152695, 33.378838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726097, 35.327061, 33.334080>,  <47.990635, 35.617672, 33.259483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726097, 35.327061, 33.334080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250466, 0.020458, 0.967909,
		-0.707033, 0.686827, 0.168442,
		-0.661340, -0.726533, 0.186491,
		47.527695, 35.109100, 33.390026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.887383, 35.714966, 33.850498>,  <47.990635, 35.617672, 33.259483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.887383, 35.714966, 33.850498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744232, 35.341518, 33.843796>,  <47.658340, 35.117451, 33.839775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744232, 35.341518, 33.843796>,  <47.887383, 35.714966, 33.850498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744232, 35.341518, 33.843796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170792, -0.083089, 0.981798,
		-0.918016, 0.348502, 0.189190,
		-0.357878, -0.933618, -0.016755,
		47.636868, 35.061432, 33.838768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391029, 35.656193, 34.419930>,  <47.887383, 35.714966, 33.850498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391029, 35.656193, 34.419930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564705, 35.305183, 34.338512>,  <47.668911, 35.094578, 34.289661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564705, 35.305183, 34.338512>,  <47.391029, 35.656193, 34.419930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.564705, 35.305183, 34.338512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254276, -0.097375, 0.962217,
		-0.864191, -0.469537, 0.180855,
		0.434186, -0.877527, -0.203543,
		47.694962, 35.041927, 34.277451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184586, 35.034740, 34.933552>,  <47.391029, 35.656193, 34.419930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184586, 35.034740, 34.933552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560623, 35.007992, 34.799839>,  <47.786247, 34.991943, 34.719612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560623, 35.007992, 34.799839>,  <47.184586, 35.034740, 34.933552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560623, 35.007992, 34.799839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310185, -0.238996, 0.920145,
		-0.141421, -0.968716, -0.203938,
		0.940099, -0.066869, -0.334279,
		47.842651, 34.987930, 34.699554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.601501, 41.995609, 40.736996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246403, 41.818741, 40.788204>,  <34.033344, 41.712620, 40.818932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246403, 41.818741, 40.788204>,  <34.601501, 41.995609, 40.736996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246403, 41.818741, 40.788204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147575, -0.536807, -0.830698,
		0.436035, -0.718557, 0.541803,
		-0.887747, -0.442170, 0.128026,
		33.980080, 41.686089, 40.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725212, 41.283245, 40.708733>,  <34.601501, 41.995609, 40.736996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725212, 41.283245, 40.708733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339413, 41.338760, 40.618862>,  <34.107933, 41.372070, 40.564938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339413, 41.338760, 40.618862>,  <34.725212, 41.283245, 40.708733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339413, 41.338760, 40.618862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092120, -0.620515, -0.778765,
		-0.247503, -0.771814, 0.585700,
		-0.964498, 0.138792, -0.224679,
		34.050064, 41.380398, 40.551460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517906, 40.645138, 40.489925>,  <34.725212, 41.283245, 40.708733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517906, 40.645138, 40.489925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248722, 40.893883, 40.329720>,  <34.087212, 41.043129, 40.233597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248722, 40.893883, 40.329720>,  <34.517906, 40.645138, 40.489925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248722, 40.893883, 40.329720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076795, -0.597288, -0.798342,
		-0.735682, -0.506494, 0.449706,
		-0.672959, 0.621861, -0.400518,
		34.046833, 41.080441, 40.209564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981750, 40.252445, 40.231739>,  <34.517906, 40.645138, 40.489925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981750, 40.252445, 40.231739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960110, 40.599331, 40.033745>,  <33.947124, 40.807461, 39.914948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960110, 40.599331, 40.033745>,  <33.981750, 40.252445, 40.231739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960110, 40.599331, 40.033745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034827, -0.497052, -0.867022,
		-0.997928, -0.029668, 0.057094,
		-0.054102, 0.867213, -0.494989,
		33.943878, 40.859493, 39.885250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442162, 40.174355, 39.686611>,  <33.981750, 40.252445, 40.231739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442162, 40.174355, 39.686611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669899, 40.483536, 39.574615>,  <33.806541, 40.669044, 39.507420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669899, 40.483536, 39.574615>,  <33.442162, 40.174355, 39.686611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669899, 40.483536, 39.574615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274122, -0.499578, -0.821753,
		-0.775055, 0.391105, -0.496314,
		0.569339, 0.772954, -0.279990,
		33.840702, 40.715424, 39.490620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261604, 40.154697, 39.015671>,  <33.442162, 40.174355, 39.686611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261604, 40.154697, 39.015671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602730, 40.361092, 39.047855>,  <33.807404, 40.484928, 39.067165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602730, 40.361092, 39.047855>,  <33.261604, 40.154697, 39.015671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602730, 40.361092, 39.047855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357282, -0.464119, -0.810520,
		-0.380873, 0.719967, -0.580158,
		0.852810, 0.515985, 0.080461,
		33.858574, 40.515888, 39.071995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402637, 40.252720, 38.338150>,  <33.261604, 40.154697, 39.015671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402637, 40.252720, 38.338150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762764, 40.316765, 38.500034>,  <33.978840, 40.355190, 38.597164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.762764, 40.316765, 38.500034>,  <33.402637, 40.252720, 38.338150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762764, 40.316765, 38.500034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417019, -0.583519, -0.696851,
		0.124583, 0.796160, -0.592122,
		0.900319, 0.160110, 0.404710,
		34.032860, 40.364799, 38.621449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868225, 40.225060, 37.743248>,  <33.402637, 40.252720, 38.338150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868225, 40.225060, 37.743248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084869, 40.178955, 38.076324>,  <34.214855, 40.151295, 38.276169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084869, 40.178955, 38.076324>,  <33.868225, 40.225060, 37.743248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084869, 40.178955, 38.076324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593457, -0.649128, -0.475860,
		0.595368, 0.751896, -0.283176,
		0.541614, -0.115259, 0.832688,
		34.247353, 40.144379, 38.326130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459469, 40.392403, 37.438820>,  <33.868225, 40.225060, 37.743248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459469, 40.392403, 37.438820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551296, 40.214699, 37.785213>,  <34.606392, 40.108078, 37.993050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.551296, 40.214699, 37.785213>,  <34.459469, 40.392403, 37.438820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551296, 40.214699, 37.785213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491817, -0.714845, -0.497104,
		0.839889, 0.540027, 0.054387,
		0.229571, -0.444261, 0.865985,
		34.620167, 40.081421, 38.045010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082645, 40.184792, 37.332935>,  <34.459469, 40.392403, 37.438820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082645, 40.184792, 37.332935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988461, 39.976543, 37.661205>,  <34.931950, 39.851593, 37.858170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988461, 39.976543, 37.661205>,  <35.082645, 40.184792, 37.332935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988461, 39.976543, 37.661205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465721, -0.801596, -0.374897,
		0.853032, 0.293935, 0.431207,
		-0.235458, -0.520621, 0.820679,
		34.917824, 39.820358, 37.907410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667271, 40.025242, 37.538586>,  <35.082645, 40.184792, 37.332935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667271, 40.025242, 37.538586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410648, 39.758045, 37.689419>,  <35.256676, 39.597729, 37.779919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410648, 39.758045, 37.689419>,  <35.667271, 40.025242, 37.538586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410648, 39.758045, 37.689419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604216, -0.742925, -0.288073,
		0.472575, 0.043025, 0.880239,
		-0.641557, -0.667991, 0.377084,
		35.218182, 39.557648, 37.802544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106258, 39.589382, 37.944855>,  <35.667271, 40.025242, 37.538586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106258, 39.589382, 37.944855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770012, 39.398949, 37.841545>,  <35.568264, 39.284687, 37.779560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770012, 39.398949, 37.841545>,  <36.106258, 39.589382, 37.944855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770012, 39.398949, 37.841545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535632, -0.801476, -0.265960,
		-0.080377, -0.361908, 0.928742,
		-0.840618, -0.476087, -0.258270,
		35.517826, 39.256123, 37.764065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103001, 38.949417, 38.269310>,  <36.106258, 39.589382, 37.944855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103001, 38.949417, 38.269310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850052, 38.909008, 37.962093>,  <35.698280, 38.884762, 37.777763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850052, 38.909008, 37.962093>,  <36.103001, 38.949417, 38.269310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850052, 38.909008, 37.962093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575938, -0.724370, -0.378925,
		-0.518070, -0.681970, 0.516257,
		-0.632376, -0.101022, -0.768046,
		35.660339, 38.878700, 37.731678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045723, 38.227768, 38.126823>,  <36.103001, 38.949417, 38.269310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045723, 38.227768, 38.126823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876492, 38.376854, 37.796471>,  <35.774952, 38.466305, 37.598259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876492, 38.376854, 37.796471>,  <36.045723, 38.227768, 38.126823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876492, 38.376854, 37.796471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344037, -0.777143, -0.526960,
		-0.838237, -0.507081, 0.200566,
		-0.423080, 0.372715, -0.825885,
		35.749569, 38.488670, 37.548706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754555, 37.665501, 37.809219>,  <36.045723, 38.227768, 38.126823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754555, 37.665501, 37.809219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805225, 37.942764, 37.525394>,  <35.835629, 38.109123, 37.355099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.805225, 37.942764, 37.525394>,  <35.754555, 37.665501, 37.809219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805225, 37.942764, 37.525394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390737, -0.692360, -0.606599,
		-0.911745, -0.200414, -0.358547,
		0.126673, 0.693161, -0.709565,
		35.843227, 38.150711, 37.312527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639378, 37.351585, 37.181248>,  <35.754555, 37.665501, 37.809219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639378, 37.351585, 37.181248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864311, 37.661903, 37.066765>,  <35.999271, 37.848095, 36.998074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864311, 37.661903, 37.066765>,  <35.639378, 37.351585, 37.181248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864311, 37.661903, 37.066765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603338, -0.621631, -0.499559,
		-0.565473, 0.108239, -0.817633,
		0.562338, 0.775796, -0.286211,
		36.033012, 37.894642, 36.980900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769150, 37.213089, 36.473301>,  <35.639378, 37.351585, 37.181248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769150, 37.213089, 36.473301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030407, 37.504032, 36.557545>,  <36.187160, 37.678596, 36.608089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030407, 37.504032, 36.557545>,  <35.769150, 37.213089, 36.473301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030407, 37.504032, 36.557545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734518, -0.540943, -0.409713,
		-0.184082, 0.422296, -0.887570,
		0.653145, 0.727356, 0.210606,
		36.226349, 37.722240, 36.620728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203068, 37.232445, 35.872585>,  <35.769150, 37.213089, 36.473301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203068, 37.232445, 35.872585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403419, 37.418282, 36.164688>,  <36.523632, 37.529785, 36.339951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403419, 37.418282, 36.164688>,  <36.203068, 37.232445, 35.872585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403419, 37.418282, 36.164688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858737, -0.372152, -0.352240,
		0.108115, 0.803525, -0.585370,
		0.500881, 0.464597, 0.730252,
		36.553684, 37.557659, 36.383762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859383, 37.567940, 35.611927>,  <36.203068, 37.232445, 35.872585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859383, 37.567940, 35.611927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909286, 37.486675, 36.000393>,  <36.939228, 37.437916, 36.233471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909286, 37.486675, 36.000393>,  <36.859383, 37.567940, 35.611927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909286, 37.486675, 36.000393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883196, -0.423271, -0.202008,
		0.452106, 0.882931, 0.126623,
		0.124764, -0.203162, 0.971164,
		36.946716, 37.425728, 36.291740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601025, 37.727898, 35.670856>,  <36.859383, 37.567940, 35.611927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601025, 37.727898, 35.670856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495281, 37.533062, 36.003811>,  <37.431835, 37.416161, 36.203583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495281, 37.533062, 36.003811>,  <37.601025, 37.727898, 35.670856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495281, 37.533062, 36.003811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911171, -0.408976, 0.050056,
		0.316043, 0.771675, 0.551937,
		-0.264356, -0.487089, 0.832382,
		37.415974, 37.386936, 36.253525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169037, 37.784023, 36.201164>,  <37.601025, 37.727898, 35.670856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169037, 37.784023, 36.201164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983326, 37.439003, 36.281620>,  <37.871899, 37.231991, 36.329895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983326, 37.439003, 36.281620>,  <38.169037, 37.784023, 36.201164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983326, 37.439003, 36.281620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870035, -0.486663, -0.078731,
		0.165796, 0.138446, 0.976394,
		-0.464274, -0.862550, 0.201140,
		37.844044, 37.180237, 36.341961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658909, 37.300812, 36.599537>,  <38.169037, 37.784023, 36.201164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658909, 37.300812, 36.599537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385342, 37.089767, 36.397987>,  <38.221203, 36.963142, 36.277058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385342, 37.089767, 36.397987>,  <38.658909, 37.300812, 36.599537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385342, 37.089767, 36.397987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617413, -0.786506, -0.014470,
		-0.388666, -0.320995, 0.863655,
		-0.683915, -0.527608, -0.503875,
		38.180168, 36.931484, 36.246826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270805, 36.943489, 36.592670>,  <38.658909, 37.300812, 36.599537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270805, 36.943489, 36.592670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646481, 36.922943, 36.728493>,  <39.871883, 36.910618, 36.809986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646481, 36.922943, 36.728493>,  <39.270805, 36.943489, 36.592670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646481, 36.922943, 36.728493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214574, 0.684218, 0.696996,
		-0.268128, -0.727467, 0.631585,
		0.939184, -0.051362, 0.339553,
		39.928234, 36.907536, 36.830360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200539, 36.788429, 37.273056>,  <39.270805, 36.943489, 36.592670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200539, 36.788429, 37.273056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560467, 36.950886, 37.209351>,  <39.776424, 37.048359, 37.171127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560467, 36.950886, 37.209351>,  <39.200539, 36.788429, 37.273056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560467, 36.950886, 37.209351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196575, 0.703378, 0.683094,
		0.389456, -0.583357, 0.712754,
		0.899823, 0.406145, -0.159262,
		39.830414, 37.072731, 37.161572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447994, 36.713108, 37.909081>,  <39.200539, 36.788429, 37.273056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447994, 36.713108, 37.909081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643261, 36.990078, 37.696579>,  <39.760422, 37.156261, 37.569077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643261, 36.990078, 37.696579>,  <39.447994, 36.713108, 37.909081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643261, 36.990078, 37.696579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053648, 0.631373, 0.773621,
		0.871097, -0.349158, 0.345366,
		0.488171, 0.692428, -0.531255,
		39.789711, 37.197807, 37.537201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992111, 37.039822, 38.369217>,  <39.447994, 36.713108, 37.909081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992111, 37.039822, 38.369217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.912071, 37.303410, 38.079189>,  <39.864048, 37.461563, 37.905174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.912071, 37.303410, 38.079189>,  <39.992111, 37.039822, 38.369217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912071, 37.303410, 38.079189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146463, 0.711598, 0.687151,
		0.968767, 0.243691, -0.045873,
		-0.200096, 0.658971, -0.725065,
		39.852043, 37.501102, 37.861671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316620, 37.699448, 38.478931>,  <39.992111, 37.039822, 38.369217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316620, 37.699448, 38.478931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076168, 37.826118, 38.185440>,  <39.931896, 37.902122, 38.009346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076168, 37.826118, 38.185440>,  <40.316620, 37.699448, 38.478931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076168, 37.826118, 38.185440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147947, 0.858164, 0.491597,
		0.785335, 0.404067, -0.469018,
		-0.601132, 0.316678, -0.733726,
		39.895828, 37.921124, 37.965321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532478, 38.386345, 38.280113>,  <40.316620, 37.699448, 38.478931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532478, 38.386345, 38.280113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143517, 38.358826, 38.190948>,  <39.910137, 38.342316, 38.137451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143517, 38.358826, 38.190948>,  <40.532478, 38.386345, 38.280113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143517, 38.358826, 38.190948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165204, 0.877731, 0.449773,
		0.164714, 0.474189, -0.864878,
		-0.972408, -0.068797, -0.222913,
		39.851795, 38.338188, 38.124073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402534, 39.082268, 38.155823>,  <40.532478, 38.386345, 38.280113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402534, 39.082268, 38.155823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054195, 38.893879, 38.212132>,  <39.845192, 38.780846, 38.245914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054195, 38.893879, 38.212132>,  <40.402534, 39.082268, 38.155823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054195, 38.893879, 38.212132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327059, 0.768937, 0.549334,
		-0.366961, 0.432346, -0.823661,
		-0.870846, -0.470969, 0.140767,
		39.792942, 38.752586, 38.254360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850304, 39.471195, 37.910343>,  <40.402534, 39.082268, 38.155823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850304, 39.471195, 37.910343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623905, 39.261955, 38.165218>,  <39.488064, 39.136410, 38.318142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623905, 39.261955, 38.165218>,  <39.850304, 39.471195, 37.910343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623905, 39.261955, 38.165218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402339, 0.849883, 0.340327,
		-0.719561, -0.063741, -0.691498,
		-0.566000, -0.523102, 0.637188,
		39.454105, 39.105026, 38.356377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138367, 39.738277, 37.740650>,  <39.850304, 39.471195, 37.910343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138367, 39.738277, 37.740650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137386, 39.553581, 38.095455>,  <39.136799, 39.442764, 38.308338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137386, 39.553581, 38.095455>,  <39.138367, 39.738277, 37.740650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137386, 39.553581, 38.095455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484387, 0.776557, 0.402899,
		-0.874850, -0.428668, -0.225567,
		-0.002456, -0.461738, 0.887013,
		39.136650, 39.415058, 38.361561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404076, 39.824429, 38.037308>,  <39.138367, 39.738277, 37.740650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404076, 39.824429, 38.037308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620209, 39.714874, 38.355560>,  <38.749889, 39.649143, 38.546513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620209, 39.714874, 38.355560>,  <38.404076, 39.824429, 38.037308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620209, 39.714874, 38.355560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615743, 0.515752, 0.595701,
		-0.573502, -0.811781, 0.110034,
		0.540329, -0.273883, 0.795633,
		38.782307, 39.632710, 38.594250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951233, 39.733040, 38.500511>,  <38.404076, 39.824429, 38.037308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951233, 39.733040, 38.500511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.290459, 39.787228, 38.705421>,  <38.493996, 39.819740, 38.828369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.290459, 39.787228, 38.705421>,  <37.951233, 39.733040, 38.500511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290459, 39.787228, 38.705421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507721, 0.484443, 0.712415,
		-0.151663, -0.864271, 0.479619,
		0.848067, 0.135466, 0.512280,
		38.544880, 39.827866, 38.859104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733772, 39.597351, 39.178806>,  <37.951233, 39.733040, 38.500511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733772, 39.597351, 39.178806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.090305, 39.765053, 39.247810>,  <38.304226, 39.865673, 39.289211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.090305, 39.765053, 39.247810>,  <37.733772, 39.597351, 39.178806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090305, 39.765053, 39.247810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397713, 0.540467, 0.741431,
		0.217611, -0.729469, 0.648476,
		0.891330, 0.419251, 0.172507,
		38.357704, 39.890827, 39.299564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889648, 39.650925, 39.920364>,  <37.733772, 39.597351, 39.178806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889648, 39.650925, 39.920364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045227, 39.960751, 39.720860>,  <38.138573, 40.146648, 39.601154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045227, 39.960751, 39.720860>,  <37.889648, 39.650925, 39.920364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045227, 39.960751, 39.720860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315706, 0.620676, 0.717698,
		0.865477, -0.121683, 0.485945,
		0.388946, 0.774567, -0.498765,
		38.161911, 40.193119, 39.571232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317337, 40.016464, 40.450470>,  <37.889648, 39.650925, 39.920364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317337, 40.016464, 40.450470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224384, 40.264290, 40.150566>,  <38.168613, 40.412987, 39.970623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224384, 40.264290, 40.150566>,  <38.317337, 40.016464, 40.450470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224384, 40.264290, 40.150566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246875, 0.708042, 0.661611,
		0.940772, 0.338842, -0.011580,
		-0.232381, 0.619566, -0.749758,
		38.154671, 40.450161, 39.925640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652878, 40.592640, 40.554119>,  <38.317337, 40.016464, 40.450470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652878, 40.592640, 40.554119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328499, 40.705154, 40.348888>,  <38.133873, 40.772663, 40.225750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328499, 40.705154, 40.348888>,  <38.652878, 40.592640, 40.554119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328499, 40.705154, 40.348888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261900, 0.609638, 0.748164,
		0.523240, 0.741094, -0.420713,
		-0.810943, 0.281285, -0.513079,
		38.085217, 40.789539, 40.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406059, 41.227119, 40.653656>,  <38.652878, 40.592640, 40.554119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406059, 41.227119, 40.653656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061298, 41.118553, 40.482327>,  <37.854443, 41.053413, 40.379528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061298, 41.118553, 40.482327>,  <38.406059, 41.227119, 40.653656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061298, 41.118553, 40.482327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487617, 0.675381, 0.553254,
		0.139120, 0.685708, -0.714458,
		-0.861902, -0.271413, -0.428322,
		37.802727, 41.037128, 40.353828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967606, 41.876049, 40.414371>,  <38.406059, 41.227119, 40.653656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967606, 41.876049, 40.414371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713886, 41.569759, 40.456966>,  <37.561657, 41.385986, 40.482525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713886, 41.569759, 40.456966>,  <37.967606, 41.876049, 40.414371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713886, 41.569759, 40.456966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628140, 0.590756, 0.506406,
		-0.450675, 0.254320, -0.855695,
		-0.634296, -0.765721, 0.106490,
		37.523598, 41.340042, 40.488914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300407, 42.103825, 40.245419>,  <37.967606, 41.876049, 40.414371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300407, 42.103825, 40.245419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196053, 41.783859, 40.461597>,  <37.133442, 41.591881, 40.591305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196053, 41.783859, 40.461597>,  <37.300407, 42.103825, 40.245419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196053, 41.783859, 40.461597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636836, 0.563343, 0.526388,
		-0.725520, -0.206849, -0.656379,
		-0.260883, -0.799911, 0.540446,
		37.117786, 41.543884, 40.623730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.589489, 42.077255, 40.211956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678387, 41.825584, 40.509880>,  <36.731724, 41.674580, 40.688633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678387, 41.825584, 40.509880>,  <36.589489, 42.077255, 40.211956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678387, 41.825584, 40.509880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765863, 0.360095, 0.532715,
		-0.603376, -0.688812, -0.401840,
		0.222240, -0.629182, 0.744809,
		36.745060, 41.636829, 40.733322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957638, 41.865181, 40.496941>,  <36.589489, 42.077255, 40.211956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957638, 41.865181, 40.496941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218487, 41.801888, 40.793507>,  <36.374996, 41.763912, 40.971447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218487, 41.801888, 40.793507>,  <35.957638, 41.865181, 40.496941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218487, 41.801888, 40.793507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675289, 0.323249, 0.662944,
		-0.344561, -0.932992, 0.103946,
		0.652121, -0.158231, 0.741418,
		36.414124, 41.754417, 41.015930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516777, 41.569283, 40.991222>,  <35.957638, 41.865181, 40.496941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516777, 41.569283, 40.991222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862148, 41.690170, 41.152790>,  <36.069374, 41.762703, 41.249729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862148, 41.690170, 41.152790>,  <35.516777, 41.569283, 40.991222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862148, 41.690170, 41.152790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494876, 0.352070, 0.794446,
		0.097885, -0.885840, 0.453548,
		0.863433, 0.302214, 0.403919,
		36.121178, 41.780834, 41.273964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405609, 41.437363, 41.717518>,  <35.516777, 41.569283, 40.991222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405609, 41.437363, 41.717518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715946, 41.689671, 41.711815>,  <35.902149, 41.841053, 41.708393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715946, 41.689671, 41.711815>,  <35.405609, 41.437363, 41.717518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715946, 41.689671, 41.711815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340334, 0.437428, 0.832364,
		0.531267, -0.640928, 0.554046,
		0.775840, 0.630768, -0.014262,
		35.948700, 41.878902, 41.707535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473740, 41.466393, 42.416916>,  <35.405609, 41.437363, 41.717518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473740, 41.466393, 42.416916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648361, 41.782940, 42.245731>,  <35.753136, 41.972870, 42.143021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648361, 41.782940, 42.245731>,  <35.473740, 41.466393, 42.416916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648361, 41.782940, 42.245731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314739, 0.579960, 0.751389,
		0.842828, -0.193328, 0.502260,
		0.436555, 0.791373, -0.427959,
		35.779327, 42.020351, 42.117344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868870, 41.732533, 42.981781>,  <35.473740, 41.466393, 42.416916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868870, 41.732533, 42.981781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807354, 42.022018, 42.712681>,  <35.770443, 42.195709, 42.551220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807354, 42.022018, 42.712681>,  <35.868870, 41.732533, 42.981781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807354, 42.022018, 42.712681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089880, 0.667780, 0.738913,
		0.984007, 0.174104, -0.037651,
		-0.153790, 0.723712, -0.672748,
		35.761215, 42.239132, 42.510857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304653, 42.301491, 43.215443>,  <35.868870, 41.732533, 42.981781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304653, 42.301491, 43.215443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025112, 42.466496, 42.981712>,  <35.857388, 42.565498, 42.841473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025112, 42.466496, 42.981712>,  <36.304653, 42.301491, 43.215443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025112, 42.466496, 42.981712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174957, 0.693538, 0.698853,
		0.693538, 0.590628, -0.412509,
		-0.698853, 0.412509, -0.584329,
		35.815456, 42.590248, 42.806412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408840, 42.910160, 43.388565>,  <36.304653, 42.301491, 43.215443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408840, 42.910160, 43.388565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041618, 42.920826, 43.230347>,  <35.821285, 42.927227, 43.135414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041618, 42.920826, 43.230347>,  <36.408840, 42.910160, 43.388565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041618, 42.920826, 43.230347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241088, 0.754489, 0.610429,
		0.314714, 0.655771, -0.686236,
		-0.918059, 0.026668, -0.395547,
		35.766201, 42.928825, 43.111683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271854, 43.670055, 43.329277>,  <36.408840, 42.910160, 43.388565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271854, 43.670055, 43.329277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919277, 43.484032, 43.296345>,  <35.707729, 43.372417, 43.276585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919277, 43.484032, 43.296345>,  <36.271854, 43.670055, 43.329277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919277, 43.484032, 43.296345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397057, 0.635307, 0.662367,
		-0.255734, 0.616529, -0.744642,
		-0.881446, -0.465055, -0.082328,
		35.654842, 43.344517, 43.271645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807835, 44.162121, 43.205551>,  <36.271854, 43.670055, 43.329277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807835, 44.162121, 43.205551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590218, 43.868038, 43.367290>,  <35.459648, 43.691589, 43.464333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590218, 43.868038, 43.367290>,  <35.807835, 44.162121, 43.205551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590218, 43.868038, 43.367290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331556, 0.631052, 0.701316,
		-0.770773, 0.247481, -0.587079,
		-0.544040, -0.735205, 0.404344,
		35.427006, 43.647476, 43.488594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213627, 44.476864, 43.309593>,  <35.807835, 44.162121, 43.205551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213627, 44.476864, 43.309593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213474, 44.150063, 43.540245>,  <35.213383, 43.953983, 43.678635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213474, 44.150063, 43.540245>,  <35.213627, 44.476864, 43.309593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213474, 44.150063, 43.540245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379823, 0.533535, 0.755695,
		-0.925059, -0.218733, -0.310518,
		-0.000377, -0.817005, 0.576631,
		35.213360, 43.904961, 43.713234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611946, 44.513599, 43.725475>,  <35.213627, 44.476864, 43.309593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611946, 44.513599, 43.725475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835434, 44.241669, 43.915493>,  <34.969524, 44.078510, 44.029503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835434, 44.241669, 43.915493>,  <34.611946, 44.513599, 43.725475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835434, 44.241669, 43.915493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247121, 0.410302, 0.877829,
		-0.791685, -0.607851, 0.061242,
		0.558717, -0.679830, 0.475043,
		35.003048, 44.037720, 44.058006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190315, 44.205185, 44.197887>,  <34.611946, 44.513599, 43.725475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190315, 44.205185, 44.197887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.559715, 44.162518, 44.345276>,  <34.781353, 44.136917, 44.433708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.559715, 44.162518, 44.345276>,  <34.190315, 44.205185, 44.197887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559715, 44.162518, 44.345276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305749, 0.375421, 0.874972,
		-0.231669, -0.920695, 0.314085,
		0.923497, -0.106672, 0.368475,
		34.836765, 44.130516, 44.455818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150127, 43.777229, 44.873692>,  <34.190315, 44.205185, 44.197887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150127, 43.777229, 44.873692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473938, 44.011665, 44.860004>,  <34.668224, 44.152328, 44.851791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473938, 44.011665, 44.860004>,  <34.150127, 43.777229, 44.873692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473938, 44.011665, 44.860004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382096, 0.570219, 0.727222,
		0.445729, -0.575629, 0.685549,
		0.809523, 0.586089, -0.034217,
		34.716793, 44.187492, 44.849739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299095, 44.024273, 45.549271>,  <34.150127, 43.777229, 44.873692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299095, 44.024273, 45.549271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514469, 44.277107, 45.326363>,  <34.643696, 44.428810, 45.192619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514469, 44.277107, 45.326363>,  <34.299095, 44.024273, 45.549271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514469, 44.277107, 45.326363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161847, 0.726578, 0.667750,
		0.826977, -0.269349, 0.493518,
		0.538437, 0.632088, -0.557270,
		34.675999, 44.466732, 45.159184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752731, 44.270851, 46.026848>,  <34.299095, 44.024273, 45.549271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752731, 44.270851, 46.026848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782127, 44.539528, 45.731979>,  <34.799767, 44.700733, 45.555058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782127, 44.539528, 45.731979>,  <34.752731, 44.270851, 46.026848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782127, 44.539528, 45.731979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060194, 0.734838, 0.675566,
		0.995478, -0.094020, 0.013570,
		0.073489, 0.671694, -0.737175,
		34.804173, 44.741035, 45.510826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373241, 44.752701, 46.111393>,  <34.752731, 44.270851, 46.026848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373241, 44.752701, 46.111393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122787, 44.938595, 45.860962>,  <34.972515, 45.050133, 45.710701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122787, 44.938595, 45.860962>,  <35.373241, 44.752701, 46.111393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122787, 44.938595, 45.860962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029598, 0.816549, 0.576518,
		0.779154, 0.342446, -0.525024,
		-0.626134, 0.464736, -0.626081,
		34.934948, 45.078014, 45.673138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706497, 45.499622, 45.953274>,  <35.373241, 44.752701, 46.111393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706497, 45.499622, 45.953274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310390, 45.503147, 45.897720>,  <35.072727, 45.505264, 45.864388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310390, 45.503147, 45.897720>,  <35.706497, 45.499622, 45.953274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310390, 45.503147, 45.897720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083776, 0.759154, 0.645497,
		0.111127, 0.650851, -0.751029,
		-0.990269, 0.008814, -0.138888,
		35.013309, 45.505791, 45.856052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568348, 46.213985, 46.005566>,  <35.706497, 45.499622, 45.953274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568348, 46.213985, 46.005566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216732, 46.026596, 46.040928>,  <35.005760, 45.914162, 46.062145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216732, 46.026596, 46.040928>,  <35.568348, 46.213985, 46.005566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216732, 46.026596, 46.040928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292522, 0.676442, 0.675912,
		-0.376450, 0.568294, -0.731661,
		-0.879043, -0.468474, 0.088408,
		34.953018, 45.886055, 46.067451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166939, 46.608463, 46.274311>,  <35.568348, 46.213985, 46.005566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166939, 46.608463, 46.274311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.898010, 46.313217, 46.296844>,  <34.736652, 46.136070, 46.310364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.898010, 46.313217, 46.296844>,  <35.166939, 46.608463, 46.274311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898010, 46.313217, 46.296844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478180, 0.491129, 0.728105,
		-0.565089, 0.462585, -0.683147,
		-0.672323, -0.738111, 0.056332,
		34.696312, 46.091785, 46.313744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493057, 46.864651, 46.227440>,  <35.166939, 46.608463, 46.274311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493057, 46.864651, 46.227440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.448883, 46.520298, 46.426113>,  <34.422379, 46.313686, 46.545319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.448883, 46.520298, 46.426113>,  <34.493057, 46.864651, 46.227440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448883, 46.520298, 46.426113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533446, 0.472999, 0.701219,
		-0.838594, -0.187516, -0.511466,
		-0.110433, -0.860877, 0.496683,
		34.415752, 46.262035, 46.575119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862247, 46.830341, 46.509262>,  <34.493057, 46.864651, 46.227440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862247, 46.830341, 46.509262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094326, 46.595142, 46.734695>,  <34.233574, 46.454021, 46.869957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094326, 46.595142, 46.734695>,  <33.862247, 46.830341, 46.509262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094326, 46.595142, 46.734695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325763, 0.466673, 0.822250,
		-0.746494, -0.660660, 0.079211,
		0.580193, -0.588001, 0.563588,
		34.268383, 46.418743, 46.903770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444557, 46.621422, 47.056873>,  <33.862247, 46.830341, 46.509262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444557, 46.621422, 47.056873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826900, 46.584164, 47.168343>,  <34.056305, 46.561810, 47.235226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826900, 46.584164, 47.168343>,  <33.444557, 46.621422, 47.056873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826900, 46.584164, 47.168343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170027, 0.598171, 0.783124,
		-0.239642, -0.795937, 0.555928,
		0.955857, -0.093147, 0.278678,
		34.113659, 46.556221, 47.251945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502464, 46.327847, 47.843338>,  <33.444557, 46.621422, 47.056873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502464, 46.327847, 47.843338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807861, 46.561638, 47.733463>,  <33.991100, 46.701912, 47.667538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807861, 46.561638, 47.733463>,  <33.502464, 46.327847, 47.843338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807861, 46.561638, 47.733463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256638, 0.664903, 0.701456,
		0.592627, -0.465066, 0.657652,
		0.763499, 0.584480, -0.274686,
		34.036911, 46.736984, 47.651058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923321, 46.102303, 47.346081>,  <33.502464, 46.327847, 47.843338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923321, 46.102303, 47.346081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541039, 46.021339, 47.260605>,  <32.311668, 45.972759, 47.209320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541039, 46.021339, 47.260605>,  <32.923321, 46.102303, 47.346081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541039, 46.021339, 47.260605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276353, -0.866954, -0.414752,
		-0.101310, -0.455433, 0.884487,
		-0.955701, -0.202412, -0.213691,
		32.254330, 45.960617, 47.196499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836075, 45.328140, 47.490887>,  <32.923321, 46.102303, 47.346081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836075, 45.328140, 47.490887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522942, 45.436634, 47.266884>,  <32.335060, 45.501732, 47.132484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522942, 45.436634, 47.266884>,  <32.836075, 45.328140, 47.490887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522942, 45.436634, 47.266884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074409, -0.852726, -0.517032,
		-0.617766, -0.446420, 0.647360,
		-0.782833, 0.271235, -0.560002,
		32.288090, 45.518005, 47.098885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272079, 44.860268, 47.627316>,  <32.836075, 45.328140, 47.490887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272079, 44.860268, 47.627316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217079, 44.981403, 47.250088>,  <32.184078, 45.054085, 47.023750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217079, 44.981403, 47.250088>,  <32.272079, 44.860268, 47.627316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217079, 44.981403, 47.250088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052348, -0.948561, -0.312238,
		-0.989118, -0.092300, 0.114570,
		-0.137496, 0.302842, -0.943070,
		32.175831, 45.072254, 46.967167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742977, 44.356228, 47.380123>,  <32.272079, 44.860268, 47.627316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742977, 44.356228, 47.380123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.868015, 44.533215, 47.043907>,  <31.943039, 44.639404, 46.842178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.868015, 44.533215, 47.043907>,  <31.742977, 44.356228, 47.380123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868015, 44.533215, 47.043907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092379, -0.866531, -0.490499,
		-0.945383, 0.230976, -0.230000,
		0.312596, 0.442463, -0.840542,
		31.961794, 44.665955, 46.791744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346987, 44.108688, 46.836861>,  <31.742977, 44.356228, 47.380123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346987, 44.108688, 46.836861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665720, 44.238297, 46.632874>,  <31.856960, 44.316063, 46.510483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.665720, 44.238297, 46.632874>,  <31.346987, 44.108688, 46.836861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665720, 44.238297, 46.632874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003012, -0.846158, -0.532924,
		-0.604193, 0.423115, -0.675222,
		0.796833, 0.324022, -0.509968,
		31.904770, 44.335503, 46.479881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214512, 43.974205, 46.120098>,  <31.346987, 44.108688, 46.836861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214512, 43.974205, 46.120098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.609184, 44.017536, 46.168640>,  <31.845987, 44.043533, 46.197765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.609184, 44.017536, 46.168640>,  <31.214512, 43.974205, 46.120098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609184, 44.017536, 46.168640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162002, -0.721824, -0.672849,
		0.014706, 0.683547, -0.729759,
		0.986681, 0.108327, 0.121351,
		31.905188, 44.050034, 46.205044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406584, 43.990822, 45.450829>,  <31.214512, 43.974205, 46.120098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406584, 43.990822, 45.450829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725765, 43.878922, 45.664375>,  <31.917274, 43.811783, 45.792503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.725765, 43.878922, 45.664375>,  <31.406584, 43.990822, 45.450829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725765, 43.878922, 45.664375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264805, -0.632969, -0.727481,
		0.541432, 0.721865, -0.431000,
		0.797953, -0.279751, 0.533863,
		31.965151, 43.794994, 45.824535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773468, 43.727825, 44.925976>,  <31.406584, 43.990822, 45.450829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773468, 43.727825, 44.925976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000870, 43.622890, 45.237869>,  <32.137310, 43.559929, 45.425003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000870, 43.622890, 45.237869>,  <31.773468, 43.727825, 44.925976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000870, 43.622890, 45.237869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529182, -0.609079, -0.590753,
		0.629897, 0.748465, -0.207438,
		0.568504, -0.262341, 0.779731,
		32.171421, 43.544189, 45.471790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425034, 43.854321, 44.689621>,  <31.773468, 43.727825, 44.925976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425034, 43.854321, 44.689621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433842, 43.588947, 44.988789>,  <32.439129, 43.429726, 45.168289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433842, 43.588947, 44.988789>,  <32.425034, 43.854321, 44.689621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433842, 43.588947, 44.988789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360507, -0.692496, -0.624887,
		0.932497, 0.283391, 0.223920,
		0.022024, -0.663430, 0.747914,
		32.440449, 43.389919, 45.213161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128002, 43.707886, 44.815907>,  <32.425034, 43.854321, 44.689621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128002, 43.707886, 44.815907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902100, 43.403404, 44.943417>,  <32.766560, 43.220715, 45.019920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902100, 43.403404, 44.943417>,  <33.128002, 43.707886, 44.815907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902100, 43.403404, 44.943417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555146, -0.636229, -0.535748,
		0.610626, -0.125603, 0.781895,
		-0.564756, -0.761207, 0.318770,
		32.732674, 43.175041, 45.039047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630684, 43.157005, 44.825314>,  <33.128002, 43.707886, 44.815907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630684, 43.157005, 44.825314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.261284, 43.004475, 44.808681>,  <33.039642, 42.912956, 44.798702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.261284, 43.004475, 44.808681>,  <33.630684, 43.157005, 44.825314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261284, 43.004475, 44.808681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308476, -0.673859, -0.671384,
		0.228001, -0.632852, 0.739942,
		-0.923503, -0.381330, -0.041579,
		32.984234, 42.890076, 44.796207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726353, 42.491184, 44.681854>,  <33.630684, 43.157005, 44.825314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726353, 42.491184, 44.681854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.340343, 42.530052, 44.584454>,  <33.108738, 42.553375, 44.526012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.340343, 42.530052, 44.584454>,  <33.726353, 42.491184, 44.681854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340343, 42.530052, 44.584454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159384, -0.519988, -0.839172,
		-0.208161, -0.848628, 0.486311,
		-0.965021, 0.097173, -0.243499,
		33.050838, 42.559204, 44.511402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798908, 42.209866, 44.120438>,  <33.726353, 42.491184, 44.681854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798908, 42.209866, 44.120438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406582, 42.270081, 44.070911>,  <33.171185, 42.306210, 44.041195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406582, 42.270081, 44.070911>,  <33.798908, 42.209866, 44.120438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406582, 42.270081, 44.070911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075381, -0.292856, -0.953180,
		-0.179750, -0.944232, 0.275892,
		-0.980820, 0.150537, -0.123818,
		33.112335, 42.315243, 44.033768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588116, 41.545826, 43.742390>,  <33.798908, 42.209866, 44.120438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588116, 41.545826, 43.742390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311760, 41.830658, 43.692425>,  <33.145947, 42.001556, 43.662445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311760, 41.830658, 43.692425>,  <33.588116, 41.545826, 43.742390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311760, 41.830658, 43.692425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049823, -0.125472, -0.990845,
		-0.721239, -0.690791, 0.051209,
		-0.690892, 0.712085, -0.124912,
		33.104492, 42.044285, 43.654949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898548, 41.314240, 43.381721>,  <33.588116, 41.545826, 43.742390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898548, 41.314240, 43.381721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975403, 41.699532, 43.306599>,  <33.021515, 41.930706, 43.261524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975403, 41.699532, 43.306599>,  <32.898548, 41.314240, 43.381721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975403, 41.699532, 43.306599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040194, -0.183492, -0.982199,
		-0.980545, 0.196264, 0.003461,
		0.192135, 0.963230, -0.187811,
		33.033043, 41.988499, 43.250256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511292, 41.464558, 42.775879>,  <32.898548, 41.314240, 43.381721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511292, 41.464558, 42.775879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747025, 41.786854, 42.799423>,  <32.888466, 41.980232, 42.813549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747025, 41.786854, 42.799423>,  <32.511292, 41.464558, 42.775879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747025, 41.786854, 42.799423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063188, 0.026662, -0.997645,
		-0.805416, 0.591663, -0.035200,
		0.589332, 0.805744, 0.058860,
		32.923824, 42.028576, 42.817081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273811, 41.942780, 42.226181>,  <32.511292, 41.464558, 42.775879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273811, 41.942780, 42.226181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649124, 42.040852, 42.323769>,  <32.874310, 42.099697, 42.382320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649124, 42.040852, 42.323769>,  <32.273811, 41.942780, 42.226181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649124, 42.040852, 42.323769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190924, 0.221016, -0.956399,
		-0.288414, 0.943947, 0.160563,
		0.938278, 0.245184, 0.243967,
		32.930607, 42.114407, 42.396957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359943, 42.493515, 41.799767>,  <32.273811, 41.942780, 42.226181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359943, 42.493515, 41.799767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705990, 42.307171, 41.874115>,  <32.913616, 42.195366, 41.918724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705990, 42.307171, 41.874115>,  <32.359943, 42.493515, 41.799767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705990, 42.307171, 41.874115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196074, -0.026968, -0.980218,
		0.461657, 0.884447, 0.068013,
		0.865117, -0.465860, 0.185867,
		32.965527, 42.167412, 41.929874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865364, 42.864868, 41.389439>,  <32.359943, 42.493515, 41.799767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865364, 42.864868, 41.389439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051426, 42.520264, 41.470856>,  <33.163063, 42.313499, 41.519707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051426, 42.520264, 41.470856>,  <32.865364, 42.864868, 41.389439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051426, 42.520264, 41.470856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348891, -0.032905, -0.936586,
		0.813576, 0.506672, 0.285267,
		0.465155, -0.861511, 0.203544,
		33.190971, 42.261810, 41.531918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484543, 42.892223, 41.090450>,  <32.865364, 42.864868, 41.389439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484543, 42.892223, 41.090450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438297, 42.497051, 41.131699>,  <33.410549, 42.259949, 41.156448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.438297, 42.497051, 41.131699>,  <33.484543, 42.892223, 41.090450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438297, 42.497051, 41.131699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422005, -0.142832, -0.895272,
		0.899192, -0.059985, 0.433423,
		-0.115610, -0.987928, 0.103119,
		33.403614, 42.200672, 41.162636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.626881, 37.986290, 28.350700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634693, 38.381805, 28.409914>,  <42.639381, 38.619114, 28.445442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634693, 38.381805, 28.409914>,  <42.626881, 37.986290, 28.350700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634693, 38.381805, 28.409914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034178, -0.148637, 0.988301,
		0.999225, -0.014241, -0.036697,
		0.019529, 0.988789, 0.148035,
		42.640553, 38.678444, 28.454325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240749, 38.113613, 28.753429>,  <42.626881, 37.986290, 28.350700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240749, 38.113613, 28.753429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977322, 38.410973, 28.800138>,  <42.819263, 38.589390, 28.828165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977322, 38.410973, 28.800138>,  <43.240749, 38.113613, 28.753429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977322, 38.410973, 28.800138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023628, -0.134674, 0.990608,
		0.752145, 0.655148, 0.071127,
		-0.658574, 0.743401, 0.116774,
		42.779751, 38.633991, 28.835171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508713, 38.559742, 29.154099>,  <43.240749, 38.113613, 28.753429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508713, 38.559742, 29.154099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119621, 38.642242, 29.196541>,  <42.886166, 38.691742, 29.222006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119621, 38.642242, 29.196541>,  <43.508713, 38.559742, 29.154099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119621, 38.642242, 29.196541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114042, 0.026933, 0.993111,
		0.201977, 0.978127, -0.049721,
		-0.972728, 0.206256, 0.106108,
		42.827805, 38.704121, 29.228373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484795, 39.172234, 29.658762>,  <43.508713, 38.559742, 29.154099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484795, 39.172234, 29.658762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133633, 38.982658, 29.631464>,  <42.922935, 38.868912, 29.615086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133633, 38.982658, 29.631464>,  <43.484795, 39.172234, 29.658762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133633, 38.982658, 29.631464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015603, -0.170758, 0.985190,
		-0.478576, 0.863840, 0.157304,
		-0.877907, -0.473943, -0.068243,
		42.870262, 38.840477, 29.610991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979736, 39.557571, 30.106758>,  <43.484795, 39.172234, 29.658762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979736, 39.557571, 30.106758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872410, 39.177574, 30.042864>,  <42.808014, 38.949574, 30.004528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872410, 39.177574, 30.042864>,  <42.979736, 39.557571, 30.106758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872410, 39.177574, 30.042864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006967, -0.163897, 0.986453,
		-0.963305, 0.265796, 0.037358,
		-0.268318, -0.949995, -0.159735,
		42.791916, 38.892574, 29.994944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357983, 39.465317, 30.566679>,  <42.979736, 39.557571, 30.106758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357983, 39.465317, 30.566679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539860, 39.118835, 30.483793>,  <42.648987, 38.910946, 30.434061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539860, 39.118835, 30.483793>,  <42.357983, 39.465317, 30.566679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539860, 39.118835, 30.483793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012289, -0.226531, 0.973926,
		-0.890563, -0.445384, -0.092357,
		0.454693, -0.866208, -0.207214,
		42.676270, 38.858974, 30.421629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242809, 39.067940, 31.196154>,  <42.357983, 39.465317, 30.566679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242809, 39.067940, 31.196154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.502266, 38.844795, 30.989059>,  <42.657940, 38.710907, 30.864803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.502266, 38.844795, 30.989059>,  <42.242809, 39.067940, 31.196154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502266, 38.844795, 30.989059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169870, -0.556977, 0.812970,
		-0.741895, -0.615274, -0.266514,
		0.648641, -0.557866, -0.517736,
		42.696857, 38.677437, 30.833738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077518, 38.464031, 31.461843>,  <42.242809, 39.067940, 31.196154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077518, 38.464031, 31.461843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437641, 38.430119, 31.291073>,  <42.653713, 38.409771, 31.188610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437641, 38.430119, 31.291073>,  <42.077518, 38.464031, 31.461843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437641, 38.430119, 31.291073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331705, -0.501450, 0.799074,
		-0.281830, -0.861023, -0.423334,
		0.900302, -0.084781, -0.426929,
		42.707733, 38.404686, 31.162994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244236, 37.818748, 31.557520>,  <42.077518, 38.464031, 31.461843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244236, 37.818748, 31.557520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604294, 37.973629, 31.477711>,  <42.820328, 38.066559, 31.429825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604294, 37.973629, 31.477711>,  <42.244236, 37.818748, 31.557520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604294, 37.973629, 31.477711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420437, -0.652581, 0.630374,
		0.113878, -0.651316, -0.750213,
		0.900147, 0.387203, -0.199522,
		42.874336, 38.089790, 31.417854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778015, 37.263538, 31.453503>,  <42.244236, 37.818748, 31.557520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778015, 37.263538, 31.453503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977936, 37.590050, 31.569355>,  <43.097889, 37.785957, 31.638866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977936, 37.590050, 31.569355>,  <42.778015, 37.263538, 31.453503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977936, 37.590050, 31.569355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578292, -0.563429, 0.590022,
		0.644810, -0.127402, -0.753650,
		0.499799, 0.816282, 0.289629,
		43.127876, 37.834934, 31.656244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412560, 36.940617, 31.505371>,  <42.778015, 37.263538, 31.453503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412560, 36.940617, 31.505371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422325, 37.281353, 31.714663>,  <43.428185, 37.485794, 31.840239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422325, 37.281353, 31.714663>,  <43.412560, 36.940617, 31.505371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422325, 37.281353, 31.714663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543490, -0.450591, 0.708227,
		0.839061, 0.267083, -0.473966,
		0.024410, 0.851842, 0.523230,
		43.429649, 37.536907, 31.871632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166088, 37.177635, 31.657328>,  <43.412560, 36.940617, 31.505371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166088, 37.177635, 31.657328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924244, 37.356693, 31.920860>,  <43.779137, 37.464127, 32.078979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.924244, 37.356693, 31.920860>,  <44.166088, 37.177635, 31.657328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924244, 37.356693, 31.920860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655364, -0.190535, 0.730886,
		0.452706, 0.873678, -0.178169,
		-0.604612, 0.447642, 0.658833,
		43.742859, 37.490986, 32.118511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644459, 37.665615, 31.999535>,  <44.166088, 37.177635, 31.657328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644459, 37.665615, 31.999535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320946, 37.612206, 32.228634>,  <44.126839, 37.580158, 32.366093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320946, 37.612206, 32.228634>,  <44.644459, 37.665615, 31.999535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320946, 37.612206, 32.228634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588107, -0.181762, 0.788094,
		-0.001127, 0.974235, 0.225534,
		-0.808782, -0.133526, 0.572750,
		44.078312, 37.572147, 32.400459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732220, 38.118340, 32.584858>,  <44.644459, 37.665615, 31.999535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732220, 38.118340, 32.584858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478271, 37.831028, 32.698704>,  <44.325901, 37.658642, 32.767014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478271, 37.831028, 32.698704>,  <44.732220, 38.118340, 32.584858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478271, 37.831028, 32.698704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623099, -0.258194, 0.738298,
		-0.456819, 0.646071, 0.611481,
		-0.634874, -0.718281, 0.284618,
		44.287807, 37.615543, 32.784088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715603, 38.085407, 33.366161>,  <44.732220, 38.118340, 32.584858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715603, 38.085407, 33.366161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553383, 37.729198, 33.283688>,  <44.456051, 37.515472, 33.234203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553383, 37.729198, 33.283688>,  <44.715603, 38.085407, 33.366161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553383, 37.729198, 33.283688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487408, -0.401495, 0.775394,
		-0.773282, 0.213965, 0.596871,
		-0.405547, -0.890517, -0.206180,
		44.431717, 37.462044, 33.221832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560730, 37.790524, 34.070988>,  <44.715603, 38.085407, 33.366161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560730, 37.790524, 34.070988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565701, 37.500740, 33.795303>,  <44.568684, 37.326870, 33.629894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565701, 37.500740, 33.795303>,  <44.560730, 37.790524, 34.070988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565701, 37.500740, 33.795303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492580, -0.595392, 0.634723,
		-0.870178, -0.347378, 0.349454,
		0.012427, -0.724456, -0.689209,
		44.569427, 37.283401, 33.588539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364536, 37.281097, 34.421047>,  <44.560730, 37.790524, 34.070988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364536, 37.281097, 34.421047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576275, 37.145851, 34.109798>,  <44.703320, 37.064705, 33.923050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576275, 37.145851, 34.109798>,  <44.364536, 37.281097, 34.421047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576275, 37.145851, 34.109798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476001, -0.640841, 0.602284,
		-0.702291, -0.689204, -0.178285,
		0.529349, -0.338114, -0.778119,
		44.735081, 37.044418, 33.876362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295044, 36.516445, 34.390915>,  <44.364536, 37.281097, 34.421047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295044, 36.516445, 34.390915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623333, 36.592747, 34.175499>,  <44.820305, 36.638527, 34.046249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623333, 36.592747, 34.175499>,  <44.295044, 36.516445, 34.390915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623333, 36.592747, 34.175499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529026, -0.609678, 0.590275,
		-0.215741, -0.769355, -0.601289,
		0.820724, 0.190751, -0.538541,
		44.869549, 36.649971, 34.013935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693043, 35.876099, 34.463737>,  <44.295044, 36.516445, 34.390915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693043, 35.876099, 34.463737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980011, 36.113785, 34.318291>,  <45.152191, 36.256397, 34.231022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980011, 36.113785, 34.318291>,  <44.693043, 35.876099, 34.463737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980011, 36.113785, 34.318291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694823, -0.648042, 0.311870,
		-0.050317, -0.476387, -0.877795,
		0.717419, 0.594219, -0.363612,
		45.195236, 36.292049, 34.209206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253738, 35.431202, 34.082123>,  <44.693043, 35.876099, 34.463737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253738, 35.431202, 34.082123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408497, 35.776905, 34.210724>,  <45.501350, 35.984329, 34.287884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408497, 35.776905, 34.210724>,  <45.253738, 35.431202, 34.082123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408497, 35.776905, 34.210724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766933, -0.495170, 0.408193,
		0.511984, 0.088644, -0.854409,
		0.386894, 0.864262, 0.321503,
		45.524567, 36.036182, 34.307175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924896, 35.438465, 33.992599>,  <45.253738, 35.431202, 34.082123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924896, 35.438465, 33.992599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872570, 35.685604, 34.302734>,  <45.841175, 35.833889, 34.488815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872570, 35.685604, 34.302734>,  <45.924896, 35.438465, 33.992599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872570, 35.685604, 34.302734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788904, -0.408772, 0.458842,
		0.600432, 0.671693, -0.433948,
		-0.130815, 0.617846, 0.775341,
		45.833324, 35.870956, 34.535336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346939, 35.482876, 33.486084>,  <45.924896, 35.438465, 33.992599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346939, 35.482876, 33.486084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.703957, 35.423763, 33.315662>,  <46.918167, 35.388294, 33.213409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.703957, 35.423763, 33.315662>,  <46.346939, 35.482876, 33.486084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703957, 35.423763, 33.315662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397760, 0.187177, -0.898193,
		0.212485, 0.971146, 0.108282,
		0.892545, -0.147783, -0.426056,
		46.971722, 35.379429, 33.187847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630867, 36.009621, 32.994930>,  <46.346939, 35.482876, 33.486084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630867, 36.009621, 32.994930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.795101, 35.665142, 32.875088>,  <46.893642, 35.458454, 32.803181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.795101, 35.665142, 32.875088>,  <46.630867, 36.009621, 32.994930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795101, 35.665142, 32.875088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319255, 0.172010, -0.931928,
		0.854106, 0.478286, -0.204316,
		0.410584, -0.861194, -0.299609,
		46.918278, 35.406784, 32.785206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936867, 36.203793, 32.466270>,  <46.630867, 36.009621, 32.994930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936867, 36.203793, 32.466270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.930336, 35.808395, 32.406105>,  <46.926418, 35.571159, 32.370007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.930336, 35.808395, 32.406105>,  <46.936867, 36.203793, 32.466270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.930336, 35.808395, 32.406105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120784, 0.151282, -0.981084,
		0.992545, 0.002152, -0.121863,
		-0.016324, -0.988488, -0.150414,
		46.925438, 35.511848, 32.360981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187557, 36.140156, 31.793661>,  <46.936867, 36.203793, 32.466270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187557, 36.140156, 31.793661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.037544, 35.770470, 31.822416>,  <46.947536, 35.548656, 31.839670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.037544, 35.770470, 31.822416>,  <47.187557, 36.140156, 31.793661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037544, 35.770470, 31.822416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128452, -0.024990, -0.991401,
		0.918068, -0.381043, -0.109345,
		-0.375034, -0.924219, 0.071888,
		46.925034, 35.493202, 31.843983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.547993, 35.796787, 31.330259>,  <47.187557, 36.140156, 31.793661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.547993, 35.796787, 31.330259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.219063, 35.578465, 31.394606>,  <47.021706, 35.447472, 31.433214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.219063, 35.578465, 31.394606>,  <47.547993, 35.796787, 31.330259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219063, 35.578465, 31.394606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124023, -0.103989, -0.986815,
		0.555337, -0.831435, 0.017820,
		-0.822325, -0.545805, 0.160866,
		46.972366, 35.414722, 31.442865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.579662, 35.226437, 30.840790>,  <47.547993, 35.796787, 31.330259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.579662, 35.226437, 30.840790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.202866, 35.263618, 30.969797>,  <46.976788, 35.285927, 31.047201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.202866, 35.263618, 30.969797>,  <47.579662, 35.226437, 30.840790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.202866, 35.263618, 30.969797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305031, 0.163851, -0.938141,
		-0.140049, -0.982096, -0.125991,
		-0.941988, 0.092955, 0.322517,
		46.920269, 35.291504, 31.066553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239799, 34.945999, 30.261322>,  <47.579662, 35.226437, 30.840790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239799, 34.945999, 30.261322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966919, 35.146271, 30.474459>,  <46.803188, 35.266434, 30.602341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966919, 35.146271, 30.474459>,  <47.239799, 34.945999, 30.261322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966919, 35.146271, 30.474459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556925, 0.116354, -0.822372,
		-0.473743, -0.857777, 0.199463,
		-0.682204, 0.500679, 0.532840,
		46.762257, 35.296474, 30.634310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579811, 34.774609, 30.009563>,  <47.239799, 34.945999, 30.261322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579811, 34.774609, 30.009563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.519814, 35.122627, 30.197403>,  <46.483814, 35.331436, 30.310106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.519814, 35.122627, 30.197403>,  <46.579811, 34.774609, 30.009563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.519814, 35.122627, 30.197403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693287, 0.246071, -0.677349,
		-0.704878, -0.427168, 0.566280,
		-0.149997, 0.870044, 0.469600,
		46.474815, 35.383640, 30.338284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912384, 34.821625, 30.007040>,  <46.579811, 34.774609, 30.009563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912384, 34.821625, 30.007040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.029037, 35.201225, 30.054962>,  <46.099030, 35.428986, 30.083715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.029037, 35.201225, 30.054962>,  <45.912384, 34.821625, 30.007040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029037, 35.201225, 30.054962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694210, 0.296151, -0.656024,
		-0.658046, 0.108146, 0.745171,
		0.291629, 0.948999, 0.119805,
		46.116528, 35.485924, 30.090904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342438, 35.198536, 30.121143>,  <45.912384, 34.821625, 30.007040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342438, 35.198536, 30.121143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.595829, 35.475277, 29.982552>,  <45.747864, 35.641319, 29.899397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.595829, 35.475277, 29.982552>,  <45.342438, 35.198536, 30.121143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595829, 35.475277, 29.982552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695723, 0.313321, -0.646374,
		-0.338634, 0.650518, 0.679818,
		0.633480, 0.691850, -0.346480,
		45.785873, 35.682831, 29.878607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924309, 35.758591, 30.073479>,  <45.342438, 35.198536, 30.121143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924309, 35.758591, 30.073479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250175, 35.853279, 29.861712>,  <45.445694, 35.910091, 29.734652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250175, 35.853279, 29.861712>,  <44.924309, 35.758591, 30.073479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250175, 35.853279, 29.861712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561417, 0.550746, -0.617649,
		0.145365, 0.800402, 0.581572,
		0.814665, 0.236720, -0.529418,
		45.494576, 35.924294, 29.702887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012749, 36.545609, 30.072472>,  <44.924309, 35.758591, 30.073479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012749, 36.545609, 30.072472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181049, 36.384579, 29.747288>,  <45.282028, 36.287960, 29.552177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181049, 36.384579, 29.747288>,  <45.012749, 36.545609, 30.072472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181049, 36.384579, 29.747288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535732, 0.612927, -0.580785,
		0.732093, 0.679895, 0.042219,
		0.420750, -0.402571, -0.812962,
		45.307274, 36.263809, 29.503399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003319, 37.100601, 29.594923>,  <45.012749, 36.545609, 30.072472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003319, 37.100601, 29.594923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093582, 36.806362, 29.339430>,  <45.147739, 36.629818, 29.186134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093582, 36.806362, 29.339430>,  <45.003319, 37.100601, 29.594923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093582, 36.806362, 29.339430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514543, 0.466742, -0.719304,
		0.827239, 0.490973, -0.273170,
		0.225659, -0.735593, -0.638733,
		45.161282, 36.585686, 29.147810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261089, 37.404301, 29.009865>,  <45.003319, 37.100601, 29.594923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261089, 37.404301, 29.009865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147301, 37.052734, 28.856720>,  <45.079025, 36.841797, 28.764833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147301, 37.052734, 28.856720>,  <45.261089, 37.404301, 29.009865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147301, 37.052734, 28.856720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526787, 0.476979, -0.703554,
		0.800981, 0.001544, -0.598688,
		-0.284475, -0.878914, -0.382864,
		45.061958, 36.789059, 28.741861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472633, 37.440765, 28.403934>,  <45.261089, 37.404301, 29.009865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472633, 37.440765, 28.403934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184093, 37.163742, 28.402195>,  <45.010971, 36.997528, 28.401152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.184093, 37.163742, 28.402195>,  <45.472633, 37.440765, 28.403934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184093, 37.163742, 28.402195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529850, 0.555895, -0.640499,
		0.445999, -0.459720, -0.767946,
		-0.721349, -0.692559, -0.004346,
		44.967690, 36.955975, 28.400890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368557, 37.289940, 27.683311>,  <45.472633, 37.440765, 28.403934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368557, 37.289940, 27.683311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.029755, 37.157822, 27.849918>,  <44.826473, 37.078548, 27.949883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.029755, 37.157822, 27.849918>,  <45.368557, 37.289940, 27.683311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029755, 37.157822, 27.849918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519172, 0.345635, -0.781663,
		0.114220, -0.878316, -0.464237,
		-0.847003, -0.330300, 0.416519,
		44.775654, 37.058731, 27.974874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978397, 37.001057, 27.143780>,  <45.368557, 37.289940, 27.683311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978397, 37.001057, 27.143780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716599, 37.080173, 27.435671>,  <44.559517, 37.127644, 27.610806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.716599, 37.080173, 27.435671>,  <44.978397, 37.001057, 27.143780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716599, 37.080173, 27.435671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556602, 0.527153, -0.642109,
		-0.511686, -0.826430, -0.234928,
		-0.654501, 0.197797, 0.729729,
		44.520248, 37.139511, 27.654591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282520, 36.767593, 26.817001>,  <44.978397, 37.001057, 27.143780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282520, 36.767593, 26.817001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216946, 37.008522, 27.129498>,  <44.177601, 37.153080, 27.316996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216946, 37.008522, 27.129498>,  <44.282520, 36.767593, 26.817001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216946, 37.008522, 27.129498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682445, 0.502611, -0.530708,
		-0.712315, -0.620157, 0.328651,
		-0.163939, 0.602318, 0.781241,
		44.167763, 37.189217, 27.363871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517925, 36.843933, 26.863516>,  <44.282520, 36.767593, 26.817001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517925, 36.843933, 26.863516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706451, 37.153008, 27.033602>,  <43.819569, 37.338451, 27.135654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706451, 37.153008, 27.033602>,  <43.517925, 36.843933, 26.863516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706451, 37.153008, 27.033602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579977, 0.634756, -0.510599,
		-0.664443, -0.005961, 0.747315,
		0.471319, 0.772690, 0.425216,
		43.847847, 37.384815, 27.161167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916084, 37.279152, 26.981533>,  <43.517925, 36.843933, 26.863516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916084, 37.279152, 26.981533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239063, 37.511585, 27.022263>,  <43.432850, 37.651047, 27.046701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239063, 37.511585, 27.022263>,  <42.916084, 37.279152, 26.981533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239063, 37.511585, 27.022263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375560, 0.639420, -0.670893,
		-0.454956, 0.503468, 0.734530,
		0.807446, 0.581087, 0.101825,
		43.481297, 37.685913, 27.052811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714897, 38.008343, 27.087460>,  <42.916084, 37.279152, 26.981533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714897, 38.008343, 27.087460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085964, 37.995705, 26.938633>,  <43.308605, 37.988121, 26.849337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085964, 37.995705, 26.938633>,  <42.714897, 38.008343, 27.087460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085964, 37.995705, 26.938633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201700, 0.796142, -0.570505,
		0.314246, 0.604285, 0.732181,
		0.927667, -0.031598, -0.372068,
		43.364265, 37.986225, 26.827013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.459740, 40.514240, 39.499386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122021, 40.315022, 39.420280>,  <38.919388, 40.195492, 39.372818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122021, 40.315022, 39.420280>,  <39.459740, 40.514240, 39.499386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122021, 40.315022, 39.420280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510949, -0.636948, -0.577259,
		0.161534, -0.588428, 0.792250,
		-0.844297, -0.498046, -0.197768,
		38.868732, 40.165607, 39.360950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587494, 39.878620, 39.656853>,  <39.459740, 40.514240, 39.499386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587494, 39.878620, 39.656853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277054, 39.853142, 39.405899>,  <39.090790, 39.837856, 39.255325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277054, 39.853142, 39.405899>,  <39.587494, 39.878620, 39.656853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277054, 39.853142, 39.405899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470832, -0.720368, -0.509301,
		-0.419510, -0.690661, 0.589066,
		-0.776099, -0.063694, -0.627387,
		39.044224, 39.834034, 39.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527603, 39.173515, 39.555687>,  <39.587494, 39.878620, 39.656853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527603, 39.173515, 39.555687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303879, 39.330849, 39.263805>,  <39.169643, 39.425251, 39.088676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303879, 39.330849, 39.263805>,  <39.527603, 39.173515, 39.555687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303879, 39.330849, 39.263805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104991, -0.839559, -0.533027,
		-0.822281, -0.374741, 0.428280,
		-0.559313, 0.393332, -0.729697,
		39.136086, 39.448849, 39.044895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994545, 38.723297, 39.481743>,  <39.527603, 39.173515, 39.555687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994545, 38.723297, 39.481743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021633, 38.931927, 39.141537>,  <39.037888, 39.057102, 38.937412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021633, 38.931927, 39.141537>,  <38.994545, 38.723297, 39.481743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021633, 38.931927, 39.141537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207981, -0.841124, -0.499253,
		-0.975786, -0.143081, -0.165439,
		0.067721, 0.521572, -0.850515,
		39.041950, 39.088398, 38.886383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712688, 38.290058, 38.981785>,  <38.994545, 38.723297, 39.481743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712688, 38.290058, 38.981785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955551, 38.555855, 38.807518>,  <39.101269, 38.715332, 38.702957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955551, 38.555855, 38.807518>,  <38.712688, 38.290058, 38.981785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955551, 38.555855, 38.807518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351665, -0.716396, -0.602584,
		-0.712524, 0.212655, -0.668646,
		0.607158, 0.664495, -0.435666,
		39.137699, 38.755203, 38.676819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570633, 38.130642, 38.309040>,  <38.712688, 38.290058, 38.981785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570633, 38.130642, 38.309040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924313, 38.317478, 38.306927>,  <39.136520, 38.429581, 38.305660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924313, 38.317478, 38.306927>,  <38.570633, 38.130642, 38.309040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924313, 38.317478, 38.306927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276149, -0.531800, -0.800581,
		-0.376751, 0.706411, -0.599201,
		0.884195, 0.467089, -0.005281,
		39.189571, 38.457603, 38.305344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640339, 38.208340, 37.647869>,  <38.570633, 38.130642, 38.309040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640339, 38.208340, 37.647869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021606, 38.270813, 37.751472>,  <39.250366, 38.308296, 37.813633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021606, 38.270813, 37.751472>,  <38.640339, 38.208340, 37.647869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021606, 38.270813, 37.751472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301166, -0.569019, -0.765190,
		0.027870, 0.807356, -0.589406,
		0.953164, 0.156184, 0.259007,
		39.307556, 38.317669, 37.829174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069752, 38.180378, 37.042946>,  <38.640339, 38.208340, 37.647869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069752, 38.180378, 37.042946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334572, 38.124287, 37.337433>,  <39.493465, 38.090633, 37.514126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334572, 38.124287, 37.337433>,  <39.069752, 38.180378, 37.042946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334572, 38.124287, 37.337433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572197, -0.539846, -0.617379,
		0.484021, 0.830001, -0.277167,
		0.662053, -0.140230, 0.736221,
		39.533188, 38.082218, 37.558300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738224, 38.357800, 36.858780>,  <39.069752, 38.180378, 37.042946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738224, 38.357800, 36.858780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779301, 38.097961, 37.160103>,  <39.803947, 37.942059, 37.340897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779301, 38.097961, 37.160103>,  <39.738224, 38.357800, 36.858780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779301, 38.097961, 37.160103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543389, -0.597695, -0.589482,
		0.833176, 0.469877, 0.291604,
		0.102694, -0.649597, 0.753311,
		39.810108, 37.903084, 37.386097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422428, 38.066391, 36.795498>,  <39.738224, 38.357800, 36.858780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422428, 38.066391, 36.795498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231800, 37.802204, 37.027592>,  <40.117424, 37.643692, 37.166847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231800, 37.802204, 37.027592>,  <40.422428, 38.066391, 36.795498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231800, 37.802204, 37.027592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527090, -0.742879, -0.412683,
		0.703604, 0.109163, 0.702157,
		-0.476568, -0.660465, 0.580232,
		40.088829, 37.604065, 37.201660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938988, 37.635387, 37.159874>,  <40.422428, 38.066391, 36.795498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938988, 37.635387, 37.159874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594723, 37.432373, 37.143547>,  <40.388165, 37.310562, 37.133751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594723, 37.432373, 37.143547>,  <40.938988, 37.635387, 37.159874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594723, 37.432373, 37.143547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433230, -0.687810, -0.582433,
		0.267531, -0.518962, 0.811853,
		-0.860662, -0.507538, -0.040819,
		40.336525, 37.280113, 37.131302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215771, 37.012409, 37.132095>,  <40.938988, 37.635387, 37.159874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215771, 37.012409, 37.132095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830170, 36.978367, 37.031334>,  <40.598808, 36.957943, 36.970875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830170, 36.978367, 37.031334>,  <41.215771, 37.012409, 37.132095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830170, 36.978367, 37.031334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202718, -0.848295, -0.489185,
		-0.172062, -0.522641, 0.835009,
		-0.964002, -0.085101, -0.251908,
		40.540970, 36.952835, 36.955761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615337, 36.651649, 37.651699>,  <41.215771, 37.012409, 37.132095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615337, 36.651649, 37.651699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667995, 36.407738, 37.964325>,  <41.699589, 36.261391, 38.151901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667995, 36.407738, 37.964325>,  <41.615337, 36.651649, 37.651699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667995, 36.407738, 37.964325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515382, -0.715590, -0.471500,
		0.846789, -0.340735, -0.408470,
		0.131641, -0.609779, 0.781562,
		41.707489, 36.224804, 38.198795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162354, 37.236305, 37.822525>,  <41.615337, 36.651649, 37.651699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162354, 37.236305, 37.822525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204395, 37.278938, 38.218018>,  <42.229618, 37.304520, 38.455315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204395, 37.278938, 38.218018>,  <42.162354, 37.236305, 37.822525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204395, 37.278938, 38.218018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857798, -0.512731, -0.035909,
		0.503127, 0.851907, -0.145318,
		0.105100, 0.106586, 0.988733,
		42.235924, 37.310913, 38.514637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941761, 37.255413, 37.953712>,  <42.162354, 37.236305, 37.822525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941761, 37.255413, 37.953712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763996, 37.221760, 38.310455>,  <42.657337, 37.201569, 38.524502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763996, 37.221760, 38.310455>,  <42.941761, 37.255413, 37.953712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763996, 37.221760, 38.310455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741039, -0.593923, 0.313236,
		0.503345, 0.800111, 0.326291,
		-0.444415, -0.084129, 0.891862,
		42.630672, 37.196522, 38.578014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041344, 36.513744, 38.151169>,  <42.941761, 37.255413, 37.953712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041344, 36.513744, 38.151169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397182, 36.503510, 38.333580>,  <43.610687, 36.497368, 38.443027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397182, 36.503510, 38.333580>,  <43.041344, 36.513744, 38.151169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397182, 36.503510, 38.333580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407156, 0.408018, 0.817157,
		-0.206978, -0.912615, 0.352553,
		0.889598, -0.025589, 0.456028,
		43.664062, 36.495834, 38.470387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046021, 36.030411, 38.713154>,  <43.041344, 36.513744, 38.151169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046021, 36.030411, 38.713154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301918, 36.327118, 38.793674>,  <43.455456, 36.505142, 38.841988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301918, 36.327118, 38.793674>,  <43.046021, 36.030411, 38.713154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301918, 36.327118, 38.793674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535218, 0.241974, 0.809314,
		0.551611, -0.625488, 0.551806,
		0.639739, 0.741764, 0.201297,
		43.493839, 36.549648, 38.854065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269184, 35.889500, 39.385811>,  <43.046021, 36.030411, 38.713154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269184, 35.889500, 39.385811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369919, 36.275459, 39.356014>,  <43.430359, 36.507034, 39.338135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369919, 36.275459, 39.356014>,  <43.269184, 35.889500, 39.385811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369919, 36.275459, 39.356014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544309, 0.204868, 0.813484,
		0.800192, -0.164314, 0.576796,
		0.251834, 0.964899, -0.074496,
		43.445469, 36.564930, 39.333664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187130, 36.174885, 40.095650>,  <43.269184, 35.889500, 39.385811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187130, 36.174885, 40.095650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193676, 36.510567, 39.878220>,  <43.197605, 36.711975, 39.747761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193676, 36.510567, 39.878220>,  <43.187130, 36.174885, 40.095650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193676, 36.510567, 39.878220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558116, 0.458736, 0.691424,
		0.829602, 0.292059, 0.475881,
		0.016367, 0.839203, -0.543571,
		43.198586, 36.762329, 39.715149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330830, 36.688377, 40.629784>,  <43.187130, 36.174885, 40.095650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330830, 36.688377, 40.629784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170109, 36.892151, 40.325405>,  <43.073677, 37.014416, 40.142776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170109, 36.892151, 40.325405>,  <43.330830, 36.688377, 40.629784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170109, 36.892151, 40.325405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441969, 0.619899, 0.648375,
		0.802010, 0.596831, -0.023924,
		-0.401801, 0.509429, -0.760945,
		43.049568, 37.044979, 40.097122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323254, 37.407547, 40.773937>,  <43.330830, 36.688377, 40.629784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323254, 37.407547, 40.773937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065830, 37.396656, 40.467972>,  <42.911377, 37.390121, 40.284393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065830, 37.396656, 40.467972>,  <43.323254, 37.407547, 40.773937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065830, 37.396656, 40.467972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610681, 0.620722, 0.491704,
		0.461407, 0.783558, -0.416102,
		-0.643562, -0.027230, -0.764910,
		42.872761, 37.388489, 40.238499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096848, 38.140720, 40.665108>,  <43.323254, 37.407547, 40.773937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096848, 38.140720, 40.665108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811218, 37.912323, 40.503090>,  <42.639839, 37.775284, 40.405880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811218, 37.912323, 40.503090>,  <43.096848, 38.140720, 40.665108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811218, 37.912323, 40.503090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698973, 0.549143, 0.458125,
		-0.039160, 0.610251, -0.791240,
		-0.714075, -0.570996, -0.405044,
		42.596996, 37.741024, 40.381577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589527, 38.610943, 40.412029>,  <43.096848, 38.140720, 40.665108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589527, 38.610943, 40.412029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388794, 38.265221, 40.425518>,  <42.268353, 38.057789, 40.433613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388794, 38.265221, 40.425518>,  <42.589527, 38.610943, 40.412029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388794, 38.265221, 40.425518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773343, 0.465800, 0.430084,
		-0.387431, 0.189753, -0.902159,
		-0.501835, -0.864306, 0.033721,
		42.238243, 38.005928, 40.435635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906918, 38.755821, 40.202553>,  <42.589527, 38.610943, 40.412029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906918, 38.755821, 40.202553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893494, 38.404964, 40.394173>,  <41.885441, 38.194450, 40.509144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893494, 38.404964, 40.394173>,  <41.906918, 38.755821, 40.202553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893494, 38.404964, 40.394173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834203, 0.288567, 0.469930,
		-0.550435, -0.383855, -0.741402,
		-0.033560, -0.877145, 0.479051,
		41.883427, 38.141819, 40.537888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334167, 38.511669, 40.040100>,  <41.906918, 38.755821, 40.202553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334167, 38.511669, 40.040100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427895, 38.295258, 40.363182>,  <41.484131, 38.165409, 40.557030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427895, 38.295258, 40.363182>,  <41.334167, 38.511669, 40.040100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427895, 38.295258, 40.363182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895052, 0.204221, 0.396454,
		-0.379444, -0.815831, -0.436398,
		0.234318, -0.541031, 0.807702,
		41.498188, 38.132950, 40.605492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732269, 38.016411, 40.167248>,  <41.334167, 38.511669, 40.040100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732269, 38.016411, 40.167248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950920, 38.051689, 40.500336>,  <41.082111, 38.072857, 40.700188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950920, 38.051689, 40.500336>,  <40.732269, 38.016411, 40.167248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950920, 38.051689, 40.500336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823346, 0.237883, 0.515280,
		-0.152644, -0.967281, 0.202649,
		0.546627, 0.088196, 0.832718,
		41.114910, 38.078148, 40.750153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317913, 37.694572, 40.667892>,  <40.732269, 38.016411, 40.167248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317913, 37.694572, 40.667892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567387, 37.942364, 40.858578>,  <40.717072, 38.091038, 40.972988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567387, 37.942364, 40.858578>,  <40.317913, 37.694572, 40.667892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567387, 37.942364, 40.858578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743876, 0.283021, 0.605431,
		0.240129, -0.732221, 0.637331,
		0.623687, 0.619477, 0.476720,
		40.754494, 38.128208, 41.001591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982433, 37.792892, 41.266399>,  <40.317913, 37.694572, 40.667892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982433, 37.792892, 41.266399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246952, 38.090107, 41.307556>,  <40.405663, 38.268436, 41.332249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246952, 38.090107, 41.307556>,  <39.982433, 37.792892, 41.266399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246952, 38.090107, 41.307556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607270, 0.449784, 0.654918,
		0.440341, -0.495585, 0.748662,
		0.661304, 0.743027, 0.102895,
		40.445343, 38.313015, 41.338421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616627, 37.438267, 41.821346>,  <39.982433, 37.792892, 41.266399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616627, 37.438267, 41.821346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290115, 37.247402, 41.951584>,  <39.094208, 37.132885, 42.029724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290115, 37.247402, 41.951584>,  <39.616627, 37.438267, 41.821346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290115, 37.247402, 41.951584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133343, -0.392772, -0.909917,
		0.562059, -0.786161, 0.256984,
		-0.816278, -0.477160, 0.325590,
		39.045231, 37.104256, 42.049259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712257, 36.701965, 41.548565>,  <39.616627, 37.438267, 41.821346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712257, 36.701965, 41.548565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323353, 36.742168, 41.633041>,  <39.090008, 36.766289, 41.683727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323353, 36.742168, 41.633041>,  <39.712257, 36.701965, 41.548565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323353, 36.742168, 41.633041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233397, -0.475332, -0.848284,
		0.015128, -0.874047, 0.485606,
		-0.972264, 0.100506, 0.211191,
		39.031673, 36.772320, 41.696400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435631, 36.102207, 41.452930>,  <39.712257, 36.701965, 41.548565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435631, 36.102207, 41.452930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106762, 36.329773, 41.445232>,  <38.909443, 36.466312, 41.440613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106762, 36.329773, 41.445232>,  <39.435631, 36.102207, 41.452930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106762, 36.329773, 41.445232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226245, -0.357610, -0.906051,
		-0.522351, -0.740573, 0.422731,
		-0.822169, 0.568918, -0.019247,
		38.860111, 36.500446, 41.439457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790054, 35.673714, 41.295830>,  <39.435631, 36.102207, 41.452930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790054, 35.673714, 41.295830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702763, 36.047813, 41.184345>,  <38.650387, 36.272274, 41.117455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702763, 36.047813, 41.184345>,  <38.790054, 35.673714, 41.295830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702763, 36.047813, 41.184345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220335, -0.325437, -0.919534,
		-0.950698, -0.139263, 0.277090,
		-0.218233, 0.935252, -0.278708,
		38.637291, 36.328388, 41.100735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208359, 35.548401, 40.938187>,  <38.790054, 35.673714, 41.295830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208359, 35.548401, 40.938187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342373, 35.905190, 40.816765>,  <38.422779, 36.119263, 40.743912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342373, 35.905190, 40.816765>,  <38.208359, 35.548401, 40.938187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342373, 35.905190, 40.816765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271318, -0.217195, -0.937664,
		-0.902296, 0.396509, 0.169239,
		0.335034, 0.891968, -0.303554,
		38.442883, 36.172779, 40.725700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730949, 35.726147, 40.543320>,  <38.208359, 35.548401, 40.938187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730949, 35.726147, 40.543320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034451, 35.947659, 40.406132>,  <38.216553, 36.080566, 40.323818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034451, 35.947659, 40.406132>,  <37.730949, 35.726147, 40.543320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034451, 35.947659, 40.406132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271471, -0.209780, -0.939306,
		-0.592115, 0.805806, -0.008836,
		0.758752, 0.553778, -0.342966,
		38.262077, 36.113792, 40.303242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378071, 36.057022, 40.045666>,  <37.730949, 35.726147, 40.543320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378071, 36.057022, 40.045666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772232, 36.098240, 39.991451>,  <38.008728, 36.122971, 39.958923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772232, 36.098240, 39.991451>,  <37.378071, 36.057022, 40.045666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772232, 36.098240, 39.991451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099936, -0.294464, -0.950423,
		-0.137843, 0.950092, -0.279867,
		0.985399, 0.103041, -0.135538,
		38.067852, 36.129150, 39.950790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410522, 36.686459, 39.589371>,  <37.378071, 36.057022, 40.045666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410522, 36.686459, 39.589371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709415, 36.421974, 39.562695>,  <37.888752, 36.263283, 39.546688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709415, 36.421974, 39.562695>,  <37.410522, 36.686459, 39.589371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709415, 36.421974, 39.562695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327012, -0.278473, -0.903059,
		0.578541, 0.696601, -0.424308,
		0.747230, -0.661210, -0.066689,
		37.933586, 36.223610, 39.542686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609406, 36.647373, 38.796051>,  <37.410522, 36.686459, 39.589371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609406, 36.647373, 38.796051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760002, 36.316189, 38.962296>,  <37.850361, 36.117477, 39.062042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760002, 36.316189, 38.962296>,  <37.609406, 36.647373, 38.796051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760002, 36.316189, 38.962296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324309, -0.538021, -0.778047,
		0.867800, 0.158143, -0.471076,
		0.376492, -0.827964, 0.415607,
		37.872952, 36.067799, 39.086979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050213, 36.454010, 38.259857>,  <37.609406, 36.647373, 38.796051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050213, 36.454010, 38.259857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029041, 36.122643, 38.482899>,  <38.016338, 35.923820, 38.616722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029041, 36.122643, 38.482899>,  <38.050213, 36.454010, 38.259857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029041, 36.122643, 38.482899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162401, -0.543808, -0.823346,
		0.985304, -0.134134, -0.105753,
		-0.052929, -0.828421, 0.557599,
		38.013161, 35.874115, 38.650177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416496, 35.890305, 37.973946>,  <38.050213, 36.454010, 38.259857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416496, 35.890305, 37.973946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149590, 35.723797, 38.221001>,  <37.989445, 35.623894, 38.369232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149590, 35.723797, 38.221001>,  <38.416496, 35.890305, 37.973946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149590, 35.723797, 38.221001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304109, -0.604707, -0.736103,
		0.679904, -0.679007, 0.276911,
		-0.667269, -0.416268, 0.617635,
		37.949409, 35.598915, 38.406292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385067, 35.250259, 37.945560>,  <38.416496, 35.890305, 37.973946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385067, 35.250259, 37.945560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005272, 35.340015, 38.033306>,  <37.777393, 35.393871, 38.085953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005272, 35.340015, 38.033306>,  <38.385067, 35.250259, 37.945560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005272, 35.340015, 38.033306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311607, -0.591575, -0.743599,
		-0.037088, -0.774394, 0.631616,
		-0.949487, 0.224395, 0.219366,
		37.720425, 35.407333, 38.099117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.119087, 38.314674, 45.346123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733299, 38.372826, 45.257893>,  <38.501827, 38.407719, 45.204956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733299, 38.372826, 45.257893>,  <39.119087, 38.314674, 45.346123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733299, 38.372826, 45.257893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032655, -0.762940, -0.645644,
		-0.262150, -0.629910, 0.731089,
		-0.964475, 0.145382, -0.220574,
		38.443958, 38.416439, 45.191719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846127, 37.637012, 45.377876>,  <39.119087, 38.314674, 45.346123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846127, 37.637012, 45.377876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611465, 37.874722, 45.157814>,  <38.470669, 38.017345, 45.025776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611465, 37.874722, 45.157814>,  <38.846127, 37.637012, 45.377876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611465, 37.874722, 45.157814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127412, -0.603152, -0.787384,
		-0.799751, -0.532020, 0.278125,
		-0.586656, 0.594274, -0.550157,
		38.435467, 38.053005, 44.992767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422348, 37.229591, 45.042336>,  <38.846127, 37.637012, 45.377876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422348, 37.229591, 45.042336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386772, 37.569347, 44.834251>,  <38.365425, 37.773201, 44.709400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386772, 37.569347, 44.834251>,  <38.422348, 37.229591, 45.042336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386772, 37.569347, 44.834251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353782, -0.461288, -0.813666,
		-0.931089, -0.256412, -0.259471,
		-0.088943, 0.849392, -0.520215,
		38.360088, 37.824165, 44.678188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936039, 37.121933, 44.471397>,  <38.422348, 37.229591, 45.042336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936039, 37.121933, 44.471397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140530, 37.442642, 44.347580>,  <38.263222, 37.635067, 44.273289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.140530, 37.442642, 44.347580>,  <37.936039, 37.121933, 44.471397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140530, 37.442642, 44.347580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147480, -0.436657, -0.887457,
		-0.846699, 0.408039, -0.341475,
		0.511225, 0.801770, -0.309539,
		38.293896, 37.683174, 44.254719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688824, 37.272446, 43.871780>,  <37.936039, 37.121933, 44.471397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688824, 37.272446, 43.871780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038193, 37.467186, 43.875828>,  <38.247814, 37.584030, 43.878258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038193, 37.467186, 43.875828>,  <37.688824, 37.272446, 43.871780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038193, 37.467186, 43.875828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164954, -0.276254, -0.946823,
		-0.458171, 0.828647, -0.321596,
		0.873424, 0.486855, 0.010117,
		38.300220, 37.613243, 43.878864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747650, 37.568554, 43.276642>,  <37.688824, 37.272446, 43.871780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747650, 37.568554, 43.276642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.128700, 37.576115, 43.398067>,  <38.357330, 37.580650, 43.470921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.128700, 37.576115, 43.398067>,  <37.747650, 37.568554, 43.276642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128700, 37.576115, 43.398067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298389, -0.251433, -0.920731,
		0.058918, 0.967690, -0.245162,
		0.952624, 0.018906, 0.303562,
		38.414486, 37.581787, 43.489136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200565, 38.073887, 42.948689>,  <37.747650, 37.568554, 43.276642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200565, 38.073887, 42.948689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437428, 37.781761, 43.084919>,  <38.579544, 37.606487, 43.166656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437428, 37.781761, 43.084919>,  <38.200565, 38.073887, 42.948689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437428, 37.781761, 43.084919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282013, -0.208100, -0.936570,
		0.754863, 0.650644, 0.082730,
		0.592157, -0.730313, 0.340577,
		38.615074, 37.562668, 43.187092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768684, 38.178154, 42.598999>,  <38.200565, 38.073887, 42.948689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768684, 38.178154, 42.598999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776108, 37.797417, 42.721405>,  <38.780563, 37.568974, 42.794849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.776108, 37.797417, 42.721405>,  <38.768684, 38.178154, 42.598999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776108, 37.797417, 42.721405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267483, -0.290188, -0.918827,
		0.963384, 0.098907, 0.249217,
		0.018559, -0.951845, 0.306018,
		38.781673, 37.511864, 42.813210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326313, 37.987610, 42.320019>,  <38.768684, 38.178154, 42.598999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326313, 37.987610, 42.320019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137470, 37.648811, 42.417763>,  <39.024166, 37.445530, 42.476410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137470, 37.648811, 42.417763>,  <39.326313, 37.987610, 42.320019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137470, 37.648811, 42.417763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290072, -0.411017, -0.864247,
		0.832453, -0.337131, 0.439733,
		-0.472102, -0.846999, 0.244360,
		38.995838, 37.394711, 42.491070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047703, 38.139534, 42.206528>,  <39.326313, 37.987610, 42.320019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047703, 38.139534, 42.206528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221863, 38.385807, 41.943813>,  <40.326359, 38.533569, 41.786186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221863, 38.385807, 41.943813>,  <40.047703, 38.139534, 42.206528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221863, 38.385807, 41.943813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208972, 0.778759, 0.591494,
		0.875648, -0.120286, 0.467730,
		0.435398, 0.615683, -0.656783,
		40.352482, 38.570511, 41.746780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553139, 38.506695, 42.543167>,  <40.047703, 38.139534, 42.206528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553139, 38.506695, 42.543167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.439438, 38.730083, 42.231445>,  <40.371220, 38.864117, 42.044415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.439438, 38.730083, 42.231445>,  <40.553139, 38.506695, 42.543167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439438, 38.730083, 42.231445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270819, 0.732959, 0.624042,
		0.919706, 0.388433, -0.057097,
		-0.284248, 0.558473, -0.779302,
		40.354164, 38.897625, 41.997654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838711, 39.261658, 42.654930>,  <40.553139, 38.506695, 42.543167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838711, 39.261658, 42.654930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570854, 39.317455, 42.363144>,  <40.410141, 39.350933, 42.188072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570854, 39.317455, 42.363144>,  <40.838711, 39.261658, 42.654930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570854, 39.317455, 42.363144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296995, 0.849951, 0.435176,
		0.680714, 0.508060, -0.527735,
		-0.669644, 0.139495, -0.729464,
		40.369961, 39.359303, 42.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756367, 39.973461, 42.461472>,  <40.838711, 39.261658, 42.654930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756367, 39.973461, 42.461472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419285, 39.858067, 42.279652>,  <40.217033, 39.788830, 42.170559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419285, 39.858067, 42.279652>,  <40.756367, 39.973461, 42.461472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419285, 39.858067, 42.279652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475107, 0.795610, 0.375869,
		0.253210, 0.532708, -0.807532,
		-0.842709, -0.288490, -0.454550,
		40.166473, 39.771519, 42.143288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391052, 40.591373, 42.104916>,  <40.756367, 39.973461, 42.461472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391052, 40.591373, 42.104916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124401, 40.313343, 42.212597>,  <39.964409, 40.146523, 42.277206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.124401, 40.313343, 42.212597>,  <40.391052, 40.591373, 42.104916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124401, 40.313343, 42.212597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615907, 0.717070, 0.326298,
		-0.419843, 0.051714, -0.906122,
		-0.666627, -0.695081, 0.269206,
		39.924412, 40.104820, 42.293358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715160, 40.873432, 41.849968>,  <40.391052, 40.591373, 42.104916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715160, 40.873432, 41.849968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.629124, 40.581409, 42.109432>,  <39.577503, 40.406197, 42.265110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.629124, 40.581409, 42.109432>,  <39.715160, 40.873432, 41.849968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629124, 40.581409, 42.109432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823752, 0.492396, 0.281033,
		-0.524566, -0.473886, -0.707292,
		-0.215090, -0.730054, 0.648658,
		39.564598, 40.362392, 42.304031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954426, 40.813900, 41.837482>,  <39.715160, 40.873432, 41.849968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954426, 40.813900, 41.837482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021202, 40.678696, 42.207970>,  <39.061268, 40.597572, 42.430260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021202, 40.678696, 42.207970>,  <38.954426, 40.813900, 41.837482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021202, 40.678696, 42.207970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699765, 0.621167, 0.352818,
		-0.694592, -0.707035, -0.132830,
		0.166945, -0.338014, 0.926216,
		39.071285, 40.577293, 42.485836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219845, 40.772499, 42.200405>,  <38.954426, 40.813900, 41.837482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219845, 40.772499, 42.200405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506874, 40.776348, 42.478973>,  <38.679092, 40.778656, 42.646114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506874, 40.776348, 42.478973>,  <38.219845, 40.772499, 42.200405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506874, 40.776348, 42.478973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499044, 0.704607, 0.504464,
		-0.485847, -0.709533, 0.510408,
		0.717570, 0.009624, 0.696420,
		38.722145, 40.779236, 42.687901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903633, 40.756252, 42.844742>,  <38.219845, 40.772499, 42.200405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903633, 40.756252, 42.844742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267384, 40.873531, 42.962772>,  <38.485634, 40.943901, 43.033592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267384, 40.873531, 42.962772>,  <37.903633, 40.756252, 42.844742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267384, 40.873531, 42.962772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415927, 0.652154, 0.633799,
		-0.006609, -0.699092, 0.715001,
		0.909374, 0.293199, 0.295081,
		38.540195, 40.961491, 43.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945255, 40.757210, 43.635746>,  <37.903633, 40.756252, 42.844742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945255, 40.757210, 43.635746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211018, 41.017056, 43.487923>,  <38.370476, 41.172962, 43.399231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211018, 41.017056, 43.487923>,  <37.945255, 40.757210, 43.635746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211018, 41.017056, 43.487923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257256, 0.663038, 0.702994,
		0.701705, -0.372000, 0.607640,
		0.664402, 0.649613, -0.369557,
		38.410339, 41.211941, 43.377056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220348, 41.120804, 44.185616>,  <37.945255, 40.757210, 43.635746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220348, 41.120804, 44.185616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310566, 41.366085, 43.882801>,  <38.364697, 41.513256, 43.701111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310566, 41.366085, 43.882801>,  <38.220348, 41.120804, 44.185616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310566, 41.366085, 43.882801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193819, 0.789771, 0.581975,
		0.954759, 0.015470, 0.296977,
		0.225541, 0.613206, -0.757040,
		38.378227, 41.550045, 43.655689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549835, 41.560772, 44.545219>,  <38.220348, 41.120804, 44.185616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549835, 41.560772, 44.545219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455246, 41.743893, 44.202408>,  <38.398491, 41.853764, 43.996719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455246, 41.743893, 44.202408>,  <38.549835, 41.560772, 44.545219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455246, 41.743893, 44.202408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049037, 0.875300, 0.481087,
		0.970400, 0.155789, -0.184534,
		-0.236471, 0.457798, -0.857031,
		38.384304, 41.881233, 43.945297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930649, 42.148895, 44.545319>,  <38.549835, 41.560772, 44.545219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930649, 42.148895, 44.545319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656059, 42.218704, 44.262959>,  <38.491306, 42.260590, 44.093540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656059, 42.218704, 44.262959>,  <38.930649, 42.148895, 44.545319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656059, 42.218704, 44.262959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238551, 0.862997, 0.445343,
		0.686912, 0.474110, -0.550792,
		-0.686473, 0.174519, -0.705902,
		38.450119, 42.271061, 44.051189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023979, 42.827343, 44.307709>,  <38.930649, 42.148895, 44.545319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023979, 42.827343, 44.307709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641678, 42.770542, 44.204659>,  <38.412296, 42.736462, 44.142826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641678, 42.770542, 44.204659>,  <39.023979, 42.827343, 44.307709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641678, 42.770542, 44.204659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243648, 0.872859, 0.422791,
		0.164837, 0.466855, -0.868836,
		-0.955753, -0.141999, -0.257628,
		38.354950, 42.727943, 44.127369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.126078, 40.035557, 43.957863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502575, 39.901081, 43.970772>,  <31.728474, 39.820396, 43.978519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502575, 39.901081, 43.970772>,  <31.126078, 40.035557, 43.957863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502575, 39.901081, 43.970772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008605, -0.119410, -0.992808,
		0.337625, 0.934194, -0.115286,
		0.941241, -0.336188, 0.032277,
		31.784946, 39.800224, 43.980453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482719, 40.236534, 43.323936>,  <31.126078, 40.035557, 43.957863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482719, 40.236534, 43.323936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.707853, 39.930149, 43.448208>,  <31.842934, 39.746319, 43.522770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.707853, 39.930149, 43.448208>,  <31.482719, 40.236534, 43.323936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707853, 39.930149, 43.448208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134559, -0.285949, -0.948750,
		0.815544, 0.575794, -0.057875,
		0.562834, -0.765960, 0.310683,
		31.876703, 39.700359, 43.541412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034149, 40.233795, 42.920258>,  <31.482719, 40.236534, 43.323936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034149, 40.233795, 42.920258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087387, 39.861355, 43.056107>,  <32.119328, 39.637890, 43.137615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087387, 39.861355, 43.056107>,  <32.034149, 40.233795, 42.920258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087387, 39.861355, 43.056107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361706, -0.273400, -0.891303,
		0.922743, 0.241467, 0.300397,
		0.133091, -0.931099, 0.339618,
		32.127316, 39.582024, 43.157993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760658, 40.096550, 42.704842>,  <32.034149, 40.233795, 42.920258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760658, 40.096550, 42.704842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560593, 39.755604, 42.765923>,  <32.440556, 39.551037, 42.802570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560593, 39.755604, 42.765923>,  <32.760658, 40.096550, 42.704842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560593, 39.755604, 42.765923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564629, -0.454717, -0.688786,
		0.656530, -0.258286, 0.708701,
		-0.500162, -0.852362, 0.152700,
		32.410545, 39.499897, 42.811733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273548, 39.551369, 42.857056>,  <32.760658, 40.096550, 42.704842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273548, 39.551369, 42.857056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946640, 39.391445, 42.691055>,  <32.750496, 39.295490, 42.591457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946640, 39.391445, 42.691055>,  <33.273548, 39.551369, 42.857056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946640, 39.391445, 42.691055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573527, -0.634296, -0.518397,
		-0.055973, -0.661683, 0.747691,
		-0.817272, -0.399805, -0.414997,
		32.701458, 39.271503, 42.566555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573158, 38.859795, 42.601799>,  <33.273548, 39.551369, 42.857056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573158, 38.859795, 42.601799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214073, 38.895275, 42.429173>,  <32.998623, 38.916565, 42.325596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214073, 38.895275, 42.429173>,  <33.573158, 38.859795, 42.601799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214073, 38.895275, 42.429173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334552, -0.500140, -0.798708,
		-0.286689, -0.861389, 0.419306,
		-0.897710, 0.088701, -0.431564,
		32.944759, 38.921886, 42.299702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555897, 38.287952, 42.232445>,  <33.573158, 38.859795, 42.601799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555897, 38.287952, 42.232445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.262318, 38.491024, 42.051964>,  <33.086170, 38.612865, 41.943676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.262318, 38.491024, 42.051964>,  <33.555897, 38.287952, 42.232445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262318, 38.491024, 42.051964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399276, -0.214911, -0.891287,
		-0.549457, -0.834311, -0.044972,
		-0.733945, 0.507680, -0.451205,
		33.042133, 38.643330, 41.916603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217312, 37.688587, 41.794212>,  <33.555897, 38.287952, 42.232445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217312, 37.688587, 41.794212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129536, 38.040455, 41.625439>,  <33.076870, 38.251575, 41.524174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129536, 38.040455, 41.625439>,  <33.217312, 37.688587, 41.794212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129536, 38.040455, 41.625439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229810, -0.373701, -0.898629,
		-0.948174, -0.294160, -0.120152,
		-0.219439, 0.879669, -0.421935,
		33.063705, 38.304356, 41.498859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803562, 37.546234, 41.124069>,  <33.217312, 37.688587, 41.794212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803562, 37.546234, 41.124069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901379, 37.932159, 41.085419>,  <32.960068, 38.163715, 41.062229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901379, 37.932159, 41.085419>,  <32.803562, 37.546234, 41.124069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901379, 37.932159, 41.085419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350734, -0.180917, -0.918833,
		-0.903983, 0.190803, -0.382634,
		0.244541, 0.964813, -0.096625,
		32.974739, 38.221603, 41.056431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609840, 37.711319, 40.446457>,  <32.803562, 37.546234, 41.124069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609840, 37.711319, 40.446457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872070, 38.004005, 40.521088>,  <33.029408, 38.179619, 40.565865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872070, 38.004005, 40.521088>,  <32.609840, 37.711319, 40.446457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872070, 38.004005, 40.521088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183532, 0.085274, -0.979308,
		-0.732486, 0.676254, -0.078390,
		0.655576, 0.731717, 0.186576,
		33.068745, 38.223522, 40.577061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444172, 38.311543, 40.128052>,  <32.609840, 37.711319, 40.446457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444172, 38.311543, 40.128052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840332, 38.315483, 40.183212>,  <33.078026, 38.317848, 40.216309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840332, 38.315483, 40.183212>,  <32.444172, 38.311543, 40.128052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840332, 38.315483, 40.183212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133983, 0.177662, -0.974928,
		-0.034102, 0.984042, 0.174636,
		0.990397, 0.009849, 0.137903,
		33.137451, 38.318439, 40.224583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694916, 38.688164, 39.578960>,  <32.444172, 38.311543, 40.128052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694916, 38.688164, 39.578960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029629, 38.514359, 39.712227>,  <33.230457, 38.410076, 39.792187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029629, 38.514359, 39.712227>,  <32.694916, 38.688164, 39.578960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029629, 38.514359, 39.712227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298539, -0.148020, -0.942849,
		0.458994, 0.888420, 0.005858,
		0.836779, -0.434511, 0.333169,
		33.280663, 38.384007, 39.812176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231716, 38.974346, 39.186909>,  <32.694916, 38.688164, 39.578960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231716, 38.974346, 39.186909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355160, 38.632687, 39.354332>,  <33.429226, 38.427689, 39.454784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355160, 38.632687, 39.354332>,  <33.231716, 38.974346, 39.186909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355160, 38.632687, 39.354332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265810, -0.345059, -0.900155,
		0.913294, 0.389052, 0.120553,
		0.308609, -0.854150, 0.418554,
		33.447742, 38.376442, 39.479897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888439, 38.743710, 38.762054>,  <33.231716, 38.974346, 39.186909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888439, 38.743710, 38.762054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797199, 38.427364, 38.989216>,  <33.742455, 38.237556, 39.125511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797199, 38.427364, 38.989216>,  <33.888439, 38.743710, 38.762054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797199, 38.427364, 38.989216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137846, -0.603634, -0.785255,
		0.963830, -0.100836, 0.246707,
		-0.228103, -0.790859, 0.567900,
		33.728767, 38.190105, 39.159584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574150, 38.941914, 38.776501>,  <33.888439, 38.743710, 38.762054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574150, 38.941914, 38.776501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690536, 39.209324, 38.502739>,  <34.760368, 39.369770, 38.338482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690536, 39.209324, 38.502739>,  <34.574150, 38.941914, 38.776501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690536, 39.209324, 38.502739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291674, 0.743284, 0.602043,
		0.911190, 0.024452, 0.411260,
		0.290962, 0.668530, -0.684404,
		34.777824, 39.409882, 38.297417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144775, 39.413391, 39.072544>,  <34.574150, 38.941914, 38.776501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144775, 39.413391, 39.072544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951168, 39.611912, 38.784264>,  <34.835003, 39.731026, 38.611298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951168, 39.611912, 38.784264>,  <35.144775, 39.413391, 39.072544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951168, 39.611912, 38.784264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274826, 0.695711, 0.663670,
		0.830779, 0.519297, -0.200342,
		-0.484021, 0.496304, -0.720698,
		34.805962, 39.760803, 38.568054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186634, 40.011562, 39.266483>,  <35.144775, 39.413391, 39.072544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186634, 40.011562, 39.266483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918236, 40.096115, 38.982208>,  <34.757198, 40.146847, 38.811642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918236, 40.096115, 38.982208>,  <35.186634, 40.011562, 39.266483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918236, 40.096115, 38.982208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195044, 0.874421, 0.444236,
		0.715347, 0.436697, -0.545505,
		-0.670997, 0.211385, -0.710689,
		34.716938, 40.159531, 38.769001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235008, 40.676079, 39.023151>,  <35.186634, 40.011562, 39.266483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235008, 40.676079, 39.023151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862923, 40.595791, 38.900246>,  <34.639671, 40.547619, 38.826504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862923, 40.595791, 38.900246>,  <35.235008, 40.676079, 39.023151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862923, 40.595791, 38.900246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327731, 0.831117, 0.449263,
		0.165198, 0.518611, -0.838899,
		-0.930216, -0.200716, -0.307264,
		34.583858, 40.535576, 38.808067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863857, 41.309784, 38.799305>,  <35.235008, 40.676079, 39.023151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863857, 41.309784, 38.799305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557156, 41.074776, 38.902767>,  <34.373135, 40.933769, 38.964844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557156, 41.074776, 38.902767>,  <34.863857, 41.309784, 38.799305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557156, 41.074776, 38.902767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241011, 0.636925, 0.732284,
		-0.594975, 0.499146, -0.629967,
		-0.766758, -0.587520, 0.258655,
		34.327129, 40.898521, 38.980362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385517, 41.765842, 39.010715>,  <34.863857, 41.309784, 38.799305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385517, 41.765842, 39.010715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.231342, 41.434124, 39.172558>,  <34.138836, 41.235092, 39.269665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.231342, 41.434124, 39.172558>,  <34.385517, 41.765842, 39.010715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231342, 41.434124, 39.172558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376698, 0.541703, 0.751436,
		-0.842338, 0.137219, -0.521188,
		-0.385440, -0.829294, 0.404607,
		34.115711, 41.185337, 39.293941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819958, 42.080395, 39.459789>,  <34.385517, 41.765842, 39.010715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819958, 42.080395, 39.459789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847363, 41.699238, 39.577972>,  <33.863804, 41.470543, 39.648884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847363, 41.699238, 39.577972>,  <33.819958, 42.080395, 39.459789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847363, 41.699238, 39.577972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374158, 0.249995, 0.893033,
		-0.924831, -0.171731, -0.339406,
		0.068511, -0.952896, 0.295458,
		33.867916, 41.413368, 39.666611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179890, 41.894775, 39.777077>,  <33.819958, 42.080395, 39.459789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179890, 41.894775, 39.777077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452763, 41.635948, 39.913269>,  <33.616486, 41.480652, 39.994984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452763, 41.635948, 39.913269>,  <33.179890, 41.894775, 39.777077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452763, 41.635948, 39.913269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251835, 0.229241, 0.940227,
		-0.686446, -0.727151, -0.006572,
		0.682181, -0.647071, 0.340484,
		33.657417, 41.441826, 40.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820545, 41.477173, 40.236645>,  <33.179890, 41.894775, 39.777077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820545, 41.477173, 40.236645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205761, 41.458004, 40.342667>,  <33.436890, 41.446503, 40.406281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205761, 41.458004, 40.342667>,  <32.820545, 41.477173, 40.236645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205761, 41.458004, 40.342667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250067, 0.206584, 0.945933,
		-0.100092, -0.977254, 0.186964,
		0.963041, -0.047927, 0.265056,
		33.494675, 41.443626, 40.422184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891888, 41.083031, 40.899857>,  <32.820545, 41.477173, 40.236645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891888, 41.083031, 40.899857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198818, 41.337784, 40.869949>,  <33.382977, 41.490635, 40.852005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198818, 41.337784, 40.869949>,  <32.891888, 41.083031, 40.899857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198818, 41.337784, 40.869949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144279, 0.285075, 0.947584,
		0.624817, -0.716317, 0.310635,
		0.767324, 0.636884, -0.074770,
		33.429016, 41.528851, 40.847519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345654, 40.906021, 41.443962>,  <32.891888, 41.083031, 40.899857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345654, 40.906021, 41.443962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384644, 41.293049, 41.350742>,  <33.408035, 41.525265, 41.294811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384644, 41.293049, 41.350742>,  <33.345654, 40.906021, 41.443962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384644, 41.293049, 41.350742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079877, 0.241016, 0.967228,
		0.992028, -0.075661, 0.100778,
		0.097470, 0.967567, -0.233051,
		33.413883, 41.583321, 41.280827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932888, 41.246395, 41.742218>,  <33.345654, 40.906021, 41.443962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932888, 41.246395, 41.742218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680855, 41.551830, 41.685760>,  <33.529633, 41.735092, 41.651886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680855, 41.551830, 41.685760>,  <33.932888, 41.246395, 41.742218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680855, 41.551830, 41.685760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088844, 0.251452, 0.963784,
		0.771427, 0.594726, -0.226276,
		-0.630085, 0.763592, -0.141139,
		33.491829, 41.780907, 41.643417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207092, 41.696419, 42.162392>,  <33.932888, 41.246395, 41.742218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207092, 41.696419, 42.162392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842407, 41.847942, 42.098789>,  <33.623596, 41.938854, 42.060627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842407, 41.847942, 42.098789>,  <34.207092, 41.696419, 42.162392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842407, 41.847942, 42.098789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028557, 0.327671, 0.944360,
		0.409832, 0.865527, -0.287925,
		-0.911714, 0.378806, -0.159007,
		33.568893, 41.961586, 42.051086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243851, 42.382118, 42.593510>,  <34.207092, 41.696419, 42.162392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243851, 42.382118, 42.593510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866627, 42.260540, 42.539467>,  <33.640293, 42.187592, 42.507042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866627, 42.260540, 42.539467>,  <34.243851, 42.382118, 42.593510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866627, 42.260540, 42.539467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219876, 0.264859, 0.938885,
		-0.249589, 0.915131, -0.316609,
		-0.943059, -0.303950, -0.135109,
		33.583710, 42.169353, 42.498936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546928, 43.088341, 42.641407>,  <34.243851, 42.382118, 42.593510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546928, 43.088341, 42.641407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922886, 43.035576, 42.767387>,  <35.148460, 43.003918, 42.842976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922886, 43.035576, 42.767387>,  <34.546928, 43.088341, 42.641407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922886, 43.035576, 42.767387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235013, -0.419254, -0.876924,
		0.247720, 0.898235, -0.363055,
		0.939896, -0.131908, 0.314955,
		35.204853, 42.996002, 42.861874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967159, 43.184216, 41.994465>,  <34.546928, 43.088341, 42.641407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967159, 43.184216, 41.994465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205589, 42.985634, 42.246883>,  <35.348648, 42.866486, 42.398335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205589, 42.985634, 42.246883>,  <34.967159, 43.184216, 41.994465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205589, 42.985634, 42.246883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439572, -0.455922, -0.773894,
		0.671914, 0.738692, -0.053536,
		0.596078, -0.496456, 0.631049,
		35.384411, 42.836697, 42.436199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594128, 43.179115, 41.607971>,  <34.967159, 43.184216, 41.994465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594128, 43.179115, 41.607971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646767, 42.900959, 41.890560>,  <35.678349, 42.734066, 42.060116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646767, 42.900959, 41.890560>,  <35.594128, 43.179115, 41.607971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646767, 42.900959, 41.890560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549648, -0.541904, -0.635788,
		0.824966, 0.471981, 0.310910,
		0.131596, -0.695395, 0.706476,
		35.686245, 42.692341, 42.102505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267361, 43.103645, 41.591808>,  <35.594128, 43.179115, 41.607971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267361, 43.103645, 41.591808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148293, 42.767170, 41.772381>,  <36.076851, 42.565285, 41.880726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.148293, 42.767170, 41.772381>,  <36.267361, 43.103645, 41.591808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148293, 42.767170, 41.772381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655148, -0.523938, -0.544307,
		0.694389, 0.133732, 0.707064,
		-0.297666, -0.841193, 0.451431,
		36.058994, 42.514812, 41.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842159, 42.713799, 41.875980>,  <36.267361, 43.103645, 41.591808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842159, 42.713799, 41.875980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557205, 42.457481, 41.761513>,  <36.386234, 42.303692, 41.692833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557205, 42.457481, 41.761513>,  <36.842159, 42.713799, 41.875980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557205, 42.457481, 41.761513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694770, -0.586442, -0.416389,
		0.098995, -0.495454, 0.862975,
		-0.712386, -0.640790, -0.286172,
		36.343491, 42.265244, 41.675663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133839, 42.089199, 42.041962>,  <36.842159, 42.713799, 41.875980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133839, 42.089199, 42.041962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825497, 41.990616, 41.807003>,  <36.640491, 41.931465, 41.666027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825497, 41.990616, 41.807003>,  <37.133839, 42.089199, 42.041962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825497, 41.990616, 41.807003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545835, -0.730931, -0.409638,
		-0.328390, -0.636396, 0.697969,
		-0.770859, -0.246454, -0.587398,
		36.594238, 41.916679, 41.630783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192867, 41.453438, 42.011608>,  <37.133839, 42.089199, 42.041962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192867, 41.453438, 42.011608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959671, 41.537155, 41.697586>,  <36.819752, 41.587383, 41.509171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959671, 41.537155, 41.697586>,  <37.192867, 41.453438, 42.011608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959671, 41.537155, 41.697586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499313, -0.669958, -0.549402,
		-0.640939, -0.712288, 0.286082,
		-0.582995, 0.209289, -0.785057,
		36.784775, 41.599941, 41.462070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014111, 40.828945, 41.709312>,  <37.192867, 41.453438, 42.011608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014111, 40.828945, 41.709312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926022, 41.074795, 41.406330>,  <36.873169, 41.222305, 41.224541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926022, 41.074795, 41.406330>,  <37.014111, 40.828945, 41.709312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926022, 41.074795, 41.406330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379565, -0.661330, -0.646973,
		-0.898573, -0.429981, -0.087650,
		-0.220220, 0.614621, -0.757459,
		36.859955, 41.259182, 41.179092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837440, 40.441227, 41.162842>,  <37.014111, 40.828945, 41.709312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837440, 40.441227, 41.162842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916431, 40.792469, 40.988518>,  <36.963825, 41.003216, 40.883923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916431, 40.792469, 40.988518>,  <36.837440, 40.441227, 41.162842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916431, 40.792469, 40.988518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346508, -0.478395, -0.806889,
		-0.917025, 0.008329, -0.398743,
		0.197477, 0.878105, -0.435814,
		36.975674, 41.055901, 40.857773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656055, 40.378056, 40.511215>,  <36.837440, 40.441227, 41.162842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656055, 40.378056, 40.511215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922886, 40.675999, 40.516663>,  <37.082985, 40.854767, 40.519932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922886, 40.675999, 40.516663>,  <36.656055, 40.378056, 40.511215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922886, 40.675999, 40.516663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521396, -0.453739, -0.722680,
		-0.532119, 0.489185, -0.691049,
		0.667080, 0.744862, 0.013616,
		37.123009, 40.899456, 40.520748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780018, 40.633671, 39.826149>,  <36.656055, 40.378056, 40.511215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780018, 40.633671, 39.826149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.105400, 40.728065, 40.038792>,  <37.300629, 40.784702, 40.166378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.105400, 40.728065, 40.038792>,  <36.780018, 40.633671, 39.826149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105400, 40.728065, 40.038792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577978, -0.225682, -0.784225,
		-0.065089, 0.945188, -0.319974,
		0.813453, 0.235982, 0.531608,
		37.349438, 40.798859, 40.198273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156296, 40.979427, 39.323128>,  <36.780018, 40.633671, 39.826149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156296, 40.979427, 39.323128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426746, 40.908600, 39.609207>,  <37.589016, 40.866104, 39.780853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426746, 40.908600, 39.609207>,  <37.156296, 40.979427, 39.323128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426746, 40.908600, 39.609207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681047, -0.220175, -0.698353,
		0.281122, 0.959255, -0.028276,
		0.676125, -0.177065, 0.715194,
		37.629585, 40.855480, 39.823765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785122, 41.314793, 39.047516>,  <37.156296, 40.979427, 39.323128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785122, 41.314793, 39.047516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889980, 41.029697, 39.307758>,  <37.952896, 40.858639, 39.463902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889980, 41.029697, 39.307758>,  <37.785122, 41.314793, 39.047516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889980, 41.029697, 39.307758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737361, -0.286990, -0.611503,
		0.622559, 0.640030, 0.450313,
		0.262145, -0.712739, 0.650602,
		37.968624, 40.815876, 39.502937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506599, 41.349422, 39.042549>,  <37.785122, 41.314793, 39.047516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506599, 41.349422, 39.042549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405857, 40.995926, 39.200321>,  <38.345413, 40.783829, 39.294987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405857, 40.995926, 39.200321>,  <38.506599, 41.349422, 39.042549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405857, 40.995926, 39.200321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739707, -0.438594, -0.510362,
		0.624022, 0.163230, 0.764168,
		-0.251853, -0.883738, 0.394434,
		38.330299, 40.730804, 39.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.757994, 34.590214, 25.566561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381893, 34.605812, 25.701859>,  <28.156233, 34.615170, 25.783037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381893, 34.605812, 25.701859>,  <28.757994, 34.590214, 25.566561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381893, 34.605812, 25.701859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327290, -0.170346, 0.929442,
		0.093863, 0.984612, 0.147405,
		-0.940250, 0.038996, 0.338243,
		28.099817, 34.617512, 25.803331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742582, 34.991234, 26.226501>,  <28.757994, 34.590214, 25.566561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742582, 34.991234, 26.226501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414316, 34.763485, 26.207245>,  <28.217356, 34.626835, 26.195690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414316, 34.763485, 26.207245>,  <28.742582, 34.991234, 26.226501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414316, 34.763485, 26.207245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041367, -0.143230, 0.988824,
		-0.569906, 0.809505, 0.141097,
		-0.820668, -0.569374, -0.048141,
		28.168116, 34.592674, 26.192802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258137, 35.262791, 26.694775>,  <28.742582, 34.991234, 26.226501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258137, 35.262791, 26.694775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148411, 34.879524, 26.662127>,  <28.082575, 34.649563, 26.642538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148411, 34.879524, 26.662127>,  <28.258137, 35.262791, 26.694775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148411, 34.879524, 26.662127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010361, -0.081925, 0.996585,
		-0.961584, 0.274225, 0.012546,
		-0.274317, -0.958170, -0.081619,
		28.066116, 34.592072, 26.637640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592777, 35.128185, 27.045824>,  <28.258137, 35.262791, 26.694775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592777, 35.128185, 27.045824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.786032, 34.778297, 27.030628>,  <27.901983, 34.568363, 27.021511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.786032, 34.778297, 27.030628>,  <27.592777, 35.128185, 27.045824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786032, 34.778297, 27.030628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107614, -0.102386, 0.988907,
		-0.868907, -0.473687, -0.143599,
		0.483135, -0.874721, -0.037988,
		27.930973, 34.515881, 27.019232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228016, 34.790359, 27.504868>,  <27.592777, 35.128185, 27.045824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228016, 34.790359, 27.504868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567015, 34.578461, 27.491510>,  <27.770414, 34.451321, 27.483496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567015, 34.578461, 27.491510>,  <27.228016, 34.790359, 27.504868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567015, 34.578461, 27.491510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000091, -0.063059, 0.998010,
		-0.530803, -0.845805, -0.053490,
		0.847495, -0.529752, -0.033395,
		27.821262, 34.419537, 27.481491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153021, 34.280098, 27.994553>,  <27.228016, 34.790359, 27.504868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153021, 34.280098, 27.994553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546505, 34.319649, 27.934507>,  <27.782597, 34.343380, 27.898481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546505, 34.319649, 27.934507>,  <27.153021, 34.280098, 27.994553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546505, 34.319649, 27.934507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141810, 0.086263, 0.986128,
		0.110454, -0.991354, 0.070836,
		0.983712, 0.098876, -0.150111,
		27.841619, 34.349312, 27.889473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398638, 33.855644, 28.404188>,  <27.153021, 34.280098, 27.994553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398638, 33.855644, 28.404188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686615, 34.126427, 28.342991>,  <27.859402, 34.288898, 28.306273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686615, 34.126427, 28.342991>,  <27.398638, 33.855644, 28.404188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686615, 34.126427, 28.342991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061523, 0.157320, 0.985629,
		0.691301, -0.719009, 0.071612,
		0.719943, 0.676961, -0.152991,
		27.902597, 34.329514, 28.297094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879431, 33.756004, 28.948673>,  <27.398638, 33.855644, 28.404188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879431, 33.756004, 28.948673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990343, 34.111675, 28.803078>,  <28.056890, 34.325077, 28.715721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.990343, 34.111675, 28.803078>,  <27.879431, 33.756004, 28.948673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990343, 34.111675, 28.803078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311344, 0.275243, 0.909564,
		0.908944, -0.365531, -0.200518,
		0.277282, 0.889173, -0.363987,
		28.073528, 34.378426, 28.693882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481087, 33.941818, 29.289879>,  <27.879431, 33.756004, 28.948673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481087, 33.941818, 29.289879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322941, 34.282669, 29.152725>,  <28.228054, 34.487179, 29.070433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322941, 34.282669, 29.152725>,  <28.481087, 33.941818, 29.289879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322941, 34.282669, 29.152725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101327, 0.330558, 0.938330,
		0.912919, 0.405726, -0.044348,
		-0.395364, 0.852126, -0.342884,
		28.204332, 34.538307, 29.049860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923286, 34.445793, 29.655073>,  <28.481087, 33.941818, 29.289879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923286, 34.445793, 29.655073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575565, 34.612621, 29.548969>,  <28.366932, 34.712719, 29.485308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.575565, 34.612621, 29.548969>,  <28.923286, 34.445793, 29.655073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575565, 34.612621, 29.548969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076599, 0.416500, 0.905903,
		0.488308, 0.807823, -0.330118,
		-0.869303, 0.417073, -0.265259,
		28.314774, 34.737743, 29.469391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917650, 35.057674, 29.995453>,  <28.923286, 34.445793, 29.655073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917650, 35.057674, 29.995453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526083, 35.022316, 29.921803>,  <28.291142, 35.001102, 29.877613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526083, 35.022316, 29.921803>,  <28.917650, 35.057674, 29.995453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526083, 35.022316, 29.921803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204093, 0.458131, 0.865137,
		0.007878, 0.884478, -0.466515,
		-0.978920, -0.088396, -0.184125,
		28.232407, 34.995796, 29.866566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558657, 35.525776, 30.479534>,  <28.917650, 35.057674, 29.995453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558657, 35.525776, 30.479534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242689, 35.314335, 30.355207>,  <28.053108, 35.187469, 30.280611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242689, 35.314335, 30.355207>,  <28.558657, 35.525776, 30.479534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242689, 35.314335, 30.355207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483032, 0.224114, 0.846436,
		-0.377772, 0.818748, -0.432365,
		-0.789917, -0.528606, -0.310817,
		28.005714, 35.155754, 30.261963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022192, 35.917034, 30.733059>,  <28.558657, 35.525776, 30.479534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022192, 35.917034, 30.733059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878613, 35.553505, 30.648020>,  <27.792465, 35.335388, 30.596996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878613, 35.553505, 30.648020>,  <28.022192, 35.917034, 30.733059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878613, 35.553505, 30.648020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544173, 0.018716, 0.838764,
		-0.758309, 0.416763, -0.501274,
		-0.358947, -0.908823, -0.212599,
		27.770927, 35.280857, 30.584240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248825, 35.947712, 30.854319>,  <28.022192, 35.917034, 30.733059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248825, 35.947712, 30.854319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389393, 35.574379, 30.883684>,  <27.473734, 35.350380, 30.901304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389393, 35.574379, 30.883684>,  <27.248825, 35.947712, 30.854319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389393, 35.574379, 30.883684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399522, -0.078587, 0.913349,
		-0.846691, -0.350300, -0.400504,
		0.351421, -0.933335, 0.073414,
		27.494820, 35.294380, 30.905708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708864, 35.501808, 31.053770>,  <27.248825, 35.947712, 30.854319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708864, 35.501808, 31.053770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035950, 35.295288, 31.155575>,  <27.232201, 35.171375, 31.216658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.035950, 35.295288, 31.155575>,  <26.708864, 35.501808, 31.053770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035950, 35.295288, 31.155575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438351, -0.271955, 0.856673,
		-0.373088, -0.812078, -0.448703,
		0.817713, -0.516304, 0.254512,
		27.281263, 35.140396, 31.231928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465082, 34.767677, 31.356440>,  <26.708864, 35.501808, 31.053770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465082, 34.767677, 31.356440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.840372, 34.825985, 31.481968>,  <27.065546, 34.860970, 31.557285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.840372, 34.825985, 31.481968>,  <26.465082, 34.767677, 31.356440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840372, 34.825985, 31.481968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298166, -0.119636, 0.946987,
		0.175588, -0.982058, -0.068781,
		0.938225, 0.145771, 0.313822,
		27.121840, 34.869717, 31.576115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607664, 34.265053, 31.834263>,  <26.465082, 34.767677, 31.356440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607664, 34.265053, 31.834263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852438, 34.568008, 31.925385>,  <26.999302, 34.749783, 31.980057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852438, 34.568008, 31.925385>,  <26.607664, 34.265053, 31.834263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852438, 34.568008, 31.925385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249801, -0.088200, 0.964272,
		0.750425, -0.646974, 0.135225,
		0.611932, 0.757393, 0.227802,
		27.036018, 34.795227, 31.993725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824100, 33.999611, 32.372234>,  <26.607664, 34.265053, 31.834263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824100, 33.999611, 32.372234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.957264, 34.374119, 32.417076>,  <27.037163, 34.598824, 32.443981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.957264, 34.374119, 32.417076>,  <26.824100, 33.999611, 32.372234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957264, 34.374119, 32.417076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023871, -0.127218, 0.991587,
		0.942657, -0.327432, -0.064702,
		0.332909, 0.936271, 0.112107,
		27.057137, 34.654999, 32.450706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300180, 33.994438, 32.949520>,  <26.824100, 33.999611, 32.372234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300180, 33.994438, 32.949520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160122, 34.368668, 32.931194>,  <27.076088, 34.593204, 32.920200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160122, 34.368668, 32.931194>,  <27.300180, 33.994438, 32.949520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160122, 34.368668, 32.931194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043312, 0.032684, 0.998527,
		0.935694, 0.351613, 0.029078,
		-0.350144, 0.935575, -0.045811,
		27.055079, 34.649342, 32.917450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792727, 34.335094, 33.311024>,  <27.300180, 33.994438, 32.949520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792727, 34.335094, 33.311024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461641, 34.558506, 33.332703>,  <27.262991, 34.692554, 33.345711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461641, 34.558506, 33.332703>,  <27.792727, 34.335094, 33.311024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461641, 34.558506, 33.332703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127036, 0.092431, 0.987582,
		0.546584, 0.824319, -0.147460,
		-0.827712, 0.558529, 0.054197,
		27.213327, 34.726067, 33.348961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487652, 34.410141, 33.553776>,  <27.792727, 34.335094, 33.311024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487652, 34.410141, 33.553776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832489, 34.229248, 33.645237>,  <29.039391, 34.120712, 33.700111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832489, 34.229248, 33.645237>,  <28.487652, 34.410141, 33.553776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832489, 34.229248, 33.645237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269614, 0.027284, -0.962582,
		0.429077, 0.891480, 0.145450,
		0.862091, -0.452237, 0.228648,
		29.091116, 34.093578, 33.713833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025515, 34.706921, 33.155453>,  <28.487652, 34.410141, 33.553776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025515, 34.706921, 33.155453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162365, 34.348701, 33.269253>,  <29.244474, 34.133770, 33.337532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162365, 34.348701, 33.269253>,  <29.025515, 34.706921, 33.155453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162365, 34.348701, 33.269253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326729, -0.170501, -0.929612,
		0.881022, 0.410997, 0.234270,
		0.342124, -0.895551, 0.284499,
		29.265001, 34.080036, 33.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663839, 34.738441, 32.844688>,  <29.025515, 34.706921, 33.155453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663839, 34.738441, 32.844688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569611, 34.356144, 32.915184>,  <29.513073, 34.126766, 32.957481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569611, 34.356144, 32.915184>,  <29.663839, 34.738441, 32.844688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569611, 34.356144, 32.915184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238085, -0.232571, -0.942988,
		0.942243, -0.180180, 0.282335,
		-0.235570, -0.955744, 0.176240,
		29.498940, 34.069420, 32.968056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320158, 34.322762, 32.711411>,  <29.663839, 34.738441, 32.844688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320158, 34.322762, 32.711411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006617, 34.074730, 32.698296>,  <29.818491, 33.925911, 32.690426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006617, 34.074730, 32.698296>,  <30.320158, 34.322762, 32.711411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006617, 34.074730, 32.698296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420244, -0.490888, -0.763167,
		0.457130, -0.611989, 0.645369,
		-0.783854, -0.620079, -0.032785,
		29.771460, 33.888706, 32.688461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591780, 33.653412, 32.555992>,  <30.320158, 34.322762, 32.711411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591780, 33.653412, 32.555992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207531, 33.606953, 32.455025>,  <29.976982, 33.579075, 32.394444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207531, 33.606953, 32.455025>,  <30.591780, 33.653412, 32.555992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207531, 33.606953, 32.455025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277521, -0.445672, -0.851093,
		-0.013640, -0.887629, 0.460357,
		-0.960623, -0.116150, -0.252415,
		29.919344, 33.572109, 32.379299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459789, 32.942669, 32.360413>,  <30.591780, 33.653412, 32.555992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459789, 32.942669, 32.360413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176779, 33.158882, 32.178322>,  <30.006973, 33.288612, 32.069069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176779, 33.158882, 32.178322>,  <30.459789, 32.942669, 32.360413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176779, 33.158882, 32.178322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293605, -0.361099, -0.885101,
		-0.642810, -0.759887, 0.096783,
		-0.707525, 0.540536, -0.455224,
		29.964521, 33.321041, 32.041756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036871, 32.450409, 31.970942>,  <30.459789, 32.942669, 32.360413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036871, 32.450409, 31.970942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.952417, 32.808662, 31.814344>,  <29.901745, 33.023613, 31.720387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.952417, 32.808662, 31.814344>,  <30.036871, 32.450409, 31.970942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952417, 32.808662, 31.814344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106273, -0.377113, -0.920050,
		-0.971663, -0.235858, -0.015560,
		-0.211134, 0.895632, -0.391492,
		29.889078, 33.077351, 31.696898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601921, 32.315159, 31.299467>,  <30.036871, 32.450409, 31.970942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601921, 32.315159, 31.299467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768728, 32.672157, 31.230717>,  <29.868813, 32.886356, 31.189466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768728, 32.672157, 31.230717>,  <29.601921, 32.315159, 31.299467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768728, 32.672157, 31.230717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131538, -0.246374, -0.960207,
		-0.899330, 0.377815, -0.220140,
		0.417018, 0.892500, -0.171874,
		29.893833, 32.939907, 31.179155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304508, 32.548912, 30.708271>,  <29.601921, 32.315159, 31.299467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304508, 32.548912, 30.708271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610123, 32.805653, 30.734426>,  <29.793491, 32.959698, 30.750120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.610123, 32.805653, 30.734426>,  <29.304508, 32.548912, 30.708271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610123, 32.805653, 30.734426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104020, -0.022525, -0.994320,
		-0.636730, 0.766501, -0.083975,
		0.764038, 0.641849, 0.065389,
		29.839334, 32.998207, 30.754044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168682, 32.974255, 30.217270>,  <29.304508, 32.548912, 30.708271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168682, 32.974255, 30.217270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564789, 32.997311, 30.267948>,  <29.802452, 33.011143, 30.298355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564789, 32.997311, 30.267948>,  <29.168682, 32.974255, 30.217270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564789, 32.997311, 30.267948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123142, 0.061556, -0.990478,
		-0.064889, 0.996438, 0.053859,
		0.990265, 0.057639, 0.126698,
		29.861868, 33.014603, 30.305958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354397, 33.206436, 29.671497>,  <29.168682, 32.974255, 30.217270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354397, 33.206436, 29.671497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.720654, 33.117016, 29.805140>,  <29.940407, 33.063362, 29.885324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.720654, 33.117016, 29.805140>,  <29.354397, 33.206436, 29.671497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720654, 33.117016, 29.805140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318969, -0.101816, -0.942280,
		0.244666, 0.969360, -0.021921,
		0.915640, -0.223552, 0.334107,
		29.995346, 33.049950, 29.905371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824913, 33.575531, 29.281603>,  <29.354397, 33.206436, 29.671497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824913, 33.575531, 29.281603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.026079, 33.261829, 29.426937>,  <30.146780, 33.073608, 29.514137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.026079, 33.261829, 29.426937>,  <29.824913, 33.575531, 29.281603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026079, 33.261829, 29.426937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366913, -0.186899, -0.911287,
		0.782592, 0.591614, 0.193760,
		0.502917, -0.784258, 0.363337,
		30.176954, 33.026550, 29.535938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547916, 33.670284, 29.267962>,  <29.824913, 33.575531, 29.281603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547916, 33.670284, 29.267962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428772, 33.289639, 29.237728>,  <30.357285, 33.061253, 29.219587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428772, 33.289639, 29.237728>,  <30.547916, 33.670284, 29.267962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428772, 33.289639, 29.237728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437694, -0.065778, -0.896715,
		0.848353, -0.300180, 0.436107,
		-0.297862, -0.951612, -0.075583,
		30.339413, 33.004154, 29.215054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076864, 33.359440, 28.913898>,  <30.547916, 33.670284, 29.267962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076864, 33.359440, 28.913898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812540, 33.059376, 28.904161>,  <30.653946, 32.879337, 28.898319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812540, 33.059376, 28.904161>,  <31.076864, 33.359440, 28.913898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812540, 33.059376, 28.904161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262578, -0.200679, -0.943812,
		0.703123, -0.630072, 0.329586,
		-0.660810, -0.750158, -0.024341,
		30.614298, 32.834328, 28.896860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437700, 32.829140, 28.660675>,  <31.076864, 33.359440, 28.913898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437700, 32.829140, 28.660675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.058510, 32.709862, 28.616093>,  <30.830996, 32.638294, 28.589344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.058510, 32.709862, 28.616093>,  <31.437700, 32.829140, 28.660675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058510, 32.709862, 28.616093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167338, -0.168930, -0.971319,
		0.270811, -0.939438, 0.210041,
		-0.947977, -0.298192, -0.111455,
		30.774117, 32.620403, 28.582657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592485, 32.262943, 28.290422>,  <31.437700, 32.829140, 28.660675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592485, 32.262943, 28.290422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203239, 32.348293, 28.255741>,  <30.969692, 32.399502, 28.234932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203239, 32.348293, 28.255741>,  <31.592485, 32.262943, 28.290422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203239, 32.348293, 28.255741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032988, -0.243457, -0.969350,
		-0.227933, -0.946152, 0.229874,
		-0.973118, 0.213364, -0.086703,
		30.911304, 32.412304, 28.229729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368690, 31.762852, 27.800533>,  <31.592485, 32.262943, 28.290422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368690, 31.762852, 27.800533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101709, 32.060444, 27.787878>,  <30.941521, 32.238998, 27.780285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101709, 32.060444, 27.787878>,  <31.368690, 31.762852, 27.800533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101709, 32.060444, 27.787878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188133, -0.209588, -0.959520,
		-0.720493, -0.634483, 0.279857,
		-0.667454, 0.743979, -0.031639,
		30.901474, 32.283638, 27.778387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826071, 31.490736, 27.426058>,  <31.368690, 31.762852, 27.800533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826071, 31.490736, 27.426058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812983, 31.889748, 27.401188>,  <30.805130, 32.129154, 27.386265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812983, 31.889748, 27.401188>,  <30.826071, 31.490736, 27.426058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812983, 31.889748, 27.401188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252801, -0.068447, -0.965094,
		-0.966965, -0.015858, 0.254416,
		-0.032719, 0.997529, -0.062177,
		30.803167, 32.189007, 27.382534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158352, 31.653439, 26.934191>,  <30.826071, 31.490736, 27.426058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158352, 31.653439, 26.934191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384779, 31.983120, 26.940607>,  <30.520636, 32.180927, 26.944456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384779, 31.983120, 26.940607>,  <30.158352, 31.653439, 26.934191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384779, 31.983120, 26.940607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183608, 0.145024, -0.972243,
		-0.803651, 0.547411, 0.233424,
		0.566069, 0.824202, 0.016040,
		30.554600, 32.230381, 26.945419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752745, 32.103249, 26.506351>,  <30.158352, 31.653439, 26.934191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752745, 32.103249, 26.506351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108484, 32.286110, 26.509556>,  <30.321928, 32.395828, 26.511478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108484, 32.286110, 26.509556>,  <29.752745, 32.103249, 26.506351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108484, 32.286110, 26.509556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105311, 0.221853, -0.969376,
		-0.444935, 0.861271, 0.245449,
		0.889350, 0.457158, 0.008009,
		30.375290, 32.423256, 26.511959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597036, 32.777561, 26.209873>,  <29.752745, 32.103249, 26.506351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597036, 32.777561, 26.209873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.987581, 32.694611, 26.185492>,  <30.221909, 32.644840, 26.170862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.987581, 32.694611, 26.185492>,  <29.597036, 32.777561, 26.209873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987581, 32.694611, 26.185492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018200, 0.202129, -0.979190,
		0.215378, 0.957152, 0.193577,
		0.976361, -0.207373, -0.060954,
		30.280489, 32.632401, 26.167206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143929, 33.371002, 25.891464>,  <29.597036, 32.777561, 26.209873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143929, 33.371002, 25.891464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262535, 32.998535, 25.806601>,  <30.333698, 32.775055, 25.755682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262535, 32.998535, 25.806601>,  <30.143929, 33.371002, 25.891464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262535, 32.998535, 25.806601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238251, 0.287251, -0.927752,
		0.924833, 0.224545, 0.307025,
		0.296515, -0.931164, -0.212161,
		30.351490, 32.719185, 25.742952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.775448, 43.524254, 44.043591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444355, 43.311596, 44.115387>,  <38.245701, 43.184002, 44.158466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444355, 43.311596, 44.115387>,  <38.775448, 43.524254, 44.043591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444355, 43.311596, 44.115387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350049, 0.739233, 0.575326,
		-0.438557, 0.413382, -0.797987,
		-0.827728, -0.531648, 0.179492,
		38.196037, 43.152103, 44.169235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214523, 43.996784, 44.182743>,  <38.775448, 43.524254, 44.043591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214523, 43.996784, 44.182743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068027, 43.654213, 44.328293>,  <37.980129, 43.448669, 44.415623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068027, 43.654213, 44.328293>,  <38.214523, 43.996784, 44.182743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068027, 43.654213, 44.328293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580983, 0.515919, 0.629513,
		-0.726861, 0.019146, -0.686518,
		-0.366240, -0.856423, 0.363878,
		37.958157, 43.397285, 44.437458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457302, 44.026012, 44.241432>,  <38.214523, 43.996784, 44.182743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457302, 44.026012, 44.241432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567841, 43.746353, 44.505196>,  <37.634163, 43.578556, 44.663452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567841, 43.746353, 44.505196>,  <37.457302, 44.026012, 44.241432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567841, 43.746353, 44.505196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514611, 0.471826, 0.715930,
		-0.811670, -0.537183, -0.229405,
		0.276346, -0.699153, 0.659407,
		37.650745, 43.536606, 44.703018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894943, 43.876179, 44.630493>,  <37.457302, 44.026012, 44.241432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894943, 43.876179, 44.630493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187565, 43.740963, 44.867329>,  <37.363136, 43.659836, 45.009430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187565, 43.740963, 44.867329>,  <36.894943, 43.876179, 44.630493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187565, 43.740963, 44.867329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471523, 0.376402, 0.797489,
		-0.492443, -0.862585, 0.115965,
		0.731551, -0.338038, 0.592085,
		37.407028, 43.639553, 45.044952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573147, 43.524426, 45.137703>,  <36.894943, 43.876179, 44.630493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573147, 43.524426, 45.137703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924751, 43.597340, 45.313938>,  <37.135712, 43.641087, 45.419682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924751, 43.597340, 45.313938>,  <36.573147, 43.524426, 45.137703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924751, 43.597340, 45.313938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476771, 0.324269, 0.817031,
		0.006058, -0.928237, 0.371940,
		0.879007, 0.182280, 0.440592,
		37.188454, 43.652023, 45.446117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436008, 43.397202, 45.807121>,  <36.573147, 43.524426, 45.137703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436008, 43.397202, 45.807121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783951, 43.588997, 45.853500>,  <36.992714, 43.704075, 45.881329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783951, 43.588997, 45.853500>,  <36.436008, 43.397202, 45.807121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783951, 43.588997, 45.853500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308690, 0.345728, 0.886105,
		0.384798, -0.806571, 0.448748,
		0.869852, 0.479495, 0.115945,
		37.044907, 43.732845, 45.888287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528893, 43.239117, 46.401123>,  <36.436008, 43.397202, 45.807121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528893, 43.239117, 46.401123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.777714, 43.545990, 46.338547>,  <36.927006, 43.730114, 46.301003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.777714, 43.545990, 46.338547>,  <36.528893, 43.239117, 46.401123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777714, 43.545990, 46.338547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292946, 0.413337, 0.862169,
		0.726106, -0.490489, 0.481862,
		0.622055, 0.767186, -0.156440,
		36.964329, 43.776146, 46.291615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953255, 43.335987, 47.033066>,  <36.528893, 43.239117, 46.401123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953255, 43.335987, 47.033066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977543, 43.686756, 46.842358>,  <36.992115, 43.897217, 46.727932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977543, 43.686756, 46.842358>,  <36.953255, 43.335987, 47.033066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977543, 43.686756, 46.842358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299337, 0.471669, 0.829413,
		0.952213, 0.092352, 0.291138,
		0.060723, 0.876927, -0.476774,
		36.995758, 43.949833, 46.699326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298714, 43.816338, 47.515034>,  <36.953255, 43.335987, 47.033066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298714, 43.816338, 47.515034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095531, 44.033394, 47.247444>,  <36.973621, 44.163628, 47.086891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095531, 44.033394, 47.247444>,  <37.298714, 43.816338, 47.515034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095531, 44.033394, 47.247444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227015, 0.664834, 0.711660,
		0.830930, 0.513359, -0.214519,
		-0.507957, 0.542641, -0.668970,
		36.943146, 44.196186, 47.046753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661827, 44.460510, 47.428268>,  <37.298714, 43.816338, 47.515034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661827, 44.460510, 47.428268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279907, 44.509548, 47.319950>,  <37.050755, 44.538971, 47.254959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279907, 44.509548, 47.319950>,  <37.661827, 44.460510, 47.428268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279907, 44.509548, 47.319950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037391, 0.854217, 0.518570,
		0.294894, 0.505255, -0.811021,
		-0.954798, 0.122598, -0.270795,
		36.993469, 44.546329, 47.238712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477455, 45.240467, 47.223202>,  <37.661827, 44.460510, 47.428268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477455, 45.240467, 47.223202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118477, 45.095802, 47.324234>,  <36.903091, 45.009003, 47.384853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118477, 45.095802, 47.324234>,  <37.477455, 45.240467, 47.223202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118477, 45.095802, 47.324234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206183, 0.850084, 0.484609,
		-0.389976, 0.382833, -0.837471,
		-0.897445, -0.361659, 0.252578,
		36.849243, 44.987305, 47.400009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023739, 45.824337, 47.253590>,  <37.477455, 45.240467, 47.223202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023739, 45.824337, 47.253590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802383, 45.553650, 47.447834>,  <36.669571, 45.391239, 47.564381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802383, 45.553650, 47.447834>,  <37.023739, 45.824337, 47.253590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802383, 45.553650, 47.447834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429953, 0.731425, 0.529299,
		-0.713371, 0.084120, -0.695719,
		-0.553391, -0.676713, 0.485610,
		36.636368, 45.350636, 47.593517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178436, 45.947540, 47.172066>,  <37.023739, 45.824337, 47.253590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178436, 45.947540, 47.172066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313740, 45.769070, 47.503487>,  <36.394924, 45.661987, 47.702339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313740, 45.769070, 47.503487>,  <36.178436, 45.947540, 47.172066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313740, 45.769070, 47.503487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445083, 0.699902, 0.558604,
		-0.829144, -0.557730, 0.038164,
		0.338261, -0.446177, 0.828556,
		36.415218, 45.635216, 47.752052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652031, 45.841209, 47.740150>,  <36.178436, 45.947540, 47.172066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652031, 45.841209, 47.740150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012096, 45.872246, 47.911587>,  <36.228134, 45.890865, 48.014450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012096, 45.872246, 47.911587>,  <35.652031, 45.841209, 47.740150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012096, 45.872246, 47.911587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391360, 0.575982, 0.717693,
		-0.191178, -0.813772, 0.548840,
		0.900160, 0.077587, 0.428593,
		36.282143, 45.895523, 48.040165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991676, 45.532211, 47.474220>,  <35.652031, 45.841209, 47.740150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991676, 45.532211, 47.474220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722607, 45.782410, 47.316101>,  <34.561165, 45.932529, 47.221230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722607, 45.782410, 47.316101>,  <34.991676, 45.532211, 47.474220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722607, 45.782410, 47.316101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011114, -0.542707, -0.839849,
		-0.739854, -0.560553, 0.372017,
		-0.672676, 0.625499, -0.395294,
		34.520805, 45.970058, 47.197514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440437, 45.117428, 47.189083>,  <34.991676, 45.532211, 47.474220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440437, 45.117428, 47.189083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413254, 45.470997, 47.004017>,  <34.396946, 45.683140, 46.892979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413254, 45.470997, 47.004017>,  <34.440437, 45.117428, 47.189083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413254, 45.470997, 47.004017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036566, -0.465629, -0.884225,
		-0.997018, -0.043171, 0.063964,
		-0.067956, 0.883927, -0.462661,
		34.392868, 45.736176, 46.865219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951340, 45.038818, 46.652256>,  <34.440437, 45.117428, 47.189083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951340, 45.038818, 46.652256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175091, 45.356831, 46.558430>,  <34.309341, 45.547638, 46.502136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175091, 45.356831, 46.558430>,  <33.951340, 45.038818, 46.652256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175091, 45.356831, 46.558430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029883, -0.302134, -0.952797,
		-0.828375, 0.525963, -0.192765,
		0.559377, 0.795033, -0.234563,
		34.342903, 45.595341, 46.488060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724285, 45.356815, 46.085587>,  <33.951340, 45.038818, 46.652256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724285, 45.356815, 46.085587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095516, 45.503288, 46.058529>,  <34.318256, 45.591171, 46.042294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095516, 45.503288, 46.058529>,  <33.724285, 45.356815, 46.085587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095516, 45.503288, 46.058529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093536, -0.405067, -0.909490,
		-0.360437, 0.837754, -0.410187,
		0.928082, 0.366181, -0.067641,
		34.373940, 45.613144, 46.038235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809269, 45.775272, 45.499687>,  <33.724285, 45.356815, 46.085587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809269, 45.775272, 45.499687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179230, 45.663391, 45.602703>,  <34.401207, 45.596260, 45.664513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179230, 45.663391, 45.602703>,  <33.809269, 45.775272, 45.499687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179230, 45.663391, 45.602703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121660, -0.424025, -0.897442,
		0.360223, 0.861375, -0.358151,
		0.924899, -0.279707, 0.257539,
		34.456699, 45.579479, 45.679966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114277, 45.597565, 44.813316>,  <33.809269, 45.775272, 45.499687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114277, 45.597565, 44.813316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370098, 45.454430, 45.085472>,  <34.523590, 45.368549, 45.248768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370098, 45.454430, 45.085472>,  <34.114277, 45.597565, 44.813316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370098, 45.454430, 45.085472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402991, -0.597650, -0.693118,
		0.654657, 0.717474, -0.238022,
		0.639548, -0.357834, 0.680391,
		34.561962, 45.347080, 45.289589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698463, 45.474724, 44.450886>,  <34.114277, 45.597565, 44.813316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698463, 45.474724, 44.450886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724415, 45.249744, 44.780602>,  <34.739986, 45.114758, 44.978432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.724415, 45.249744, 44.780602>,  <34.698463, 45.474724, 44.450886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724415, 45.249744, 44.780602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565664, -0.659765, -0.494706,
		0.822080, 0.498365, 0.275351,
		0.064877, -0.562444, 0.824286,
		34.743877, 45.081013, 45.027885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454838, 45.275719, 44.541821>,  <34.698463, 45.474724, 44.450886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454838, 45.275719, 44.541821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227024, 45.021435, 44.750244>,  <35.090336, 44.868866, 44.875298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227024, 45.021435, 44.750244>,  <35.454838, 45.275719, 44.541821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227024, 45.021435, 44.750244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394458, -0.767535, -0.505266,
		0.721137, -0.082227, 0.687896,
		-0.569531, -0.635711, 0.521062,
		35.056164, 44.830723, 44.906563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916248, 44.763878, 44.801937>,  <35.454838, 45.275719, 44.541821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916248, 44.763878, 44.801937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544029, 44.617615, 44.794250>,  <35.320698, 44.529858, 44.789639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544029, 44.617615, 44.794250>,  <35.916248, 44.763878, 44.801937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544029, 44.617615, 44.794250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292755, -0.711438, -0.638867,
		0.219934, -0.600124, 0.769077,
		-0.930550, -0.365660, -0.019220,
		35.264866, 44.507915, 44.788483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027821, 44.084381, 44.972408>,  <35.916248, 44.763878, 44.801937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027821, 44.084381, 44.972408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675442, 44.090427, 44.783222>,  <35.464012, 44.094055, 44.669708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675442, 44.090427, 44.783222>,  <36.027821, 44.084381, 44.972408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675442, 44.090427, 44.783222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347357, -0.658107, -0.668011,
		-0.321359, -0.752773, 0.574510,
		-0.880949, 0.015112, -0.472970,
		35.411156, 44.094959, 44.641331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855034, 43.359184, 44.773182>,  <36.027821, 44.084381, 44.972408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855034, 43.359184, 44.773182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592506, 43.549809, 44.539211>,  <35.434990, 43.664185, 44.398830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592506, 43.549809, 44.539211>,  <35.855034, 43.359184, 44.773182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592506, 43.549809, 44.539211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175156, -0.657844, -0.732504,
		-0.733873, -0.583208, 0.348281,
		-0.656317, 0.476561, -0.584926,
		35.395611, 43.692776, 44.363735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298813, 42.841427, 44.458221>,  <35.855034, 43.359184, 44.773182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298813, 42.841427, 44.458221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299618, 43.165215, 44.223358>,  <35.300098, 43.359486, 44.082439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299618, 43.165215, 44.223358>,  <35.298813, 42.841427, 44.458221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299618, 43.165215, 44.223358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050851, -0.586316, -0.808485,
		-0.998704, 0.031481, 0.039985,
		0.002008, 0.809470, -0.587158,
		35.300220, 43.408054, 44.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728321, 42.629154, 43.970497>,  <35.298813, 42.841427, 44.458221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728321, 42.629154, 43.970497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938118, 42.936584, 43.823967>,  <35.063995, 43.121044, 43.736050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938118, 42.936584, 43.823967>,  <34.728321, 42.629154, 43.970497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938118, 42.936584, 43.823967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086258, -0.476005, -0.875202,
		-0.847032, 0.427442, -0.315958,
		0.524496, 0.768578, -0.366321,
		35.095467, 43.167156, 43.714069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484993, 42.713100, 43.256119>,  <34.728321, 42.629154, 43.970497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484993, 42.713100, 43.256119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845684, 42.883060, 43.287991>,  <35.062099, 42.985035, 43.307114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845684, 42.883060, 43.287991>,  <34.484993, 42.713100, 43.256119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845684, 42.883060, 43.287991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264504, -0.396489, -0.879110,
		-0.341941, 0.813793, -0.469912,
		0.901729, 0.424897, 0.079675,
		35.116203, 43.010529, 43.311893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822136, 42.918358, 42.884079>,  <34.484993, 42.713100, 43.256119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822136, 42.918358, 42.884079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541405, 42.634258, 42.862217>,  <33.372967, 42.463799, 42.849098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541405, 42.634258, 42.862217>,  <33.822136, 42.918358, 42.884079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541405, 42.634258, 42.862217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462311, 0.395772, 0.793494,
		-0.541945, 0.582165, -0.606118,
		-0.701829, -0.710245, -0.054655,
		33.330856, 42.421185, 42.845821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253281, 43.253159, 43.114098>,  <33.822136, 42.918358, 42.884079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253281, 43.253159, 43.114098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175186, 42.864128, 43.164654>,  <33.128330, 42.630711, 43.194988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175186, 42.864128, 43.164654>,  <33.253281, 43.253159, 43.114098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175186, 42.864128, 43.164654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286761, 0.179847, 0.940969,
		-0.937897, 0.147467, -0.314010,
		-0.195236, -0.972578, 0.126390,
		33.116615, 42.572353, 43.202572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498428, 43.166458, 43.290886>,  <33.253281, 43.253159, 43.114098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498428, 43.166458, 43.290886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691124, 42.846756, 43.434620>,  <32.806740, 42.654934, 43.520863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691124, 42.846756, 43.434620>,  <32.498428, 43.166458, 43.290886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691124, 42.846756, 43.434620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385597, 0.174891, 0.905940,
		-0.786919, -0.574987, -0.223937,
		0.481740, -0.799251, 0.359338,
		32.835648, 42.606979, 43.542423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111603, 43.077618, 43.782677>,  <32.498428, 43.166458, 43.290886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111603, 43.077618, 43.782677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420692, 42.840561, 43.873600>,  <32.606148, 42.698326, 43.928154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420692, 42.840561, 43.873600>,  <32.111603, 43.077618, 43.782677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420692, 42.840561, 43.873600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240296, 0.058331, 0.968945,
		-0.587497, -0.803351, -0.097336,
		0.772725, -0.592642, 0.227312,
		32.652512, 42.662769, 43.941795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811110, 42.481037, 44.158344>,  <32.111603, 43.077618, 43.782677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811110, 42.481037, 44.158344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193562, 42.522373, 44.267986>,  <32.423035, 42.547173, 44.333771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193562, 42.522373, 44.267986>,  <31.811110, 42.481037, 44.158344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193562, 42.522373, 44.267986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291918, 0.258034, 0.920979,
		0.024440, -0.960594, 0.276880,
		0.956131, 0.103335, 0.274108,
		32.480400, 42.553375, 44.350220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886810, 42.187359, 44.840481>,  <31.811110, 42.481037, 44.158344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886810, 42.187359, 44.840481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208904, 42.424297, 44.829689>,  <32.402161, 42.566460, 44.823212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208904, 42.424297, 44.829689>,  <31.886810, 42.187359, 44.840481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208904, 42.424297, 44.829689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276038, 0.414742, 0.867060,
		0.524788, -0.690738, 0.497473,
		0.805234, 0.592343, -0.026982,
		32.450474, 42.602001, 44.821594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958790, 42.223854, 45.558823>,  <31.886810, 42.187359, 44.840481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958790, 42.223854, 45.558823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193081, 42.506058, 45.399235>,  <32.333656, 42.675381, 45.303482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193081, 42.506058, 45.399235>,  <31.958790, 42.223854, 45.558823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193081, 42.506058, 45.399235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094944, 0.548586, 0.830686,
		0.804927, -0.448677, 0.388306,
		0.585729, 0.705508, -0.398972,
		32.368801, 42.717709, 45.279545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420853, 41.827869, 46.015591>,  <31.958790, 42.223854, 45.558823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420853, 41.827869, 46.015591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174080, 41.570698, 46.197159>,  <32.026016, 41.416393, 46.306099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174080, 41.570698, 46.197159>,  <32.420853, 41.827869, 46.015591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174080, 41.570698, 46.197159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235002, -0.700931, -0.673402,
		0.751114, -0.308770, 0.583514,
		-0.616930, -0.642929, 0.453917,
		31.989000, 41.377819, 46.333332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771927, 41.182575, 46.064079>,  <32.420853, 41.827869, 46.015591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771927, 41.182575, 46.064079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384361, 41.083626, 46.065155>,  <32.151821, 41.024254, 46.065800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384361, 41.083626, 46.065155>,  <32.771927, 41.182575, 46.064079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384361, 41.083626, 46.065155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155781, -0.618520, -0.770173,
		0.192184, -0.745814, 0.637830,
		-0.968916, -0.247376, 0.002686,
		32.093685, 41.009415, 46.065960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758209, 40.530231, 46.122276>,  <32.771927, 41.182575, 46.064079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758209, 40.530231, 46.122276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411518, 40.629269, 45.949078>,  <32.203503, 40.688690, 45.845158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411518, 40.629269, 45.949078>,  <32.758209, 40.530231, 46.122276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411518, 40.629269, 45.949078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142821, -0.708555, -0.691051,
		-0.477898, -0.660793, 0.578762,
		-0.866727, 0.247593, -0.432993,
		32.151501, 40.703545, 45.819180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420391, 39.879780, 46.040817>,  <32.758209, 40.530231, 46.122276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420391, 39.879780, 46.040817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214630, 40.118732, 45.794720>,  <32.091171, 40.262104, 45.647060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214630, 40.118732, 45.794720>,  <32.420391, 39.879780, 46.040817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214630, 40.118732, 45.794720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016960, -0.710217, -0.703778,
		-0.857379, -0.372462, 0.355209,
		-0.514407, 0.597380, -0.615242,
		32.060307, 40.297947, 45.610146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074993, 39.337456, 45.602833>,  <32.420391, 39.879780, 46.040817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074993, 39.337456, 45.602833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.010025, 39.685684, 45.417046>,  <31.971043, 39.894623, 45.305573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.010025, 39.685684, 45.417046>,  <32.074993, 39.337456, 45.602833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010025, 39.685684, 45.417046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049797, -0.462882, -0.885020,
		-0.985464, -0.166877, 0.031831,
		-0.162424, 0.870570, -0.464463,
		31.961298, 39.946854, 45.277706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532516, 39.268097, 45.098457>,  <32.074993, 39.337456, 45.602833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532516, 39.268097, 45.098457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777843, 39.557018, 44.970634>,  <31.925039, 39.730373, 44.893940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777843, 39.557018, 44.970634>,  <31.532516, 39.268097, 45.098457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777843, 39.557018, 44.970634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020693, -0.389748, -0.920689,
		-0.789566, 0.571287, -0.224092,
		0.613317, 0.722308, -0.319553,
		31.961838, 39.773712, 44.874767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109915, 39.639988, 44.603832>,  <31.532516, 39.268097, 45.098457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109915, 39.639988, 44.603832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501017, 39.679508, 44.529827>,  <31.735678, 39.703220, 44.485424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501017, 39.679508, 44.529827>,  <31.109915, 39.639988, 44.603832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501017, 39.679508, 44.529827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131898, -0.396210, -0.908637,
		-0.163080, 0.912829, -0.374365,
		0.977757, 0.098802, -0.185014,
		31.794344, 39.709148, 44.474323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.198647, 43.271576, 48.746635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383415, 43.397228, 48.414864>,  <35.494278, 43.472622, 48.215801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383415, 43.397228, 48.414864>,  <35.198647, 43.271576, 48.746635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383415, 43.397228, 48.414864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210138, -0.947311, -0.241751,
		-0.861668, -0.062624, -0.503594,
		0.461921, 0.314133, -0.829427,
		35.521992, 43.491467, 48.166035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985821, 42.842773, 48.173752>,  <35.198647, 43.271576, 48.746635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985821, 42.842773, 48.173752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357410, 42.989765, 48.156029>,  <35.580364, 43.077961, 48.145393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357410, 42.989765, 48.156029>,  <34.985821, 42.842773, 48.173752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357410, 42.989765, 48.156029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347203, -0.906621, -0.239769,
		-0.128282, 0.207355, -0.969818,
		0.928975, 0.367482, -0.044309,
		35.636105, 43.100010, 48.142735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246819, 42.662197, 47.525120>,  <34.985821, 42.842773, 48.173752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246819, 42.662197, 47.525120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.569450, 42.723583, 47.753464>,  <35.763027, 42.760414, 47.890472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.569450, 42.723583, 47.753464>,  <35.246819, 42.662197, 47.525120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569450, 42.723583, 47.753464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370916, -0.883334, -0.286604,
		0.460279, 0.442910, -0.769399,
		0.806576, 0.153465, 0.570863,
		35.811424, 42.769623, 47.924721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706276, 42.243057, 47.219353>,  <35.246819, 42.662197, 47.525120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706276, 42.243057, 47.219353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.959324, 42.314575, 47.520771>,  <36.111153, 42.357487, 47.701622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.959324, 42.314575, 47.520771>,  <35.706276, 42.243057, 47.219353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959324, 42.314575, 47.520771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379438, -0.919762, -0.100318,
		0.675144, 0.349386, -0.649700,
		0.632619, 0.178792, 0.753543,
		36.149109, 42.368214, 47.746834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393684, 42.112942, 46.943661>,  <35.706276, 42.243057, 47.219353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393684, 42.112942, 46.943661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.368565, 42.044334, 47.336933>,  <36.353493, 42.003170, 47.572895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.368565, 42.044334, 47.336933>,  <36.393684, 42.112942, 46.943661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368565, 42.044334, 47.336933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386370, -0.912483, -0.134511,
		0.920203, 0.371423, 0.123576,
		-0.062800, -0.171523, 0.983177,
		36.349724, 41.992878, 47.631886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114334, 42.172192, 47.210861>,  <36.393684, 42.112942, 46.943661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114334, 42.172192, 47.210861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863297, 41.948891, 47.427921>,  <36.712673, 41.814911, 47.558159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863297, 41.948891, 47.427921>,  <37.114334, 42.172192, 47.210861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863297, 41.948891, 47.427921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547998, -0.811865, -0.201430,
		0.553011, 0.170958, 0.815446,
		-0.627596, -0.558256, 0.542655,
		36.675018, 41.781414, 47.590717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598026, 41.666740, 47.555805>,  <37.114334, 42.172192, 47.210861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598026, 41.666740, 47.555805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237980, 41.521721, 47.652424>,  <37.021950, 41.434708, 47.710396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237980, 41.521721, 47.652424>,  <37.598026, 41.666740, 47.555805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237980, 41.521721, 47.652424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397965, -0.909863, 0.117359,
		0.177223, 0.201763, 0.963267,
		-0.900120, -0.362548, 0.241543,
		36.967945, 41.412956, 47.724888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627357, 41.090393, 48.087521>,  <37.598026, 41.666740, 47.555805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627357, 41.090393, 48.087521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.285946, 41.050770, 47.882900>,  <37.081100, 41.026997, 47.760128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.285946, 41.050770, 47.882900>,  <37.627357, 41.090393, 48.087521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285946, 41.050770, 47.882900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177264, -0.978404, -0.106313,
		-0.489973, -0.181421, 0.852651,
		-0.853525, -0.099054, -0.511551,
		37.029888, 41.021053, 47.729435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501362, 40.450638, 48.194191>,  <37.627357, 41.090393, 48.087521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501362, 40.450638, 48.194191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.261169, 40.523678, 47.882786>,  <37.117054, 40.567501, 47.695942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.261169, 40.523678, 47.882786>,  <37.501362, 40.450638, 48.194191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261169, 40.523678, 47.882786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214612, -0.901059, -0.376875,
		-0.770303, -0.393384, 0.501880,
		-0.600480, 0.182598, -0.778513,
		37.081024, 40.578457, 47.649231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069813, 39.867714, 48.149620>,  <37.501362, 40.450638, 48.194191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069813, 39.867714, 48.149620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080666, 40.071342, 47.805500>,  <37.087177, 40.193520, 47.599030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080666, 40.071342, 47.805500>,  <37.069813, 39.867714, 48.149620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080666, 40.071342, 47.805500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191821, -0.847270, -0.495316,
		-0.981055, -0.151585, -0.120637,
		0.027129, 0.509073, -0.860295,
		37.088806, 40.224064, 47.547413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669693, 39.487862, 47.727329>,  <37.069813, 39.867714, 48.149620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669693, 39.487862, 47.727329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.888176, 39.708767, 47.475403>,  <37.019264, 39.841309, 47.324245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.888176, 39.708767, 47.475403>,  <36.669693, 39.487862, 47.727329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888176, 39.708767, 47.475403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109676, -0.792562, -0.599847,
		-0.830440, 0.258564, -0.493472,
		0.546206, 0.552259, -0.629817,
		37.052036, 39.874443, 47.286457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391975, 39.294491, 47.103966>,  <36.669693, 39.487862, 47.727329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391975, 39.294491, 47.103966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.760181, 39.443043, 47.055428>,  <36.981106, 39.532173, 47.026306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.760181, 39.443043, 47.055428>,  <36.391975, 39.294491, 47.103966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760181, 39.443043, 47.055428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245405, -0.791260, -0.560076,
		-0.304014, 0.485782, -0.819507,
		0.920517, 0.371381, -0.121341,
		37.036335, 39.554459, 47.019024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763130, 39.686615, 46.684624>,  <36.391975, 39.294491, 47.103966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763130, 39.686615, 46.684624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.476002, 39.408295, 46.674881>,  <35.303726, 39.241302, 46.669033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.476002, 39.408295, 46.674881>,  <35.763130, 39.686615, 46.684624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476002, 39.408295, 46.674881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397151, 0.380479, 0.835168,
		-0.571845, 0.609174, -0.549455,
		-0.717819, -0.695804, -0.024359,
		35.260654, 39.199554, 46.667572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058613, 40.050186, 46.607170>,  <35.763130, 39.686615, 46.684624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058613, 40.050186, 46.607170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982868, 39.697159, 46.779320>,  <34.937424, 39.485344, 46.882610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.982868, 39.697159, 46.779320>,  <35.058613, 40.050186, 46.607170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982868, 39.697159, 46.779320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502942, 0.463619, 0.729456,
		-0.843322, -0.078322, -0.531671,
		-0.189360, -0.882566, 0.430371,
		34.926060, 39.432388, 46.908432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334160, 40.148499, 46.709587>,  <35.058613, 40.050186, 46.607170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334160, 40.148499, 46.709587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487083, 39.865002, 46.946743>,  <34.578838, 39.694904, 47.089035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487083, 39.865002, 46.946743>,  <34.334160, 40.148499, 46.709587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487083, 39.865002, 46.946743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423971, 0.435563, 0.794061,
		-0.821029, -0.554945, -0.133968,
		0.382308, -0.708746, 0.592890,
		34.601776, 39.652378, 47.124611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735302, 39.934479, 47.095924>,  <34.334160, 40.148499, 46.709587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735302, 39.934479, 47.095924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055061, 39.835392, 47.314865>,  <34.246918, 39.775940, 47.446228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055061, 39.835392, 47.314865>,  <33.735302, 39.934479, 47.095924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055061, 39.835392, 47.314865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450354, 0.355946, 0.818830,
		-0.397665, -0.901077, 0.172984,
		0.799402, -0.247716, 0.547351,
		34.294884, 39.761078, 47.479069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464962, 39.560925, 47.754738>,  <33.735302, 39.934479, 47.095924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464962, 39.560925, 47.754738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.825714, 39.709377, 47.843170>,  <34.042164, 39.798447, 47.896229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.825714, 39.709377, 47.843170>,  <33.464962, 39.560925, 47.754738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825714, 39.709377, 47.843170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359742, 0.361901, 0.860008,
		0.239160, -0.855157, 0.459901,
		0.901880, 0.371125, 0.221083,
		34.096279, 39.820717, 47.909496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485996, 39.350220, 48.449501>,  <33.464962, 39.560925, 47.754738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485996, 39.350220, 48.449501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.773388, 39.623825, 48.399059>,  <33.945824, 39.787991, 48.368793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.773388, 39.623825, 48.399059>,  <33.485996, 39.350220, 48.449501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773388, 39.623825, 48.399059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409288, 0.562374, 0.718484,
		0.562374, -0.464605, 0.684016,
		-0.718484, -0.684016, 0.126107,
		33.988934, 39.829029, 48.361229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891666, 39.377258, 49.077152>,  <33.485996, 39.350220, 48.449501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891666, 39.377258, 49.077152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952785, 39.720089, 48.880348>,  <33.989456, 39.925789, 48.762268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952785, 39.720089, 48.880348>,  <33.891666, 39.377258, 49.077152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952785, 39.720089, 48.880348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428429, 0.506085, 0.748550,
		0.890563, 0.096414, 0.444525,
		0.152797, 0.857078, -0.492007,
		33.998623, 39.977211, 48.732746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069801, 39.922646, 49.510147>,  <33.891666, 39.377258, 49.077152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069801, 39.922646, 49.510147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957291, 40.168655, 49.215492>,  <33.889786, 40.316261, 49.038700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957291, 40.168655, 49.215492>,  <34.069801, 39.922646, 49.510147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957291, 40.168655, 49.215492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586717, 0.497221, 0.639167,
		0.759374, 0.611977, 0.220989,
		-0.281275, 0.615024, -0.736634,
		33.872910, 40.353161, 48.994503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159832, 40.567184, 49.790844>,  <34.069801, 39.922646, 49.510147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159832, 40.567184, 49.790844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.896271, 40.611496, 49.493233>,  <33.738132, 40.638084, 49.314667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.896271, 40.611496, 49.493233>,  <34.159832, 40.567184, 49.790844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896271, 40.611496, 49.493233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581498, 0.552434, 0.597224,
		0.477185, 0.826163, -0.299583,
		-0.658904, 0.110779, -0.744025,
		33.698601, 40.644730, 49.270023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863773, 41.257492, 49.844376>,  <34.159832, 40.567184, 49.790844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863773, 41.257492, 49.844376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593559, 41.076874, 49.611217>,  <33.431431, 40.968502, 49.471325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593559, 41.076874, 49.611217>,  <33.863773, 41.257492, 49.844376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593559, 41.076874, 49.611217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736491, 0.450946, 0.504211,
		0.035178, 0.769905, -0.637188,
		-0.675532, -0.451546, -0.582891,
		33.390900, 40.941410, 49.436352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395878, 41.691250, 49.723278>,  <33.863773, 41.257492, 49.844376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395878, 41.691250, 49.723278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208321, 41.349895, 49.632175>,  <33.095787, 41.145084, 49.577515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208321, 41.349895, 49.632175>,  <33.395878, 41.691250, 49.723278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208321, 41.349895, 49.632175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802506, 0.303915, 0.513439,
		-0.368943, 0.423523, -0.827351,
		-0.468898, -0.853383, -0.227753,
		33.067650, 41.093880, 49.563850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636681, 41.859592, 49.665085>,  <33.395878, 41.691250, 49.723278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636681, 41.859592, 49.665085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.622261, 41.464382, 49.725082>,  <32.613609, 41.227257, 49.761082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.622261, 41.464382, 49.725082>,  <32.636681, 41.859592, 49.665085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622261, 41.464382, 49.725082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798097, 0.118795, 0.590702,
		-0.601450, -0.098412, -0.792826,
		-0.036052, -0.988030, 0.149992,
		32.611446, 41.167973, 49.770081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933628, 41.549568, 49.505405>,  <32.636681, 41.859592, 49.665085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933628, 41.549568, 49.505405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.092632, 41.274395, 49.748299>,  <32.188034, 41.109291, 49.894035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.092632, 41.274395, 49.748299>,  <31.933628, 41.549568, 49.505405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092632, 41.274395, 49.748299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817092, 0.035760, 0.575397,
		-0.417549, -0.724894, -0.547888,
		0.397509, -0.687931, 0.607237,
		32.211884, 41.068016, 49.930470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408323, 41.072769, 49.619686>,  <31.933628, 41.549568, 49.505405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408323, 41.072769, 49.619686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671349, 40.990688, 49.909653>,  <31.829165, 40.941441, 50.083633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671349, 40.990688, 49.909653>,  <31.408323, 41.072769, 49.619686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671349, 40.990688, 49.909653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728508, 0.072101, 0.681233,
		-0.192059, -0.976060, -0.102082,
		0.657564, -0.205205, 0.724915,
		31.868618, 40.929127, 50.127129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195295, 40.585136, 49.137371>,  <31.408323, 41.072769, 49.619686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195295, 40.585136, 49.137371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.051764, 40.953964, 49.079372>,  <30.965645, 41.175262, 49.044571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.051764, 40.953964, 49.079372>,  <31.195295, 40.585136, 49.137371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051764, 40.953964, 49.079372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507222, 0.062218, -0.859566,
		-0.783560, -0.381985, -0.490021,
		-0.358830, 0.922071, -0.145000,
		30.944115, 41.230587, 49.035873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714159, 40.567135, 48.458069>,  <31.195295, 40.585136, 49.137371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714159, 40.567135, 48.458069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.863138, 40.932133, 48.525757>,  <30.952526, 41.151131, 48.566372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.863138, 40.932133, 48.525757>,  <30.714159, 40.567135, 48.458069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863138, 40.932133, 48.525757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257540, 0.073558, -0.963464,
		-0.891602, 0.402424, -0.207607,
		0.372450, 0.912493, 0.169225,
		30.974873, 41.205879, 48.576523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534887, 40.871281, 47.945305>,  <30.714159, 40.567135, 48.458069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534887, 40.871281, 47.945305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809101, 41.127502, 48.083710>,  <30.973629, 41.281235, 48.166752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809101, 41.127502, 48.083710>,  <30.534887, 40.871281, 47.945305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809101, 41.127502, 48.083710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320410, 0.161318, -0.933442,
		-0.653742, 0.750775, -0.094651,
		0.685536, 0.640557, 0.346016,
		31.014761, 41.319668, 48.187515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541092, 41.304790, 47.426228>,  <30.534887, 40.871281, 47.945305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541092, 41.304790, 47.426228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.876919, 41.378204, 47.630753>,  <31.078415, 41.422253, 47.753468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.876919, 41.378204, 47.630753>,  <30.541092, 41.304790, 47.426228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876919, 41.378204, 47.630753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477774, 0.198519, -0.855758,
		-0.258568, 0.962759, 0.078981,
		0.839568, 0.183537, 0.511312,
		31.128790, 41.433266, 47.784145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776604, 41.908836, 47.142731>,  <30.541092, 41.304790, 47.426228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776604, 41.908836, 47.142731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083773, 41.718788, 47.314571>,  <31.268074, 41.604759, 47.417675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083773, 41.718788, 47.314571>,  <30.776604, 41.908836, 47.142731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083773, 41.718788, 47.314571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529962, 0.094573, -0.842731,
		0.359768, 0.874825, 0.324419,
		0.767924, -0.475118, 0.429600,
		31.314150, 41.576252, 47.443451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325817, 42.265556, 46.967979>,  <30.776604, 41.908836, 47.142731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325817, 42.265556, 46.967979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.462353, 41.900322, 47.057201>,  <31.544273, 41.681179, 47.110733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.462353, 41.900322, 47.057201>,  <31.325817, 42.265556, 46.967979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462353, 41.900322, 47.057201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414298, -0.066859, -0.907682,
		0.843709, 0.402239, 0.355470,
		0.341339, -0.913090, 0.223056,
		31.564754, 41.626396, 47.124119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021282, 42.204456, 46.608131>,  <31.325817, 42.265556, 46.967979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021282, 42.204456, 46.608131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916348, 41.829529, 46.699879>,  <31.853386, 41.604572, 46.754925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916348, 41.829529, 46.699879>,  <32.021282, 42.204456, 46.608131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916348, 41.829529, 46.699879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346099, -0.313271, -0.884351,
		0.900774, -0.152617, 0.406589,
		-0.262340, -0.937320, 0.229365,
		31.837645, 41.548332, 46.768688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469276, 42.518703, 46.173355>,  <32.021282, 42.204456, 46.608131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469276, 42.518703, 46.173355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467117, 42.788223, 45.877800>,  <32.465824, 42.949936, 45.700466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.467117, 42.788223, 45.877800>,  <32.469276, 42.518703, 46.173355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467117, 42.788223, 45.877800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168738, 0.727693, 0.664823,
		0.985646, 0.128266, 0.109770,
		-0.005395, 0.673803, -0.738891,
		32.465500, 42.990364, 45.656132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736057, 42.988194, 46.497101>,  <32.469276, 42.518703, 46.173355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736057, 42.988194, 46.497101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.600311, 43.185650, 46.176815>,  <32.518864, 43.304123, 45.984642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.600311, 43.185650, 46.176815>,  <32.736057, 42.988194, 46.497101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600311, 43.185650, 46.176815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029771, 0.845171, 0.533666,
		0.940183, 0.204947, -0.272127,
		-0.339367, 0.493642, -0.800717,
		32.498501, 43.333744, 45.936600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114521, 43.525333, 46.410789>,  <32.736057, 42.988194, 46.497101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114521, 43.525333, 46.410789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.762127, 43.610111, 46.241585>,  <32.550690, 43.660976, 46.140060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.762127, 43.610111, 46.241585>,  <33.114521, 43.525333, 46.410789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762127, 43.610111, 46.241585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038824, 0.923428, 0.381803,
		0.471541, 0.319941, -0.821758,
		-0.880989, 0.211940, -0.423013,
		32.497829, 43.673695, 46.114681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176712, 44.181953, 46.194290>,  <33.114521, 43.525333, 46.410789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176712, 44.181953, 46.194290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.779358, 44.138126, 46.180511>,  <32.540947, 44.111832, 46.172245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.779358, 44.138126, 46.180511>,  <33.176712, 44.181953, 46.194290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779358, 44.138126, 46.180511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114686, 0.929957, 0.349323,
		-0.006238, 0.350962, -0.936369,
		-0.993382, -0.109567, -0.034449,
		32.481342, 44.105255, 46.170177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918564, 44.838905, 45.928398>,  <33.176712, 44.181953, 46.194290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918564, 44.838905, 45.928398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.591469, 44.674744, 46.089828>,  <32.395210, 44.576248, 46.186687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.591469, 44.674744, 46.089828>,  <32.918564, 44.838905, 45.928398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591469, 44.674744, 46.089828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259931, 0.888888, 0.377245,
		-0.513558, 0.203585, -0.833553,
		-0.817737, -0.410404, 0.403578,
		32.346149, 44.551624, 46.210903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313656, 45.317104, 45.774494>,  <32.918564, 44.838905, 45.928398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313656, 45.317104, 45.774494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.229851, 45.117931, 46.111103>,  <32.179569, 44.998428, 46.313068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.229851, 45.117931, 46.111103>,  <32.313656, 45.317104, 45.774494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229851, 45.117931, 46.111103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307756, 0.850466, 0.426607,
		-0.928112, -0.169606, -0.331425,
		-0.209511, -0.497937, 0.841525,
		32.166996, 44.968552, 46.363560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707397, 45.575142, 45.906792>,  <32.313656, 45.317104, 45.774494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707397, 45.575142, 45.906792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.849840, 45.422691, 46.248066>,  <31.935305, 45.331219, 46.452831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.849840, 45.422691, 46.248066>,  <31.707397, 45.575142, 45.906792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849840, 45.422691, 46.248066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120683, 0.886637, 0.446442,
		-0.926620, -0.261946, 0.269740,
		0.356105, -0.381129, 0.853188,
		31.956671, 45.308353, 46.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208052, 45.738506, 46.433907>,  <31.707397, 45.575142, 45.906792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208052, 45.738506, 46.433907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.548168, 45.658573, 46.628666>,  <31.752237, 45.610615, 46.745522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.548168, 45.658573, 46.628666>,  <31.208052, 45.738506, 46.433907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548168, 45.658573, 46.628666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175905, 0.764018, 0.620753,
		-0.496048, -0.613469, 0.614485,
		0.850290, -0.199832, 0.486902,
		31.803255, 45.598625, 46.774734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990259, 45.707447, 47.156311>,  <31.208052, 45.738506, 46.433907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990259, 45.707447, 47.156311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.382843, 45.783676, 47.164516>,  <31.618393, 45.829414, 47.169441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.382843, 45.783676, 47.164516>,  <30.990259, 45.707447, 47.156311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382843, 45.783676, 47.164516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128357, 0.573969, 0.808755,
		0.142354, -0.796392, 0.587788,
		0.981458, 0.190576, 0.020515,
		31.677280, 45.840851, 47.170670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.454025, 36.060577, 35.909954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653923, 36.280212, 36.177914>,  <37.773861, 36.411991, 36.338688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653923, 36.280212, 36.177914>,  <37.454025, 36.060577, 35.909954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653923, 36.280212, 36.177914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657649, 0.743851, -0.119094,
		-0.563697, -0.381042, 0.732839,
		0.499743, 0.549084, 0.669898,
		37.803844, 36.444939, 36.378883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148064, 36.141228, 36.631710>,  <37.454025, 36.060577, 35.909954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148064, 36.141228, 36.631710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380344, 36.459816, 36.564281>,  <37.519714, 36.650970, 36.523827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380344, 36.459816, 36.564281>,  <37.148064, 36.141228, 36.631710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380344, 36.459816, 36.564281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795029, 0.599373, 0.093172,
		0.175244, 0.079913, 0.981276,
		0.580705, 0.796471, -0.168570,
		37.554558, 36.698757, 36.513710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994656, 36.594997, 37.203789>,  <37.148064, 36.141228, 36.631710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994656, 36.594997, 37.203789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129639, 36.828094, 36.908077>,  <37.210629, 36.967953, 36.730652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129639, 36.828094, 36.908077>,  <36.994656, 36.594997, 37.203789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129639, 36.828094, 36.908077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714740, 0.669693, 0.201637,
		0.612591, 0.460346, 0.642506,
		0.337459, 0.582746, -0.739276,
		37.230877, 37.002918, 36.686295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096825, 37.207497, 37.536587>,  <36.994656, 36.594997, 37.203789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096825, 37.207497, 37.536587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053883, 37.275246, 37.144711>,  <37.028118, 37.315895, 36.909584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053883, 37.275246, 37.144711>,  <37.096825, 37.207497, 37.536587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053883, 37.275246, 37.144711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666565, 0.718858, 0.197320,
		0.737676, 0.674209, 0.035722,
		-0.107355, 0.169369, -0.979688,
		37.021675, 37.326057, 36.850803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270859, 37.931042, 37.422230>,  <37.096825, 37.207497, 37.536587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270859, 37.931042, 37.422230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042149, 37.797672, 37.122391>,  <36.904922, 37.717651, 36.942486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042149, 37.797672, 37.122391>,  <37.270859, 37.931042, 37.422230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042149, 37.797672, 37.122391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630974, 0.762691, 0.142036,
		0.524356, 0.554191, -0.646469,
		-0.571772, -0.333428, -0.749602,
		36.870617, 37.697643, 36.897511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098309, 38.524147, 37.082760>,  <37.270859, 37.931042, 37.422230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098309, 38.524147, 37.082760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830044, 38.257980, 36.951653>,  <36.669086, 38.098282, 36.872986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830044, 38.257980, 36.951653>,  <37.098309, 38.524147, 37.082760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830044, 38.257980, 36.951653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736727, 0.648948, 0.189996,
		0.086280, 0.368902, -0.925455,
		-0.670663, -0.665415, -0.327772,
		36.628845, 38.058357, 36.853321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648380, 38.954250, 36.715137>,  <37.098309, 38.524147, 37.082760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648380, 38.954250, 36.715137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456741, 38.619122, 36.819847>,  <36.341759, 38.418045, 36.882675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456741, 38.619122, 36.819847>,  <36.648380, 38.954250, 36.715137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456741, 38.619122, 36.819847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784754, 0.542442, 0.299863,
		-0.393231, -0.061769, -0.917363,
		-0.479094, -0.837819, 0.261779,
		36.313015, 38.367775, 36.898380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063534, 39.090832, 36.443550>,  <36.648380, 38.954250, 36.715137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063534, 39.090832, 36.443550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011829, 38.810570, 36.724224>,  <35.980804, 38.642410, 36.892628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011829, 38.810570, 36.724224>,  <36.063534, 39.090832, 36.443550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011829, 38.810570, 36.724224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762347, 0.522741, 0.381535,
		-0.634128, -0.485611, -0.601718,
		-0.129265, -0.700660, 0.701688,
		35.973049, 38.600372, 36.934731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344994, 38.986019, 36.345867>,  <36.063534, 39.090832, 36.443550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344994, 38.986019, 36.345867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475113, 38.858852, 36.702095>,  <35.553185, 38.782555, 36.915833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475113, 38.858852, 36.702095>,  <35.344994, 38.986019, 36.345867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475113, 38.858852, 36.702095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751600, 0.484583, 0.447524,
		-0.573828, -0.814929, -0.081310,
		0.325299, -0.317915, 0.890568,
		35.572704, 38.763477, 36.969265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769722, 38.804626, 36.726845>,  <35.344994, 38.986019, 36.345867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769722, 38.804626, 36.726845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042244, 38.796932, 37.019547>,  <35.205757, 38.792316, 37.195168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042244, 38.796932, 37.019547>,  <34.769722, 38.804626, 36.726845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042244, 38.796932, 37.019547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628757, 0.496503, 0.598457,
		-0.374827, -0.867822, 0.326174,
		0.681300, -0.019233, 0.731751,
		35.246635, 38.791161, 37.239071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367752, 38.729794, 37.321953>,  <34.769722, 38.804626, 36.726845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367752, 38.729794, 37.321953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715305, 38.870647, 37.461117>,  <34.923836, 38.955158, 37.544617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715305, 38.870647, 37.461117>,  <34.367752, 38.729794, 37.321953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715305, 38.870647, 37.461117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492747, 0.548024, 0.675922,
		0.047350, -0.758730, 0.649682,
		0.868883, 0.352134, 0.347913,
		34.975971, 38.976288, 37.565491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362816, 38.570091, 38.079098>,  <34.367752, 38.729794, 37.321953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362816, 38.570091, 38.079098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606255, 38.870926, 37.977924>,  <34.752319, 39.051426, 37.917221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606255, 38.870926, 37.977924>,  <34.362816, 38.570091, 38.079098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606255, 38.870926, 37.977924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356646, 0.544028, 0.759498,
		0.708812, -0.372020, 0.599322,
		0.608596, 0.752087, -0.252934,
		34.788834, 39.096554, 37.902046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424511, 38.246323, 38.675541>,  <34.362816, 38.570091, 38.079098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424511, 38.246323, 38.675541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101521, 38.035271, 38.781063>,  <33.907726, 37.908642, 38.844376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101521, 38.035271, 38.781063>,  <34.424511, 38.246323, 38.675541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101521, 38.035271, 38.781063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012535, -0.462445, -0.886559,
		0.589767, -0.712569, 0.380027,
		-0.807476, -0.527626, 0.263803,
		33.859276, 37.876984, 38.860203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567299, 37.543018, 38.464569>,  <34.424511, 38.246323, 38.675541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567299, 37.543018, 38.464569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173141, 37.533222, 38.531979>,  <33.936646, 37.527344, 38.572426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173141, 37.533222, 38.531979>,  <34.567299, 37.543018, 38.464569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173141, 37.533222, 38.531979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114299, -0.638479, -0.761105,
		0.126235, -0.769250, 0.626354,
		-0.985393, -0.024486, 0.168523,
		33.877522, 37.525875, 38.582535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353058, 36.812061, 38.416393>,  <34.567299, 37.543018, 38.464569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353058, 36.812061, 38.416393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028976, 37.042980, 38.375813>,  <33.834526, 37.181534, 38.351463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028976, 37.042980, 38.375813>,  <34.353058, 36.812061, 38.416393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028976, 37.042980, 38.375813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272244, -0.523912, -0.807093,
		-0.519050, -0.626317, 0.581648,
		-0.810228, 0.577272, -0.101426,
		33.785915, 37.216171, 38.345379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773605, 36.355808, 38.524944>,  <34.353058, 36.812061, 38.416393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773605, 36.355808, 38.524944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659988, 36.661541, 38.293388>,  <33.591820, 36.844982, 38.154453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659988, 36.661541, 38.293388>,  <33.773605, 36.355808, 38.524944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659988, 36.661541, 38.293388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425678, -0.641522, -0.638159,
		-0.859138, 0.065159, 0.507578,
		-0.284041, 0.764332, -0.578893,
		33.574776, 36.890842, 38.119720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145771, 36.143459, 38.338020>,  <33.773605, 36.355808, 38.524944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145771, 36.143459, 38.338020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275135, 36.411205, 38.070480>,  <33.352753, 36.571854, 37.909958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275135, 36.411205, 38.070480>,  <33.145771, 36.143459, 38.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275135, 36.411205, 38.070480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323652, -0.585958, -0.742901,
		-0.889188, 0.456737, 0.027136,
		0.323410, 0.669361, -0.668851,
		33.372158, 36.612015, 37.869823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706116, 36.087128, 37.753365>,  <33.145771, 36.143459, 38.338020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706116, 36.087128, 37.753365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021778, 36.264442, 37.583313>,  <33.211174, 36.370831, 37.481281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021778, 36.264442, 37.583313>,  <32.706116, 36.087128, 37.753365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021778, 36.264442, 37.583313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108551, -0.580614, -0.806910,
		-0.604530, 0.682923, -0.410074,
		0.789152, 0.443287, -0.425131,
		33.258522, 36.397427, 37.455772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505020, 36.076340, 37.055775>,  <32.706116, 36.087128, 37.753365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505020, 36.076340, 37.055775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897930, 36.151001, 37.048954>,  <33.133678, 36.195797, 37.044861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897930, 36.151001, 37.048954>,  <32.505020, 36.076340, 37.055775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897930, 36.151001, 37.048954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099622, -0.597001, -0.796031,
		-0.158765, 0.780225, -0.605015,
		0.982278, 0.186655, -0.017056,
		33.192612, 36.206997, 37.043839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667618, 36.152767, 36.389854>,  <32.505020, 36.076340, 37.055775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667618, 36.152767, 36.389854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019573, 36.040222, 36.543026>,  <33.230747, 35.972694, 36.634930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019573, 36.040222, 36.543026>,  <32.667618, 36.152767, 36.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019573, 36.040222, 36.543026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145026, -0.608402, -0.780266,
		0.452511, 0.742080, -0.494521,
		0.879887, -0.281361, 0.382929,
		33.283539, 35.955814, 36.657906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137604, 36.158691, 35.698288>,  <32.667618, 36.152767, 36.389854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137604, 36.158691, 35.698288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288979, 35.928478, 35.988266>,  <33.379803, 35.790352, 36.162254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288979, 35.928478, 35.988266>,  <33.137604, 36.158691, 35.698288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288979, 35.928478, 35.988266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316153, -0.655726, -0.685618,
		0.869961, 0.488658, -0.066196,
		0.378439, -0.575532, 0.724946,
		33.402512, 35.755817, 36.205750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791882, 36.013741, 35.446091>,  <33.137604, 36.158691, 35.698288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791882, 36.013741, 35.446091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730484, 35.750637, 35.741062>,  <33.693645, 35.592777, 35.918045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730484, 35.750637, 35.741062>,  <33.791882, 36.013741, 35.446091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730484, 35.750637, 35.741062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356362, -0.732898, -0.579540,
		0.921654, 0.173837, 0.346893,
		-0.153492, -0.657754, 0.737427,
		33.684437, 35.553310, 35.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470570, 35.735363, 35.459084>,  <33.791882, 36.013741, 35.446091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470570, 35.735363, 35.459084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215408, 35.477974, 35.628330>,  <34.062313, 35.323540, 35.729877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215408, 35.477974, 35.628330>,  <34.470570, 35.735363, 35.459084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215408, 35.477974, 35.628330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419356, -0.751050, -0.509965,
		0.645929, -0.147872, 0.748939,
		-0.637900, -0.643474, 0.423114,
		34.024036, 35.284931, 35.755264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826656, 35.110962, 35.497341>,  <34.470570, 35.735363, 35.459084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826656, 35.110962, 35.497341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451992, 34.972721, 35.520042>,  <34.227192, 34.889778, 35.533665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451992, 34.972721, 35.520042>,  <34.826656, 35.110962, 35.497341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451992, 34.972721, 35.520042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279555, -0.835387, -0.473262,
		0.210973, -0.427421, 0.879091,
		-0.936664, -0.345600, 0.056756,
		34.170994, 34.869041, 35.537067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906841, 34.499695, 35.625813>,  <34.826656, 35.110962, 35.497341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906841, 34.499695, 35.625813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522926, 34.491535, 35.513824>,  <34.292576, 34.486641, 35.446632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522926, 34.491535, 35.513824>,  <34.906841, 34.499695, 35.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522926, 34.491535, 35.513824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151972, -0.876317, -0.457136,
		-0.236018, -0.481303, 0.844182,
		-0.959792, -0.020399, -0.279971,
		34.234989, 34.485416, 35.429832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649876, 33.833603, 35.757797>,  <34.906841, 34.499695, 35.625813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649876, 33.833603, 35.757797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418411, 33.989876, 35.471436>,  <34.279533, 34.083637, 35.299618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418411, 33.989876, 35.471436>,  <34.649876, 33.833603, 35.757797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418411, 33.989876, 35.471436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053600, -0.894121, -0.444606,
		-0.813805, -0.218904, 0.538333,
		-0.578661, 0.390677, -0.715907,
		34.244812, 34.107079, 35.256664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741947, 33.719753, 36.553883>,  <34.649876, 33.833603, 35.757797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741947, 33.719753, 36.553883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360291, 33.724579, 36.673531>,  <34.131298, 33.727474, 36.745319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360291, 33.724579, 36.673531>,  <34.741947, 33.719753, 36.553883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360291, 33.724579, 36.673531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256185, -0.484040, 0.836704,
		0.154882, 0.874962, 0.458751,
		-0.954139, 0.012065, 0.299121,
		34.074047, 33.728199, 36.763268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177414, 33.481766, 37.146240>,  <34.741947, 33.719753, 36.553883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177414, 33.481766, 37.146240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521046, 33.498474, 37.350292>,  <35.727226, 33.508499, 37.472721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521046, 33.498474, 37.350292>,  <35.177414, 33.481766, 37.146240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521046, 33.498474, 37.350292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427945, 0.605363, 0.671118,
		-0.280781, -0.794853, 0.537932,
		0.859084, 0.041768, 0.510128,
		35.778770, 33.511005, 37.503330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014248, 33.389099, 37.808800>,  <35.177414, 33.481766, 37.146240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014248, 33.389099, 37.808800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365322, 33.574093, 37.859062>,  <35.575966, 33.685089, 37.889217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365322, 33.574093, 37.859062>,  <35.014248, 33.389099, 37.808800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365322, 33.574093, 37.859062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344336, 0.426191, 0.836537,
		0.333326, -0.777481, 0.533308,
		0.877682, 0.462477, 0.125654,
		35.628628, 33.712837, 37.896759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290752, 33.192368, 38.420406>,  <35.014248, 33.389099, 37.808800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290752, 33.192368, 38.420406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465923, 33.544788, 38.348881>,  <35.571026, 33.756241, 38.305965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465923, 33.544788, 38.348881>,  <35.290752, 33.192368, 38.420406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465923, 33.544788, 38.348881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225561, 0.300217, 0.926818,
		0.870254, -0.365545, 0.330203,
		0.437926, 0.881049, -0.178812,
		35.597301, 33.809101, 38.295238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762486, 33.332668, 39.032322>,  <35.290752, 33.192368, 38.420406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762486, 33.332668, 39.032322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673073, 33.681427, 38.858047>,  <35.619423, 33.890682, 38.753483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673073, 33.681427, 38.858047>,  <35.762486, 33.332668, 39.032322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673073, 33.681427, 38.858047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131257, 0.415999, 0.899843,
		0.965817, 0.258334, 0.021453,
		-0.223536, 0.871899, -0.435687,
		35.606010, 33.942997, 38.727341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135605, 33.642311, 39.397297>,  <35.762486, 33.332668, 39.032322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135605, 33.642311, 39.397297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929455, 33.943710, 39.234016>,  <35.805763, 34.124550, 39.136047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929455, 33.943710, 39.234016>,  <36.135605, 33.642311, 39.397297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929455, 33.943710, 39.234016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078306, 0.432939, 0.898016,
		0.853378, 0.494782, -0.164124,
		-0.515377, 0.753495, -0.408205,
		35.774841, 34.169758, 39.111553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556110, 34.236916, 39.527340>,  <36.135605, 33.642311, 39.397297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556110, 34.236916, 39.527340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178177, 34.353073, 39.466724>,  <35.951416, 34.422768, 39.430355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178177, 34.353073, 39.466724>,  <36.556110, 34.236916, 39.527340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178177, 34.353073, 39.466724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034422, 0.548105, 0.835701,
		0.325742, 0.784381, -0.527863,
		-0.944832, 0.290392, -0.151541,
		35.894726, 34.440189, 39.421261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546825, 34.944576, 39.718342>,  <36.556110, 34.236916, 39.527340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546825, 34.944576, 39.718342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167236, 34.821796, 39.747250>,  <35.939484, 34.748127, 39.764595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167236, 34.821796, 39.747250>,  <36.546825, 34.944576, 39.718342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167236, 34.821796, 39.747250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121961, 0.568599, 0.813524,
		-0.290807, 0.763201, -0.577023,
		-0.948977, -0.306952, 0.072271,
		35.882542, 34.729710, 39.768932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177883, 35.522934, 39.903767>,  <36.546825, 34.944576, 39.718342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177883, 35.522934, 39.903767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939697, 35.224083, 40.021904>,  <35.796787, 35.044773, 40.092785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939697, 35.224083, 40.021904>,  <36.177883, 35.522934, 39.903767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939697, 35.224083, 40.021904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235066, 0.513562, 0.825226,
		-0.768226, 0.421964, -0.481430,
		-0.595460, -0.747128, 0.295343,
		35.761059, 34.999943, 40.110508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662685, 35.864796, 40.154613>,  <36.177883, 35.522934, 39.903767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662685, 35.864796, 40.154613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629292, 35.499378, 40.313847>,  <35.609257, 35.280128, 40.409386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629292, 35.499378, 40.313847>,  <35.662685, 35.864796, 40.154613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629292, 35.499378, 40.313847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121969, 0.405844, 0.905767,
		-0.989017, 0.027062, -0.145304,
		-0.083483, -0.913542, 0.398086,
		35.604248, 35.225315, 40.433273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027027, 35.861576, 40.550808>,  <35.662685, 35.864796, 40.154613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027027, 35.861576, 40.550808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243988, 35.551559, 40.680492>,  <35.374165, 35.365547, 40.758301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243988, 35.551559, 40.680492>,  <35.027027, 35.861576, 40.550808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243988, 35.551559, 40.680492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203530, 0.253186, 0.945765,
		-0.815095, -0.578967, -0.020417,
		0.542398, -0.775044, 0.324208,
		35.406708, 35.319046, 40.777756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605278, 35.628086, 41.030872>,  <35.027027, 35.861576, 40.550808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605278, 35.628086, 41.030872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951683, 35.445938, 41.113491>,  <35.159527, 35.336651, 41.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951683, 35.445938, 41.113491>,  <34.605278, 35.628086, 41.030872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951683, 35.445938, 41.113491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191283, 0.079953, 0.978273,
		-0.461986, -0.886707, -0.017863,
		0.866014, -0.455366, 0.206550,
		35.211487, 35.309330, 41.175457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380379, 35.234135, 41.708191>,  <34.605278, 35.628086, 41.030872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380379, 35.234135, 41.708191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778919, 35.264278, 41.692188>,  <35.018044, 35.282364, 41.682587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778919, 35.264278, 41.692188>,  <34.380379, 35.234135, 41.708191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778919, 35.264278, 41.692188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000056, 0.468353, 0.883542,
		0.085318, -0.880322, 0.466641,
		0.996354, 0.075356, -0.040008,
		35.077824, 35.286884, 41.680187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623055, 35.079861, 42.413094>,  <34.380379, 35.234135, 41.708191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623055, 35.079861, 42.413094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923038, 35.284866, 42.245811>,  <35.103027, 35.407871, 42.145443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923038, 35.284866, 42.245811>,  <34.623055, 35.079861, 42.413094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923038, 35.284866, 42.245811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083931, 0.553377, 0.828691,
		0.656142, -0.656582, 0.371992,
		0.749955, 0.512517, -0.418201,
		35.148026, 35.438622, 42.120350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187740, 35.076656, 42.803474>,  <34.623055, 35.079861, 42.413094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187740, 35.076656, 42.803474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247204, 35.407734, 42.587025>,  <35.282883, 35.606380, 42.457153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247204, 35.407734, 42.587025>,  <35.187740, 35.076656, 42.803474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247204, 35.407734, 42.587025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100941, 0.531647, 0.840929,
		0.983723, -0.179636, -0.004513,
		0.148662, 0.827697, -0.541126,
		35.291801, 35.656044, 42.424686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879642, 35.330959, 42.863819>,  <35.187740, 35.076656, 42.803474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879642, 35.330959, 42.863819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667282, 35.654404, 42.762394>,  <35.539864, 35.848469, 42.701538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667282, 35.654404, 42.762394>,  <35.879642, 35.330959, 42.863819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667282, 35.654404, 42.762394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253346, 0.436976, 0.863057,
		0.808675, 0.393963, -0.436850,
		-0.530906, 0.808607, -0.253563,
		35.508011, 35.896984, 42.686325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195835, 35.897446, 43.173809>,  <35.879642, 35.330959, 42.863819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195835, 35.897446, 43.173809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875263, 36.078850, 43.017838>,  <35.682922, 36.187695, 42.924255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875263, 36.078850, 43.017838>,  <36.195835, 35.897446, 43.173809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875263, 36.078850, 43.017838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071060, 0.719530, 0.690817,
		0.593857, 0.525931, -0.608877,
		-0.801426, 0.453513, -0.389925,
		35.634834, 36.214905, 42.900860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361008, 36.583397, 43.149197>,  <36.195835, 35.897446, 43.173809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361008, 36.583397, 43.149197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963165, 36.618134, 43.126495>,  <35.724461, 36.638973, 43.112873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963165, 36.618134, 43.126495>,  <36.361008, 36.583397, 43.149197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963165, 36.618134, 43.126495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021925, 0.710681, 0.703172,
		0.101396, 0.698134, -0.708751,
		-0.994605, 0.086838, -0.056753,
		35.664783, 36.644184, 43.109470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248516, 37.262115, 43.079098>,  <36.361008, 36.583397, 43.149197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248516, 37.262115, 43.079098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907970, 37.097389, 43.209072>,  <35.703644, 36.998554, 43.287056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907970, 37.097389, 43.209072>,  <36.248516, 37.262115, 43.079098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907970, 37.097389, 43.209072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056676, 0.688022, 0.723473,
		-0.521502, 0.597524, -0.609098,
		-0.851366, -0.411814, 0.324940,
		35.652561, 36.973846, 43.306553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622845, 37.765942, 43.168633>,  <36.248516, 37.262115, 43.079098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622845, 37.765942, 43.168633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500000, 37.455486, 43.388920>,  <35.426292, 37.269211, 43.521091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500000, 37.455486, 43.388920>,  <35.622845, 37.765942, 43.168633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500000, 37.455486, 43.388920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327645, 0.629534, 0.704511,
		-0.893495, 0.035922, -0.447634,
		-0.307109, -0.776142, 0.550716,
		35.407867, 37.222645, 43.554134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011253, 37.993385, 43.487446>,  <35.622845, 37.765942, 43.168633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011253, 37.993385, 43.487446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133320, 37.692425, 43.720943>,  <35.206558, 37.511848, 43.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133320, 37.692425, 43.720943>,  <35.011253, 37.993385, 43.487446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133320, 37.692425, 43.720943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151199, 0.566932, 0.809770,
		-0.940219, -0.335377, 0.059246,
		0.305166, -0.752403, 0.583749,
		35.224869, 37.466705, 43.896069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498295, 37.990490, 44.019012>,  <35.011253, 37.993385, 43.487446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498295, 37.990490, 44.019012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825623, 37.806061, 44.156281>,  <35.022018, 37.695404, 44.238644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825623, 37.806061, 44.156281>,  <34.498295, 37.990490, 44.019012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825623, 37.806061, 44.156281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130674, 0.432185, 0.892267,
		-0.559713, -0.775002, 0.293415,
		0.818319, -0.461072, 0.343172,
		35.071117, 37.667740, 44.259232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283638, 37.671928, 44.672153>,  <34.498295, 37.990490, 44.019012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283638, 37.671928, 44.672153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682819, 37.696102, 44.680546>,  <34.922329, 37.710606, 44.685581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682819, 37.696102, 44.680546>,  <34.283638, 37.671928, 44.672153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682819, 37.696102, 44.680546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031645, 0.181326, 0.982914,
		0.055595, -0.981564, 0.182867,
		0.997952, 0.060432, 0.020980,
		34.982204, 37.714233, 44.686840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427650, 37.343391, 45.284973>,  <34.283638, 37.671928, 44.672153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427650, 37.343391, 45.284973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752392, 37.565201, 45.211880>,  <34.947239, 37.698288, 45.168022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752392, 37.565201, 45.211880>,  <34.427650, 37.343391, 45.284973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752392, 37.565201, 45.211880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072129, 0.405843, 0.911092,
		0.579384, -0.726495, 0.369484,
		0.811857, 0.554523, -0.182738,
		34.995949, 37.731556, 45.157059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997032, 37.304302, 45.863411>,  <34.427650, 37.343391, 45.284973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997032, 37.304302, 45.863411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076344, 37.641178, 45.662849>,  <35.123928, 37.843304, 45.542511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076344, 37.641178, 45.662849>,  <34.997032, 37.304302, 45.863411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076344, 37.641178, 45.662849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133030, 0.483703, 0.865063,
		0.971077, -0.238222, -0.016130,
		0.198275, 0.842188, -0.501404,
		35.135826, 37.893833, 45.512428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594337, 37.548306, 46.146374>,  <34.997032, 37.304302, 45.863411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594337, 37.548306, 46.146374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414669, 37.855984, 45.964569>,  <35.306866, 38.040592, 45.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414669, 37.855984, 45.964569>,  <35.594337, 37.548306, 46.146374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414669, 37.855984, 45.964569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122264, 0.556850, 0.821565,
		0.885038, 0.313456, -0.344169,
		-0.449175, 0.769196, -0.454509,
		35.279915, 38.086742, 45.828217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985554, 38.205219, 46.371128>,  <35.594337, 37.548306, 46.146374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985554, 38.205219, 46.371128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650375, 38.360359, 46.217545>,  <35.449268, 38.453445, 46.125393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650375, 38.360359, 46.217545>,  <35.985554, 38.205219, 46.371128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650375, 38.360359, 46.217545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030416, 0.669250, 0.742415,
		0.544911, 0.633779, -0.548995,
		-0.837942, 0.387852, -0.383958,
		35.398994, 38.476715, 46.102356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102982, 38.956993, 46.318871>,  <35.985554, 38.205219, 46.371128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102982, 38.956993, 46.318871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711185, 38.876705, 46.325920>,  <35.476109, 38.828533, 46.330151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711185, 38.876705, 46.325920>,  <36.102982, 38.956993, 46.318871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711185, 38.876705, 46.325920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106385, 0.589474, 0.800751,
		-0.171113, 0.782453, -0.598738,
		-0.979491, -0.200715, 0.017626,
		35.417339, 38.816490, 46.331207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619312, 39.446453, 46.147038>,  <36.102982, 38.956993, 46.318871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619312, 39.446453, 46.147038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978764, 39.480785, 46.319130>,  <37.194435, 39.501385, 46.422386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978764, 39.480785, 46.319130>,  <36.619312, 39.446453, 46.147038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978764, 39.480785, 46.319130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425426, -0.409964, -0.806809,
		0.107134, 0.908054, -0.404919,
		0.898629, 0.085826, 0.430231,
		37.248352, 39.506535, 46.448200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066048, 39.508240, 45.598892>,  <36.619312, 39.446453, 46.147038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066048, 39.508240, 45.598892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302750, 39.387123, 45.897728>,  <37.444771, 39.314453, 46.077030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302750, 39.387123, 45.897728>,  <37.066048, 39.508240, 45.598892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302750, 39.387123, 45.897728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637998, -0.390568, -0.663638,
		0.492737, 0.869351, -0.037936,
		0.591751, -0.302796, 0.747092,
		37.480274, 39.296284, 46.121857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686592, 39.648540, 45.332993>,  <37.066048, 39.508240, 45.598892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686592, 39.648540, 45.332993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781525, 39.420479, 45.647598>,  <37.838482, 39.283642, 45.836361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781525, 39.420479, 45.647598>,  <37.686592, 39.648540, 45.332993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781525, 39.420479, 45.647598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602987, -0.548324, -0.579438,
		0.761631, 0.611773, 0.213662,
		0.237328, -0.570153, 0.786512,
		37.852722, 39.249432, 45.883553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390594, 39.668556, 45.346535>,  <37.686592, 39.648540, 45.332993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390594, 39.668556, 45.346535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273617, 39.333736, 45.531502>,  <38.203430, 39.132847, 45.642483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273617, 39.333736, 45.531502>,  <38.390594, 39.668556, 45.346535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273617, 39.333736, 45.531502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531921, -0.544233, -0.648745,
		0.794692, 0.056247, 0.604401,
		-0.292445, -0.837047, 0.462416,
		38.185883, 39.082623, 45.670227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932148, 39.176090, 45.363239>,  <38.390594, 39.668556, 45.346535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932148, 39.176090, 45.363239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585587, 38.976810, 45.376740>,  <38.377647, 38.857243, 45.384838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585587, 38.976810, 45.376740>,  <38.932148, 39.176090, 45.363239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585587, 38.976810, 45.376740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384367, -0.708529, -0.591818,
		0.318754, -0.499783, 0.805365,
		-0.866406, -0.498200, 0.033746,
		38.325665, 38.827351, 45.386864>
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
