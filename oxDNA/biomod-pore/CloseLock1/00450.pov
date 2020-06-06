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
	<24.216684, 35.060719, 34.706020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220840, 35.053421, 35.105930>,  <24.223333, 35.049042, 35.345879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220840, 35.053421, 35.105930>,  <24.216684, 35.060719, 34.706020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.220840, 35.053421, 35.105930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237017, 0.971386, 0.015265,
		-0.971450, 0.236806, 0.014418,
		0.010391, -0.018246, 0.999780,
		24.223957, 35.047947, 35.405865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920734, 34.948666, 34.619926>,  <24.216684, 35.060719, 34.706020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920734, 34.948666, 34.619926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193193, 35.241222, 34.633240>,  <25.356668, 35.416756, 34.641228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193193, 35.241222, 34.633240>,  <24.920734, 34.948666, 34.619926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193193, 35.241222, 34.633240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663273, -0.597181, -0.451048,
		-0.310017, 0.329304, -0.891879,
		0.681145, 0.731392, 0.033282,
		25.397537, 35.460640, 34.643223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233494, 35.063839, 34.015442>,  <24.920734, 34.948666, 34.619926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233494, 35.063839, 34.015442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503338, 35.124535, 34.304405>,  <25.665243, 35.160950, 34.477783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503338, 35.124535, 34.304405>,  <25.233494, 35.063839, 34.015442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503338, 35.124535, 34.304405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662289, -0.556615, -0.501551,
		0.326001, 0.816796, -0.475991,
		0.674609, 0.151737, 0.722412,
		25.705721, 35.170055, 34.521130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735970, 35.393764, 33.764824>,  <25.233494, 35.063839, 34.015442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735970, 35.393764, 33.764824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864666, 35.171181, 34.071243>,  <25.941883, 35.037628, 34.255096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864666, 35.171181, 34.071243>,  <25.735970, 35.393764, 33.764824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864666, 35.171181, 34.071243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496835, -0.589510, -0.636894,
		0.806002, 0.585514, 0.086802,
		0.321740, -0.556463, 0.766050,
		25.961187, 35.004242, 34.301060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425867, 35.355042, 33.816612>,  <25.735970, 35.393764, 33.764824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425867, 35.355042, 33.816612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268330, 35.019894, 33.967800>,  <26.173807, 34.818806, 34.058514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268330, 35.019894, 33.967800>,  <26.425867, 35.355042, 33.816612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268330, 35.019894, 33.967800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478038, -0.537930, -0.694342,
		0.785090, -0.092778, 0.612394,
		-0.393845, -0.837868, 0.377972,
		26.150177, 34.768532, 34.081192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799997, 34.756447, 33.935310>,  <26.425867, 35.355042, 33.816612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799997, 34.756447, 33.935310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460152, 34.660168, 33.747601>,  <26.256245, 34.602398, 33.634975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460152, 34.660168, 33.747601>,  <26.799997, 34.756447, 33.935310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460152, 34.660168, 33.747601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516137, -0.562438, -0.645961,
		-0.108455, -0.791028, 0.602090,
		-0.849612, -0.240703, -0.469278,
		26.205269, 34.587955, 33.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567345, 33.996323, 33.910419>,  <26.799997, 34.756447, 33.935310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567345, 33.996323, 33.910419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486694, 34.223110, 33.590946>,  <26.438305, 34.359180, 33.399261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486694, 34.223110, 33.590946>,  <26.567345, 33.996323, 33.910419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486694, 34.223110, 33.590946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678613, -0.507136, -0.531316,
		-0.706280, -0.649125, -0.282498,
		-0.201626, 0.566965, -0.798685,
		26.426207, 34.393200, 33.351341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322716, 33.568420, 33.242264>,  <26.567345, 33.996323, 33.910419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322716, 33.568420, 33.242264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553644, 33.882000, 33.150936>,  <26.692202, 34.070148, 33.096142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553644, 33.882000, 33.150936>,  <26.322716, 33.568420, 33.242264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553644, 33.882000, 33.150936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532463, -0.573448, -0.622608,
		-0.619018, 0.237876, -0.748486,
		0.577321, 0.783947, -0.228314,
		26.726841, 34.117184, 33.082443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438637, 33.582966, 32.557053>,  <26.322716, 33.568420, 33.242264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438637, 33.582966, 32.557053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745745, 33.776821, 32.724697>,  <26.930010, 33.893135, 32.825283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745745, 33.776821, 32.724697>,  <26.438637, 33.582966, 32.557053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745745, 33.776821, 32.724697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640722, -0.583621, -0.498861,
		0.002837, 0.651545, -0.758605,
		0.767768, 0.484640, 0.419114,
		26.976074, 33.922215, 32.850433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836668, 33.802311, 31.981258>,  <26.438637, 33.582966, 32.557053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836668, 33.802311, 31.981258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069326, 33.803284, 32.306633>,  <27.208921, 33.803867, 32.501858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069326, 33.803284, 32.306633>,  <26.836668, 33.802311, 31.981258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069326, 33.803284, 32.306633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679684, -0.550844, -0.484356,
		0.446897, 0.834605, -0.322052,
		0.581646, 0.002436, 0.813438,
		27.243820, 33.804016, 32.550663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542177, 33.984108, 31.687443>,  <26.836668, 33.802311, 31.981258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542177, 33.984108, 31.687443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566177, 33.814861, 32.049076>,  <27.580578, 33.713314, 32.266056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566177, 33.814861, 32.049076>,  <27.542177, 33.984108, 31.687443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566177, 33.814861, 32.049076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734515, -0.594595, -0.327023,
		0.675935, 0.683686, 0.275110,
		0.060002, -0.423119, 0.904085,
		27.584177, 33.687927, 32.320301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278385, 33.953285, 31.923443>,  <27.542177, 33.984108, 31.687443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278385, 33.953285, 31.923443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083580, 33.676304, 32.136356>,  <27.966696, 33.510117, 32.264103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083580, 33.676304, 32.136356>,  <28.278385, 33.953285, 31.923443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083580, 33.676304, 32.136356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618648, -0.703694, -0.349413,
		0.616516, 0.159126, 0.771095,
		-0.487015, -0.692454, 0.532282,
		27.937475, 33.468567, 32.296040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766199, 33.691601, 32.392300>,  <28.278385, 33.953285, 31.923443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766199, 33.691601, 32.392300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480156, 33.416542, 32.342083>,  <28.308529, 33.251507, 32.311954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480156, 33.416542, 32.342083>,  <28.766199, 33.691601, 32.392300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480156, 33.416542, 32.342083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684217, -0.651837, -0.327041,
		0.143057, -0.319767, 0.936634,
		-0.715110, -0.687647, -0.125540,
		28.265623, 33.210247, 32.304420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031094, 33.041203, 32.590981>,  <28.766199, 33.691601, 32.392300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031094, 33.041203, 32.590981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709347, 32.947777, 32.372463>,  <28.516298, 32.891720, 32.241352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709347, 32.947777, 32.372463>,  <29.031094, 33.041203, 32.590981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709347, 32.947777, 32.372463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512113, -0.738734, -0.438192,
		-0.301219, -0.632232, 0.713827,
		-0.804368, -0.233568, -0.546295,
		28.468037, 32.877705, 32.208576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919073, 32.275162, 32.542507>,  <29.031094, 33.041203, 32.590981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919073, 32.275162, 32.542507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702887, 32.418129, 32.237839>,  <28.573175, 32.503910, 32.055038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702887, 32.418129, 32.237839>,  <28.919073, 32.275162, 32.542507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702887, 32.418129, 32.237839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322340, -0.748250, -0.579844,
		-0.777170, -0.558904, 0.289193,
		-0.540466, 0.357419, -0.761675,
		28.540747, 32.525352, 32.009335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441460, 31.710289, 32.336506>,  <28.919073, 32.275162, 32.542507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441460, 31.710289, 32.336506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483936, 31.960825, 32.027592>,  <28.509422, 32.111145, 31.842243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483936, 31.960825, 32.027592>,  <28.441460, 31.710289, 32.336506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483936, 31.960825, 32.027592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251474, -0.768344, -0.588564,
		-0.962021, -0.131707, -0.239101,
		0.106194, 0.626338, -0.772284,
		28.515795, 32.148727, 31.795906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234106, 31.313585, 31.828651>,  <28.441460, 31.710289, 32.336506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234106, 31.313585, 31.828651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382740, 31.623060, 31.623388>,  <28.471920, 31.808746, 31.500231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382740, 31.623060, 31.623388>,  <28.234106, 31.313585, 31.828651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382740, 31.623060, 31.623388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290997, -0.621941, -0.726987,
		-0.881615, 0.120810, -0.456245,
		0.371585, 0.773689, -0.513157,
		28.494215, 31.855167, 31.469440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977287, 31.327505, 31.080896>,  <28.234106, 31.313585, 31.828651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977287, 31.327505, 31.080896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335506, 31.503401, 31.108101>,  <28.550438, 31.608938, 31.124424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335506, 31.503401, 31.108101>,  <27.977287, 31.327505, 31.080896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335506, 31.503401, 31.108101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309383, -0.505494, -0.805455,
		-0.319813, 0.742363, -0.588741,
		0.895546, 0.439741, 0.068011,
		28.604170, 31.635323, 31.128504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246920, 31.153610, 30.413460>,  <27.977287, 31.327505, 31.080896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246920, 31.153610, 30.413460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585835, 31.311222, 30.555920>,  <28.789183, 31.405790, 30.641396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585835, 31.311222, 30.555920>,  <28.246920, 31.153610, 30.413460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585835, 31.311222, 30.555920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503692, -0.383350, -0.774169,
		-0.168516, 0.835334, -0.523278,
		0.847288, 0.394030, 0.356151,
		28.840021, 31.429432, 30.662766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657761, 31.381592, 29.883074>,  <28.246920, 31.153610, 30.413460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657761, 31.381592, 29.883074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919128, 31.329332, 30.181328>,  <29.075949, 31.297977, 30.360281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919128, 31.329332, 30.181328>,  <28.657761, 31.381592, 29.883074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919128, 31.329332, 30.181328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645548, -0.418267, -0.638999,
		0.395360, 0.898879, -0.188964,
		0.653420, -0.130649, 0.745636,
		29.115154, 31.290138, 30.405018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311804, 31.654022, 29.621376>,  <28.657761, 31.381592, 29.883074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311804, 31.654022, 29.621376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433046, 31.429701, 29.929565>,  <29.505791, 31.295107, 30.114479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433046, 31.429701, 29.929565>,  <29.311804, 31.654022, 29.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433046, 31.429701, 29.929565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670513, -0.449005, -0.590599,
		0.677156, 0.695624, 0.239931,
		0.303105, -0.560804, 0.770471,
		29.523977, 31.261459, 30.160707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033436, 31.744312, 29.547798>,  <29.311804, 31.654022, 29.621376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033436, 31.744312, 29.547798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961365, 31.413698, 29.761106>,  <29.918123, 31.215330, 29.889091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961365, 31.413698, 29.761106>,  <30.033436, 31.744312, 29.547798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961365, 31.413698, 29.761106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804772, -0.435596, -0.403235,
		0.565578, 0.356508, 0.743655,
		-0.180176, -0.826534, 0.533271,
		29.907312, 31.165737, 29.921087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681747, 31.456385, 29.800119>,  <30.033436, 31.744312, 29.547798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681747, 31.456385, 29.800119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437416, 31.142933, 29.845394>,  <30.290817, 30.954861, 29.872559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437416, 31.142933, 29.845394>,  <30.681747, 31.456385, 29.800119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437416, 31.142933, 29.845394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733567, -0.613914, -0.291528,
		0.297938, -0.095044, 0.949842,
		-0.610829, -0.783630, 0.113187,
		30.254168, 30.907845, 29.879351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038965, 30.913408, 30.173048>,  <30.681747, 31.456385, 29.800119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038965, 30.913408, 30.173048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754366, 30.752813, 29.942369>,  <30.583607, 30.656456, 29.803963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754366, 30.752813, 29.942369>,  <31.038965, 30.913408, 30.173048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754366, 30.752813, 29.942369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689351, -0.557950, -0.462047,
		-0.136262, -0.726291, 0.673746,
		-0.711497, -0.401488, -0.576697,
		30.540916, 30.632368, 29.769360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149878, 30.193840, 30.234581>,  <31.038965, 30.913408, 30.173048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149878, 30.193840, 30.234581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948034, 30.267662, 29.897224>,  <30.826929, 30.311956, 29.694811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948034, 30.267662, 29.897224>,  <31.149878, 30.193840, 30.234581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948034, 30.267662, 29.897224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695429, -0.492008, -0.523743,
		-0.511617, -0.850803, 0.119923,
		-0.504605, 0.184558, -0.843393,
		30.796652, 30.323029, 29.644207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146404, 29.639740, 29.802145>,  <31.149878, 30.193840, 30.234581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146404, 29.639740, 29.802145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048109, 29.908430, 29.522602>,  <30.989132, 30.069645, 29.354877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048109, 29.908430, 29.522602>,  <31.146404, 29.639740, 29.802145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048109, 29.908430, 29.522602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504914, -0.526731, -0.683825,
		-0.827451, -0.520903, -0.209725,
		-0.245738, 0.671725, -0.698855,
		30.974388, 30.109947, 29.312946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018064, 29.237799, 29.189274>,  <31.146404, 29.639740, 29.802145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018064, 29.237799, 29.189274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108572, 29.614372, 29.089266>,  <31.162876, 29.840317, 29.029261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108572, 29.614372, 29.089266>,  <31.018064, 29.237799, 29.189274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108572, 29.614372, 29.089266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667960, -0.336783, -0.663631,
		-0.708966, -0.016846, -0.705042,
		0.226267, 0.941432, -0.250020,
		31.176453, 29.896801, 29.014259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035091, 29.254459, 28.526188>,  <31.018064, 29.237799, 29.189274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035091, 29.254459, 28.526188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282175, 29.549183, 28.636131>,  <31.430426, 29.726017, 28.702097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282175, 29.549183, 28.636131>,  <31.035091, 29.254459, 28.526188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282175, 29.549183, 28.636131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710335, -0.372796, -0.597032,
		-0.337432, 0.564034, -0.753661,
		0.617708, 0.736810, 0.274860,
		31.467487, 29.770226, 28.718590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255543, 29.614309, 27.851305>,  <31.035091, 29.254459, 28.526188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255543, 29.614309, 27.851305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518826, 29.587944, 28.151283>,  <31.676794, 29.572124, 28.331270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518826, 29.587944, 28.151283>,  <31.255543, 29.614309, 27.851305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518826, 29.587944, 28.151283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708067, -0.284209, -0.646426,
		0.255749, 0.956494, -0.140397,
		0.658205, -0.065912, 0.749948,
		31.716288, 29.568171, 28.376268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203697, 28.900934, 27.463575>,  <31.255543, 29.614309, 27.851305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203697, 28.900934, 27.463575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950647, 28.945732, 27.157047>,  <30.798819, 28.972610, 26.973131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950647, 28.945732, 27.157047>,  <31.203697, 28.900934, 27.463575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950647, 28.945732, 27.157047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556519, 0.753863, -0.349253,
		0.538587, -0.647417, -0.539237,
		-0.632623, 0.111993, -0.766320,
		30.760860, 28.979330, 26.927151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541552, 28.779158, 26.802479>,  <31.203697, 28.900934, 27.463575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541552, 28.779158, 26.802479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236343, 29.037300, 26.788002>,  <31.053219, 29.192186, 26.779316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236343, 29.037300, 26.788002>,  <31.541552, 28.779158, 26.802479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236343, 29.037300, 26.788002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599856, 0.686144, -0.411558,
		-0.240769, -0.335738, -0.910665,
		-0.763022, 0.645358, -0.036192,
		31.007437, 29.230907, 26.777143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422312, 28.965496, 26.004049>,  <31.541552, 28.779158, 26.802479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422312, 28.965496, 26.004049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337870, 29.217178, 26.303259>,  <31.287205, 29.368187, 26.482784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337870, 29.217178, 26.303259>,  <31.422312, 28.965496, 26.004049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337870, 29.217178, 26.303259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389225, 0.756092, -0.526146,
		-0.896626, 0.180077, -0.404517,
		-0.211105, 0.629204, 0.748022,
		31.274538, 29.405939, 26.527666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060366, 29.659126, 25.799868>,  <31.422312, 28.965496, 26.004049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060366, 29.659126, 25.799868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262653, 29.707621, 26.141523>,  <31.384026, 29.736717, 26.346516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262653, 29.707621, 26.141523>,  <31.060366, 29.659126, 25.799868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262653, 29.707621, 26.141523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629707, 0.624866, -0.461532,
		-0.589676, 0.771261, 0.239662,
		0.505718, 0.121238, 0.854138,
		31.414370, 29.743992, 26.397764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150383, 30.407864, 25.997526>,  <31.060366, 29.659126, 25.799868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150383, 30.407864, 25.997526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446695, 30.177387, 26.135654>,  <31.624483, 30.039101, 26.218531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446695, 30.177387, 26.135654>,  <31.150383, 30.407864, 25.997526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446695, 30.177387, 26.135654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660910, 0.533189, -0.528117,
		0.120175, 0.619445, 0.775787,
		0.740781, -0.576192, 0.345321,
		31.668930, 30.004530, 26.239250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197128, 31.040457, 25.533047>,  <31.150383, 30.407864, 25.997526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197128, 31.040457, 25.533047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484098, 30.842402, 25.729063>,  <31.656281, 30.723568, 25.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484098, 30.842402, 25.729063>,  <31.197128, 31.040457, 25.533047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484098, 30.842402, 25.729063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502322, -0.855070, -0.128560,
		0.482673, -0.153926, -0.862168,
		0.717425, -0.495138, 0.490040,
		31.699326, 30.693861, 25.876076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409828, 31.405275, 26.032597>,  <31.197128, 31.040457, 25.533047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409828, 31.405275, 26.032597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221956, 31.611633, 25.746031>,  <31.109234, 31.735449, 25.574091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221956, 31.611633, 25.746031>,  <31.409828, 31.405275, 26.032597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221956, 31.611633, 25.746031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233347, 0.710089, 0.664322,
		0.851440, 0.479191, -0.213131,
		-0.469679, 0.515897, -0.716416,
		31.081053, 31.766403, 25.531105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851397, 31.883640, 25.983999>,  <31.409828, 31.405275, 26.032597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851397, 31.883640, 25.983999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498314, 32.004784, 25.840277>,  <31.286465, 32.077469, 25.754044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498314, 32.004784, 25.840277>,  <31.851397, 31.883640, 25.983999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498314, 32.004784, 25.840277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023450, 0.792049, 0.610006,
		0.469335, 0.530032, -0.706251,
		-0.882709, 0.302859, -0.359307,
		31.233501, 32.095642, 25.732485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929129, 32.521423, 25.874855>,  <31.851397, 31.883640, 25.983999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929129, 32.521423, 25.874855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530561, 32.491024, 25.889698>,  <31.291422, 32.472782, 25.898603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530561, 32.491024, 25.889698>,  <31.929129, 32.521423, 25.874855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530561, 32.491024, 25.889698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030731, 0.734110, 0.678334,
		-0.078796, 0.674763, -0.733816,
		-0.996417, -0.076001, 0.037109,
		31.231636, 32.468224, 25.900831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698524, 33.202015, 26.014238>,  <31.929129, 32.521423, 25.874855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698524, 33.202015, 26.014238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373747, 32.995640, 26.123459>,  <31.178881, 32.871815, 26.188992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373747, 32.995640, 26.123459>,  <31.698524, 33.202015, 26.014238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373747, 32.995640, 26.123459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199702, 0.685051, 0.700588,
		-0.548511, 0.514311, -0.659258,
		-0.811945, -0.515935, 0.273049,
		31.130163, 32.840858, 26.205374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337543, 33.676567, 26.322548>,  <31.698524, 33.202015, 26.014238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337543, 33.676567, 26.322548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104593, 33.366882, 26.421696>,  <30.964823, 33.181072, 26.481184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104593, 33.366882, 26.421696>,  <31.337543, 33.676567, 26.322548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104593, 33.366882, 26.421696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418409, 0.546898, 0.725146,
		-0.696973, 0.318598, -0.642437,
		-0.582377, -0.774208, 0.247869,
		30.929880, 33.134621, 26.496056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694029, 33.905323, 26.507792>,  <31.337543, 33.676567, 26.322548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694029, 33.905323, 26.507792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726452, 33.557209, 26.702127>,  <30.745905, 33.348343, 26.818729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726452, 33.557209, 26.702127>,  <30.694029, 33.905323, 26.507792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726452, 33.557209, 26.702127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138709, 0.472849, 0.870158,
		-0.987010, -0.137922, -0.082388,
		0.081057, -0.870282, 0.485837,
		30.750769, 33.296124, 26.847879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161219, 33.872856, 26.984356>,  <30.694029, 33.905323, 26.507792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161219, 33.872856, 26.984356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418621, 33.602943, 27.128897>,  <30.573063, 33.440998, 27.215620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418621, 33.602943, 27.128897>,  <30.161219, 33.872856, 26.984356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418621, 33.602943, 27.128897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130914, 0.368102, 0.920523,
		-0.754164, -0.639667, 0.148537,
		0.643505, -0.674779, 0.361351,
		30.611673, 33.400509, 27.237303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837473, 33.587173, 27.710876>,  <30.161219, 33.872856, 26.984356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837473, 33.587173, 27.710876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220945, 33.473694, 27.702433>,  <30.451029, 33.405605, 27.697367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220945, 33.473694, 27.702433>,  <29.837473, 33.587173, 27.710876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220945, 33.473694, 27.702433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064085, 0.143063, 0.987637,
		-0.277171, -0.948181, 0.155333,
		0.958681, -0.283698, -0.021111,
		30.508551, 33.388584, 27.696098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944057, 33.215054, 28.305838>,  <29.837473, 33.587173, 27.710876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944057, 33.215054, 28.305838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312866, 33.310326, 28.183754>,  <30.534151, 33.367489, 28.110504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312866, 33.310326, 28.183754>,  <29.944057, 33.215054, 28.305838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312866, 33.310326, 28.183754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184767, 0.422058, 0.887540,
		0.340205, -0.874722, 0.345139,
		0.922020, 0.238175, -0.305207,
		30.589472, 33.381779, 28.092192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420744, 32.824837, 28.804356>,  <29.944057, 33.215054, 28.305838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420744, 32.824837, 28.804356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576145, 33.157288, 28.645210>,  <30.669386, 33.356758, 28.549723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576145, 33.157288, 28.645210>,  <30.420744, 32.824837, 28.804356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576145, 33.157288, 28.645210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042728, 0.447567, 0.893229,
		0.920457, -0.330021, 0.209393,
		0.388501, 0.831126, -0.397865,
		30.692696, 33.406624, 28.525850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995764, 32.951202, 29.157862>,  <30.420744, 32.824837, 28.804356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995764, 32.951202, 29.157862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885441, 33.309765, 29.019077>,  <30.819246, 33.524902, 28.935806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885441, 33.309765, 29.019077>,  <30.995764, 32.951202, 29.157862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885441, 33.309765, 29.019077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009960, 0.363609, 0.931499,
		0.961161, 0.253460, -0.109214,
		-0.275809, 0.896408, -0.346962,
		30.802698, 33.578686, 28.914989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223989, 33.424133, 29.707315>,  <30.995764, 32.951202, 29.157862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223989, 33.424133, 29.707315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973902, 33.646141, 29.487844>,  <30.823849, 33.779346, 29.356161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973902, 33.646141, 29.487844>,  <31.223989, 33.424133, 29.707315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973902, 33.646141, 29.487844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224496, 0.545417, 0.807540,
		0.747462, 0.628067, -0.216406,
		-0.625221, 0.555024, -0.548678,
		30.786335, 33.812649, 29.323240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242126, 34.169609, 29.974001>,  <31.223989, 33.424133, 29.707315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242126, 34.169609, 29.974001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892645, 34.134945, 29.782530>,  <30.682957, 34.114147, 29.667648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892645, 34.134945, 29.782530>,  <31.242126, 34.169609, 29.974001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892645, 34.134945, 29.782530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407520, 0.667736, 0.622941,
		0.265647, 0.739336, -0.618719,
		-0.873704, -0.086658, -0.478676,
		30.630533, 34.108948, 29.638927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060413, 34.758381, 29.819483>,  <31.242126, 34.169609, 29.974001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060413, 34.758381, 29.819483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700502, 34.584045, 29.827915>,  <30.484556, 34.479443, 29.832973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700502, 34.584045, 29.827915>,  <31.060413, 34.758381, 29.819483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700502, 34.584045, 29.827915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377172, 0.801138, 0.464670,
		-0.219409, 0.410150, -0.885233,
		-0.899778, -0.435838, 0.021080,
		30.430569, 34.453293, 29.834240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582737, 35.321541, 29.887693>,  <31.060413, 34.758381, 29.819483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582737, 35.321541, 29.887693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335421, 35.015808, 29.960922>,  <30.187031, 34.832371, 30.004860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335421, 35.015808, 29.960922>,  <30.582737, 35.321541, 29.887693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335421, 35.015808, 29.960922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465639, 0.543885, 0.698118,
		-0.633162, 0.346396, -0.692182,
		-0.618293, -0.764329, 0.183072,
		30.149933, 34.786510, 30.015844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893358, 35.671852, 29.776573>,  <30.582737, 35.321541, 29.887693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893358, 35.671852, 29.776573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868719, 35.346577, 30.008066>,  <29.853935, 35.151413, 30.146961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868719, 35.346577, 30.008066>,  <29.893358, 35.671852, 29.776573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868719, 35.346577, 30.008066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542998, 0.513819, 0.664186,
		-0.837472, -0.273337, -0.473211,
		-0.061598, -0.813189, 0.578731,
		29.850241, 35.102619, 30.181684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232121, 35.773117, 30.093517>,  <29.893358, 35.671852, 29.776573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232121, 35.773117, 30.093517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395351, 35.499714, 30.335606>,  <29.493290, 35.335674, 30.480858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395351, 35.499714, 30.335606>,  <29.232121, 35.773117, 30.093517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395351, 35.499714, 30.335606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462769, 0.416585, 0.782497,
		-0.786967, -0.599398, -0.146306,
		0.408078, -0.683505, 0.605221,
		29.517775, 35.294662, 30.517172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850700, 35.859364, 30.746981>,  <29.232121, 35.773117, 30.093517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850700, 35.859364, 30.746981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165886, 35.646877, 30.871510>,  <29.354998, 35.519386, 30.946226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165886, 35.646877, 30.871510>,  <28.850700, 35.859364, 30.746981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165886, 35.646877, 30.871510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169454, 0.299001, 0.939087,
		-0.591942, -0.792723, 0.145586,
		0.787966, -0.531214, 0.311321,
		29.402275, 35.487514, 30.964907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544891, 35.285339, 31.251106>,  <28.850700, 35.859364, 30.746981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544891, 35.285339, 31.251106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926628, 35.377670, 31.326952>,  <29.155670, 35.433071, 31.372459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926628, 35.377670, 31.326952>,  <28.544891, 35.285339, 31.251106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926628, 35.377670, 31.326952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241739, 0.223872, 0.944163,
		0.175482, -0.946891, 0.269448,
		0.954342, 0.230820, 0.189615,
		29.212931, 35.446918, 31.383837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701859, 34.895733, 31.838625>,  <28.544891, 35.285339, 31.251106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701859, 34.895733, 31.838625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017487, 35.141449, 31.836887>,  <29.206863, 35.288879, 31.835844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017487, 35.141449, 31.836887>,  <28.701859, 34.895733, 31.838625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017487, 35.141449, 31.836887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097261, 0.131913, 0.986478,
		0.606557, -0.777977, 0.163834,
		0.789069, 0.614290, -0.004346,
		29.254208, 35.325737, 31.835583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179066, 34.686726, 32.320461>,  <28.701859, 34.895733, 31.838625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179066, 34.686726, 32.320461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254627, 35.075706, 32.265827>,  <29.299965, 35.309093, 32.233047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254627, 35.075706, 32.265827>,  <29.179066, 34.686726, 32.320461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254627, 35.075706, 32.265827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003165, 0.139689, 0.990190,
		0.981991, -0.186619, 0.029466,
		0.188904, 0.972451, -0.136583,
		29.311298, 35.367443, 32.224854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642160, 34.780750, 32.910713>,  <29.179066, 34.686726, 32.320461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642160, 34.780750, 32.910713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490419, 35.120296, 32.763458>,  <29.399374, 35.324024, 32.675106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490419, 35.120296, 32.763458>,  <29.642160, 34.780750, 32.910713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490419, 35.120296, 32.763458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310573, 0.257969, 0.914875,
		0.871570, 0.461394, 0.165772,
		-0.379354, 0.848862, -0.368135,
		29.376614, 35.374954, 32.653019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671970, 35.274883, 33.447292>,  <29.642160, 34.780750, 32.910713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671970, 35.274883, 33.447292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406908, 35.457867, 33.210102>,  <29.247869, 35.567657, 33.067787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406908, 35.457867, 33.210102>,  <29.671970, 35.274883, 33.447292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406908, 35.457867, 33.210102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462033, 0.373422, 0.804414,
		0.589416, 0.807023, -0.036089,
		-0.662657, 0.457460, -0.592972,
		29.208111, 35.595104, 33.032211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574442, 36.048271, 33.736908>,  <29.671970, 35.274883, 33.447292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574442, 36.048271, 33.736908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268799, 35.932606, 33.506248>,  <29.085413, 35.863205, 33.367851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268799, 35.932606, 33.506248>,  <29.574442, 36.048271, 33.736908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268799, 35.932606, 33.506248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639662, 0.455354, 0.619262,
		0.083513, 0.842044, -0.532905,
		-0.764106, -0.289162, -0.576651,
		29.039566, 35.845856, 33.333252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410517, 35.496845, 34.293987>,  <29.574442, 36.048271, 33.736908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410517, 35.496845, 34.293987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719019, 35.751221, 34.304966>,  <29.904119, 35.903847, 34.311554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719019, 35.751221, 34.304966>,  <29.410517, 35.496845, 34.293987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719019, 35.751221, 34.304966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463622, -0.590769, 0.660338,
		0.436145, -0.496565, -0.750467,
		0.771253, 0.635936, 0.027443,
		29.950396, 35.942001, 34.313198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981113, 35.032055, 34.385120>,  <29.410517, 35.496845, 34.293987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981113, 35.032055, 34.385120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105679, 35.400372, 34.479073>,  <30.180418, 35.621361, 34.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105679, 35.400372, 34.479073>,  <29.981113, 35.032055, 34.385120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105679, 35.400372, 34.479073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495053, -0.368183, 0.786997,
		0.811139, -0.128800, -0.570495,
		0.311411, 0.920789, 0.234885,
		30.199102, 35.676609, 34.549538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720476, 35.088760, 34.273533>,  <29.981113, 35.032055, 34.385120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720476, 35.088760, 34.273533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589380, 35.340431, 34.555447>,  <30.510723, 35.491436, 34.724594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589380, 35.340431, 34.555447>,  <30.720476, 35.088760, 34.273533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589380, 35.340431, 34.555447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483419, -0.529250, 0.697280,
		0.811721, 0.569233, -0.130701,
		-0.327741, 0.629181, 0.704782,
		30.491058, 35.529186, 34.766880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311686, 35.420429, 34.732269>,  <30.720476, 35.088760, 34.273533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311686, 35.420429, 34.732269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963722, 35.410275, 34.929295>,  <30.754944, 35.404182, 35.047508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963722, 35.410275, 34.929295>,  <31.311686, 35.420429, 34.732269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963722, 35.410275, 34.929295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436862, -0.503220, 0.745602,
		0.228933, 0.863785, 0.448848,
		-0.869909, -0.025391, 0.492559,
		30.702749, 35.402657, 35.077061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517269, 35.465797, 35.401230>,  <31.311686, 35.420429, 34.732269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517269, 35.465797, 35.401230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138100, 35.344925, 35.441486>,  <30.910599, 35.272400, 35.465641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138100, 35.344925, 35.441486>,  <31.517269, 35.465797, 35.401230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138100, 35.344925, 35.441486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208187, -0.348730, 0.913808,
		-0.241043, 0.887171, 0.393480,
		-0.947922, -0.302184, 0.100638,
		30.853724, 35.254269, 35.471680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999296, 35.954987, 35.842682>,  <31.517269, 35.465797, 35.401230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999296, 35.954987, 35.842682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007002, 35.556152, 35.813145>,  <31.011625, 35.316853, 35.795422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007002, 35.556152, 35.813145>,  <30.999296, 35.954987, 35.842682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007002, 35.556152, 35.813145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172691, -0.069432, 0.982526,
		-0.984788, -0.031681, 0.170849,
		0.019265, -0.997084, -0.073846,
		31.012781, 35.257027, 35.790989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679764, 35.591492, 36.539570>,  <30.999296, 35.954987, 35.842682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679764, 35.591492, 36.539570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928740, 35.331665, 36.364922>,  <31.078125, 35.175770, 36.260132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928740, 35.331665, 36.364922>,  <30.679764, 35.591492, 36.539570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928740, 35.331665, 36.364922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283869, -0.332512, 0.899363,
		-0.729374, -0.683742, -0.022578,
		0.622440, -0.649563, -0.436619,
		31.115471, 35.136795, 36.233936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651127, 34.819427, 36.873169>,  <30.679764, 35.591492, 36.539570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651127, 34.819427, 36.873169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010296, 34.907223, 36.720558>,  <31.225798, 34.959900, 36.628990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010296, 34.907223, 36.720558>,  <30.651127, 34.819427, 36.873169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010296, 34.907223, 36.720558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429300, -0.245366, 0.869193,
		0.097163, -0.944257, -0.314545,
		0.897920, 0.219488, -0.381529,
		31.279673, 34.973068, 36.606098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018856, 34.307072, 36.998711>,  <30.651127, 34.819427, 36.873169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018856, 34.307072, 36.998711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266691, 34.618248, 36.956924>,  <31.415392, 34.804955, 36.931850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266691, 34.618248, 36.956924>,  <31.018856, 34.307072, 36.998711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266691, 34.618248, 36.956924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420645, -0.216717, 0.880961,
		0.662698, -0.589777, -0.461513,
		0.619588, 0.777944, -0.104469,
		31.452568, 34.851631, 36.925583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551517, 34.101128, 37.323132>,  <31.018856, 34.307072, 36.998711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551517, 34.101128, 37.323132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624142, 34.494038, 37.304508>,  <31.667717, 34.729786, 37.293335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624142, 34.494038, 37.304508>,  <31.551517, 34.101128, 37.323132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624142, 34.494038, 37.304508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211817, 0.007165, 0.977283,
		0.960296, -0.187297, -0.206762,
		0.181561, 0.982277, -0.046554,
		31.678610, 34.788719, 37.290543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145187, 34.199253, 37.759644>,  <31.551517, 34.101128, 37.323132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145187, 34.199253, 37.759644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963633, 34.552803, 37.714458>,  <31.854700, 34.764931, 37.687347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963633, 34.552803, 37.714458>,  <32.145187, 34.199253, 37.759644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963633, 34.552803, 37.714458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128761, 0.190502, 0.973206,
		0.881708, 0.427178, -0.200273,
		-0.453885, 0.883871, -0.112963,
		31.827467, 34.817963, 37.680569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491005, 34.583935, 38.218204>,  <32.145187, 34.199253, 37.759644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491005, 34.583935, 38.218204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172260, 34.814240, 38.144981>,  <31.981014, 34.952423, 38.101048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172260, 34.814240, 38.144981>,  <32.491005, 34.583935, 38.218204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172260, 34.814240, 38.144981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003722, 0.307668, 0.951486,
		0.604151, 0.757521, -0.247312,
		-0.796861, 0.575762, -0.183058,
		31.933203, 34.986969, 38.090065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665295, 35.104385, 38.595325>,  <32.491005, 34.583935, 38.218204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665295, 35.104385, 38.595325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267265, 35.083500, 38.561600>,  <32.028450, 35.070969, 38.541367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267265, 35.083500, 38.561600>,  <32.665295, 35.104385, 38.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267265, 35.083500, 38.561600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091617, 0.158591, 0.983084,
		-0.037959, 0.985963, -0.162593,
		-0.995071, -0.052213, -0.084311,
		31.968744, 35.067837, 38.536304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500034, 35.563839, 39.126728>,  <32.665295, 35.104385, 38.595325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500034, 35.563839, 39.126728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161434, 35.371582, 39.035152>,  <31.958273, 35.256226, 38.980209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161434, 35.371582, 39.035152>,  <32.500034, 35.563839, 39.126728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161434, 35.371582, 39.035152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235203, -0.048142, 0.970753,
		-0.477610, 0.875592, -0.072297,
		-0.846503, -0.480646, -0.228935,
		31.907482, 35.227386, 38.966473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979483, 35.902203, 39.445633>,  <32.500034, 35.563839, 39.126728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979483, 35.902203, 39.445633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808683, 35.546722, 39.378849>,  <31.706203, 35.333435, 39.338779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808683, 35.546722, 39.378849>,  <31.979483, 35.902203, 39.445633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808683, 35.546722, 39.378849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416369, 0.029338, 0.908722,
		-0.802688, 0.457540, -0.382556,
		-0.427000, -0.888705, -0.166956,
		31.680584, 35.280109, 39.328762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202377, 35.894321, 39.525486>,  <31.979483, 35.902203, 39.445633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202377, 35.894321, 39.525486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378828, 35.544113, 39.604351>,  <31.484699, 35.333988, 39.651672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378828, 35.544113, 39.604351>,  <31.202377, 35.894321, 39.525486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378828, 35.544113, 39.604351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513100, -0.065797, 0.855803,
		-0.736299, -0.478682, -0.478254,
		0.441126, -0.875519, 0.197165,
		31.511166, 35.281456, 39.663502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638435, 35.531410, 39.764862>,  <31.202377, 35.894321, 39.525486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638435, 35.531410, 39.764862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955830, 35.317787, 39.881596>,  <31.146265, 35.189613, 39.951633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955830, 35.317787, 39.881596>,  <30.638435, 35.531410, 39.764862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955830, 35.317787, 39.881596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479954, -0.254291, 0.839631,
		-0.374202, -0.806299, -0.458099,
		0.793484, -0.534058, 0.291831,
		31.193874, 35.157570, 39.969147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421597, 34.859348, 39.963345>,  <30.638435, 35.531410, 39.764862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421597, 34.859348, 39.963345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764418, 34.897541, 40.165867>,  <30.970110, 34.920456, 40.287380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764418, 34.897541, 40.165867>,  <30.421597, 34.859348, 39.963345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764418, 34.897541, 40.165867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473137, -0.243166, 0.846765,
		0.203968, -0.965274, -0.163229,
		0.857052, 0.095483, 0.506305,
		31.021534, 34.926186, 40.317757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413115, 34.282860, 40.404930>,  <30.421597, 34.859348, 39.963345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413115, 34.282860, 40.404930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683701, 34.507809, 40.595142>,  <30.846052, 34.642780, 40.709270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683701, 34.507809, 40.595142>,  <30.413115, 34.282860, 40.404930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683701, 34.507809, 40.595142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564826, -0.018192, 0.825010,
		0.472615, -0.826683, 0.305337,
		0.676466, 0.562374, 0.475529,
		30.886641, 34.676521, 40.737801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495747, 33.890678, 41.158012>,  <30.413115, 34.282860, 40.404930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495747, 33.890678, 41.158012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667793, 34.249969, 41.194202>,  <30.771023, 34.465546, 41.215916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667793, 34.249969, 41.194202>,  <30.495747, 33.890678, 41.158012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667793, 34.249969, 41.194202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370309, 0.084138, 0.925090,
		0.823328, -0.431404, 0.368811,
		0.430119, 0.898227, 0.090479,
		30.796829, 34.519436, 41.221348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921806, 33.831581, 41.675846>,  <30.495747, 33.890678, 41.158012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921806, 33.831581, 41.675846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822071, 34.217602, 41.643581>,  <30.762230, 34.449215, 41.624222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822071, 34.217602, 41.643581>,  <30.921806, 33.831581, 41.675846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822071, 34.217602, 41.643581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382589, -0.021646, 0.923665,
		0.889638, 0.261167, 0.374615,
		-0.249340, 0.965051, -0.080663,
		30.747269, 34.507118, 41.619381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180532, 34.195515, 42.256294>,  <30.921806, 33.831581, 41.675846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180532, 34.195515, 42.256294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884941, 34.424057, 42.113487>,  <30.707586, 34.561184, 42.027802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884941, 34.424057, 42.113487>,  <31.180532, 34.195515, 42.256294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884941, 34.424057, 42.113487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369456, 0.099467, 0.923910,
		0.563395, 0.814651, 0.137587,
		-0.738978, 0.571359, -0.357017,
		30.663248, 34.595463, 42.006382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075195, 34.541462, 42.718689>,  <31.180532, 34.195515, 42.256294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075195, 34.541462, 42.718689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741760, 34.620529, 42.512367>,  <30.541698, 34.667969, 42.388573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741760, 34.620529, 42.512367>,  <31.075195, 34.541462, 42.718689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741760, 34.620529, 42.512367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489115, 0.169822, 0.855527,
		0.256707, 0.965447, -0.044879,
		-0.833587, 0.197669, -0.515809,
		30.491684, 34.679829, 42.357624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610991, 35.141518, 43.034035>,  <31.075195, 34.541462, 42.718689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610991, 35.141518, 43.034035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350962, 34.979687, 42.776749>,  <30.194944, 34.882587, 42.622379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350962, 34.979687, 42.776749>,  <30.610991, 35.141518, 43.034035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350962, 34.979687, 42.776749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711782, 0.027862, 0.701848,
		-0.266033, 0.914078, -0.306086,
		-0.650072, -0.404581, -0.643212,
		30.155941, 34.858311, 42.583786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975655, 35.556835, 43.109364>,  <30.610991, 35.141518, 43.034035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975655, 35.556835, 43.109364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860209, 35.208420, 42.950371>,  <29.790941, 34.999371, 42.854977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860209, 35.208420, 42.950371>,  <29.975655, 35.556835, 43.109364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860209, 35.208420, 42.950371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838605, 0.029660, 0.543931,
		-0.461997, 0.490315, -0.739020,
		-0.288617, -0.871041, -0.397478,
		29.773623, 34.947109, 42.831127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272226, 35.661476, 42.975029>,  <29.975655, 35.556835, 43.109364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272226, 35.661476, 42.975029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350880, 35.274979, 43.041607>,  <29.398071, 35.043079, 43.081554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350880, 35.274979, 43.041607>,  <29.272226, 35.661476, 42.975029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350880, 35.274979, 43.041607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756611, -0.041566, 0.652543,
		-0.623599, -0.254243, -0.739246,
		0.196632, -0.966247, 0.166442,
		29.409868, 34.985104, 43.091541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671059, 35.375084, 43.140110>,  <29.272226, 35.661476, 42.975029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671059, 35.375084, 43.140110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905861, 35.072884, 43.256489>,  <29.046741, 34.891563, 43.326317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905861, 35.072884, 43.256489>,  <28.671059, 35.375084, 43.140110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905861, 35.072884, 43.256489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654324, -0.231106, 0.720035,
		-0.476746, -0.613036, -0.630001,
		0.587004, -0.755498, 0.290945,
		29.081963, 34.846233, 43.343773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281977, 34.714039, 43.310917>,  <28.671059, 35.375084, 43.140110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281977, 34.714039, 43.310917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623617, 34.692768, 43.517868>,  <28.828602, 34.680004, 43.642040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623617, 34.692768, 43.517868>,  <28.281977, 34.714039, 43.310917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623617, 34.692768, 43.517868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515723, -0.215468, 0.829218,
		0.067380, -0.975062, -0.211458,
		0.854102, -0.053181, 0.517380,
		28.879848, 34.676815, 43.673080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222321, 34.087059, 43.680347>,  <28.281977, 34.714039, 43.310917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222321, 34.087059, 43.680347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507196, 34.283993, 43.880508>,  <28.678122, 34.402153, 44.000603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507196, 34.283993, 43.880508>,  <28.222321, 34.087059, 43.680347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507196, 34.283993, 43.880508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381414, -0.327048, 0.864617,
		0.589332, -0.806629, -0.045137,
		0.712187, 0.492331, 0.500399,
		28.720852, 34.431690, 44.030628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413834, 33.532001, 44.038338>,  <28.222321, 34.087059, 43.680347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413834, 33.532001, 44.038338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512329, 33.878376, 44.212471>,  <28.571426, 34.086201, 44.316952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512329, 33.878376, 44.212471>,  <28.413834, 33.532001, 44.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512329, 33.878376, 44.212471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274451, -0.368486, 0.888198,
		0.929540, -0.338187, 0.146922,
		0.246238, 0.865938, 0.435338,
		28.586201, 34.138157, 44.343071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835188, 33.310513, 44.571754>,  <28.413834, 33.532001, 44.038338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835188, 33.310513, 44.571754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734634, 33.683147, 44.676785>,  <28.674301, 33.906731, 44.739803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734634, 33.683147, 44.676785>,  <28.835188, 33.310513, 44.571754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734634, 33.683147, 44.676785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157527, -0.307050, 0.938566,
		0.954982, 0.194579, 0.223938,
		-0.251385, 0.931590, 0.262576,
		28.659220, 33.962624, 44.755558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320543, 33.548241, 45.127983>,  <28.835188, 33.310513, 44.571754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320543, 33.548241, 45.127983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994045, 33.771629, 45.187107>,  <28.798145, 33.905663, 45.222580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994045, 33.771629, 45.187107>,  <29.320543, 33.548241, 45.127983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994045, 33.771629, 45.187107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026157, -0.291317, 0.956269,
		0.577112, 0.776685, 0.252394,
		-0.816246, 0.558476, 0.147806,
		28.749172, 33.939171, 45.231449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463327, 33.744324, 45.847546>,  <29.320543, 33.548241, 45.127983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463327, 33.744324, 45.847546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078287, 33.818821, 45.768845>,  <28.847263, 33.863522, 45.721622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078287, 33.818821, 45.768845>,  <29.463327, 33.744324, 45.847546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078287, 33.818821, 45.768845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240396, -0.252252, 0.937325,
		0.124942, 0.949569, 0.287590,
		-0.962600, 0.186247, -0.196756,
		28.789507, 33.874695, 45.709816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276354, 34.218628, 46.356541>,  <29.463327, 33.744324, 45.847546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276354, 34.218628, 46.356541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938620, 34.046074, 46.229412>,  <28.735979, 33.942543, 46.153133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938620, 34.046074, 46.229412>,  <29.276354, 34.218628, 46.356541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938620, 34.046074, 46.229412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231314, -0.241577, 0.942409,
		-0.483316, 0.869224, 0.104187,
		-0.844334, -0.431381, -0.317822,
		28.685320, 33.916660, 46.134064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746037, 34.434269, 46.778812>,  <29.276354, 34.218628, 46.356541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746037, 34.434269, 46.778812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634060, 34.090736, 46.607208>,  <28.566874, 33.884617, 46.504246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634060, 34.090736, 46.607208>,  <28.746037, 34.434269, 46.778812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634060, 34.090736, 46.607208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325020, -0.335698, 0.884121,
		-0.903324, 0.386938, -0.185161,
		-0.279941, -0.858829, -0.429006,
		28.550077, 33.833088, 46.478508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163279, 34.220951, 47.128193>,  <28.746037, 34.434269, 46.778812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163279, 34.220951, 47.128193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333872, 33.894516, 46.972183>,  <28.436228, 33.698654, 46.878578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333872, 33.894516, 46.972183>,  <28.163279, 34.220951, 47.128193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333872, 33.894516, 46.972183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326840, -0.541115, 0.774836,
		-0.843380, -0.202977, -0.497504,
		0.426481, -0.816085, -0.390024,
		28.461817, 33.649689, 46.855175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767458, 33.732185, 47.415768>,  <28.163279, 34.220951, 47.128193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767458, 33.732185, 47.415768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072742, 33.530621, 47.253986>,  <28.255913, 33.409679, 47.156918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072742, 33.530621, 47.253986>,  <27.767458, 33.732185, 47.415768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072742, 33.530621, 47.253986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028501, -0.651582, 0.758043,
		-0.645504, -0.567030, -0.511665,
		0.763225, -0.503902, -0.404438,
		28.301706, 33.379448, 47.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584526, 33.106369, 47.496311>,  <27.767458, 33.732185, 47.415768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584526, 33.106369, 47.496311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982492, 33.125340, 47.460785>,  <28.221273, 33.136723, 47.439468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982492, 33.125340, 47.460785>,  <27.584526, 33.106369, 47.496311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982492, 33.125340, 47.460785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100514, -0.519425, 0.848584,
		-0.005885, -0.853199, -0.521553,
		0.994918, 0.047430, -0.088815,
		28.280968, 33.139568, 47.434139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710096, 32.419498, 47.581539>,  <27.584526, 33.106369, 47.496311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710096, 32.419498, 47.581539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057737, 32.608997, 47.638424>,  <28.266323, 32.722694, 47.672554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057737, 32.608997, 47.638424>,  <27.710096, 32.419498, 47.581539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057737, 32.608997, 47.638424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125852, -0.489849, 0.862676,
		0.478351, -0.731856, -0.485351,
		0.869104, 0.473745, 0.142214,
		28.318468, 32.751122, 47.681087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271679, 31.872181, 47.749859>,  <27.710096, 32.419498, 47.581539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271679, 31.872181, 47.749859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365589, 32.222328, 47.918907>,  <28.421936, 32.432415, 48.020336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365589, 32.222328, 47.918907>,  <28.271679, 31.872181, 47.749859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365589, 32.222328, 47.918907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047561, -0.444597, 0.894467,
		0.970885, -0.189900, -0.146015,
		0.234777, 0.875369, 0.422620,
		28.436022, 32.484940, 48.045692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786499, 31.693192, 48.195393>,  <28.271679, 31.872181, 47.749859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786499, 31.693192, 48.195393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685333, 32.045132, 48.356339>,  <28.624634, 32.256294, 48.452904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685333, 32.045132, 48.356339>,  <28.786499, 31.693192, 48.195393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685333, 32.045132, 48.356339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238732, -0.346269, 0.907251,
		0.937572, 0.325514, -0.122473,
		-0.252914, 0.879851, 0.402363,
		28.609459, 32.309086, 48.477047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271154, 31.801634, 48.664482>,  <28.786499, 31.693192, 48.195393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271154, 31.801634, 48.664482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987131, 32.061123, 48.774014>,  <28.816717, 32.216816, 48.839733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987131, 32.061123, 48.774014>,  <29.271154, 31.801634, 48.664482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987131, 32.061123, 48.774014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073102, -0.318860, 0.944979,
		0.700340, 0.691005, 0.178985,
		-0.710056, 0.648722, 0.273824,
		28.774115, 32.255741, 48.856159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513416, 32.197208, 49.179943>,  <29.271154, 31.801634, 48.664482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513416, 32.197208, 49.179943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114895, 32.202713, 49.213852>,  <28.875782, 32.206017, 49.234196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114895, 32.202713, 49.213852>,  <29.513416, 32.197208, 49.179943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114895, 32.202713, 49.213852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075447, -0.331242, 0.940525,
		0.041019, 0.943446, 0.328981,
		-0.996306, 0.013758, 0.084768,
		28.816004, 32.206841, 49.239281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382750, 32.660580, 49.763531>,  <29.513416, 32.197208, 49.179943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382750, 32.660580, 49.763531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053638, 32.441078, 49.704334>,  <28.856171, 32.309376, 49.668816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053638, 32.441078, 49.704334>,  <29.382750, 32.660580, 49.763531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053638, 32.441078, 49.704334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038168, -0.206450, 0.977713,
		-0.567078, 0.810090, 0.148918,
		-0.822779, -0.548755, -0.147992,
		28.806805, 32.276451, 49.659935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932337, 32.772503, 50.232689>,  <29.382750, 32.660580, 49.763531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932337, 32.772503, 50.232689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766420, 32.425274, 50.123589>,  <28.666870, 32.216934, 50.058128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766420, 32.425274, 50.123589>,  <28.932337, 32.772503, 50.232689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766420, 32.425274, 50.123589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187538, -0.211756, 0.959161,
		-0.890380, 0.449002, -0.074963,
		-0.414792, -0.868076, -0.272749,
		28.641983, 32.164852, 50.041763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370363, 32.692619, 50.812191>,  <28.932337, 32.772503, 50.232689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370363, 32.692619, 50.812191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477598, 32.344917, 50.646049>,  <28.541939, 32.136295, 50.546364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477598, 32.344917, 50.646049>,  <28.370363, 32.692619, 50.812191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477598, 32.344917, 50.646049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022729, -0.425308, 0.904763,
		-0.963127, -0.251994, -0.094262,
		0.268085, -0.869259, -0.415353,
		28.558023, 32.084141, 50.521442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949387, 32.253704, 51.121586>,  <28.370363, 32.692619, 50.812191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949387, 32.253704, 51.121586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274176, 32.059368, 50.992180>,  <28.469049, 31.942766, 50.914536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274176, 32.059368, 50.992180>,  <27.949387, 32.253704, 51.121586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274176, 32.059368, 50.992180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119950, -0.403529, 0.907070,
		-0.571238, -0.775322, -0.269377,
		0.811973, -0.485841, -0.323511,
		28.517767, 31.913616, 50.895126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952007, 31.812654, 51.727940>,  <27.949387, 32.253704, 51.121586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952007, 31.812654, 51.727940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288664, 31.762463, 51.517834>,  <28.490658, 31.732347, 51.391769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288664, 31.762463, 51.517834>,  <27.952007, 31.812654, 51.727940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288664, 31.762463, 51.517834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404993, -0.496759, 0.767601,
		-0.357244, -0.858770, -0.367274,
		0.841640, -0.125478, -0.525260,
		28.541155, 31.724819, 51.360256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491798, 31.478371, 52.176685>,  <27.952007, 31.812654, 51.727940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491798, 31.478371, 52.176685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469402, 31.505457, 52.575138>,  <27.455965, 31.521708, 52.814209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469402, 31.505457, 52.575138>,  <27.491798, 31.478371, 52.176685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469402, 31.505457, 52.575138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445973, 0.890941, -0.085630,
		-0.893293, -0.449043, -0.019685,
		-0.055989, 0.067714, 0.996132,
		27.452606, 31.525770, 52.873978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510256, 30.774553, 51.854958>,  <27.491798, 31.478371, 52.176685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510256, 30.774553, 51.854958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556755, 30.787420, 52.252037>,  <27.584654, 30.795141, 52.490284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556755, 30.787420, 52.252037>,  <27.510256, 30.774553, 51.854958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556755, 30.787420, 52.252037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334606, -0.942318, -0.008646,
		0.935161, 0.333168, -0.120306,
		0.116247, 0.032170, 0.992699,
		27.591629, 30.797071, 52.549847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089540, 30.343548, 52.108761>,  <27.510256, 30.774553, 51.854958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089540, 30.343548, 52.108761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712173, 30.335037, 52.241131>,  <27.485754, 30.329931, 52.320553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712173, 30.335037, 52.241131>,  <28.089540, 30.343548, 52.108761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712173, 30.335037, 52.241131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252748, -0.599888, -0.759113,
		0.214668, -0.799801, 0.560567,
		-0.943417, -0.021275, 0.330925,
		27.429148, 30.328655, 52.340408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814541, 29.625856, 52.362267>,  <28.089540, 30.343548, 52.108761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814541, 29.625856, 52.362267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553612, 29.884304, 52.203770>,  <27.397055, 30.039371, 52.108673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553612, 29.884304, 52.203770>,  <27.814541, 29.625856, 52.362267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553612, 29.884304, 52.203770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256214, -0.679988, -0.687001,
		-0.713324, -0.346623, 0.609115,
		-0.652322, 0.646118, -0.396242,
		27.357914, 30.078138, 52.084896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483376, 29.181499, 51.921177>,  <27.814541, 29.625856, 52.362267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483376, 29.181499, 51.921177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346449, 29.549328, 51.844017>,  <27.264292, 29.770025, 51.797722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346449, 29.549328, 51.844017>,  <27.483376, 29.181499, 51.921177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346449, 29.549328, 51.844017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227225, -0.280231, -0.932652,
		-0.911695, -0.275432, 0.304877,
		-0.342319, 0.919570, -0.192900,
		27.243753, 29.825199, 51.786148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806328, 29.786560, 51.377117>,  <27.483376, 29.181499, 51.921177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806328, 29.786560, 51.377117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840952, 29.475662, 51.127831>,  <27.861727, 29.289124, 50.978260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840952, 29.475662, 51.127831>,  <27.806328, 29.786560, 51.377117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840952, 29.475662, 51.127831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987547, 0.149430, -0.049202,
		0.131369, -0.611195, 0.780501,
		0.086558, -0.777246, -0.623215,
		27.866919, 29.242489, 50.940865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380144, 29.328457, 51.538380>,  <27.806328, 29.786560, 51.377117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380144, 29.328457, 51.538380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339056, 29.323044, 51.140533>,  <28.314404, 29.319796, 50.901825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339056, 29.323044, 51.140533>,  <28.380144, 29.328457, 51.538380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339056, 29.323044, 51.140533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993977, -0.039775, -0.102111,
		-0.038179, -0.999117, 0.017538,
		-0.102719, -0.013533, -0.994619,
		28.308241, 29.318985, 50.842148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770023, 28.728947, 51.169662>,  <28.380144, 29.328457, 51.538380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770023, 28.728947, 51.169662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733143, 29.051807, 50.936424>,  <28.711016, 29.245523, 50.796482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733143, 29.051807, 50.936424>,  <28.770023, 28.728947, 51.169662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733143, 29.051807, 50.936424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958341, -0.087055, -0.272038,
		-0.270338, -0.583890, -0.765500,
		-0.092199, 0.807152, -0.583100,
		28.705482, 29.293953, 50.761494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068708, 28.604010, 50.485203>,  <28.770023, 28.728947, 51.169662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068708, 28.604010, 50.485203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030651, 29.000061, 50.444031>,  <29.007816, 29.237692, 50.419327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030651, 29.000061, 50.444031>,  <29.068708, 28.604010, 50.485203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030651, 29.000061, 50.444031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833258, 0.022642, -0.552420,
		-0.544636, -0.138329, -0.827186,
		-0.095145, 0.990128, -0.102932,
		29.002108, 29.297100, 50.413151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263523, 28.766764, 49.778893>,  <29.068708, 28.604010, 50.485203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263523, 28.766764, 49.778893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328083, 29.082500, 50.015835>,  <29.366819, 29.271942, 50.158001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328083, 29.082500, 50.015835>,  <29.263523, 28.766764, 49.778893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328083, 29.082500, 50.015835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914686, 0.105717, -0.390095,
		-0.370541, 0.604782, -0.704938,
		0.161398, 0.789343, 0.592358,
		29.376503, 29.319304, 50.193542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549036, 29.252235, 49.367386>,  <29.263523, 28.766764, 49.778893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549036, 29.252235, 49.367386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650745, 29.371370, 49.735439>,  <29.711771, 29.442852, 49.956272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650745, 29.371370, 49.735439>,  <29.549036, 29.252235, 49.367386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650745, 29.371370, 49.735439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937105, 0.159358, -0.310547,
		-0.239123, 0.941221, -0.238586,
		0.254272, 0.297839, 0.920129,
		29.727028, 29.460722, 50.011478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861044, 29.915577, 49.290333>,  <29.549036, 29.252235, 49.367386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861044, 29.915577, 49.290333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003941, 29.829702, 49.653934>,  <30.089678, 29.778177, 49.872097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003941, 29.829702, 49.653934>,  <29.861044, 29.915577, 49.290333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003941, 29.829702, 49.653934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886224, 0.385228, -0.257306,
		-0.294934, 0.897501, 0.327880,
		0.357241, -0.214687, 0.909004,
		30.111113, 29.765297, 49.926636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159252, 30.436562, 49.554264>,  <29.861044, 29.915577, 49.290333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159252, 30.436562, 49.554264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347965, 30.154423, 49.765888>,  <30.461193, 29.985140, 49.892864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347965, 30.154423, 49.765888>,  <30.159252, 30.436562, 49.554264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347965, 30.154423, 49.765888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876940, 0.437734, -0.198408,
		-0.091640, 0.557559, 0.825064,
		0.471783, -0.705349, 0.529059,
		30.489500, 29.942818, 49.924606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726864, 30.831905, 49.940147>,  <30.159252, 30.436562, 49.554264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726864, 30.831905, 49.940147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808619, 30.440735, 49.957531>,  <30.857672, 30.206034, 49.967960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808619, 30.440735, 49.957531>,  <30.726864, 30.831905, 49.940147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808619, 30.440735, 49.957531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957529, 0.190505, -0.216441,
		0.203385, 0.085847, 0.975328,
		0.204386, -0.977925, 0.043455,
		30.869934, 30.147358, 49.970566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382748, 30.733587, 50.362907>,  <30.726864, 30.831905, 49.940147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382748, 30.733587, 50.362907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361343, 30.401602, 50.140808>,  <31.348501, 30.202410, 50.007549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361343, 30.401602, 50.140808>,  <31.382748, 30.733587, 50.362907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361343, 30.401602, 50.140808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896787, 0.204631, -0.392300,
		0.439215, -0.518929, 0.733351,
		-0.053509, -0.829963, -0.555246,
		31.345291, 30.152613, 49.974236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993410, 30.433176, 50.407078>,  <31.382748, 30.733587, 50.362907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993410, 30.433176, 50.407078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853827, 30.281260, 50.064384>,  <31.770077, 30.190109, 49.858768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853827, 30.281260, 50.064384>,  <31.993410, 30.433176, 50.407078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853827, 30.281260, 50.064384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867784, 0.214186, -0.448414,
		0.353803, -0.899935, 0.254835,
		-0.348961, -0.379792, -0.856729,
		31.749138, 30.167322, 49.807365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554302, 30.395294, 49.986614>,  <31.993410, 30.433176, 50.407078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554302, 30.395294, 49.986614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288540, 30.321360, 49.696953>,  <32.129082, 30.276999, 49.523155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288540, 30.321360, 49.696953>,  <32.554302, 30.395294, 49.986614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288540, 30.321360, 49.696953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655839, 0.320431, -0.683520,
		0.358384, -0.929063, -0.091671,
		-0.664407, -0.184841, -0.724153,
		32.089218, 30.265909, 49.479706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910725, 30.186659, 49.409065>,  <32.554302, 30.395294, 49.986614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910725, 30.186659, 49.409065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575451, 30.370512, 49.291637>,  <32.374287, 30.480824, 49.221184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575451, 30.370512, 49.291637>,  <32.910725, 30.186659, 49.409065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575451, 30.370512, 49.291637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478778, 0.362359, -0.799667,
		-0.261177, -0.810823, -0.523786,
		-0.838187, 0.459632, -0.293565,
		32.323994, 30.508402, 49.203568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849003, 29.928375, 48.684902>,  <32.910725, 30.186659, 49.409065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849003, 29.928375, 48.684902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632065, 30.262695, 48.719074>,  <32.501904, 30.463287, 48.739578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632065, 30.262695, 48.719074>,  <32.849003, 29.928375, 48.684902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632065, 30.262695, 48.719074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363375, 0.325034, -0.873105,
		-0.757510, -0.442480, -0.479990,
		-0.542344, 0.835802, 0.085431,
		32.469360, 30.513435, 48.744705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748837, 30.064577, 47.952579>,  <32.849003, 29.928375, 48.684902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748837, 30.064577, 47.952579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602249, 30.385183, 48.141586>,  <32.514297, 30.577547, 48.254990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602249, 30.385183, 48.141586>,  <32.748837, 30.064577, 47.952579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602249, 30.385183, 48.141586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000121, 0.507886, -0.861424,
		-0.930430, -0.315629, -0.186222,
		-0.366470, 0.801517, 0.472514,
		32.492310, 30.625639, 48.283340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341534, 30.396675, 47.461090>,  <32.748837, 30.064577, 47.952579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341534, 30.396675, 47.461090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433060, 30.673672, 47.734760>,  <32.487976, 30.839870, 47.898964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433060, 30.673672, 47.734760>,  <32.341534, 30.396675, 47.461090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433060, 30.673672, 47.734760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305621, 0.616185, -0.725887,
		-0.924250, 0.375196, -0.070645,
		0.228819, 0.692491, 0.684177,
		32.501705, 30.881418, 47.940014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936735, 31.006756, 47.352421>,  <32.341534, 30.396675, 47.461090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936735, 31.006756, 47.352421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248039, 31.136145, 47.567707>,  <32.434822, 31.213778, 47.696880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248039, 31.136145, 47.567707>,  <31.936735, 31.006756, 47.352421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248039, 31.136145, 47.567707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268410, 0.603502, -0.750827,
		-0.567688, 0.728801, 0.382857,
		0.778259, 0.323473, 0.538218,
		32.481518, 31.233187, 47.729172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960079, 31.719759, 47.286983>,  <31.936735, 31.006756, 47.352421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960079, 31.719759, 47.286983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337646, 31.640821, 47.392872>,  <32.564186, 31.593460, 47.456406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337646, 31.640821, 47.392872>,  <31.960079, 31.719759, 47.286983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337646, 31.640821, 47.392872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328707, 0.485925, -0.809832,
		0.031180, 0.851430, 0.523540,
		0.943917, -0.197342, 0.264720,
		32.620823, 31.581619, 47.472286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284618, 32.377895, 47.261345>,  <31.960079, 31.719759, 47.286983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284618, 32.377895, 47.261345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581593, 32.110184, 47.249577>,  <32.759777, 31.949558, 47.242516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581593, 32.110184, 47.249577>,  <32.284618, 32.377895, 47.261345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581593, 32.110184, 47.249577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415396, 0.494369, -0.763574,
		0.525586, 0.554681, 0.645050,
		0.742432, -0.669275, -0.029421,
		32.804321, 31.909401, 47.240749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928020, 32.744091, 47.197357>,  <32.284618, 32.377895, 47.261345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928020, 32.744091, 47.197357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996563, 32.376049, 47.056473>,  <33.037689, 32.155224, 46.971943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996563, 32.376049, 47.056473>,  <32.928020, 32.744091, 47.197357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996563, 32.376049, 47.056473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442019, 0.391297, -0.807159,
		0.880486, -0.017368, 0.473754,
		0.171360, -0.920100, -0.352209,
		33.047970, 32.100018, 46.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669834, 32.765827, 46.970787>,  <32.928020, 32.744091, 47.197357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669834, 32.765827, 46.970787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482048, 32.478634, 46.765224>,  <33.369377, 32.306316, 46.641888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482048, 32.478634, 46.765224>,  <33.669834, 32.765827, 46.970787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482048, 32.478634, 46.765224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408958, 0.339023, -0.847241,
		0.782533, -0.607915, 0.134466,
		-0.469463, -0.717985, -0.513908,
		33.341209, 32.263237, 46.611053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157272, 32.421654, 46.641220>,  <33.669834, 32.765827, 46.970787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157272, 32.421654, 46.641220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832916, 32.328705, 46.426388>,  <33.638302, 32.272934, 46.297489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832916, 32.328705, 46.426388>,  <34.157272, 32.421654, 46.641220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832916, 32.328705, 46.426388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469800, 0.288718, -0.834224,
		0.348914, -0.928787, -0.124952,
		-0.810893, -0.232370, -0.537082,
		33.589649, 32.258995, 46.265263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392410, 32.389793, 45.991680>,  <34.157272, 32.421654, 46.641220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392410, 32.389793, 45.991680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013660, 32.342377, 45.872097>,  <33.786411, 32.313927, 45.800346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013660, 32.342377, 45.872097>,  <34.392410, 32.389793, 45.991680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013660, 32.342377, 45.872097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296201, 0.040641, -0.954261,
		0.125275, -0.992116, -0.003368,
		-0.946874, -0.118547, -0.298957,
		33.729599, 32.306812, 45.782410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429905, 31.899920, 45.333866>,  <34.392410, 32.389793, 45.991680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429905, 31.899920, 45.333866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071854, 32.076694, 45.310406>,  <33.857025, 32.182758, 45.296329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071854, 32.076694, 45.310406>,  <34.429905, 31.899920, 45.333866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071854, 32.076694, 45.310406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211791, 0.305783, -0.928246,
		-0.392293, -0.843319, -0.367313,
		-0.895126, 0.441938, -0.058651,
		33.803314, 32.209274, 45.292812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961651, 31.660589, 44.755901>,  <34.429905, 31.899920, 45.333866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961651, 31.660589, 44.755901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821064, 32.030228, 44.815929>,  <33.736713, 32.252010, 44.851948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821064, 32.030228, 44.815929>,  <33.961651, 31.660589, 44.755901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821064, 32.030228, 44.815929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058211, 0.181560, -0.981655,
		-0.934389, -0.336282, -0.117604,
		-0.351465, 0.924094, 0.150072,
		33.715626, 32.307457, 44.860950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411198, 31.795395, 44.286152>,  <33.961651, 31.660589, 44.755901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411198, 31.795395, 44.286152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526283, 32.160934, 44.400768>,  <33.595333, 32.380257, 44.469540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526283, 32.160934, 44.400768>,  <33.411198, 31.795395, 44.286152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526283, 32.160934, 44.400768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068804, 0.318141, -0.945543,
		-0.955242, 0.252329, 0.154409,
		0.287712, 0.913847, 0.286540,
		33.612598, 32.435089, 44.486729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205284, 32.206963, 43.721958>,  <33.411198, 31.795395, 44.286152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205284, 32.206963, 43.721958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411655, 32.477455, 43.932301>,  <33.535477, 32.639751, 44.058506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411655, 32.477455, 43.932301>,  <33.205284, 32.206963, 43.721958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411655, 32.477455, 43.932301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032376, 0.598032, -0.800818,
		-0.856019, 0.430191, 0.286649,
		0.515930, 0.676235, 0.525854,
		33.566433, 32.680325, 44.090057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868233, 32.877804, 43.680168>,  <33.205284, 32.206963, 43.721958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868233, 32.877804, 43.680168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262157, 32.914265, 43.739269>,  <33.498512, 32.936142, 43.774731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262157, 32.914265, 43.739269>,  <32.868233, 32.877804, 43.680168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262157, 32.914265, 43.739269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077400, 0.531260, -0.843666,
		-0.155395, 0.842291, 0.516138,
		0.984816, 0.091152, 0.147748,
		33.557602, 32.941612, 43.783592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025612, 33.591991, 43.528610>,  <32.868233, 32.877804, 43.680168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025612, 33.591991, 43.528610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370655, 33.389839, 43.519707>,  <33.577682, 33.268547, 43.514366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370655, 33.389839, 43.519707>,  <33.025612, 33.591991, 43.528610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370655, 33.389839, 43.519707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223047, 0.419465, -0.879943,
		0.454041, 0.754083, 0.474558,
		0.862610, -0.505379, -0.022259,
		33.629436, 33.238224, 43.513027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546017, 34.031723, 43.438904>,  <33.025612, 33.591991, 43.528610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546017, 34.031723, 43.438904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680828, 33.679695, 43.305111>,  <33.761715, 33.468479, 43.224834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680828, 33.679695, 43.305111>,  <33.546017, 34.031723, 43.438904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680828, 33.679695, 43.305111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140901, 0.398420, -0.906316,
		0.930890, 0.258329, 0.258284,
		0.337033, -0.880073, -0.334486,
		33.781937, 33.415672, 43.204765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130981, 34.191326, 42.927147>,  <33.546017, 34.031723, 43.438904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130981, 34.191326, 42.927147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130203, 33.800621, 42.841415>,  <34.129738, 33.566200, 42.789978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130203, 33.800621, 42.841415>,  <34.130981, 34.191326, 42.927147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130203, 33.800621, 42.841415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092079, 0.213245, -0.972650,
		0.995750, -0.021629, 0.089524,
		-0.001947, -0.976759, -0.214330,
		34.129620, 33.507595, 42.777115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666420, 34.077332, 42.427242>,  <34.130981, 34.191326, 42.927147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666420, 34.077332, 42.427242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422371, 33.763840, 42.380733>,  <34.275940, 33.575745, 42.352829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422371, 33.763840, 42.380733>,  <34.666420, 34.077332, 42.427242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422371, 33.763840, 42.380733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020938, 0.130745, -0.991195,
		0.792028, -0.607188, -0.063361,
		-0.610126, -0.783727, -0.116267,
		34.239334, 33.528721, 42.345852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944603, 33.659626, 41.842930>,  <34.666420, 34.077332, 42.427242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944603, 33.659626, 41.842930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560352, 33.556465, 41.884262>,  <34.329800, 33.494568, 41.909061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560352, 33.556465, 41.884262>,  <34.944603, 33.659626, 41.842930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560352, 33.556465, 41.884262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067477, -0.144205, -0.987244,
		0.269511, -0.955349, 0.121126,
		-0.960630, -0.257900, 0.103329,
		34.272163, 33.479095, 41.915260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907131, 33.050686, 41.485214>,  <34.944603, 33.659626, 41.842930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907131, 33.050686, 41.485214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532425, 33.190414, 41.493732>,  <34.307602, 33.274250, 41.498844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532425, 33.190414, 41.493732>,  <34.907131, 33.050686, 41.485214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532425, 33.190414, 41.493732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092792, -0.189256, -0.977534,
		-0.337442, -0.917692, 0.209702,
		-0.936762, 0.349319, 0.021291,
		34.251396, 33.295212, 41.500118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594181, 32.670162, 40.983898>,  <34.907131, 33.050686, 41.485214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594181, 32.670162, 40.983898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350815, 32.982708, 41.039459>,  <34.204796, 33.170235, 41.072796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350815, 32.982708, 41.039459>,  <34.594181, 32.670162, 40.983898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350815, 32.982708, 41.039459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214624, 0.006509, -0.976675,
		-0.764044, -0.624040, 0.163739,
		-0.608419, 0.781366, 0.138907,
		34.168289, 33.217117, 41.081131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037899, 32.529202, 40.623287>,  <34.594181, 32.670162, 40.983898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037899, 32.529202, 40.623287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017181, 32.926472, 40.665070>,  <34.004753, 33.164833, 40.690140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017181, 32.926472, 40.665070>,  <34.037899, 32.529202, 40.623287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017181, 32.926472, 40.665070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040987, 0.102394, -0.993899,
		-0.997817, -0.055756, 0.035404,
		-0.051791, 0.993180, 0.104456,
		34.001644, 33.224426, 40.696407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419556, 32.648655, 40.282452>,  <34.037899, 32.529202, 40.623287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419556, 32.648655, 40.282452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623943, 32.992172, 40.297321>,  <33.746578, 33.198284, 40.306244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623943, 32.992172, 40.297321>,  <33.419556, 32.648655, 40.282452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623943, 32.992172, 40.297321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066819, 0.082803, -0.994323,
		-0.856996, 0.505588, 0.099693,
		0.510973, 0.858793, 0.037179,
		33.777237, 33.249809, 40.308475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054928, 33.150242, 39.910309>,  <33.419556, 32.648655, 40.282452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054928, 33.150242, 39.910309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430313, 33.288395, 39.910793>,  <33.655544, 33.371288, 39.911083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430313, 33.288395, 39.910793>,  <33.054928, 33.150242, 39.910309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430313, 33.288395, 39.910793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093779, 0.258177, -0.961535,
		-0.332409, 0.902250, 0.274679,
		0.938462, 0.345382, 0.001208,
		33.711853, 33.392010, 39.911156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029213, 33.702229, 39.388733>,  <33.054928, 33.150242, 39.910309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029213, 33.702229, 39.388733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413132, 33.614620, 39.458950>,  <33.643482, 33.562054, 39.501080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413132, 33.614620, 39.458950>,  <33.029213, 33.702229, 39.388733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413132, 33.614620, 39.458950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226986, 0.237732, -0.944437,
		0.165119, 0.946316, 0.277889,
		0.959798, -0.219021, 0.175546,
		33.701073, 33.548912, 39.511616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351074, 34.195271, 38.970997>,  <33.029213, 33.702229, 39.388733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351074, 34.195271, 38.970997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626778, 33.911449, 39.029598>,  <33.792198, 33.741158, 39.064758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626778, 33.911449, 39.029598>,  <33.351074, 34.195271, 38.970997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626778, 33.911449, 39.029598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417094, 0.223252, -0.881017,
		0.592421, 0.668351, 0.449827,
		0.689254, -0.709553, 0.146506,
		33.833553, 33.698582, 39.073551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026077, 34.468708, 38.749271>,  <33.351074, 34.195271, 38.970997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026077, 34.468708, 38.749271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112034, 34.078140, 38.757603>,  <34.163609, 33.843800, 38.762604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112034, 34.078140, 38.757603>,  <34.026077, 34.468708, 38.749271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112034, 34.078140, 38.757603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494513, 0.090390, -0.864457,
		0.842187, 0.196065, 0.502274,
		0.214890, -0.976416, 0.020831,
		34.176502, 33.785217, 38.763851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756287, 34.340240, 38.634480>,  <34.026077, 34.468708, 38.749271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756287, 34.340240, 38.634480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556892, 34.009979, 38.528801>,  <34.437256, 33.811821, 38.465393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556892, 34.009979, 38.528801>,  <34.756287, 34.340240, 38.634480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556892, 34.009979, 38.528801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579618, -0.090816, -0.809812,
		0.644634, -0.556815, 0.523836,
		-0.498488, -0.825657, -0.264197,
		34.407345, 33.762283, 38.449543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193226, 34.796307, 39.026825>,  <34.756287, 34.340240, 38.634480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193226, 34.796307, 39.026825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571159, 34.680557, 38.965446>,  <35.797920, 34.611107, 38.928619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571159, 34.680557, 38.965446>,  <35.193226, 34.796307, 39.026825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571159, 34.680557, 38.965446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051883, -0.330336, 0.942436,
		-0.323390, -0.898415, -0.297103,
		0.944842, -0.289359, -0.153440,
		35.854610, 34.593746, 38.919415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277504, 34.102516, 39.306999>,  <35.193226, 34.796307, 39.026825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277504, 34.102516, 39.306999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635738, 34.280468, 39.308231>,  <35.850677, 34.387238, 39.308971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635738, 34.280468, 39.308231>,  <35.277504, 34.102516, 39.306999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635738, 34.280468, 39.308231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245524, -0.500025, 0.830477,
		0.371003, -0.743007, -0.557044,
		0.895586, 0.444877, 0.003085,
		35.904415, 34.413933, 39.309158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803135, 33.566711, 39.451443>,  <35.277504, 34.102516, 39.306999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803135, 33.566711, 39.451443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966999, 33.917751, 39.551041>,  <36.065315, 34.128376, 39.610798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966999, 33.917751, 39.551041>,  <35.803135, 33.566711, 39.451443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966999, 33.917751, 39.551041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287189, -0.383136, 0.877912,
		0.865854, -0.288136, -0.408992,
		0.409657, 0.877602, 0.248990,
		36.089897, 34.181030, 39.625736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515488, 33.395035, 39.637978>,  <35.803135, 33.566711, 39.451443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515488, 33.395035, 39.637978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419403, 33.744095, 39.808048>,  <36.361752, 33.953533, 39.910091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419403, 33.744095, 39.808048>,  <36.515488, 33.395035, 39.637978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419403, 33.744095, 39.808048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309368, -0.346346, 0.885627,
		0.920104, 0.344272, -0.186776,
		-0.240208, 0.872652, 0.425181,
		36.347340, 34.005890, 39.935604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119106, 33.759655, 39.922478>,  <36.515488, 33.395035, 39.637978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119106, 33.759655, 39.922478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803921, 33.914543, 40.113968>,  <36.614811, 34.007477, 40.228863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803921, 33.914543, 40.113968>,  <37.119106, 33.759655, 39.922478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803921, 33.914543, 40.113968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496285, -0.060784, 0.866029,
		0.364440, 0.919983, -0.144274,
		-0.787963, 0.387217, 0.478725,
		36.567532, 34.030708, 40.257587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335529, 34.298981, 40.341354>,  <37.119106, 33.759655, 39.922478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335529, 34.298981, 40.341354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992599, 34.195126, 40.519154>,  <36.786842, 34.132812, 40.625832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992599, 34.195126, 40.519154>,  <37.335529, 34.298981, 40.341354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992599, 34.195126, 40.519154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489357, -0.143110, 0.860261,
		-0.159741, 0.955044, 0.249747,
		-0.857328, -0.259634, 0.444497,
		36.735401, 34.117237, 40.652504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421417, 34.520912, 41.028412>,  <37.335529, 34.298981, 40.341354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421417, 34.520912, 41.028412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110062, 34.274925, 41.078884>,  <36.923248, 34.127335, 41.109165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110062, 34.274925, 41.078884>,  <37.421417, 34.520912, 41.028412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110062, 34.274925, 41.078884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289254, -0.172949, 0.941499,
		-0.557171, 0.769352, 0.312504,
		-0.778391, -0.614969, 0.126176,
		36.876545, 34.090435, 41.116737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014244, 34.720699, 41.686466>,  <37.421417, 34.520912, 41.028412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014244, 34.720699, 41.686466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896904, 34.344063, 41.620319>,  <36.826500, 34.118080, 41.580631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896904, 34.344063, 41.620319>,  <37.014244, 34.720699, 41.686466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896904, 34.344063, 41.620319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082817, -0.197358, 0.976827,
		-0.952410, 0.272860, 0.135875,
		-0.293353, -0.941593, -0.165369,
		36.808899, 34.061584, 41.570709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355034, 34.576332, 42.124565>,  <37.014244, 34.720699, 41.686466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355034, 34.576332, 42.124565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534184, 34.232567, 42.025917>,  <36.641674, 34.026310, 41.966728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534184, 34.232567, 42.025917>,  <36.355034, 34.576332, 42.124565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534184, 34.232567, 42.025917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056365, -0.248144, 0.967082,
		-0.892317, -0.447034, -0.062698,
		0.447877, -0.859409, -0.246620,
		36.668549, 33.974743, 41.951931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888283, 34.010857, 42.130463>,  <36.355034, 34.576332, 42.124565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888283, 34.010857, 42.130463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255619, 33.860394, 42.179726>,  <36.476021, 33.770115, 42.209282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255619, 33.860394, 42.179726>,  <35.888283, 34.010857, 42.130463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255619, 33.860394, 42.179726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273325, -0.377642, 0.884692,
		-0.286270, -0.846106, -0.449614,
		0.918337, -0.376152, 0.123154,
		36.531120, 33.747547, 42.216671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844017, 33.510750, 42.674709>,  <35.888283, 34.010857, 42.130463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844017, 33.510750, 42.674709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240368, 33.471172, 42.638092>,  <36.478176, 33.447426, 42.616123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240368, 33.471172, 42.638092>,  <35.844017, 33.510750, 42.674709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240368, 33.471172, 42.638092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055568, -0.318882, 0.946164,
		-0.122810, -0.942615, -0.310474,
		0.990873, -0.098946, -0.091541,
		36.537628, 33.441486, 42.610630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090569, 32.840557, 42.923286>,  <35.844017, 33.510750, 42.674709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090569, 32.840557, 42.923286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390415, 33.100704, 42.972439>,  <36.570324, 33.256790, 43.001930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390415, 33.100704, 42.972439>,  <36.090569, 32.840557, 42.923286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390415, 33.100704, 42.972439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017643, -0.165962, 0.985974,
		0.661636, -0.741272, -0.112934,
		0.749618, 0.650364, 0.122885,
		36.615299, 33.295815, 43.009304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640221, 32.463161, 43.209118>,  <36.090569, 32.840557, 42.923286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640221, 32.463161, 43.209118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722252, 32.839203, 43.318043>,  <36.771469, 33.064827, 43.383400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722252, 32.839203, 43.318043>,  <36.640221, 32.463161, 43.209118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722252, 32.839203, 43.318043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045789, -0.287138, 0.956794,
		0.977675, -0.183745, -0.101931,
		0.205075, 0.940101, 0.272314,
		36.783775, 33.121235, 43.399738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288685, 32.435143, 43.633652>,  <36.640221, 32.463161, 43.209118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288685, 32.435143, 43.633652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126316, 32.789505, 43.723450>,  <37.028893, 33.002121, 43.777328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126316, 32.789505, 43.723450>,  <37.288685, 32.435143, 43.633652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126316, 32.789505, 43.723450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298059, -0.103879, 0.948878,
		0.863936, 0.452085, -0.221885,
		-0.405924, 0.885905, 0.224493,
		37.004539, 33.055275, 43.790798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642353, 32.697544, 44.304276>,  <37.288685, 32.435143, 43.633652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642353, 32.697544, 44.304276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296555, 32.896549, 44.275642>,  <37.089077, 33.015953, 44.258465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296555, 32.896549, 44.275642>,  <37.642353, 32.697544, 44.304276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296555, 32.896549, 44.275642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181076, -0.175415, 0.967699,
		0.468890, 0.849533, 0.241734,
		-0.864496, 0.497517, -0.071580,
		37.037205, 33.045803, 44.254169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678898, 33.256596, 44.866932>,  <37.642353, 32.697544, 44.304276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678898, 33.256596, 44.866932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302204, 33.162170, 44.771095>,  <37.076187, 33.105515, 44.713593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302204, 33.162170, 44.771095>,  <37.678898, 33.256596, 44.866932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302204, 33.162170, 44.771095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257146, 0.046160, 0.965270,
		-0.216809, 0.970640, -0.104174,
		-0.941738, -0.236067, -0.239588,
		37.019684, 33.091351, 44.699219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275753, 33.710167, 45.220680>,  <37.678898, 33.256596, 44.866932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275753, 33.710167, 45.220680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006985, 33.425159, 45.139851>,  <36.845722, 33.254154, 45.091351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006985, 33.425159, 45.139851>,  <37.275753, 33.710167, 45.220680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006985, 33.425159, 45.139851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269966, -0.018447, 0.962693,
		-0.689668, 0.701407, -0.179962,
		-0.671919, -0.712523, -0.202078,
		36.805408, 33.211403, 45.079227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723835, 33.989426, 45.496468>,  <37.275753, 33.710167, 45.220680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723835, 33.989426, 45.496468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664467, 33.595894, 45.456371>,  <36.628845, 33.359776, 45.432316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664467, 33.595894, 45.456371>,  <36.723835, 33.989426, 45.496468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664467, 33.595894, 45.456371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294747, -0.052745, 0.954118,
		-0.943978, 0.171155, -0.282153,
		-0.148420, -0.983831, -0.100238,
		36.619942, 33.300743, 45.426300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089592, 33.822773, 45.921810>,  <36.723835, 33.989426, 45.496468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089592, 33.822773, 45.921810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224037, 33.450546, 45.863743>,  <36.304703, 33.227211, 45.828903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224037, 33.450546, 45.863743>,  <36.089592, 33.822773, 45.921810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224037, 33.450546, 45.863743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439445, -0.291277, 0.849733,
		-0.833018, -0.221812, -0.506834,
		0.336110, -0.930568, -0.145165,
		36.324871, 33.171375, 45.820194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591007, 33.297523, 46.109390>,  <36.089592, 33.822773, 45.921810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591007, 33.297523, 46.109390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937634, 33.099186, 46.132008>,  <36.145611, 32.980183, 46.145580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937634, 33.099186, 46.132008>,  <35.591007, 33.297523, 46.109390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937634, 33.099186, 46.132008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275096, -0.380062, 0.883106,
		-0.416399, -0.780823, -0.465755,
		0.866565, -0.495851, 0.056544,
		36.197605, 32.950432, 46.148972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348274, 32.644070, 46.307137>,  <35.591007, 33.297523, 46.109390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348274, 32.644070, 46.307137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735802, 32.679863, 46.399555>,  <35.968319, 32.701340, 46.455006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735802, 32.679863, 46.399555>,  <35.348274, 32.644070, 46.307137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735802, 32.679863, 46.399555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168569, -0.445390, 0.879325,
		0.181588, -0.890854, -0.416419,
		0.968819, 0.089480, 0.231048,
		36.026447, 32.706707, 46.468868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532814, 31.950624, 46.470184>,  <35.348274, 32.644070, 46.307137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532814, 31.950624, 46.470184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768967, 32.225876, 46.638912>,  <35.910660, 32.391026, 46.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768967, 32.225876, 46.638912>,  <35.532814, 31.950624, 46.470184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768967, 32.225876, 46.638912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228985, -0.358343, 0.905073,
		0.773962, -0.630927, -0.053987,
		0.590380, 0.688130, 0.421816,
		35.946079, 32.432316, 46.765457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860435, 31.582857, 46.949116>,  <35.532814, 31.950624, 46.470184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860435, 31.582857, 46.949116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926006, 31.959980, 47.065212>,  <35.965351, 32.186253, 47.134869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926006, 31.959980, 47.065212>,  <35.860435, 31.582857, 46.949116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926006, 31.959980, 47.065212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318577, -0.227858, 0.920103,
		0.933614, -0.243296, 0.263004,
		0.163930, 0.942809, 0.290240,
		35.975185, 32.242821, 47.152283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097206, 31.574335, 47.701714>,  <35.860435, 31.582857, 46.949116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097206, 31.574335, 47.701714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983646, 31.954571, 47.651466>,  <35.915512, 32.182713, 47.621319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983646, 31.954571, 47.651466>,  <36.097206, 31.574335, 47.701714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983646, 31.954571, 47.651466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376536, 0.009965, 0.926348,
		0.881829, 0.310288, 0.355103,
		-0.283897, 0.950590, -0.125622,
		35.898476, 32.239746, 47.613781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152836, 31.887730, 48.351860>,  <36.097206, 31.574335, 47.701714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152836, 31.887730, 48.351860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922390, 32.122204, 48.124008>,  <35.784122, 32.262886, 47.987297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922390, 32.122204, 48.124008>,  <36.152836, 31.887730, 48.351860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922390, 32.122204, 48.124008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577093, 0.201822, 0.791348,
		0.578839, 0.784638, 0.222010,
		-0.576116, 0.586184, -0.569631,
		35.749554, 32.298058, 47.953117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984463, 32.373741, 48.848057>,  <36.152836, 31.887730, 48.351860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984463, 32.373741, 48.848057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717064, 32.408283, 48.552586>,  <35.556625, 32.429008, 48.375301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717064, 32.408283, 48.552586>,  <35.984463, 32.373741, 48.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717064, 32.408283, 48.552586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730950, 0.106918, 0.674004,
		0.137179, 0.990511, -0.008356,
		-0.668502, 0.086352, -0.738681,
		35.516514, 32.434189, 48.330982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579342, 32.808216, 49.039021>,  <35.984463, 32.373741, 48.848057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579342, 32.808216, 49.039021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351116, 32.648582, 48.751915>,  <35.214180, 32.552803, 48.579651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351116, 32.648582, 48.751915>,  <35.579342, 32.808216, 49.039021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351116, 32.648582, 48.751915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821097, 0.260340, 0.507960,
		-0.015858, 0.879177, -0.476231,
		-0.570569, -0.399087, -0.717761,
		35.179947, 32.528854, 48.536587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023838, 33.404190, 48.824760>,  <35.579342, 32.808216, 49.039021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023838, 33.404190, 48.824760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906116, 33.025906, 48.769611>,  <34.835484, 32.798935, 48.736523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906116, 33.025906, 48.769611>,  <35.023838, 33.404190, 48.824760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906116, 33.025906, 48.769611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791415, 0.160292, 0.589888,
		-0.535766, 0.282721, -0.795628,
		-0.294307, -0.945714, -0.137871,
		34.817825, 32.742191, 48.728249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250877, 33.409077, 48.730141>,  <35.023838, 33.404190, 48.824760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250877, 33.409077, 48.730141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310528, 33.022118, 48.812023>,  <34.346317, 32.789944, 48.861153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310528, 33.022118, 48.812023>,  <34.250877, 33.409077, 48.730141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310528, 33.022118, 48.812023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691585, 0.045923, 0.720834,
		-0.706732, -0.249072, -0.662188,
		0.149129, -0.967396, 0.204710,
		34.355267, 32.731899, 48.873436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535923, 33.153778, 48.832962>,  <34.250877, 33.409077, 48.730141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535923, 33.153778, 48.832962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793037, 32.895092, 48.997200>,  <33.947304, 32.739880, 49.095745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793037, 32.895092, 48.997200>,  <33.535923, 33.153778, 48.832962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793037, 32.895092, 48.997200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530663, 0.010650, 0.847516,
		-0.552473, -0.762659, -0.336342,
		0.642783, -0.646714, 0.410599,
		33.985874, 32.701077, 49.120380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130253, 32.537621, 49.025616>,  <33.535923, 33.153778, 48.832962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130253, 32.537621, 49.025616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459949, 32.448658, 49.233910>,  <33.657768, 32.395279, 49.358887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459949, 32.448658, 49.233910>,  <33.130253, 32.537621, 49.025616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459949, 32.448658, 49.233910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558149, -0.164227, 0.813326,
		-0.095369, -0.961023, -0.259498,
		0.824241, -0.222405, 0.520732,
		33.707222, 32.381935, 49.390129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880463, 32.110649, 49.483284>,  <33.130253, 32.537621, 49.025616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880463, 32.110649, 49.483284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197113, 32.268764, 49.669647>,  <33.387104, 32.363632, 49.781467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197113, 32.268764, 49.669647>,  <32.880463, 32.110649, 49.483284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197113, 32.268764, 49.669647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453961, -0.129872, 0.881506,
		0.408958, -0.909330, 0.076635,
		0.791627, 0.395288, 0.465913,
		33.434601, 32.387352, 49.809422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220703, 31.692474, 50.107510>,  <32.880463, 32.110649, 49.483284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220703, 31.692474, 50.107510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296711, 32.081070, 50.164227>,  <33.342316, 32.314228, 50.198257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296711, 32.081070, 50.164227>,  <33.220703, 31.692474, 50.107510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296711, 32.081070, 50.164227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380114, -0.060366, 0.922968,
		0.905211, -0.229276, 0.357806,
		0.190015, 0.971488, 0.141795,
		33.353714, 32.372517, 50.206764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063061, 31.804985, 50.813278>,  <33.220703, 31.692474, 50.107510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063061, 31.804985, 50.813278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146282, 32.183716, 50.715107>,  <33.196217, 32.410954, 50.656204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146282, 32.183716, 50.715107>,  <33.063061, 31.804985, 50.813278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146282, 32.183716, 50.715107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470858, 0.316880, 0.823334,
		0.857325, -0.055736, 0.511749,
		0.208053, 0.946826, -0.245426,
		33.208698, 32.467762, 50.641479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066967, 32.051987, 51.465763>,  <33.063061, 31.804985, 50.813278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066967, 32.051987, 51.465763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993099, 32.332859, 51.190708>,  <32.948780, 32.501381, 51.025677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993099, 32.332859, 51.190708>,  <33.066967, 32.051987, 51.465763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993099, 32.332859, 51.190708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596969, 0.475663, 0.646043,
		0.780721, 0.529800, 0.331340,
		-0.184667, 0.702180, -0.687635,
		32.937698, 32.543514, 50.984417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296066, 32.701286, 51.830822>,  <33.066967, 32.051987, 51.465763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296066, 32.701286, 51.830822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024773, 32.766590, 51.544228>,  <32.861996, 32.805771, 51.372272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024773, 32.766590, 51.544228>,  <33.296066, 32.701286, 51.830822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024773, 32.766590, 51.544228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589549, 0.461151, 0.663153,
		0.438672, 0.872174, -0.216519,
		-0.678232, 0.163258, -0.716483,
		32.821304, 32.815567, 51.329281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192623, 33.358326, 51.911423>,  <33.296066, 32.701286, 51.830822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192623, 33.358326, 51.911423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883354, 33.193275, 51.718781>,  <32.697792, 33.094246, 51.603195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883354, 33.193275, 51.718781>,  <33.192623, 33.358326, 51.911423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883354, 33.193275, 51.718781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628512, 0.397080, 0.668805,
		-0.084732, 0.819796, -0.566353,
		-0.773171, -0.412629, -0.481606,
		32.651402, 33.069489, 51.574299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545719, 33.844070, 51.890762>,  <33.192623, 33.358326, 51.911423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545719, 33.844070, 51.890762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479382, 33.450191, 51.869335>,  <32.439579, 33.213863, 51.856480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479382, 33.450191, 51.869335>,  <32.545719, 33.844070, 51.890762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479382, 33.450191, 51.869335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540057, 0.045241, 0.840412,
		-0.825127, 0.168305, -0.539295,
		-0.165844, -0.984697, -0.053565,
		32.429630, 33.154781, 51.853268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862242, 33.775333, 52.053345>,  <32.545719, 33.844070, 51.890762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862242, 33.775333, 52.053345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034615, 33.420055, 52.117092>,  <32.138039, 33.206886, 52.155342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034615, 33.420055, 52.117092>,  <31.862242, 33.775333, 52.053345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034615, 33.420055, 52.117092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581614, -0.138350, 0.801614,
		-0.689944, -0.438133, -0.576209,
		0.430933, -0.888200, 0.159370,
		32.163895, 33.153595, 52.164902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382458, 34.456562, 52.235535>,  <31.862242, 33.775333, 52.053345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382458, 34.456562, 52.235535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656822, 34.646893, 52.455757>,  <31.821442, 34.761089, 52.587891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656822, 34.646893, 52.455757>,  <31.382458, 34.456562, 52.235535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656822, 34.646893, 52.455757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581769, 0.095904, -0.807680,
		-0.437116, 0.874295, -0.211039,
		0.685911, 0.475826, 0.550559,
		31.862597, 34.789642, 52.620926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542351, 34.903572, 51.761433>,  <31.382458, 34.456562, 52.235535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542351, 34.903572, 51.761433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845150, 34.913467, 52.022610>,  <32.026829, 34.919407, 52.179317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845150, 34.913467, 52.022610>,  <31.542351, 34.903572, 51.761433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845150, 34.913467, 52.022610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645236, 0.129307, -0.752961,
		-0.103060, 0.991296, 0.081921,
		0.757000, 0.024742, 0.652947,
		32.072250, 34.920891, 52.218494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951071, 35.537640, 51.549789>,  <31.542351, 34.903572, 51.761433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951071, 35.537640, 51.549789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223118, 35.336044, 51.762745>,  <32.386345, 35.215088, 51.890518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223118, 35.336044, 51.762745>,  <31.951071, 35.537640, 51.549789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223118, 35.336044, 51.762745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685082, 0.178425, -0.706277,
		0.260966, 0.845079, 0.466625,
		0.680118, -0.503990, 0.532385,
		32.427155, 35.184849, 51.922459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493927, 35.942921, 51.697582>,  <31.951071, 35.537640, 51.549789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493927, 35.942921, 51.697582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685150, 35.592724, 51.725788>,  <32.799885, 35.382607, 51.742710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685150, 35.592724, 51.725788>,  <32.493927, 35.942921, 51.697582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685150, 35.592724, 51.725788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711911, 0.339206, -0.614917,
		0.514437, 0.344165, 0.785433,
		0.478056, -0.875494, 0.070514,
		32.828568, 35.330074, 51.746941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135612, 36.053734, 51.883030>,  <32.493927, 35.942921, 51.697582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135612, 36.053734, 51.883030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152710, 35.695606, 51.705681>,  <33.162968, 35.480728, 51.599274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152710, 35.695606, 51.705681>,  <33.135612, 36.053734, 51.883030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152710, 35.695606, 51.705681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728404, 0.331665, -0.599521,
		0.683813, -0.297326, 0.666331,
		0.042746, -0.895319, -0.443370,
		33.165535, 35.427010, 51.572670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819016, 36.012180, 51.667278>,  <33.135612, 36.053734, 51.883030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819016, 36.012180, 51.667278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658115, 35.725243, 51.439732>,  <33.561577, 35.553078, 51.303204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658115, 35.725243, 51.439732>,  <33.819016, 36.012180, 51.667278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658115, 35.725243, 51.439732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602035, 0.260864, -0.754655,
		0.689746, -0.646036, 0.326937,
		-0.402248, -0.717348, -0.568866,
		33.537441, 35.510040, 51.269073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407330, 35.754410, 51.318787>,  <33.819016, 36.012180, 51.667278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407330, 35.754410, 51.318787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088345, 35.623840, 51.115807>,  <33.896954, 35.545498, 50.994019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088345, 35.623840, 51.115807>,  <34.407330, 35.754410, 51.318787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088345, 35.623840, 51.115807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482550, 0.159847, -0.861159,
		0.362219, -0.931608, 0.030046,
		-0.797460, -0.326426, -0.507447,
		33.849106, 35.525913, 50.963573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810955, 35.378834, 50.820503>,  <34.407330, 35.754410, 51.318787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810955, 35.378834, 50.820503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443928, 35.452019, 50.679314>,  <34.223709, 35.495930, 50.594601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443928, 35.452019, 50.679314>,  <34.810955, 35.378834, 50.820503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443928, 35.452019, 50.679314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368853, 0.060469, -0.927519,
		-0.148357, -0.981259, -0.122971,
		-0.917572, 0.182962, -0.352970,
		34.168655, 35.506908, 50.573421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743763, 35.005856, 50.233337>,  <34.810955, 35.378834, 50.820503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743763, 35.005856, 50.233337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474709, 35.292950, 50.161316>,  <34.313274, 35.465206, 50.118103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474709, 35.292950, 50.161316>,  <34.743763, 35.005856, 50.233337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474709, 35.292950, 50.161316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441535, 0.194036, -0.876012,
		-0.593809, -0.668735, -0.447420,
		-0.672635, 0.717735, -0.180050,
		34.272919, 35.508270, 50.107300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345242, 34.901615, 49.558720>,  <34.743763, 35.005856, 50.233337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345242, 34.901615, 49.558720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318527, 35.290459, 49.648643>,  <34.302498, 35.523766, 49.702599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318527, 35.290459, 49.648643>,  <34.345242, 34.901615, 49.558720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318527, 35.290459, 49.648643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465485, 0.229643, -0.854744,
		-0.882532, 0.047559, -0.467840,
		-0.066785, 0.972112, 0.224806,
		34.298492, 35.582092, 49.716084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166489, 35.221672, 48.909508>,  <34.345242, 34.901615, 49.558720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166489, 35.221672, 48.909508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274857, 35.534805, 49.133572>,  <34.339878, 35.722687, 49.268009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274857, 35.534805, 49.133572>,  <34.166489, 35.221672, 48.909508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274857, 35.534805, 49.133572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429910, 0.422258, -0.798045,
		-0.861266, 0.457025, -0.222148,
		0.270923, 0.782832, 0.560155,
		34.356133, 35.769653, 49.301617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019604, 35.920925, 48.504093>,  <34.166489, 35.221672, 48.909508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019604, 35.920925, 48.504093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295227, 36.051598, 48.762856>,  <34.460602, 36.130001, 48.918114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295227, 36.051598, 48.762856>,  <34.019604, 35.920925, 48.504093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295227, 36.051598, 48.762856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485686, 0.454350, -0.746777,
		-0.537877, 0.828762, 0.154409,
		0.689056, 0.326680, 0.646902,
		34.501945, 36.149601, 48.956924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175724, 36.655010, 48.375282>,  <34.019604, 35.920925, 48.504093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175724, 36.655010, 48.375282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489628, 36.502758, 48.570946>,  <34.677971, 36.411407, 48.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489628, 36.502758, 48.570946>,  <34.175724, 36.655010, 48.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489628, 36.502758, 48.570946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619321, 0.450408, -0.643097,
		0.024462, 0.807621, 0.589194,
		0.784756, -0.380632, 0.489159,
		34.725056, 36.388569, 48.717693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728569, 37.088612, 48.304699>,  <34.175724, 36.655010, 48.375282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728569, 37.088612, 48.304699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930286, 36.761795, 48.416504>,  <35.051319, 36.565704, 48.483585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930286, 36.761795, 48.416504>,  <34.728569, 37.088612, 48.304699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930286, 36.761795, 48.416504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698843, 0.196011, -0.687894,
		0.507251, 0.542238, 0.669831,
		0.504297, -0.817042, 0.279513,
		35.081573, 36.516682, 48.500359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441196, 37.244110, 48.327473>,  <34.728569, 37.088612, 48.304699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441196, 37.244110, 48.327473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440865, 36.844112, 48.326717>,  <35.440666, 36.604115, 48.326263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440865, 36.844112, 48.326717>,  <35.441196, 37.244110, 48.327473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440865, 36.844112, 48.326717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719379, 0.000715, -0.694617,
		0.694617, -0.001941, 0.719377,
		-0.000834, -0.999998, -0.001893,
		35.440613, 36.544113, 48.326149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118656, 37.105904, 48.210285>,  <35.441196, 37.244110, 48.327473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118656, 37.105904, 48.210285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945324, 36.756165, 48.122883>,  <35.841324, 36.546322, 48.070442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945324, 36.756165, 48.122883>,  <36.118656, 37.105904, 48.210285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945324, 36.756165, 48.122883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680026, -0.158108, -0.715938,
		0.591430, -0.458826, 0.663091,
		-0.433331, -0.874346, -0.218503,
		35.815323, 36.493862, 48.057331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732773, 36.624847, 48.077847>,  <36.118656, 37.105904, 48.210285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732773, 36.624847, 48.077847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396641, 36.505604, 47.896751>,  <36.194962, 36.434055, 47.788094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396641, 36.505604, 47.896751>,  <36.732773, 36.624847, 48.077847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396641, 36.505604, 47.896751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503937, -0.121903, -0.855095,
		0.199723, -0.946715, 0.252668,
		-0.840332, -0.298111, -0.452738,
		36.144543, 36.416172, 47.760929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925880, 36.062355, 47.638783>,  <36.732773, 36.624847, 48.077847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925880, 36.062355, 47.638783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564171, 36.154556, 47.495026>,  <36.347145, 36.209877, 47.408772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564171, 36.154556, 47.495026>,  <36.925880, 36.062355, 47.638783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564171, 36.154556, 47.495026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247059, -0.404022, -0.880754,
		-0.348214, -0.885232, 0.308400,
		-0.904272, 0.230498, -0.359391,
		36.292889, 36.223705, 47.387207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773540, 35.537239, 47.163338>,  <36.925880, 36.062355, 47.638783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773540, 35.537239, 47.163338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516987, 35.827335, 47.063217>,  <36.363052, 36.001392, 47.003147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516987, 35.827335, 47.063217>,  <36.773540, 35.537239, 47.163338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516987, 35.827335, 47.063217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031992, -0.351240, -0.935739,
		-0.766551, -0.592162, 0.248482,
		-0.641385, 0.725241, -0.250299,
		36.324570, 36.044907, 46.988129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116222, 35.258244, 46.932232>,  <36.773540, 35.537239, 47.163338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116222, 35.258244, 46.932232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163403, 35.614544, 46.756668>,  <36.191711, 35.828323, 46.651329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163403, 35.614544, 46.756668>,  <36.116222, 35.258244, 46.932232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163403, 35.614544, 46.756668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216805, -0.454437, -0.863992,
		-0.969063, 0.006751, -0.246722,
		0.117953, 0.890753, -0.438914,
		36.198788, 35.881771, 46.624992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931244, 35.107143, 46.303120>,  <36.116222, 35.258244, 46.932232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931244, 35.107143, 46.303120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144588, 35.444950, 46.283825>,  <36.272594, 35.647633, 46.272247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144588, 35.444950, 46.283825>,  <35.931244, 35.107143, 46.303120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144588, 35.444950, 46.283825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326013, -0.257844, -0.909523,
		-0.780542, 0.469375, -0.412845,
		0.533357, 0.844514, -0.048236,
		36.304596, 35.698303, 46.269356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748230, 35.420937, 45.600529>,  <35.931244, 35.107143, 46.303120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748230, 35.420937, 45.600529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088123, 35.603554, 45.705997>,  <36.292061, 35.713123, 45.769279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088123, 35.603554, 45.705997>,  <35.748230, 35.420937, 45.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088123, 35.603554, 45.705997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397810, -0.227023, -0.888936,
		-0.345974, 0.860251, -0.374525,
		0.849735, 0.456539, 0.263672,
		36.343044, 35.740517, 45.785099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960213, 35.656647, 44.995068>,  <35.748230, 35.420937, 45.600529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960213, 35.656647, 44.995068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294193, 35.722275, 45.205185>,  <36.494583, 35.761650, 45.331257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294193, 35.722275, 45.205185>,  <35.960213, 35.656647, 44.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294193, 35.722275, 45.205185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538271, -0.044810, -0.841580,
		-0.114539, 0.985431, -0.125728,
		0.834952, 0.164069, 0.525296,
		36.544678, 35.771496, 45.362774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347660, 36.170837, 44.602444>,  <35.960213, 35.656647, 44.995068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347660, 36.170837, 44.602444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600948, 35.961308, 44.830353>,  <36.752922, 35.835590, 44.967098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600948, 35.961308, 44.830353>,  <36.347660, 36.170837, 44.602444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600948, 35.961308, 44.830353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646715, -0.046324, -0.761323,
		0.425197, 0.850563, 0.309435,
		0.633219, -0.523829, 0.569769,
		36.790913, 35.804157, 45.001282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974228, 36.515614, 44.493698>,  <36.347660, 36.170837, 44.602444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974228, 36.515614, 44.493698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072720, 36.150337, 44.623592>,  <37.131813, 35.931171, 44.701527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072720, 36.150337, 44.623592>,  <36.974228, 36.515614, 44.493698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072720, 36.150337, 44.623592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786744, -0.007359, -0.617236,
		0.566044, 0.407462, 0.716637,
		0.246227, -0.913193, 0.324734,
		37.146587, 35.876381, 44.721012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740776, 36.517113, 44.662571>,  <36.974228, 36.515614, 44.493698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740776, 36.517113, 44.662571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594528, 36.157379, 44.566631>,  <37.506779, 35.941540, 44.509068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594528, 36.157379, 44.566631>,  <37.740776, 36.517113, 44.662571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594528, 36.157379, 44.566631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574406, -0.015250, -0.818428,
		0.732380, -0.437004, 0.522156,
		-0.365619, -0.899330, -0.239849,
		37.484844, 35.887581, 44.494675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362194, 36.212978, 44.397968>,  <37.740776, 36.517113, 44.662571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362194, 36.212978, 44.397968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050358, 35.989536, 44.284687>,  <37.863255, 35.855473, 44.216717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050358, 35.989536, 44.284687>,  <38.362194, 36.212978, 44.397968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050358, 35.989536, 44.284687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501734, -0.286401, -0.816234,
		0.374839, -0.778421, 0.503544,
		-0.779589, -0.558602, -0.283206,
		37.816483, 35.821957, 44.199726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610298, 35.497978, 44.332222>,  <38.362194, 36.212978, 44.397968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610298, 35.497978, 44.332222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287811, 35.531303, 44.097935>,  <38.094318, 35.551300, 43.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287811, 35.531303, 44.097935>,  <38.610298, 35.497978, 44.332222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287811, 35.531303, 44.097935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530058, -0.338000, -0.777685,
		-0.262766, -0.937451, 0.228341,
		-0.806221, 0.083315, -0.585718,
		38.045944, 35.556297, 43.922218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732403, 34.994240, 43.874352>,  <38.610298, 35.497978, 44.332222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732403, 34.994240, 43.874352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453838, 35.212978, 43.688461>,  <38.286697, 35.344219, 43.576927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453838, 35.212978, 43.688461>,  <38.732403, 34.994240, 43.874352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453838, 35.212978, 43.688461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467607, -0.145455, -0.871887,
		-0.544383, -0.824502, -0.154411,
		-0.696413, 0.546844, -0.464726,
		38.244915, 35.377033, 43.549042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434143, 34.631157, 43.373135>,  <38.732403, 34.994240, 43.874352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434143, 34.631157, 43.373135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372913, 35.006203, 43.248268>,  <38.336174, 35.231232, 43.173347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372913, 35.006203, 43.248268>,  <38.434143, 34.631157, 43.373135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372913, 35.006203, 43.248268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392026, -0.232350, -0.890129,
		-0.907129, -0.258634, -0.332002,
		-0.153077, 0.937615, -0.312162,
		38.326992, 35.287487, 43.154621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306625, 34.611816, 42.599327>,  <38.434143, 34.631157, 43.373135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306625, 34.611816, 42.599327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393852, 34.997288, 42.661007>,  <38.446186, 35.228569, 42.698013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393852, 34.997288, 42.661007>,  <38.306625, 34.611816, 42.599327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393852, 34.997288, 42.661007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333081, 0.075026, -0.939909,
		-0.917336, 0.256321, -0.304622,
		0.218063, 0.963676, 0.154199,
		38.459270, 35.286392, 42.707268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085571, 35.063110, 41.963871>,  <38.306625, 34.611816, 42.599327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085571, 35.063110, 41.963871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389458, 35.250530, 42.144222>,  <38.571789, 35.362984, 42.252434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389458, 35.250530, 42.144222>,  <38.085571, 35.063110, 41.963871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389458, 35.250530, 42.144222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381607, 0.240163, -0.892579,
		-0.526503, 0.850165, 0.003654,
		0.759718, 0.468551, 0.450876,
		38.617374, 35.391094, 42.279484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076141, 35.673645, 41.572464>,  <38.085571, 35.063110, 41.963871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076141, 35.673645, 41.572464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430668, 35.661469, 41.757298>,  <38.643383, 35.654163, 41.868198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430668, 35.661469, 41.757298>,  <38.076141, 35.673645, 41.572464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430668, 35.661469, 41.757298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451406, 0.279460, -0.847428,
		-0.103332, 0.959675, 0.261433,
		0.886315, -0.030446, 0.462080,
		38.696564, 35.652336, 41.895920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371590, 36.304970, 41.401981>,  <38.076141, 35.673645, 41.572464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371590, 36.304970, 41.401981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668697, 36.048271, 41.478344>,  <38.846962, 35.894253, 41.524162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668697, 36.048271, 41.478344>,  <38.371590, 36.304970, 41.401981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668697, 36.048271, 41.478344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447273, 0.263413, -0.854729,
		0.498235, 0.720257, 0.482693,
		0.742772, -0.641751, 0.190910,
		38.891529, 35.855747, 41.535618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869160, 36.707355, 41.147034>,  <38.371590, 36.304970, 41.401981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869160, 36.707355, 41.147034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047333, 36.349819, 41.167606>,  <39.154236, 36.135300, 41.179951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047333, 36.349819, 41.167606>,  <38.869160, 36.707355, 41.147034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047333, 36.349819, 41.167606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507162, 0.204559, -0.837223,
		0.737819, 0.399012, 0.544437,
		0.445432, -0.893837, 0.051436,
		39.180962, 36.081669, 41.183037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502041, 36.897316, 40.902351>,  <38.869160, 36.707355, 41.147034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502041, 36.897316, 40.902351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449203, 36.501965, 40.872269>,  <39.417500, 36.264751, 40.854218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449203, 36.501965, 40.872269>,  <39.502041, 36.897316, 40.902351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449203, 36.501965, 40.872269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638870, -0.026881, -0.768845,
		0.757890, -0.149606, 0.634997,
		-0.132093, -0.988380, -0.075206,
		39.409576, 36.205452, 40.849709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174503, 36.672997, 40.755394>,  <39.502041, 36.897316, 40.902351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174503, 36.672997, 40.755394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938007, 36.370255, 40.643959>,  <39.796112, 36.188610, 40.577099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938007, 36.370255, 40.643959>,  <40.174503, 36.672997, 40.755394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938007, 36.370255, 40.643959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581454, -0.160647, -0.797561,
		0.558883, -0.633534, 0.535056,
		-0.591238, -0.756853, -0.278588,
		39.760635, 36.143200, 40.560383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622852, 36.195324, 40.464520>,  <40.174503, 36.672997, 40.755394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622852, 36.195324, 40.464520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266060, 36.075771, 40.328854>,  <40.051983, 36.004040, 40.247456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266060, 36.075771, 40.328854>,  <40.622852, 36.195324, 40.464520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266060, 36.075771, 40.328854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402266, -0.182453, -0.897158,
		0.206262, -0.936687, 0.282975,
		-0.891986, -0.298880, -0.339164,
		39.998463, 35.986107, 40.227104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690659, 35.585808, 40.058521>,  <40.622852, 36.195324, 40.464520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690659, 35.585808, 40.058521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345039, 35.739475, 39.928391>,  <40.137669, 35.831676, 39.850311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345039, 35.739475, 39.928391>,  <40.690659, 35.585808, 40.058521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345039, 35.739475, 39.928391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289410, -0.149691, -0.945428,
		-0.411906, -0.911045, 0.018156,
		-0.864046, 0.384173, -0.325324,
		40.085827, 35.854729, 39.830791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582150, 35.270695, 39.424812>,  <40.690659, 35.585808, 40.058521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582150, 35.270695, 39.424812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360046, 35.600716, 39.382889>,  <40.226784, 35.798729, 39.357735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360046, 35.600716, 39.382889>,  <40.582150, 35.270695, 39.424812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360046, 35.600716, 39.382889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335551, 0.106930, -0.935933,
		-0.760985, -0.554850, -0.336220,
		-0.555255, 0.825050, -0.104809,
		40.193470, 35.848232, 39.351448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515099, 35.426159, 38.764465>,  <40.582150, 35.270695, 39.424812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515099, 35.426159, 38.764465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342571, 35.780888, 38.830814>,  <40.239056, 35.993725, 38.870625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342571, 35.780888, 38.830814>,  <40.515099, 35.426159, 38.764465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342571, 35.780888, 38.830814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124731, 0.240699, -0.962552,
		-0.893535, -0.394480, -0.214433,
		-0.431321, 0.886820, 0.165869,
		40.213177, 36.046932, 38.880573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061169, 35.022926, 38.133018>,  <40.515099, 35.426159, 38.764465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061169, 35.022926, 38.133018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432884, 34.899155, 38.052345>,  <40.655914, 34.824890, 38.003941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432884, 34.899155, 38.052345>,  <40.061169, 35.022926, 38.133018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432884, 34.899155, 38.052345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196220, 0.049015, -0.979334,
		0.312919, 0.949659, -0.015167,
		0.929290, -0.309428, -0.201680,
		40.711670, 34.806328, 37.991840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336361, 35.516712, 37.690323>,  <40.061169, 35.022926, 38.133018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336361, 35.516712, 37.690323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467312, 35.139397, 37.668308>,  <40.545883, 34.913006, 37.655102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467312, 35.139397, 37.668308>,  <40.336361, 35.516712, 37.690323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467312, 35.139397, 37.668308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345359, -0.065241, -0.936200,
		0.879518, 0.325495, -0.347132,
		0.327375, -0.943290, -0.055032,
		40.565525, 34.856411, 37.651798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235920, 35.452374, 36.838783>,  <40.336361, 35.516712, 37.690323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235920, 35.452374, 36.838783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480431, 35.309170, 37.121105>,  <40.627136, 35.223248, 37.290501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480431, 35.309170, 37.121105>,  <40.235920, 35.452374, 36.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480431, 35.309170, 37.121105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585169, -0.395980, -0.707656,
		0.532834, 0.845593, -0.032558,
		0.611281, -0.358011, 0.705807,
		40.663815, 35.201767, 37.332848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036186, 35.637550, 36.661858>,  <40.235920, 35.452374, 36.838783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036186, 35.637550, 36.661858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994183, 35.286919, 36.849720>,  <40.968983, 35.076538, 36.962437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994183, 35.286919, 36.849720>,  <41.036186, 35.637550, 36.661858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994183, 35.286919, 36.849720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599019, -0.432734, -0.673734,
		0.793820, 0.210589, 0.570528,
		-0.105006, -0.876581, 0.469660,
		40.962681, 35.023945, 36.990620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797615, 35.249760, 36.834000>,  <41.036186, 35.637550, 36.661858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797615, 35.249760, 36.834000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462273, 35.044819, 36.759544>,  <41.261066, 34.921852, 36.714870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462273, 35.044819, 36.759544>,  <41.797615, 35.249760, 36.834000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462273, 35.044819, 36.759544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474938, -0.518933, -0.710734,
		0.267556, -0.684253, 0.678389,
		-0.838360, -0.512354, -0.186134,
		41.210766, 34.891113, 36.703705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062771, 35.659328, 37.472763>,  <41.797615, 35.249760, 36.834000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062771, 35.659328, 37.472763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362167, 35.836807, 37.275627>,  <42.541805, 35.943295, 37.157345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362167, 35.836807, 37.275627>,  <42.062771, 35.659328, 37.472763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362167, 35.836807, 37.275627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395715, -0.297518, -0.868846,
		-0.532135, 0.845347, -0.047111,
		0.748493, 0.443701, -0.492836,
		42.586716, 35.969917, 37.127777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675079, 36.100262, 36.912766>,  <42.062771, 35.659328, 37.472763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675079, 36.100262, 36.912766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041252, 35.980221, 36.805496>,  <42.260956, 35.908195, 36.741135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041252, 35.980221, 36.805496>,  <41.675079, 36.100262, 36.912766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041252, 35.980221, 36.805496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363804, -0.332072, -0.870273,
		0.172114, 0.894242, -0.413168,
		0.915436, -0.300099, -0.268174,
		42.315884, 35.890190, 36.725044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805592, 36.431263, 36.306438>,  <41.675079, 36.100262, 36.912766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805592, 36.431263, 36.306438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017281, 36.093399, 36.338634>,  <42.144295, 35.890682, 36.357952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017281, 36.093399, 36.338634>,  <41.805592, 36.431263, 36.306438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017281, 36.093399, 36.338634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371358, -0.315883, -0.873104,
		0.762899, 0.432175, -0.480843,
		0.529224, -0.844655, 0.080495,
		42.176048, 35.840004, 36.362782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220753, 36.407330, 35.687473>,  <41.805592, 36.431263, 36.306438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220753, 36.407330, 35.687473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221989, 36.029274, 35.818138>,  <42.222729, 35.802441, 35.896538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221989, 36.029274, 35.818138>,  <42.220753, 36.407330, 35.687473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221989, 36.029274, 35.818138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225496, -0.318911, -0.920569,
		0.974239, -0.070816, -0.214110,
		0.003091, -0.945135, 0.326664,
		42.222916, 35.745735, 35.916138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671608, 35.961815, 35.196220>,  <42.220753, 36.407330, 35.687473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671608, 35.961815, 35.196220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450130, 35.698914, 35.400749>,  <42.317245, 35.541172, 35.523464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450130, 35.698914, 35.400749>,  <42.671608, 35.961815, 35.196220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450130, 35.698914, 35.400749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199166, -0.491687, -0.847689,
		0.808552, -0.571197, 0.141341,
		-0.553693, -0.657251, 0.511318,
		42.284023, 35.501740, 35.554146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772671, 35.395908, 34.845898>,  <42.671608, 35.961815, 35.196220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772671, 35.395908, 34.845898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443947, 35.347324, 35.068565>,  <42.246712, 35.318172, 35.202164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443947, 35.347324, 35.068565>,  <42.772671, 35.395908, 34.845898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443947, 35.347324, 35.068565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402864, -0.567017, -0.718465,
		0.402903, -0.814702, 0.417048,
		-0.821808, -0.121458, 0.556667,
		42.197403, 35.310886, 35.235565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547924, 34.670555, 34.669506>,  <42.772671, 35.395908, 34.845898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547924, 34.670555, 34.669506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237728, 34.866501, 34.828827>,  <42.051609, 34.984070, 34.924419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237728, 34.866501, 34.828827>,  <42.547924, 34.670555, 34.669506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237728, 34.866501, 34.828827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592590, -0.347086, -0.726889,
		-0.217830, -0.799728, 0.559450,
		-0.775491, 0.489863, 0.398305,
		42.005081, 35.013458, 34.948318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032585, 34.250999, 34.482162>,  <42.547924, 34.670555, 34.669506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032585, 34.250999, 34.482162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838276, 34.590424, 34.566040>,  <41.721691, 34.794079, 34.616367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838276, 34.590424, 34.566040>,  <42.032585, 34.250999, 34.482162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838276, 34.590424, 34.566040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613483, -0.160099, -0.773309,
		-0.622630, -0.504291, 0.598349,
		-0.485768, 0.848563, 0.209691,
		41.692547, 34.844994, 34.628948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334423, 34.026413, 34.584660>,  <42.032585, 34.250999, 34.482162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334423, 34.026413, 34.584660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359055, 34.409302, 34.471569>,  <41.373833, 34.639034, 34.403713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359055, 34.409302, 34.471569>,  <41.334423, 34.026413, 34.584660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359055, 34.409302, 34.471569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715041, -0.155327, -0.681609,
		-0.696366, 0.244132, 0.674888,
		0.061574, 0.957222, -0.282729,
		41.377525, 34.696468, 34.386749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674595, 34.126904, 34.539669>,  <41.334423, 34.026413, 34.584660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674595, 34.126904, 34.539669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842037, 34.415867, 34.319527>,  <40.942501, 34.589245, 34.187439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842037, 34.415867, 34.319527>,  <40.674595, 34.126904, 34.539669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842037, 34.415867, 34.319527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679518, -0.152903, -0.717549,
		-0.602516, 0.674348, 0.426884,
		0.418606, 0.722410, -0.550358,
		40.967617, 34.632591, 34.154419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100353, 34.407562, 34.197063>,  <40.674595, 34.126904, 34.539669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100353, 34.407562, 34.197063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420181, 34.530098, 33.990433>,  <40.612076, 34.603619, 33.866455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420181, 34.530098, 33.990433>,  <40.100353, 34.407562, 34.197063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420181, 34.530098, 33.990433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541943, -0.002670, -0.840411,
		-0.258830, 0.951918, 0.163884,
		0.799565, 0.306340, -0.516576,
		40.660049, 34.622002, 33.835461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905598, 34.916306, 33.819927>,  <40.100353, 34.407562, 34.197063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905598, 34.916306, 33.819927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241524, 34.800797, 33.636047>,  <40.443081, 34.731491, 33.525719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241524, 34.800797, 33.636047>,  <39.905598, 34.916306, 33.819927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241524, 34.800797, 33.636047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449105, 0.106173, -0.887148,
		0.304988, 0.951494, -0.040522,
		0.839814, -0.288768, -0.459702,
		40.493469, 34.714165, 33.498138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093746, 35.471584, 33.397472>,  <39.905598, 34.916306, 33.819927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093746, 35.471584, 33.397472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277573, 35.153561, 33.239140>,  <40.387867, 34.962746, 33.144138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277573, 35.153561, 33.239140>,  <40.093746, 35.471584, 33.397472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277573, 35.153561, 33.239140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318002, 0.268833, -0.909177,
		0.829262, 0.543701, -0.129283,
		0.459565, -0.795059, -0.395831,
		40.415443, 34.915043, 33.120392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462078, 35.680843, 32.782581>,  <40.093746, 35.471584, 33.397472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462078, 35.680843, 32.782581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408279, 35.286942, 32.738464>,  <40.375999, 35.050598, 32.711994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408279, 35.286942, 32.738464>,  <40.462078, 35.680843, 32.782581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408279, 35.286942, 32.738464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229473, 0.139231, -0.963305,
		0.963978, -0.104250, -0.244701,
		-0.134495, -0.984757, -0.110293,
		40.367931, 34.991516, 32.705376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689396, 35.567337, 32.098103>,  <40.462078, 35.680843, 32.782581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689396, 35.567337, 32.098103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473560, 35.237305, 32.165146>,  <40.344059, 35.039288, 32.205372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473560, 35.237305, 32.165146>,  <40.689396, 35.567337, 32.098103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473560, 35.237305, 32.165146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224483, -0.050877, -0.973149,
		0.811449, -0.562726, -0.157763,
		-0.539590, -0.825076, 0.167607,
		40.311684, 34.989780, 32.215427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779854, 35.050423, 31.441738>,  <40.689396, 35.567337, 32.098103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779854, 35.050423, 31.441738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431980, 34.977898, 31.625380>,  <40.223255, 34.934383, 31.735565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431980, 34.977898, 31.625380>,  <40.779854, 35.050423, 31.441738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431980, 34.977898, 31.625380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428267, -0.185300, -0.884450,
		0.245434, -0.965810, 0.083502,
		-0.869684, -0.181313, 0.459103,
		40.171074, 34.923504, 31.763111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546803, 34.407177, 31.206932>,  <40.779854, 35.050423, 31.441738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546803, 34.407177, 31.206932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209946, 34.566349, 31.352503>,  <40.007832, 34.661854, 31.439846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209946, 34.566349, 31.352503>,  <40.546803, 34.407177, 31.206932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209946, 34.566349, 31.352503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468674, -0.206320, -0.858939,
		-0.266717, -0.893913, 0.360253,
		-0.842144, 0.397935, 0.363925,
		39.957302, 34.685726, 31.461681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047157, 34.006485, 30.983826>,  <40.546803, 34.407177, 31.206932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047157, 34.006485, 30.983826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846233, 34.342976, 31.063856>,  <39.725681, 34.544868, 31.111874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846233, 34.342976, 31.063856>,  <40.047157, 34.006485, 30.983826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846233, 34.342976, 31.063856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461401, -0.065069, -0.884802,
		-0.731298, -0.536757, 0.420826,
		-0.502307, 0.841224, 0.200075,
		39.695541, 34.595345, 31.123878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290325, 33.857479, 30.867767>,  <40.047157, 34.006485, 30.983826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290325, 33.857479, 30.867767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350456, 34.252762, 30.856087>,  <39.386536, 34.489933, 30.849077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350456, 34.252762, 30.856087>,  <39.290325, 33.857479, 30.867767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350456, 34.252762, 30.856087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590797, 0.066109, -0.804107,
		-0.792692, 0.138130, 0.593767,
		0.150325, 0.988205, -0.029203,
		39.395554, 34.549225, 30.847326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716682, 34.067081, 30.588854>,  <39.290325, 33.857479, 30.867767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716682, 34.067081, 30.588854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938133, 34.399563, 30.568432>,  <39.071003, 34.599052, 30.556179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938133, 34.399563, 30.568432>,  <38.716682, 34.067081, 30.588854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938133, 34.399563, 30.568432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326160, 0.160014, -0.931673,
		-0.766239, 0.532448, 0.359692,
		0.553623, 0.831201, -0.051054,
		39.104221, 34.648922, 30.553116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292156, 34.620270, 30.427954>,  <38.716682, 34.067081, 30.588854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292156, 34.620270, 30.427954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646217, 34.770779, 30.318460>,  <38.858654, 34.861084, 30.252764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646217, 34.770779, 30.318460>,  <38.292156, 34.620270, 30.427954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646217, 34.770779, 30.318460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318410, 0.060825, -0.946000,
		-0.339301, 0.924511, 0.173648,
		0.885150, 0.376270, -0.273735,
		38.911762, 34.883659, 30.236340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114540, 35.021454, 29.871252>,  <38.292156, 34.620270, 30.427954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114540, 35.021454, 29.871252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510132, 35.030392, 29.812712>,  <38.747486, 35.035755, 29.777588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510132, 35.030392, 29.812712>,  <38.114540, 35.021454, 29.871252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510132, 35.030392, 29.812712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142140, -0.133148, -0.980851,
		-0.041407, 0.990844, -0.128504,
		0.988980, 0.022348, -0.146351,
		38.806828, 35.037098, 29.768806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401093, 35.624268, 29.498516>,  <38.114540, 35.021454, 29.871252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401093, 35.624268, 29.498516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618465, 35.292568, 29.446321>,  <38.748890, 35.093548, 29.415005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618465, 35.292568, 29.446321>,  <38.401093, 35.624268, 29.498516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618465, 35.292568, 29.446321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368645, -0.096094, -0.924590,
		0.754178, 0.550554, -0.357919,
		0.543430, -0.829251, -0.130487,
		38.781494, 35.043793, 29.407175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801289, 35.664539, 28.905279>,  <38.401093, 35.624268, 29.498516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801289, 35.664539, 28.905279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732605, 35.274200, 28.959293>,  <38.691395, 35.039997, 28.991701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732605, 35.274200, 28.959293>,  <38.801289, 35.664539, 28.905279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732605, 35.274200, 28.959293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523450, -0.025746, -0.851667,
		0.834576, -0.216922, -0.506388,
		-0.171708, -0.975849, 0.135035,
		38.681091, 34.981445, 28.999804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979137, 35.189556, 28.359200>,  <38.801289, 35.664539, 28.905279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979137, 35.189556, 28.359200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660519, 35.078304, 28.573919>,  <38.469345, 35.011555, 28.702751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660519, 35.078304, 28.573919>,  <38.979137, 35.189556, 28.359200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660519, 35.078304, 28.573919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581846, 0.111516, -0.805617,
		0.164207, -0.954048, -0.250658,
		-0.796549, -0.278132, 0.536797,
		38.421555, 34.994865, 28.734959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107121, 35.689461, 27.897324>,  <38.979137, 35.189556, 28.359200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107121, 35.689461, 27.897324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482883, 35.558846, 27.855598>,  <39.708344, 35.480476, 27.830563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482883, 35.558846, 27.855598>,  <39.107121, 35.689461, 27.897324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482883, 35.558846, 27.855598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058575, 0.452736, -0.889718,
		0.337753, 0.829701, 0.444432,
		0.939410, -0.326538, -0.104314,
		39.764706, 35.460884, 27.824305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628761, 36.226231, 27.716742>,  <39.107121, 35.689461, 27.897324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628761, 36.226231, 27.716742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753212, 35.870895, 27.581656>,  <39.827881, 35.657692, 27.500605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753212, 35.870895, 27.581656>,  <39.628761, 36.226231, 27.716742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753212, 35.870895, 27.581656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041206, 0.342409, -0.938647,
		0.949474, 0.305956, 0.069928,
		0.311128, -0.888340, -0.337715,
		39.846550, 35.604393, 27.480341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949203, 36.308487, 28.317604>,  <39.628761, 36.226231, 27.716742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949203, 36.308487, 28.317604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003830, 36.599560, 28.048733>,  <40.036606, 36.774204, 27.887409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003830, 36.599560, 28.048733>,  <39.949203, 36.308487, 28.317604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003830, 36.599560, 28.048733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909288, -0.361348, -0.206453,
		-0.393123, -0.583010, -0.711023,
		0.136563, 0.727686, -0.672179,
		40.044800, 36.817867, 27.847078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352345, 35.834026, 28.259163>,  <39.949203, 36.308487, 28.317604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352345, 35.834026, 28.259163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676300, 36.046036, 28.158642>,  <40.870674, 36.173241, 28.098330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676300, 36.046036, 28.158642>,  <40.352345, 35.834026, 28.259163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676300, 36.046036, 28.158642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386831, -0.160544, 0.908068,
		0.440953, -0.832646, -0.335053,
		0.809890, 0.530024, -0.251301,
		40.919266, 36.205044, 28.083252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004467, 35.523853, 28.545719>,  <40.352345, 35.834026, 28.259163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004467, 35.523853, 28.545719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072769, 35.915871, 28.505001>,  <41.113750, 36.151081, 28.480570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072769, 35.915871, 28.505001>,  <41.004467, 35.523853, 28.545719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072769, 35.915871, 28.505001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455396, 0.013116, 0.890193,
		0.873760, -0.198362, -0.444067,
		0.170756, 0.980041, -0.101793,
		41.123997, 36.209885, 28.474463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744053, 35.779301, 28.264931>,  <41.004467, 35.523853, 28.545719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744053, 35.779301, 28.264931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520149, 35.984764, 28.525032>,  <41.385807, 36.108040, 28.681093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520149, 35.984764, 28.525032>,  <41.744053, 35.779301, 28.264931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520149, 35.984764, 28.525032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549233, -0.357613, 0.755286,
		0.620496, 0.779917, -0.081940,
		-0.559757, 0.513655, 0.650254,
		41.352222, 36.138863, 28.720108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171848, 35.792500, 28.750378>,  <41.744053, 35.779301, 28.264931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171848, 35.792500, 28.750378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882832, 36.020233, 28.907246>,  <41.709423, 36.156872, 29.001366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882832, 36.020233, 28.907246>,  <42.171848, 35.792500, 28.750378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882832, 36.020233, 28.907246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476758, -0.000446, 0.879035,
		0.500637, 0.822108, -0.271111,
		-0.722541, 0.569331, 0.392169,
		41.666069, 36.191032, 29.024897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498417, 36.391727, 28.843691>,  <42.171848, 35.792500, 28.750378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498417, 36.391727, 28.843691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200790, 36.303219, 29.095850>,  <42.022213, 36.250114, 29.247145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200790, 36.303219, 29.095850>,  <42.498417, 36.391727, 28.843691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200790, 36.303219, 29.095850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582216, 0.248055, 0.774269,
		-0.327698, 0.943137, -0.055741,
		-0.744069, -0.221274, 0.630397,
		41.977570, 36.236835, 29.284969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476505, 36.911438, 29.338026>,  <42.498417, 36.391727, 28.843691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476505, 36.911438, 29.338026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296310, 36.600105, 29.512959>,  <42.188194, 36.413307, 29.617918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296310, 36.600105, 29.512959>,  <42.476505, 36.911438, 29.338026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296310, 36.600105, 29.512959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587487, 0.110416, 0.801665,
		-0.672251, 0.618067, 0.407520,
		-0.450486, -0.778333, 0.437333,
		42.161163, 36.366604, 29.644159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385689, 37.094643, 29.952972>,  <42.476505, 36.911438, 29.338026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385689, 37.094643, 29.952972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328518, 36.705200, 30.024153>,  <42.294216, 36.471535, 30.066860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328518, 36.705200, 30.024153>,  <42.385689, 37.094643, 29.952972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328518, 36.705200, 30.024153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465466, 0.092549, 0.880213,
		-0.873448, 0.208640, 0.439952,
		-0.142930, -0.973604, 0.177951,
		42.285641, 36.413120, 30.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309345, 36.978088, 30.611967>,  <42.385689, 37.094643, 29.952972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309345, 36.978088, 30.611967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404293, 36.599499, 30.524469>,  <42.461262, 36.372345, 30.471972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404293, 36.599499, 30.524469>,  <42.309345, 36.978088, 30.611967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404293, 36.599499, 30.524469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514525, -0.068501, 0.854735,
		-0.823966, -0.315436, 0.470723,
		0.237369, -0.946471, -0.218742,
		42.475502, 36.315556, 30.458847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994751, 36.444710, 31.077942>,  <42.309345, 36.978088, 30.611967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994751, 36.444710, 31.077942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328499, 36.272049, 30.940830>,  <42.528748, 36.168453, 30.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328499, 36.272049, 30.940830>,  <41.994751, 36.444710, 31.077942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328499, 36.272049, 30.940830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466878, 0.222884, 0.855773,
		-0.293000, -0.874068, 0.387499,
		0.834371, -0.431656, -0.342779,
		42.578812, 36.142551, 30.837997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175446, 36.134930, 31.624584>,  <41.994751, 36.444710, 31.077942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175446, 36.134930, 31.624584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508549, 36.121872, 31.403513>,  <42.708408, 36.114037, 31.270870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508549, 36.121872, 31.403513>,  <42.175446, 36.134930, 31.624584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508549, 36.121872, 31.403513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548594, -0.085823, 0.831672,
		-0.074567, -0.995776, -0.053571,
		0.832757, -0.032627, -0.552677,
		42.758377, 36.112080, 31.237709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554253, 35.546860, 31.795616>,  <42.175446, 36.134930, 31.624584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554253, 35.546860, 31.795616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824001, 35.804485, 31.651173>,  <42.985851, 35.959061, 31.564507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824001, 35.804485, 31.651173>,  <42.554253, 35.546860, 31.795616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824001, 35.804485, 31.651173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631130, -0.248929, 0.734649,
		0.383273, -0.723334, -0.574360,
		0.674372, 0.644067, -0.361110,
		43.026314, 35.997704, 31.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092773, 35.242527, 31.873705>,  <42.554253, 35.546860, 31.795616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092773, 35.242527, 31.873705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252209, 35.604141, 31.811934>,  <43.347870, 35.821110, 31.774872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252209, 35.604141, 31.811934>,  <43.092773, 35.242527, 31.873705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252209, 35.604141, 31.811934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746389, -0.221909, 0.627424,
		0.532943, -0.365349, -0.763212,
		0.398592, 0.904034, -0.154427,
		43.371788, 35.875351, 31.765606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789299, 35.127083, 31.646246>,  <43.092773, 35.242527, 31.873705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789299, 35.127083, 31.646246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743584, 35.491009, 31.805834>,  <43.716156, 35.709366, 31.901587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743584, 35.491009, 31.805834>,  <43.789299, 35.127083, 31.646246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743584, 35.491009, 31.805834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735854, -0.192280, 0.649267,
		0.667426, 0.367785, -0.647515,
		-0.114286, 0.909814, 0.398969,
		43.709297, 35.763954, 31.925524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441868, 35.286560, 31.770020>,  <43.789299, 35.127083, 31.646246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441868, 35.286560, 31.770020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246025, 35.571056, 31.971777>,  <44.128517, 35.741756, 32.092831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246025, 35.571056, 31.971777>,  <44.441868, 35.286560, 31.770020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246025, 35.571056, 31.971777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601483, -0.143304, 0.785928,
		0.631269, 0.688182, -0.357638,
		-0.489610, 0.711245, 0.504393,
		44.099140, 35.784431, 32.123096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986702, 35.893925, 31.924421>,  <44.441868, 35.286560, 31.770020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986702, 35.893925, 31.924421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674732, 35.859303, 32.172367>,  <44.487553, 35.838528, 32.321136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674732, 35.859303, 32.172367>,  <44.986702, 35.893925, 31.924421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674732, 35.859303, 32.172367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625751, -0.087811, 0.775064,
		-0.012658, 0.992369, 0.122650,
		-0.779920, -0.086559, 0.619865,
		44.440758, 35.833336, 32.358326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285873, 35.958847, 32.632538>,  <44.986702, 35.893925, 31.924421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285873, 35.958847, 32.632538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908119, 35.855972, 32.714504>,  <44.681465, 35.794247, 32.763683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908119, 35.855972, 32.714504>,  <45.285873, 35.958847, 32.632538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908119, 35.855972, 32.714504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282444, -0.315293, 0.905989,
		-0.168399, 0.913481, 0.370398,
		-0.944387, -0.257184, 0.204912,
		44.624802, 35.778816, 32.775978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041218, 36.323746, 33.229908>,  <45.285873, 35.958847, 32.632538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041218, 36.323746, 33.229908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835102, 35.981216, 33.216152>,  <44.711433, 35.775700, 33.207897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835102, 35.981216, 33.216152>,  <45.041218, 36.323746, 33.229908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835102, 35.981216, 33.216152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130382, -0.117989, 0.984418,
		-0.847038, 0.502781, 0.172448,
		-0.515294, -0.856323, -0.034388,
		44.680515, 35.724319, 33.205837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489803, 36.489182, 33.735279>,  <45.041218, 36.323746, 33.229908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489803, 36.489182, 33.735279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531342, 36.092316, 33.707508>,  <44.556267, 35.854195, 33.690845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531342, 36.092316, 33.707508>,  <44.489803, 36.489182, 33.735279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531342, 36.092316, 33.707508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269933, -0.039067, 0.962086,
		-0.957262, -0.118653, 0.263762,
		0.103850, -0.992167, -0.069425,
		44.562496, 35.794666, 33.686680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247070, 36.309898, 34.398281>,  <44.489803, 36.489182, 33.735279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247070, 36.309898, 34.398281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412788, 35.971619, 34.263733>,  <44.512218, 35.768650, 34.183002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412788, 35.971619, 34.263733>,  <44.247070, 36.309898, 34.398281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412788, 35.971619, 34.263733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280260, -0.233079, 0.931197,
		-0.865917, -0.480062, 0.140453,
		0.414296, -0.845703, -0.336369,
		44.537079, 35.717907, 34.162823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899773, 35.754353, 34.741646>,  <44.247070, 36.309898, 34.398281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899773, 35.754353, 34.741646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244503, 35.603283, 34.606224>,  <44.451340, 35.512642, 34.524971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244503, 35.603283, 34.606224>,  <43.899773, 35.754353, 34.741646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244503, 35.603283, 34.606224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255848, -0.252641, 0.933121,
		-0.437948, -0.890806, -0.121106,
		0.861826, -0.377674, -0.338555,
		44.503052, 35.489983, 34.504658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868912, 35.071743, 35.016743>,  <43.899773, 35.754353, 34.741646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868912, 35.071743, 35.016743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255955, 35.131001, 34.934971>,  <44.488182, 35.166553, 34.885906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255955, 35.131001, 34.934971>,  <43.868912, 35.071743, 35.016743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255955, 35.131001, 34.934971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246964, -0.387311, 0.888256,
		0.052413, -0.909969, -0.411351,
		0.967606, 0.148145, -0.204429,
		44.546238, 35.175446, 34.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152470, 34.424595, 35.026360>,  <43.868912, 35.071743, 35.016743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152470, 34.424595, 35.026360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453442, 34.682560, 35.079914>,  <44.634026, 34.837341, 35.112045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453442, 34.682560, 35.079914>,  <44.152470, 34.424595, 35.026360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453442, 34.682560, 35.079914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274119, -0.491432, 0.826652,
		0.598917, -0.585300, -0.546555,
		0.752434, 0.644917, 0.133885,
		44.679173, 34.876034, 35.120079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553818, 33.996391, 35.351822>,  <44.152470, 34.424595, 35.026360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553818, 33.996391, 35.351822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670769, 34.374084, 35.412392>,  <44.740940, 34.600700, 35.448734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670769, 34.374084, 35.412392>,  <44.553818, 33.996391, 35.351822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670769, 34.374084, 35.412392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275669, -0.234843, 0.932124,
		0.915707, -0.230791, -0.328961,
		0.292380, 0.944237, 0.151425,
		44.758484, 34.657356, 35.457821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231060, 33.949505, 35.649609>,  <44.553818, 33.996391, 35.351822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231060, 33.949505, 35.649609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117195, 34.320816, 35.745327>,  <45.048874, 34.543602, 35.802757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117195, 34.320816, 35.745327>,  <45.231060, 33.949505, 35.649609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117195, 34.320816, 35.745327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429458, -0.099683, 0.897568,
		0.857048, 0.358275, -0.370280,
		-0.284666, 0.928279, 0.239297,
		45.031796, 34.599300, 35.817116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877201, 34.346962, 35.892097>,  <45.231060, 33.949505, 35.649609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877201, 34.346962, 35.892097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525578, 34.471458, 36.036537>,  <45.314606, 34.546154, 36.123199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525578, 34.471458, 36.036537>,  <45.877201, 34.346962, 35.892097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525578, 34.471458, 36.036537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318627, -0.179823, 0.930667,
		0.354593, 0.933163, 0.058906,
		-0.879057, 0.311239, 0.361095,
		45.261860, 34.564831, 36.144867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447598, 33.855949, 36.013248>,  <45.877201, 34.346962, 35.892097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447598, 33.855949, 36.013248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660389, 34.191593, 35.967831>,  <46.788063, 34.392979, 35.940578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660389, 34.191593, 35.967831>,  <46.447598, 33.855949, 36.013248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660389, 34.191593, 35.967831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523973, -0.431553, -0.734313,
		-0.665169, 0.331146, -0.669248,
		0.531980, 0.839110, -0.113544,
		46.819984, 34.443325, 35.933769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324028, 34.169762, 35.368271>,  <46.447598, 33.855949, 36.013248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324028, 34.169762, 35.368271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701958, 34.207138, 35.493855>,  <46.928715, 34.229565, 35.569206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701958, 34.207138, 35.493855>,  <46.324028, 34.169762, 35.368271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701958, 34.207138, 35.493855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310265, -0.562713, -0.766218,
		0.105071, 0.821354, -0.560659,
		0.944826, 0.093446, 0.313962,
		46.985405, 34.235172, 35.588043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765396, 34.403694, 34.809143>,  <46.324028, 34.169762, 35.368271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765396, 34.403694, 34.809143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997364, 34.213291, 35.073601>,  <47.136543, 34.099049, 35.232277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.997364, 34.213291, 35.073601>,  <46.765396, 34.403694, 34.809143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997364, 34.213291, 35.073601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325935, -0.608200, -0.723781,
		0.746633, 0.635224, -0.197559,
		0.579919, -0.476007, 0.661144,
		47.171341, 34.070488, 35.271942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.120037, 35.053677, 34.835262>,  <46.765396, 34.403694, 34.809143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.120037, 35.053677, 34.835262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474834, 35.086792, 35.016983>,  <47.687714, 35.106663, 35.126015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.474834, 35.086792, 35.016983>,  <47.120037, 35.053677, 34.835262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.474834, 35.086792, 35.016983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443910, 0.118176, -0.888245,
		-0.127227, 0.989535, 0.068069,
		0.886994, 0.082792, 0.454299,
		47.740932, 35.111629, 35.153275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.193554, 37.081257, 45.082153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842348, 36.945629, 44.947021>,  <31.631624, 36.864254, 44.865944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842348, 36.945629, 44.947021>,  <32.193554, 37.081257, 45.082153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842348, 36.945629, 44.947021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450984, -0.349618, -0.821207,
		0.160332, -0.873386, 0.459882,
		-0.878013, -0.339065, -0.337828,
		31.578943, 36.843910, 44.845673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393276, 36.413689, 44.835850>,  <32.193554, 37.081257, 45.082153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393276, 36.413689, 44.835850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.040550, 36.470371, 44.655933>,  <31.828913, 36.504379, 44.547981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.040550, 36.470371, 44.655933>,  <32.393276, 36.413689, 44.835850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040550, 36.470371, 44.655933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348561, -0.446599, -0.824047,
		-0.317647, -0.883442, 0.344428,
		-0.881819, 0.141702, -0.449794,
		31.776005, 36.512882, 44.520996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398945, 35.915512, 44.326340>,  <32.393276, 36.413689, 44.835850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398945, 35.915512, 44.326340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110798, 36.165096, 44.205177>,  <31.937910, 36.314846, 44.132481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110798, 36.165096, 44.205177>,  <32.398945, 35.915512, 44.326340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110798, 36.165096, 44.205177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170107, -0.264440, -0.949281,
		-0.672414, -0.735353, 0.084353,
		-0.720363, 0.623961, -0.302902,
		31.894690, 36.352283, 44.114307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946127, 35.566746, 43.923618>,  <32.398945, 35.915512, 44.326340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946127, 35.566746, 43.923618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.916845, 35.954613, 43.830330>,  <31.899277, 36.187332, 43.774357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.916845, 35.954613, 43.830330>,  <31.946127, 35.566746, 43.923618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916845, 35.954613, 43.830330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171167, -0.218165, -0.960784,
		-0.982519, -0.110255, -0.150004,
		-0.073205, 0.969664, -0.233223,
		31.894884, 36.245510, 43.760365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516359, 35.568520, 43.271389>,  <31.946127, 35.566746, 43.923618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516359, 35.568520, 43.271389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.687750, 35.929932, 43.274086>,  <31.790585, 36.146778, 43.275703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.687750, 35.929932, 43.274086>,  <31.516359, 35.568520, 43.271389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687750, 35.929932, 43.274086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305957, -0.138062, -0.941981,
		-0.850175, 0.405681, -0.335597,
		0.428478, 0.903527, 0.006744,
		31.816294, 36.200989, 43.276108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230200, 36.033684, 42.690346>,  <31.516359, 35.568520, 43.271389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230200, 36.033684, 42.690346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598324, 36.163589, 42.777576>,  <31.819199, 36.241531, 42.829914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598324, 36.163589, 42.777576>,  <31.230200, 36.033684, 42.690346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598324, 36.163589, 42.777576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280957, -0.160847, -0.946146,
		-0.272197, 0.932018, -0.239274,
		0.920311, 0.324764, 0.218075,
		31.874416, 36.261017, 42.842999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379396, 36.324890, 42.196167>,  <31.230200, 36.033684, 42.690346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379396, 36.324890, 42.196167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.748222, 36.312840, 42.350513>,  <31.969517, 36.305607, 42.443119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.748222, 36.312840, 42.350513>,  <31.379396, 36.324890, 42.196167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748222, 36.312840, 42.350513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375648, -0.170421, -0.910958,
		0.093205, 0.984911, -0.145821,
		0.922063, -0.030129, 0.385864,
		32.024841, 36.303802, 42.466274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789076, 36.807774, 41.819321>,  <31.379396, 36.324890, 42.196167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789076, 36.807774, 41.819321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.051838, 36.554695, 41.983356>,  <32.209496, 36.402847, 42.081776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.051838, 36.554695, 41.983356>,  <31.789076, 36.807774, 41.819321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051838, 36.554695, 41.983356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457400, -0.097970, -0.883848,
		0.599383, 0.768179, 0.225037,
		0.656906, -0.632695, 0.410087,
		32.248909, 36.364887, 42.106384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475029, 37.016911, 41.563030>,  <31.789076, 36.807774, 41.819321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475029, 37.016911, 41.563030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.499573, 36.629997, 41.661499>,  <32.514297, 36.397850, 41.720581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.499573, 36.629997, 41.661499>,  <32.475029, 37.016911, 41.563030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499573, 36.629997, 41.661499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505794, -0.182488, -0.843132,
		0.860470, 0.176244, 0.478048,
		0.061358, -0.967283, 0.246169,
		32.517979, 36.339813, 41.735348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115932, 36.843460, 41.502537>,  <32.475029, 37.016911, 41.563030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115932, 36.843460, 41.502537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954441, 36.477703, 41.490673>,  <32.857544, 36.258247, 41.483555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954441, 36.477703, 41.490673>,  <33.115932, 36.843460, 41.502537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954441, 36.477703, 41.490673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687771, -0.281971, -0.668927,
		0.603301, -0.290467, 0.742736,
		-0.403731, -0.914397, -0.029662,
		32.833321, 36.203384, 41.481773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728905, 36.493790, 41.536850>,  <33.115932, 36.843460, 41.502537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728905, 36.493790, 41.536850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417999, 36.294907, 41.382629>,  <33.231457, 36.175579, 41.290096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417999, 36.294907, 41.382629>,  <33.728905, 36.493790, 41.536850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417999, 36.294907, 41.382629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571962, -0.303062, -0.762243,
		0.262147, -0.812982, 0.519942,
		-0.777264, -0.497206, -0.385548,
		33.184818, 36.145744, 41.266964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932575, 35.751297, 41.332970>,  <33.728905, 36.493790, 41.536850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932575, 35.751297, 41.332970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614315, 35.836102, 41.105991>,  <33.423359, 35.886982, 40.969803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614315, 35.836102, 41.105991>,  <33.932575, 35.751297, 41.332970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614315, 35.836102, 41.105991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494592, -0.313482, -0.810622,
		-0.349744, -0.925625, 0.144564,
		-0.795650, 0.212010, -0.567444,
		33.375618, 35.899704, 40.935757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881058, 35.246468, 40.792419>,  <33.932575, 35.751297, 41.332970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881058, 35.246468, 40.792419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715157, 35.583420, 40.654797>,  <33.615616, 35.785591, 40.572224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.715157, 35.583420, 40.654797>,  <33.881058, 35.246468, 40.792419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715157, 35.583420, 40.654797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695900, 0.050036, -0.716394,
		-0.586259, -0.536560, -0.606963,
		-0.414758, 0.842378, -0.344058,
		33.590729, 35.836132, 40.551579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940231, 35.221874, 40.052647>,  <33.881058, 35.246468, 40.792419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940231, 35.221874, 40.052647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862572, 35.613876, 40.070026>,  <33.815975, 35.849079, 40.080452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.862572, 35.613876, 40.070026>,  <33.940231, 35.221874, 40.052647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862572, 35.613876, 40.070026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568560, 0.148508, -0.809126,
		-0.799403, -0.132391, -0.586027,
		-0.194150, 0.980009, 0.043446,
		33.804325, 35.907879, 40.083061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007366, 35.479183, 39.411373>,  <33.940231, 35.221874, 40.052647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007366, 35.479183, 39.411373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998318, 35.832874, 39.597977>,  <33.992889, 36.045090, 39.709938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998318, 35.832874, 39.597977>,  <34.007366, 35.479183, 39.411373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998318, 35.832874, 39.597977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529338, 0.406443, -0.744718,
		-0.848110, 0.230095, -0.477249,
		-0.022618, 0.884229, 0.466506,
		33.991531, 36.098145, 39.737930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890465, 35.976334, 38.849854>,  <34.007366, 35.479183, 39.411373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890465, 35.976334, 38.849854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034954, 36.188572, 39.156574>,  <34.121647, 36.315914, 39.340607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034954, 36.188572, 39.156574>,  <33.890465, 35.976334, 38.849854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034954, 36.188572, 39.156574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554468, 0.538940, -0.634121,
		-0.749722, 0.654226, -0.099521,
		0.361223, 0.530596, 0.766802,
		34.143322, 36.347752, 39.386616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810360, 36.732357, 38.724228>,  <33.890465, 35.976334, 38.849854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810360, 36.732357, 38.724228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.103153, 36.711239, 38.995937>,  <34.278828, 36.698570, 39.158962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.103153, 36.711239, 38.995937>,  <33.810360, 36.732357, 38.724228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103153, 36.711239, 38.995937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611230, 0.491345, -0.620466,
		-0.301003, 0.869363, 0.391924,
		0.731980, -0.052794, 0.679278,
		34.322746, 36.695400, 39.199722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197613, 37.415199, 38.681152>,  <33.810360, 36.732357, 38.724228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197613, 37.415199, 38.681152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459747, 37.174377, 38.863605>,  <34.617027, 37.029884, 38.973080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459747, 37.174377, 38.863605>,  <34.197613, 37.415199, 38.681152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459747, 37.174377, 38.863605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754429, 0.492141, -0.434321,
		0.037003, 0.628749, 0.776728,
		0.655338, -0.602057, 0.456136,
		34.656349, 36.993759, 39.000446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658245, 37.865360, 38.902462>,  <34.197613, 37.415199, 38.681152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658245, 37.865360, 38.902462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841255, 37.509689, 38.905056>,  <34.951061, 37.296288, 38.906612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841255, 37.509689, 38.905056>,  <34.658245, 37.865360, 38.902462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841255, 37.509689, 38.905056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713847, 0.362941, -0.598913,
		0.530184, 0.278646, 0.800788,
		0.457524, -0.889174, 0.006485,
		34.978512, 37.242939, 38.907001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340435, 37.835651, 39.120300>,  <34.658245, 37.865360, 38.902462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340435, 37.835651, 39.120300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281673, 37.545761, 38.851021>,  <35.246418, 37.371826, 38.689453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281673, 37.545761, 38.851021>,  <35.340435, 37.835651, 39.120300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281673, 37.545761, 38.851021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672017, 0.426275, -0.605544,
		0.725819, -0.541356, 0.424406,
		-0.146901, -0.724723, -0.673198,
		35.237602, 37.328342, 38.649063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018597, 37.833332, 38.957272>,  <35.340435, 37.835651, 39.120300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018597, 37.833332, 38.957272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811661, 37.652161, 38.666836>,  <35.687500, 37.543457, 38.492573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811661, 37.652161, 38.666836>,  <36.018597, 37.833332, 38.957272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811661, 37.652161, 38.666836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609309, 0.400826, -0.684164,
		0.600916, -0.796362, 0.068610,
		-0.517341, -0.452930, -0.726094,
		35.656460, 37.516281, 38.449009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756073, 37.904652, 39.206608>,  <36.018597, 37.833332, 38.957272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756073, 37.904652, 39.206608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062805, 37.682175, 39.078468>,  <37.246845, 37.548687, 39.001583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062805, 37.682175, 39.078468>,  <36.756073, 37.904652, 39.206608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062805, 37.682175, 39.078468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166790, -0.309287, 0.936228,
		-0.619805, -0.771356, -0.144402,
		0.766827, -0.556194, -0.320352,
		37.292854, 37.515316, 38.982361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570763, 37.269882, 39.421017>,  <36.756073, 37.904652, 39.206608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570763, 37.269882, 39.421017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954144, 37.383678, 39.429314>,  <37.184174, 37.451954, 39.434292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954144, 37.383678, 39.429314>,  <36.570763, 37.269882, 39.421017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954144, 37.383678, 39.429314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018292, -0.133860, 0.990832,
		0.284655, -0.949288, -0.133502,
		0.958456, 0.284487, 0.020739,
		37.241680, 37.469025, 39.435535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943729, 36.778145, 39.814663>,  <36.570763, 37.269882, 39.421017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943729, 36.778145, 39.814663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189350, 37.093845, 39.812523>,  <37.336723, 37.283264, 39.811237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189350, 37.093845, 39.812523>,  <36.943729, 36.778145, 39.814663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189350, 37.093845, 39.812523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031771, -0.017938, 0.999334,
		0.788629, -0.613809, -0.036091,
		0.614048, 0.789251, -0.005355,
		37.373566, 37.330620, 39.810917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560696, 36.689968, 40.209011>,  <36.943729, 36.778145, 39.814663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560696, 36.689968, 40.209011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531425, 37.088837, 40.202095>,  <37.513863, 37.328156, 40.197945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531425, 37.088837, 40.202095>,  <37.560696, 36.689968, 40.209011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531425, 37.088837, 40.202095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066415, 0.012423, 0.997715,
		0.995105, 0.074157, 0.065318,
		-0.073176, 0.997169, -0.017288,
		37.509472, 37.387989, 40.196907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095154, 36.949409, 40.770115>,  <37.560696, 36.689968, 40.209011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095154, 36.949409, 40.770115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846313, 37.249374, 40.680122>,  <37.697010, 37.429356, 40.626125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846313, 37.249374, 40.680122>,  <38.095154, 36.949409, 40.770115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846313, 37.249374, 40.680122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061660, 0.239536, 0.968927,
		0.780504, 0.616645, -0.102776,
		-0.622103, 0.749914, -0.224981,
		37.659683, 37.474350, 40.612629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328655, 37.595104, 41.131035>,  <38.095154, 36.949409, 40.770115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328655, 37.595104, 41.131035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944752, 37.668621, 41.046097>,  <37.714409, 37.712730, 40.995132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944752, 37.668621, 41.046097>,  <38.328655, 37.595104, 41.131035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944752, 37.668621, 41.046097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173425, 0.206849, 0.962880,
		0.220891, 0.960955, -0.166651,
		-0.959756, 0.183790, -0.212345,
		37.656826, 37.723759, 40.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170685, 38.195614, 41.615177>,  <38.328655, 37.595104, 41.131035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170685, 38.195614, 41.615177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.818790, 38.055355, 41.486736>,  <37.607655, 37.971199, 41.409672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.818790, 38.055355, 41.486736>,  <38.170685, 38.195614, 41.615177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818790, 38.055355, 41.486736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393365, 0.157431, 0.905803,
		-0.267064, 0.923181, -0.276430,
		-0.879739, -0.350645, -0.321103,
		37.554871, 37.950161, 41.390404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627083, 38.649349, 41.815796>,  <38.170685, 38.195614, 41.615177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627083, 38.649349, 41.815796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408089, 38.321503, 41.748272>,  <37.276691, 38.124794, 41.707756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408089, 38.321503, 41.748272>,  <37.627083, 38.649349, 41.815796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408089, 38.321503, 41.748272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532941, 0.185977, 0.825462,
		-0.645165, 0.541892, -0.538625,
		-0.547482, -0.819613, -0.168810,
		37.243843, 38.075619, 41.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928761, 38.809311, 41.928787>,  <37.627083, 38.649349, 41.815796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928761, 38.809311, 41.928787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936905, 38.410980, 41.964378>,  <36.941792, 38.171982, 41.985733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936905, 38.410980, 41.964378>,  <36.928761, 38.809311, 41.928787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936905, 38.410980, 41.964378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505238, 0.066553, 0.860410,
		-0.862740, -0.062473, -0.501774,
		0.020357, -0.995825, 0.088982,
		36.943012, 38.112232, 41.991074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182083, 38.581711, 42.144096>,  <36.928761, 38.809311, 41.928787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182083, 38.581711, 42.144096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437073, 38.293232, 42.252537>,  <36.590065, 38.120144, 42.317600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437073, 38.293232, 42.252537>,  <36.182083, 38.581711, 42.144096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437073, 38.293232, 42.252537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531493, -0.156882, 0.832408,
		-0.557801, -0.674729, -0.483321,
		0.637474, -0.721199, 0.271105,
		36.628315, 38.076874, 42.333870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756287, 38.089760, 42.373348>,  <36.182083, 38.581711, 42.144096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756287, 38.089760, 42.373348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121498, 38.007832, 42.514446>,  <36.340626, 37.958675, 42.599106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121498, 38.007832, 42.514446>,  <35.756287, 38.089760, 42.373348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121498, 38.007832, 42.514446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398934, -0.268097, 0.876913,
		-0.085038, -0.941368, -0.326490,
		0.913029, -0.204819, 0.352745,
		36.395405, 37.946384, 42.620270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543861, 37.508949, 42.710464>,  <35.756287, 38.089760, 42.373348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543861, 37.508949, 42.710464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899082, 37.628033, 42.850601>,  <36.112213, 37.699482, 42.934681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899082, 37.628033, 42.850601>,  <35.543861, 37.508949, 42.710464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899082, 37.628033, 42.850601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396734, 0.111179, 0.911176,
		0.232319, -0.948159, 0.216845,
		0.888049, 0.297713, 0.350338,
		36.165497, 37.717346, 42.955704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739044, 37.037247, 43.246788>,  <35.543861, 37.508949, 42.710464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739044, 37.037247, 43.246788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935013, 37.378811, 43.316998>,  <36.052593, 37.583752, 43.359123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935013, 37.378811, 43.316998>,  <35.739044, 37.037247, 43.246788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935013, 37.378811, 43.316998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336455, -0.000531, 0.941700,
		0.804224, -0.520414, 0.287043,
		0.489921, 0.853914, 0.175523,
		36.081989, 37.634987, 43.369656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085861, 36.961903, 43.986904>,  <35.739044, 37.037247, 43.246788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085861, 36.961903, 43.986904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.016548, 37.341572, 43.881805>,  <35.974960, 37.569374, 43.818745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.016548, 37.341572, 43.881805>,  <36.085861, 36.961903, 43.986904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016548, 37.341572, 43.881805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470454, 0.154606, 0.868775,
		0.865244, 0.274151, 0.419755,
		-0.173279, 0.949178, -0.262747,
		35.964565, 37.626324, 43.802982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344242, 37.348606, 44.435501>,  <36.085861, 36.961903, 43.986904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344242, 37.348606, 44.435501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047115, 37.556953, 44.267254>,  <35.868839, 37.681961, 44.166306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047115, 37.556953, 44.267254>,  <36.344242, 37.348606, 44.435501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047115, 37.556953, 44.267254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407394, 0.146894, 0.901361,
		0.531274, 0.840905, 0.103082,
		-0.742817, 0.520865, -0.420621,
		35.824268, 37.713211, 44.141068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059788, 37.674877, 44.988636>,  <36.344242, 37.348606, 44.435501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059788, 37.674877, 44.988636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793793, 37.769382, 44.705238>,  <35.634197, 37.826088, 44.535198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793793, 37.769382, 44.705238>,  <36.059788, 37.674877, 44.988636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793793, 37.769382, 44.705238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696196, 0.147324, 0.702571,
		0.270372, 0.960456, 0.066518,
		-0.664989, 0.236265, -0.708498,
		35.594296, 37.840263, 44.492687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913357, 38.303394, 45.256653>,  <36.059788, 37.674877, 44.988636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913357, 38.303394, 45.256653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618500, 38.168358, 45.022507>,  <35.441586, 38.087337, 44.882019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.618500, 38.168358, 45.022507>,  <35.913357, 38.303394, 45.256653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618500, 38.168358, 45.022507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659453, 0.170345, 0.732192,
		-0.147467, 0.925751, -0.348193,
		-0.737140, -0.337592, -0.585369,
		35.397358, 38.067081, 44.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295715, 38.735653, 45.381489>,  <35.913357, 38.303394, 45.256653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295715, 38.735653, 45.381489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140182, 38.410423, 45.208183>,  <35.046864, 38.215286, 45.104198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140182, 38.410423, 45.208183>,  <35.295715, 38.735653, 45.381489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140182, 38.410423, 45.208183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712323, -0.032935, 0.701078,
		-0.584298, 0.581229, -0.566365,
		-0.388833, -0.813073, -0.433267,
		35.023533, 38.166500, 45.078205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623852, 38.868050, 45.434223>,  <35.295715, 38.735653, 45.381489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623852, 38.868050, 45.434223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671497, 38.472813, 45.395248>,  <34.700085, 38.235672, 45.371864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.671497, 38.472813, 45.395248>,  <34.623852, 38.868050, 45.434223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671497, 38.472813, 45.395248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513136, -0.145278, 0.845923,
		-0.850001, -0.050766, -0.524329,
		0.119118, -0.988088, -0.097436,
		34.707233, 38.176388, 45.366016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.632359, 38.170185, 44.859421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883247, 37.950485, 45.080296>,  <34.033779, 37.818665, 45.212822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883247, 37.950485, 45.080296>,  <33.632359, 38.170185, 44.859421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883247, 37.950485, 45.080296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758939, -0.271772, 0.591737,
		-0.174943, -0.790229, -0.587310,
		0.627222, -0.549252, 0.552191,
		34.071415, 37.785709, 45.245953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252831, 37.639996, 45.094585>,  <33.632359, 38.170185, 44.859421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252831, 37.639996, 45.094585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565746, 37.623734, 45.343220>,  <33.753498, 37.613976, 45.492401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565746, 37.623734, 45.343220>,  <33.252831, 37.639996, 45.094585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565746, 37.623734, 45.343220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597242, -0.332453, 0.729916,
		0.176974, -0.942243, -0.284355,
		0.782293, -0.040653, 0.621583,
		33.800434, 37.611538, 45.529694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221123, 37.003075, 45.360382>,  <33.252831, 37.639996, 45.094585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221123, 37.003075, 45.360382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420898, 37.233971, 45.618793>,  <33.540764, 37.372509, 45.773842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420898, 37.233971, 45.618793>,  <33.221123, 37.003075, 45.360382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420898, 37.233971, 45.618793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542285, -0.373248, 0.752737,
		0.675638, -0.726280, 0.126612,
		0.499441, 0.577237, 0.646031,
		33.570732, 37.407143, 45.812603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117218, 36.777866, 45.914494>,  <33.221123, 37.003075, 45.360382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117218, 36.777866, 45.914494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273895, 37.105396, 46.082355>,  <33.367901, 37.301914, 46.183071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273895, 37.105396, 46.082355>,  <33.117218, 36.777866, 45.914494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273895, 37.105396, 46.082355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471975, -0.212710, 0.855567,
		0.789820, -0.533186, 0.303145,
		0.391694, 0.818821, 0.419653,
		33.391403, 37.351044, 46.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419754, 36.541752, 46.576267>,  <33.117218, 36.777866, 45.914494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419754, 36.541752, 46.576267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313473, 36.926929, 46.557728>,  <33.249706, 37.158035, 46.546604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.313473, 36.926929, 46.557728>,  <33.419754, 36.541752, 46.576267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313473, 36.926929, 46.557728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597583, -0.126784, 0.791720,
		0.756504, 0.238056, 0.609124,
		-0.265700, 0.962941, -0.046345,
		33.233761, 37.215813, 46.543823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402100, 36.624199, 47.371773>,  <33.419754, 36.541752, 46.576267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402100, 36.624199, 47.371773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237774, 36.949371, 47.206665>,  <33.139179, 37.144474, 47.107601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237774, 36.949371, 47.206665>,  <33.402100, 36.624199, 47.371773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237774, 36.949371, 47.206665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666781, 0.040874, 0.744132,
		0.621797, 0.580927, 0.525254,
		-0.410817, 0.812929, -0.412766,
		33.114529, 37.193249, 47.082836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244583, 37.055904, 48.003269>,  <33.402100, 36.624199, 47.371773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244583, 37.055904, 48.003269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.036167, 37.211334, 47.699287>,  <32.911118, 37.304592, 47.516899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.036167, 37.211334, 47.699287>,  <33.244583, 37.055904, 48.003269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036167, 37.211334, 47.699287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756999, 0.200932, 0.621754,
		0.394299, 0.899240, 0.189461,
		-0.521037, 0.388579, -0.759952,
		32.879856, 37.327908, 47.471302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157978, 37.780594, 48.035213>,  <33.244583, 37.055904, 48.003269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157978, 37.780594, 48.035213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844814, 37.627293, 47.839188>,  <32.656914, 37.535313, 47.721573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844814, 37.627293, 47.839188>,  <33.157978, 37.780594, 48.035213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844814, 37.627293, 47.839188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610724, 0.323311, 0.722832,
		-0.118580, 0.865211, -0.487185,
		-0.782914, -0.383249, -0.490067,
		32.609940, 37.512318, 47.692169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563030, 38.292484, 48.072617>,  <33.157978, 37.780594, 48.035213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563030, 38.292484, 48.072617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395920, 37.933971, 48.013088>,  <32.295654, 37.718864, 47.977371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395920, 37.933971, 48.013088>,  <32.563030, 38.292484, 48.072617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395920, 37.933971, 48.013088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725356, 0.230390, 0.648675,
		-0.547107, 0.378949, -0.746372,
		-0.417772, -0.896280, -0.148825,
		32.270588, 37.665089, 47.968441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064358, 38.419983, 48.570873>,  <32.563030, 38.292484, 48.072617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064358, 38.419983, 48.570873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027843, 38.037136, 48.460896>,  <32.005936, 37.807426, 48.394909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027843, 38.037136, 48.460896>,  <32.064358, 38.419983, 48.570873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027843, 38.037136, 48.460896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676470, -0.143014, 0.722451,
		-0.730790, 0.251944, -0.634405,
		-0.091288, -0.957116, -0.274946,
		32.000458, 37.750000, 48.378410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344292, 38.325592, 48.639206>,  <32.064358, 38.419983, 48.570873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344292, 38.325592, 48.639206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528437, 37.971836, 48.669968>,  <31.638924, 37.759583, 48.688423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528437, 37.971836, 48.669968>,  <31.344292, 38.325592, 48.639206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528437, 37.971836, 48.669968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413975, -0.137241, 0.899883,
		-0.785297, -0.446109, -0.429297,
		0.460363, -0.884393, 0.076903,
		31.666546, 37.706516, 48.693039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836113, 37.885929, 48.751064>,  <31.344292, 38.325592, 48.639206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836113, 37.885929, 48.751064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148647, 37.693810, 48.910480>,  <31.336168, 37.578537, 49.006130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148647, 37.693810, 48.910480>,  <30.836113, 37.885929, 48.751064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148647, 37.693810, 48.910480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551211, -0.231557, 0.801591,
		-0.292719, -0.845987, -0.445669,
		0.781334, -0.480299, 0.398537,
		31.383047, 37.549721, 49.030041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503159, 37.601219, 49.235493>,  <30.836113, 37.885929, 48.751064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503159, 37.601219, 49.235493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.879179, 37.502213, 49.329338>,  <31.104792, 37.442806, 49.385643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.879179, 37.502213, 49.329338>,  <30.503159, 37.601219, 49.235493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879179, 37.502213, 49.329338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324793, -0.439974, 0.837217,
		-0.104006, -0.863225, -0.493990,
		0.940049, -0.247520, 0.234610,
		31.161194, 37.427956, 49.399719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459579, 36.888706, 49.350048>,  <30.503159, 37.601219, 49.235493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459579, 36.888706, 49.350048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765211, 37.044113, 49.556053>,  <30.948589, 37.137356, 49.679657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765211, 37.044113, 49.556053>,  <30.459579, 36.888706, 49.350048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765211, 37.044113, 49.556053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305732, -0.484909, 0.819384,
		0.568078, -0.783531, -0.251727,
		0.764078, 0.388513, 0.515017,
		30.994434, 37.160667, 49.710560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825165, 36.349728, 49.810276>,  <30.459579, 36.888706, 49.350048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825165, 36.349728, 49.810276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.926783, 36.698902, 49.976864>,  <30.987753, 36.908405, 50.076817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.926783, 36.698902, 49.976864>,  <30.825165, 36.349728, 49.810276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926783, 36.698902, 49.976864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276205, -0.347191, 0.896197,
		0.926915, -0.342708, 0.152906,
		0.254046, 0.872932, 0.416474,
		31.002996, 36.960781, 50.101807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278530, 36.132507, 50.309959>,  <30.825165, 36.349728, 49.810276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278530, 36.132507, 50.309959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137363, 36.493744, 50.407841>,  <31.052664, 36.710487, 50.466568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.137363, 36.493744, 50.407841>,  <31.278530, 36.132507, 50.309959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137363, 36.493744, 50.407841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169348, -0.318861, 0.932550,
		0.920202, 0.287672, 0.265468,
		-0.352916, 0.903090, 0.244700,
		31.031488, 36.764671, 50.481251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540758, 36.240959, 51.014751>,  <31.278530, 36.132507, 50.309959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540758, 36.240959, 51.014751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247290, 36.511429, 50.987846>,  <31.071209, 36.673710, 50.971703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247290, 36.511429, 50.987846>,  <31.540758, 36.240959, 51.014751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247290, 36.511429, 50.987846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247337, -0.173549, 0.953260,
		0.632893, 0.716013, 0.294569,
		-0.733669, 0.676170, -0.067258,
		31.027189, 36.714279, 50.967670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651745, 36.708389, 51.628311>,  <31.540758, 36.240959, 51.014751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651745, 36.708389, 51.628311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278677, 36.767448, 51.496658>,  <31.054836, 36.802883, 51.417667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278677, 36.767448, 51.496658>,  <31.651745, 36.708389, 51.628311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278677, 36.767448, 51.496658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339037, -0.047145, 0.939591,
		0.123208, 0.987916, 0.094027,
		-0.932670, 0.147644, -0.329132,
		30.998877, 36.811741, 51.397919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316336, 37.272545, 52.125553>,  <31.651745, 36.708389, 51.628311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316336, 37.272545, 52.125553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047798, 37.053505, 51.925781>,  <30.886675, 36.922081, 51.805916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047798, 37.053505, 51.925781>,  <31.316336, 37.272545, 52.125553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047798, 37.053505, 51.925781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434083, -0.255672, 0.863831,
		-0.600723, 0.796723, -0.066060,
		-0.671344, -0.547598, -0.499432,
		30.846395, 36.889225, 51.775951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794228, 37.396000, 52.513676>,  <31.316336, 37.272545, 52.125553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794228, 37.396000, 52.513676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699835, 37.062019, 52.314808>,  <30.643200, 36.861633, 52.195488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699835, 37.062019, 52.314808>,  <30.794228, 37.396000, 52.513676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699835, 37.062019, 52.314808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422176, -0.372727, 0.826343,
		-0.875260, 0.404894, -0.264538,
		-0.235981, -0.834947, -0.497169,
		30.629040, 36.811535, 52.165657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142233, 37.186581, 52.682693>,  <30.794228, 37.396000, 52.513676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142233, 37.186581, 52.682693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.291132, 36.846474, 52.533840>,  <30.380472, 36.642410, 52.444530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.291132, 36.846474, 52.533840>,  <30.142233, 37.186581, 52.682693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291132, 36.846474, 52.533840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285125, -0.486318, 0.825953,
		-0.883252, -0.201356, -0.423463,
		0.372248, -0.850265, -0.372130,
		30.402807, 36.591393, 52.422199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604942, 36.678875, 52.892826>,  <30.142233, 37.186581, 52.682693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604942, 36.678875, 52.892826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943296, 36.484406, 52.805088>,  <30.146309, 36.367722, 52.752445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943296, 36.484406, 52.805088>,  <29.604942, 36.678875, 52.892826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943296, 36.484406, 52.805088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148169, -0.609255, 0.779009,
		-0.512370, -0.626453, -0.587396,
		0.845886, -0.486174, -0.219343,
		30.197062, 36.338554, 52.739285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456877, 35.903004, 52.789639>,  <29.604942, 36.678875, 52.892826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456877, 35.903004, 52.789639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823357, 35.963718, 52.937981>,  <30.043245, 36.000149, 53.026985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823357, 35.963718, 52.937981>,  <29.456877, 35.903004, 52.789639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823357, 35.963718, 52.937981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215905, -0.592677, 0.775963,
		0.337581, -0.791009, -0.510240,
		0.916201, 0.151787, 0.370859,
		30.098217, 36.009254, 53.049240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029804, 35.888832, 52.179520>,  <29.456877, 35.903004, 52.789639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029804, 35.888832, 52.179520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.812605, 35.553078, 52.189247>,  <28.682285, 35.351627, 52.195084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.812605, 35.553078, 52.189247>,  <29.029804, 35.888832, 52.179520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812605, 35.553078, 52.189247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151522, -0.126421, -0.980336,
		0.825950, -0.528636, 0.195831,
		-0.542999, -0.839382, 0.024317,
		28.649706, 35.301262, 52.196541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366354, 35.343708, 51.930389>,  <29.029804, 35.888832, 52.179520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366354, 35.343708, 51.930389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.981894, 35.253944, 51.866104>,  <28.751217, 35.200089, 51.827534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.981894, 35.253944, 51.866104>,  <29.366354, 35.343708, 51.930389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981894, 35.253944, 51.866104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171659, -0.030001, -0.984700,
		0.216152, -0.974034, 0.067357,
		-0.961151, -0.224407, -0.160716,
		28.693548, 35.186623, 51.817890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387722, 35.208206, 51.217979>,  <29.366354, 35.343708, 51.930389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387722, 35.208206, 51.217979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999256, 35.195297, 51.312462>,  <28.766176, 35.187550, 51.369152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999256, 35.195297, 51.312462>,  <29.387722, 35.208206, 51.217979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999256, 35.195297, 51.312462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210367, -0.350150, -0.912765,
		0.112168, -0.936137, 0.333264,
		-0.971166, -0.032275, 0.236208,
		28.707907, 35.185616, 51.383324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024246, 34.523449, 51.300961>,  <29.387722, 35.208206, 51.217979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024246, 34.523449, 51.300961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.779028, 34.813984, 51.176636>,  <28.631897, 34.988304, 51.102043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.779028, 34.813984, 51.176636>,  <29.024246, 34.523449, 51.300961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779028, 34.813984, 51.176636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141965, -0.285726, -0.947738,
		-0.777187, -0.625132, 0.072048,
		-0.613047, 0.726341, -0.310810,
		28.595114, 35.031887, 51.083393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765415, 34.283333, 50.712700>,  <29.024246, 34.523449, 51.300961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765415, 34.283333, 50.712700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615131, 34.650066, 50.658661>,  <28.524961, 34.870106, 50.626236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.615131, 34.650066, 50.658661>,  <28.765415, 34.283333, 50.712700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615131, 34.650066, 50.658661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059188, -0.121745, -0.990795,
		-0.924845, -0.380248, -0.008525,
		-0.375710, 0.916837, -0.135102,
		28.502419, 34.925117, 50.618130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238827, 34.200947, 50.213963>,  <28.765415, 34.283333, 50.712700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238827, 34.200947, 50.213963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.375280, 34.576756, 50.226173>,  <28.457153, 34.802238, 50.233501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.375280, 34.576756, 50.226173>,  <28.238827, 34.200947, 50.213963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375280, 34.576756, 50.226173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124209, -0.012859, -0.992173,
		-0.931772, 0.342256, -0.121084,
		0.341134, 0.939519, 0.030530,
		28.477621, 34.858612, 50.235332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943865, 34.555809, 49.622826>,  <28.238827, 34.200947, 50.213963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943865, 34.555809, 49.622826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.283710, 34.750328, 49.704483>,  <28.487617, 34.867039, 49.753479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.283710, 34.750328, 49.704483>,  <27.943865, 34.555809, 49.622826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283710, 34.750328, 49.704483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211138, 0.041084, -0.976592,
		-0.483299, 0.872829, -0.067770,
		0.849613, 0.486295, 0.204143,
		28.538595, 34.896217, 49.765724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945612, 34.995152, 49.059490>,  <27.943865, 34.555809, 49.622826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945612, 34.995152, 49.059490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320456, 34.981041, 49.198387>,  <28.545362, 34.972572, 49.281727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320456, 34.981041, 49.198387>,  <27.945612, 34.995152, 49.059490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320456, 34.981041, 49.198387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349031, 0.089909, -0.932788,
		0.001689, 0.995325, 0.096569,
		0.937110, -0.035281, 0.347247,
		28.601589, 34.970455, 49.302563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218258, 35.522938, 48.723320>,  <27.945612, 34.995152, 49.059490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218258, 35.522938, 48.723320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.519613, 35.289970, 48.845432>,  <28.700426, 35.150188, 48.918701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.519613, 35.289970, 48.845432>,  <28.218258, 35.522938, 48.723320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519613, 35.289970, 48.845432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341172, -0.050670, -0.938634,
		0.562146, 0.811309, 0.160530,
		0.753388, -0.582417, 0.305280,
		28.745630, 35.115246, 48.937016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766973, 35.869835, 48.610863>,  <28.218258, 35.522938, 48.723320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766973, 35.869835, 48.610863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.928658, 35.504539, 48.631321>,  <29.025667, 35.285362, 48.643597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.928658, 35.504539, 48.631321>,  <28.766973, 35.869835, 48.610863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928658, 35.504539, 48.631321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471606, 0.160171, -0.867141,
		0.783710, 0.374630, 0.495430,
		0.404210, -0.913235, 0.051150,
		29.049921, 35.230568, 48.646667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577621, 35.898491, 48.819328>,  <28.766973, 35.869835, 48.610863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577621, 35.898491, 48.819328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479364, 35.561722, 48.627148>,  <29.420410, 35.359661, 48.511841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.479364, 35.561722, 48.627148>,  <29.577621, 35.898491, 48.819328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479364, 35.561722, 48.627148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722633, 0.171312, -0.669666,
		0.646113, -0.511685, 0.566319,
		-0.245641, -0.841921, -0.480447,
		29.405672, 35.309147, 48.483013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194798, 35.788155, 48.509663>,  <29.577621, 35.898491, 48.819328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194798, 35.788155, 48.509663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.955221, 35.531887, 48.317490>,  <29.811476, 35.378128, 48.202187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.955221, 35.531887, 48.317490>,  <30.194798, 35.788155, 48.509663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955221, 35.531887, 48.317490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574163, 0.074648, -0.815331,
		0.558218, -0.764183, 0.323137,
		-0.598940, -0.640665, -0.480435,
		29.775539, 35.339687, 48.173359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683842, 35.389324, 48.155766>,  <30.194798, 35.788155, 48.509663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683842, 35.389324, 48.155766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337658, 35.341648, 47.961128>,  <30.129948, 35.313042, 47.844345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337658, 35.341648, 47.961128>,  <30.683842, 35.389324, 48.155766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337658, 35.341648, 47.961128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475403, 0.110972, -0.872741,
		0.158023, -0.986650, -0.039377,
		-0.865460, -0.119193, -0.486593,
		30.078020, 35.305893, 47.815151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853710, 35.034966, 47.585850>,  <30.683842, 35.389324, 48.155766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853710, 35.034966, 47.585850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515999, 35.237881, 47.516735>,  <30.313372, 35.359631, 47.475266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515999, 35.237881, 47.516735>,  <30.853710, 35.034966, 47.585850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515999, 35.237881, 47.516735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296473, 0.173541, -0.939142,
		-0.446427, -0.844125, -0.296913,
		-0.844279, 0.507284, -0.172787,
		30.262714, 35.390064, 47.464901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659777, 34.900791, 46.854984>,  <30.853710, 35.034966, 47.585850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659777, 34.900791, 46.854984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.434422, 35.214447, 46.959072>,  <30.299210, 35.402641, 47.021526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.434422, 35.214447, 46.959072>,  <30.659777, 34.900791, 46.854984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434422, 35.214447, 46.959072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328387, 0.501545, -0.800384,
		-0.758128, -0.365473, -0.540066,
		-0.563386, 0.784144, 0.260219,
		30.265406, 35.449692, 47.037136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340412, 35.033241, 46.253132>,  <30.659777, 34.900791, 46.854984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340412, 35.033241, 46.253132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347733, 35.362537, 46.480091>,  <30.352125, 35.560116, 46.616268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347733, 35.362537, 46.480091>,  <30.340412, 35.033241, 46.253132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347733, 35.362537, 46.480091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432102, 0.505246, -0.747004,
		-0.901639, 0.258846, -0.346477,
		0.018303, 0.823241, 0.567397,
		30.353224, 35.609509, 46.650311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031765, 35.521797, 45.901363>,  <30.340412, 35.033241, 46.253132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031765, 35.521797, 45.901363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.259241, 35.725044, 46.160103>,  <30.395725, 35.846992, 46.315346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.259241, 35.725044, 46.160103>,  <30.031765, 35.521797, 45.901363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259241, 35.725044, 46.160103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395702, 0.520421, -0.756691,
		-0.721120, 0.686280, 0.094895,
		0.568688, 0.508115, 0.646849,
		30.429848, 35.877480, 46.354156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786089, 36.202568, 45.835030>,  <30.031765, 35.521797, 45.901363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786089, 36.202568, 45.835030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.161949, 36.222420, 45.970436>,  <30.387466, 36.234333, 46.051678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.161949, 36.222420, 45.970436>,  <29.786089, 36.202568, 45.835030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161949, 36.222420, 45.970436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232389, 0.633559, -0.737969,
		-0.251095, 0.772101, 0.583791,
		0.939652, 0.049634, 0.338511,
		30.443846, 36.237309, 46.071991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106922, 36.826927, 45.593262>,  <29.786089, 36.202568, 45.835030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106922, 36.826927, 45.593262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436680, 36.647324, 45.731110>,  <30.634535, 36.539562, 45.813820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436680, 36.647324, 45.731110>,  <30.106922, 36.826927, 45.593262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436680, 36.647324, 45.731110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560233, 0.560489, -0.609910,
		0.080697, 0.695876, 0.713614,
		0.824395, -0.449008, 0.344623,
		30.683998, 36.512623, 45.834496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511385, 37.337418, 45.712212>,  <30.106922, 36.826927, 45.593262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511385, 37.337418, 45.712212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707966, 36.998238, 45.632759>,  <30.825914, 36.794731, 45.585087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707966, 36.998238, 45.632759>,  <30.511385, 37.337418, 45.712212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707966, 36.998238, 45.632759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510486, 0.465264, -0.723142,
		0.705605, 0.253989, 0.661521,
		0.491452, -0.847950, -0.198635,
		30.855402, 36.743855, 45.573170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140781, 37.639210, 45.581814>,  <30.511385, 37.337418, 45.712212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140781, 37.639210, 45.581814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134153, 37.276268, 45.413795>,  <31.130177, 37.058502, 45.312984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134153, 37.276268, 45.413795>,  <31.140781, 37.639210, 45.581814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134153, 37.276268, 45.413795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410478, 0.376893, -0.830337,
		0.911720, -0.186178, 0.366203,
		-0.016571, -0.907353, -0.420043,
		31.129183, 37.004063, 45.287781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.996742, 34.730293, 29.476011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630112, 34.840889, 29.591553>,  <39.410133, 34.907246, 29.660877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630112, 34.840889, 29.591553>,  <39.996742, 34.730293, 29.476011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630112, 34.840889, 29.591553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356474, 0.237790, 0.903539,
		0.181130, 0.931134, -0.316514,
		-0.916580, 0.276487, 0.288854,
		39.355137, 34.923836, 29.678209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129940, 35.227268, 29.942486>,  <39.996742, 34.730293, 29.476011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129940, 35.227268, 29.942486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751217, 35.118118, 30.010704>,  <39.523983, 35.052628, 30.051634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751217, 35.118118, 30.010704>,  <40.129940, 35.227268, 29.942486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751217, 35.118118, 30.010704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169641, 0.027081, 0.985134,
		-0.273439, 0.961668, 0.020650,
		-0.946812, -0.272877, 0.170544,
		39.467175, 35.036255, 30.061867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872746, 35.678017, 30.345390>,  <40.129940, 35.227268, 29.942486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872746, 35.678017, 30.345390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.638885, 35.361351, 30.416328>,  <39.498569, 35.171352, 30.458891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.638885, 35.361351, 30.416328>,  <39.872746, 35.678017, 30.345390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638885, 35.361351, 30.416328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023808, 0.235246, 0.971644,
		-0.810937, 0.563849, -0.156384,
		-0.584649, -0.791665, 0.177345,
		39.463490, 35.123852, 30.469532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279934, 35.840828, 30.844585>,  <39.872746, 35.678017, 30.345390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279934, 35.840828, 30.844585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328339, 35.443771, 30.846727>,  <39.357380, 35.205540, 30.848013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328339, 35.443771, 30.846727>,  <39.279934, 35.840828, 30.844585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328339, 35.443771, 30.846727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033690, 0.009499, 0.999387,
		-0.992080, -0.120754, 0.034591,
		0.121009, -0.992637, 0.005355,
		39.364639, 35.145981, 30.848333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862747, 35.559002, 31.376972>,  <39.279934, 35.840828, 30.844585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862747, 35.559002, 31.376972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125504, 35.265289, 31.308479>,  <39.283157, 35.089062, 31.267384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125504, 35.265289, 31.308479>,  <38.862747, 35.559002, 31.376972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125504, 35.265289, 31.308479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282402, 0.029036, 0.958857,
		-0.699098, -0.678225, 0.226436,
		0.656895, -0.734281, -0.171233,
		39.322571, 35.045006, 31.257109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865372, 35.133026, 32.011997>,  <38.862747, 35.559002, 31.376972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865372, 35.133026, 32.011997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207745, 35.026611, 31.834641>,  <39.413170, 34.962765, 31.728226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207745, 35.026611, 31.834641>,  <38.865372, 35.133026, 32.011997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207745, 35.026611, 31.834641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428033, -0.116559, 0.896215,
		-0.290107, -0.956890, 0.014105,
		0.855936, -0.266036, -0.443396,
		39.464527, 34.946800, 31.701622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050808, 34.598881, 32.317642>,  <38.865372, 35.133026, 32.011997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050808, 34.598881, 32.317642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402763, 34.700577, 32.157063>,  <39.613937, 34.761597, 32.060715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402763, 34.700577, 32.157063>,  <39.050808, 34.598881, 32.317642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402763, 34.700577, 32.157063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428641, -0.060025, 0.901479,
		0.205099, -0.965276, -0.161794,
		0.879887, 0.254244, -0.401446,
		39.666729, 34.776848, 32.036629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526608, 34.071095, 32.614326>,  <39.050808, 34.598881, 32.317642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526608, 34.071095, 32.614326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767387, 34.353516, 32.465118>,  <39.911854, 34.522968, 32.375591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767387, 34.353516, 32.465118>,  <39.526608, 34.071095, 32.614326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767387, 34.353516, 32.465118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671226, -0.194334, 0.715325,
		0.432568, -0.680970, -0.590901,
		0.601947, 0.706055, -0.373022,
		39.947971, 34.565331, 32.353210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219166, 33.720280, 32.436718>,  <39.526608, 34.071095, 32.614326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219166, 33.720280, 32.436718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.278049, 34.106628, 32.521973>,  <40.313381, 34.338436, 32.573124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.278049, 34.106628, 32.521973>,  <40.219166, 33.720280, 32.436718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278049, 34.106628, 32.521973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485313, -0.258296, 0.835317,
		0.861859, -0.019529, -0.506773,
		0.147210, 0.965868, 0.213137,
		40.322212, 34.396389, 32.585915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958076, 33.810791, 32.647949>,  <40.219166, 33.720280, 32.436718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958076, 33.810791, 32.647949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766071, 34.129608, 32.794544>,  <40.650867, 34.320900, 32.882500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766071, 34.129608, 32.794544>,  <40.958076, 33.810791, 32.647949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766071, 34.129608, 32.794544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677619, 0.071549, 0.731925,
		0.557153, 0.599670, -0.574435,
		-0.480014, 0.797042, 0.366484,
		40.622066, 34.368721, 32.904488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508553, 34.383640, 32.820465>,  <40.958076, 33.810791, 32.647949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508553, 34.383640, 32.820465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191212, 34.485676, 33.041561>,  <41.000809, 34.546898, 33.174221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191212, 34.485676, 33.041561>,  <41.508553, 34.383640, 32.820465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191212, 34.485676, 33.041561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595972, 0.140282, 0.790657,
		0.124146, 0.956688, -0.263317,
		-0.793351, 0.255086, 0.552744,
		40.953205, 34.562202, 33.207386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680752, 35.090549, 33.172680>,  <41.508553, 34.383640, 32.820465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680752, 35.090549, 33.172680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.382256, 34.925915, 33.381950>,  <41.203156, 34.827133, 33.507511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.382256, 34.925915, 33.381950>,  <41.680752, 35.090549, 33.172680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382256, 34.925915, 33.381950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355530, 0.418017, 0.835979,
		-0.562777, 0.809849, -0.165610,
		-0.746245, -0.411590, 0.523176,
		41.158382, 34.802437, 33.538902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550121, 35.637119, 33.568150>,  <41.680752, 35.090549, 33.172680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550121, 35.637119, 33.568150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371063, 35.322712, 33.738697>,  <41.263626, 35.134068, 33.841026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371063, 35.322712, 33.738697>,  <41.550121, 35.637119, 33.568150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371063, 35.322712, 33.738697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299807, 0.317281, 0.899693,
		-0.842453, 0.530573, 0.093624,
		-0.447648, -0.786018, 0.426364,
		41.236771, 35.086906, 33.866608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331089, 35.952942, 34.172695>,  <41.550121, 35.637119, 33.568150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331089, 35.952942, 34.172695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320705, 35.559757, 34.245480>,  <41.314476, 35.323845, 34.289150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320705, 35.559757, 34.245480>,  <41.331089, 35.952942, 34.172695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320705, 35.559757, 34.245480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409664, 0.155575, 0.898873,
		-0.911867, 0.097875, 0.398646,
		-0.025958, -0.982963, 0.181960,
		41.312920, 35.264870, 34.300068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170288, 35.977993, 34.896622>,  <41.331089, 35.952942, 34.172695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170288, 35.977993, 34.896622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307064, 35.608173, 34.829346>,  <41.389130, 35.386280, 34.788979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307064, 35.608173, 34.829346>,  <41.170288, 35.977993, 34.896622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307064, 35.608173, 34.829346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288058, -0.067243, 0.955249,
		-0.894484, -0.375084, 0.243331,
		0.341936, -0.924549, -0.168194,
		41.409645, 35.330811, 34.778889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917175, 35.595959, 35.378693>,  <41.170288, 35.977993, 34.896622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917175, 35.595959, 35.378693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251152, 35.421860, 35.243977>,  <41.451538, 35.317402, 35.163147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251152, 35.421860, 35.243977>,  <40.917175, 35.595959, 35.378693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251152, 35.421860, 35.243977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376552, 0.005520, 0.926379,
		-0.401342, -0.900295, 0.168501,
		0.834945, -0.435245, -0.336792,
		41.501637, 35.291286, 35.142941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068321, 35.121391, 35.862450>,  <40.917175, 35.595959, 35.378693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068321, 35.121391, 35.862450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.410694, 35.177998, 35.663509>,  <41.616119, 35.211960, 35.544144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.410694, 35.177998, 35.663509>,  <41.068321, 35.121391, 35.862450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410694, 35.177998, 35.663509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459526, 0.232861, 0.857095,
		0.237160, -0.962150, 0.134251,
		0.855915, 0.141577, -0.497358,
		41.667473, 35.220451, 35.514305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498699, 34.717297, 36.275253>,  <41.068321, 35.121391, 35.862450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498699, 34.717297, 36.275253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719013, 34.969330, 36.056301>,  <41.851204, 35.120552, 35.924931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719013, 34.969330, 36.056301>,  <41.498699, 34.717297, 36.275253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719013, 34.969330, 36.056301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545606, 0.224490, 0.807415,
		0.631621, -0.743368, -0.220131,
		0.550789, 0.630085, -0.547379,
		41.884251, 35.158356, 35.892086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205311, 34.556030, 36.421604>,  <41.498699, 34.717297, 36.275253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205311, 34.556030, 36.421604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198635, 34.925278, 36.267941>,  <42.194630, 35.146828, 36.175743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198635, 34.925278, 36.267941>,  <42.205311, 34.556030, 36.421604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198635, 34.925278, 36.267941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637103, 0.305927, 0.707466,
		0.770598, -0.232943, -0.593225,
		-0.016685, 0.923118, -0.384155,
		42.193630, 35.202213, 36.152695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927940, 34.837730, 36.488430>,  <42.205311, 34.556030, 36.421604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927940, 34.837730, 36.488430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704426, 35.162663, 36.421646>,  <42.570316, 35.357624, 36.381577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704426, 35.162663, 36.421646>,  <42.927940, 34.837730, 36.488430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704426, 35.162663, 36.421646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593240, 0.532216, 0.603997,
		0.579503, 0.238459, -0.779303,
		-0.558786, 0.812332, -0.166957,
		42.536789, 35.406361, 36.371559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453648, 35.335838, 36.419933>,  <42.927940, 34.837730, 36.488430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453648, 35.335838, 36.419933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114246, 35.524708, 36.515514>,  <42.910606, 35.638027, 36.572861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114246, 35.524708, 36.515514>,  <43.453648, 35.335838, 36.419933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114246, 35.524708, 36.515514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486499, 0.518328, 0.703317,
		0.208231, 0.713016, -0.669513,
		-0.848504, 0.472170, 0.238949,
		42.859695, 35.666359, 36.587200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151733, 35.232800, 36.452557>,  <43.453648, 35.335838, 36.419933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151733, 35.232800, 36.452557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514790, 35.078190, 36.387100>,  <44.732624, 34.985424, 36.347828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514790, 35.078190, 36.387100>,  <44.151733, 35.232800, 36.452557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514790, 35.078190, 36.387100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099319, 0.181011, -0.978453,
		0.407820, 0.904340, 0.125904,
		0.907645, -0.386528, -0.163638,
		44.787083, 34.962231, 36.338009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553986, 35.720123, 36.228054>,  <44.151733, 35.232800, 36.452557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553986, 35.720123, 36.228054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.697739, 35.372128, 36.093021>,  <44.783989, 35.163330, 36.012001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.697739, 35.372128, 36.093021>,  <44.553986, 35.720123, 36.228054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697739, 35.372128, 36.093021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083618, 0.330272, -0.940175,
		0.929436, 0.366111, 0.045947,
		0.359383, -0.869990, -0.337580,
		44.805553, 35.111130, 35.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230335, 35.798100, 35.861847>,  <44.553986, 35.720123, 36.228054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230335, 35.798100, 35.861847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075233, 35.457859, 35.719791>,  <44.982170, 35.253716, 35.634556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075233, 35.457859, 35.719791>,  <45.230335, 35.798100, 35.861847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075233, 35.457859, 35.719791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055605, 0.362999, -0.930129,
		0.920082, -0.380413, -0.093459,
		-0.387759, -0.850598, -0.355142,
		44.958904, 35.202679, 35.613251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671238, 35.773979, 35.280338>,  <45.230335, 35.798100, 35.861847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671238, 35.773979, 35.280338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388332, 35.495331, 35.232166>,  <45.218590, 35.328140, 35.203262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388332, 35.495331, 35.232166>,  <45.671238, 35.773979, 35.280338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388332, 35.495331, 35.232166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048935, 0.218187, -0.974679,
		0.705259, -0.683457, -0.188404,
		-0.707259, -0.696621, -0.120433,
		45.176155, 35.286346, 35.196037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847008, 35.510677, 34.737530>,  <45.671238, 35.773979, 35.280338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847008, 35.510677, 34.737530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465427, 35.394920, 34.769100>,  <45.236481, 35.325466, 34.788044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465427, 35.394920, 34.769100>,  <45.847008, 35.510677, 34.737530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465427, 35.394920, 34.769100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129284, 0.159240, -0.978738,
		0.270668, -0.943873, -0.189321,
		-0.953952, -0.289389, 0.078927,
		45.179241, 35.308105, 34.792778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651913, 35.169502, 34.100193>,  <45.847008, 35.510677, 34.737530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651913, 35.169502, 34.100193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281326, 35.234760, 34.235863>,  <45.058975, 35.273914, 34.317265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281326, 35.234760, 34.235863>,  <45.651913, 35.169502, 34.100193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281326, 35.234760, 34.235863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322547, 0.120252, -0.938884,
		-0.193960, -0.979246, -0.058788,
		-0.926468, 0.163144, 0.339177,
		45.003387, 35.283703, 34.337616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118675, 34.643253, 33.851097>,  <45.651913, 35.169502, 34.100193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118675, 34.643253, 33.851097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940536, 34.994305, 33.922028>,  <44.833652, 35.204933, 33.964584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940536, 34.994305, 33.922028>,  <45.118675, 34.643253, 33.851097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940536, 34.994305, 33.922028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392529, -0.013374, -0.919643,
		-0.804730, -0.479161, 0.350449,
		-0.445344, 0.877625, 0.177322,
		44.806934, 35.257591, 33.975224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454506, 34.511307, 33.570374>,  <45.118675, 34.643253, 33.851097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454506, 34.511307, 33.570374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468903, 34.908886, 33.611897>,  <44.477543, 35.147434, 33.636810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468903, 34.908886, 33.611897>,  <44.454506, 34.511307, 33.570374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468903, 34.908886, 33.611897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458113, 0.108730, -0.882219,
		-0.888165, -0.015800, 0.459253,
		0.035995, 0.993946, 0.103809,
		44.479702, 35.207069, 33.643040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896221, 34.714699, 33.186142>,  <44.454506, 34.511307, 33.570374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896221, 34.714699, 33.186142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120747, 35.044205, 33.218010>,  <44.255463, 35.241909, 33.237133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120747, 35.044205, 33.218010>,  <43.896221, 34.714699, 33.186142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120747, 35.044205, 33.218010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347506, 0.321967, -0.880669,
		-0.751114, 0.466641, 0.466985,
		0.561309, 0.823762, 0.079673,
		44.289139, 35.291332, 33.241913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455261, 35.347519, 33.100300>,  <43.896221, 34.714699, 33.186142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455261, 35.347519, 33.100300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819508, 35.481316, 33.003227>,  <44.038055, 35.561592, 32.944984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819508, 35.481316, 33.003227>,  <43.455261, 35.347519, 33.100300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819508, 35.481316, 33.003227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378208, 0.437871, -0.815615,
		-0.166550, 0.834497, 0.525239,
		0.910615, 0.334490, -0.242686,
		44.092693, 35.581661, 32.930420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450874, 36.031010, 33.120026>,  <43.455261, 35.347519, 33.100300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450874, 36.031010, 33.120026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752827, 35.956253, 32.868557>,  <43.933998, 35.911400, 32.717678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752827, 35.956253, 32.868557>,  <43.450874, 36.031010, 33.120026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752827, 35.956253, 32.868557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477747, 0.500024, -0.722311,
		0.449346, 0.845604, 0.288170,
		0.754881, -0.186895, -0.628669,
		43.979290, 35.900185, 32.679955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437931, 36.636620, 32.871002>,  <43.450874, 36.031010, 33.120026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437931, 36.636620, 32.871002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634460, 36.387554, 32.627396>,  <43.752377, 36.238117, 32.481232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.634460, 36.387554, 32.627396>,  <43.437931, 36.636620, 32.871002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634460, 36.387554, 32.627396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451503, 0.415865, -0.789431,
		0.744814, 0.662837, -0.076809,
		0.491322, -0.622659, -0.609014,
		43.781857, 36.200756, 32.444691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712116, 37.023651, 32.242905>,  <43.437931, 36.636620, 32.871002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712116, 37.023651, 32.242905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700306, 36.632759, 32.158863>,  <43.693222, 36.398224, 32.108440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.700306, 36.632759, 32.158863>,  <43.712116, 37.023651, 32.242905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700306, 36.632759, 32.158863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298099, 0.209235, -0.931320,
		0.954078, 0.035135, -0.297490,
		-0.029524, -0.977234, -0.210101,
		43.691448, 36.339588, 32.095833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630650, 37.081451, 31.540211>,  <43.712116, 37.023651, 32.242905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630650, 37.081451, 31.540211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576782, 36.693108, 31.619495>,  <43.544460, 36.460102, 31.667067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576782, 36.693108, 31.619495>,  <43.630650, 37.081451, 31.540211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576782, 36.693108, 31.619495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506041, -0.104597, -0.856144,
		0.851931, -0.215597, -0.477211,
		-0.134668, -0.970864, 0.198210,
		43.536381, 36.401848, 31.678959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833973, 36.771965, 30.965525>,  <43.630650, 37.081451, 31.540211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833973, 36.771965, 30.965525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573322, 36.533520, 31.153156>,  <43.416931, 36.390453, 31.265736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573322, 36.533520, 31.153156>,  <43.833973, 36.771965, 30.965525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573322, 36.533520, 31.153156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321216, -0.343363, -0.882566,
		0.687175, -0.725776, 0.032262,
		-0.651622, -0.596114, 0.469081,
		43.377834, 36.354687, 31.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859028, 36.076618, 30.627699>,  <43.833973, 36.771965, 30.965525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859028, 36.076618, 30.627699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501247, 36.084694, 30.806381>,  <43.286579, 36.089539, 30.913591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501247, 36.084694, 30.806381>,  <43.859028, 36.076618, 30.627699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501247, 36.084694, 30.806381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403542, -0.466799, -0.786926,
		0.192639, -0.884133, 0.425675,
		-0.894452, 0.020185, 0.446708,
		43.232910, 36.090748, 30.940393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559177, 35.487812, 30.370556>,  <43.859028, 36.076618, 30.627699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559177, 35.487812, 30.370556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253181, 35.692371, 30.527151>,  <43.069584, 35.815105, 30.621109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253181, 35.692371, 30.527151>,  <43.559177, 35.487812, 30.370556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253181, 35.692371, 30.527151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495173, -0.078348, -0.865255,
		-0.411814, -0.855767, 0.313164,
		-0.764992, 0.511394, 0.391488,
		43.023685, 35.845791, 30.644598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947594, 35.206066, 30.131344>,  <43.559177, 35.487812, 30.370556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947594, 35.206066, 30.131344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795727, 35.554413, 30.256207>,  <42.704605, 35.763420, 30.331125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795727, 35.554413, 30.256207>,  <42.947594, 35.206066, 30.131344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795727, 35.554413, 30.256207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638249, -0.002313, -0.769827,
		-0.669695, -0.491512, 0.556708,
		-0.379667, 0.870868, 0.312158,
		42.681828, 35.815674, 30.349854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305412, 35.137436, 30.145855>,  <42.947594, 35.206066, 30.131344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305412, 35.137436, 30.145855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291817, 35.536415, 30.120750>,  <42.283661, 35.775803, 30.105688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.291817, 35.536415, 30.120750>,  <42.305412, 35.137436, 30.145855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291817, 35.536415, 30.120750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761675, -0.066507, -0.644537,
		-0.647067, 0.025900, 0.761993,
		-0.033984, 0.997450, -0.062762,
		42.281620, 35.835651, 30.101921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609837, 35.420910, 30.367109>,  <42.305412, 35.137436, 30.145855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609837, 35.420910, 30.367109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774921, 35.703678, 30.137352>,  <41.873974, 35.873341, 29.999498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.774921, 35.703678, 30.137352>,  <41.609837, 35.420910, 30.367109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774921, 35.703678, 30.137352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788902, -0.037792, -0.613356,
		-0.455303, 0.706280, 0.542096,
		0.412714, 0.706923, -0.574392,
		41.898735, 35.915756, 29.965034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088856, 35.716061, 30.072906>,  <41.609837, 35.420910, 30.367109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088856, 35.716061, 30.072906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.372005, 35.868870, 29.835258>,  <41.541893, 35.960556, 29.692669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.372005, 35.868870, 29.835258>,  <41.088856, 35.716061, 30.072906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372005, 35.868870, 29.835258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625200, -0.052556, -0.778693,
		-0.328701, 0.922658, 0.201636,
		0.707870, 0.382020, -0.594121,
		41.584366, 35.983475, 29.657022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.914127, 38.650063, 43.540569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658649, 38.345119, 43.498840>,  <36.505363, 38.162155, 43.473801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658649, 38.345119, 43.498840>,  <36.914127, 38.650063, 43.540569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658649, 38.345119, 43.498840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514616, -0.322420, -0.794491,
		0.572047, -0.561126, 0.598248,
		-0.638696, -0.762354, -0.104325,
		36.467041, 38.116413, 43.467545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371429, 38.110245, 43.268353>,  <36.914127, 38.650063, 43.540569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371429, 38.110245, 43.268353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000206, 37.985130, 43.187489>,  <36.777473, 37.910061, 43.138969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000206, 37.985130, 43.187489>,  <37.371429, 38.110245, 43.268353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000206, 37.985130, 43.187489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278311, -0.221763, -0.934539,
		0.247482, -0.923571, 0.292862,
		-0.928060, -0.312789, -0.202158,
		36.721786, 37.891293, 43.126842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457928, 37.469433, 43.151497>,  <37.371429, 38.110245, 43.268353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457928, 37.469433, 43.151497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126030, 37.612106, 42.979774>,  <36.926891, 37.697712, 42.876740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126030, 37.612106, 42.979774>,  <37.457928, 37.469433, 43.151497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126030, 37.612106, 42.979774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411728, -0.128160, -0.902250,
		-0.376838, -0.925393, -0.040517,
		-0.829743, 0.356684, -0.429305,
		36.877106, 37.719112, 42.850983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333076, 37.031139, 42.647396>,  <37.457928, 37.469433, 43.151497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333076, 37.031139, 42.647396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122845, 37.355675, 42.545029>,  <36.996704, 37.550396, 42.483608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122845, 37.355675, 42.545029>,  <37.333076, 37.031139, 42.647396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122845, 37.355675, 42.545029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436159, -0.001305, -0.899868,
		-0.730430, -0.584578, -0.353186,
		-0.525583, 0.811336, -0.255922,
		36.965168, 37.599075, 42.468250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168434, 36.830254, 42.008884>,  <37.333076, 37.031139, 42.647396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168434, 36.830254, 42.008884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089508, 37.222221, 42.020382>,  <37.042152, 37.457401, 42.027279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089508, 37.222221, 42.020382>,  <37.168434, 36.830254, 42.008884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089508, 37.222221, 42.020382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121599, 0.053555, -0.991133,
		-0.972769, -0.192073, -0.129724,
		-0.197318, 0.979918, 0.028740,
		37.030312, 37.516197, 42.029003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644135, 36.979549, 41.571873>,  <37.168434, 36.830254, 42.008884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644135, 36.979549, 41.571873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821732, 37.337784, 41.583237>,  <36.928288, 37.552723, 41.590057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821732, 37.337784, 41.583237>,  <36.644135, 36.979549, 41.571873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821732, 37.337784, 41.583237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346652, -0.142441, -0.927115,
		-0.826260, 0.421479, -0.373697,
		0.443989, 0.895581, 0.028413,
		36.954929, 37.606457, 41.591763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458885, 37.335571, 41.058491>,  <36.644135, 36.979549, 41.571873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458885, 37.335571, 41.058491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802441, 37.515614, 41.156231>,  <37.008575, 37.623638, 41.214874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802441, 37.515614, 41.156231>,  <36.458885, 37.335571, 41.058491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802441, 37.515614, 41.156231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243351, 0.061147, -0.968009,
		-0.450652, 0.890877, -0.057016,
		0.858890, 0.450110, 0.244352,
		37.060108, 37.650646, 41.229538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470951, 38.026985, 40.701908>,  <36.458885, 37.335571, 41.058491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470951, 38.026985, 40.701908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844551, 37.934052, 40.810478>,  <37.068710, 37.878292, 40.875618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844551, 37.934052, 40.810478>,  <36.470951, 38.026985, 40.701908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844551, 37.934052, 40.810478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313879, 0.170674, -0.933997,
		0.170674, 0.957544, 0.232334,
		0.933997, -0.232334, 0.271423,
		37.124752, 37.864353, 40.891907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817463, 38.409904, 40.305672>,  <36.470951, 38.026985, 40.701908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817463, 38.409904, 40.305672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083153, 38.130085, 40.411079>,  <37.242565, 37.962193, 40.474323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083153, 38.130085, 40.411079>,  <36.817463, 38.409904, 40.305672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083153, 38.130085, 40.411079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343638, -0.027320, -0.938705,
		0.663866, 0.714066, 0.222244,
		0.664226, -0.699545, 0.263517,
		37.282421, 37.920223, 40.490135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509468, 38.663418, 40.062119>,  <36.817463, 38.409904, 40.305672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509468, 38.663418, 40.062119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498482, 38.266411, 40.109707>,  <37.491890, 38.028206, 40.138260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498482, 38.266411, 40.109707>,  <37.509468, 38.663418, 40.062119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498482, 38.266411, 40.109707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442079, -0.118808, -0.889073,
		0.896556, 0.028178, 0.442034,
		-0.027465, -0.992517, 0.118974,
		37.490242, 37.968655, 40.145401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039204, 38.391239, 39.672897>,  <37.509468, 38.663418, 40.062119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039204, 38.391239, 39.672897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831451, 38.052959, 39.721951>,  <37.706802, 37.849991, 39.751381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831451, 38.052959, 39.721951>,  <38.039204, 38.391239, 39.672897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831451, 38.052959, 39.721951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229607, -0.276338, -0.933230,
		0.823120, -0.456543, 0.337702,
		-0.519379, -0.845699, 0.122634,
		37.675636, 37.799252, 39.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464199, 37.883717, 39.397900>,  <38.039204, 38.391239, 39.672897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464199, 37.883717, 39.397900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085518, 37.755699, 39.383324>,  <37.858311, 37.678890, 39.374577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085518, 37.755699, 39.383324>,  <38.464199, 37.883717, 39.397900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085518, 37.755699, 39.383324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102488, -0.192026, -0.976024,
		0.305371, -0.927739, 0.214592,
		-0.946702, -0.320043, -0.036443,
		37.801506, 37.659687, 39.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151646, 37.453060, 39.275105>,  <38.464199, 37.883717, 39.397900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151646, 37.453060, 39.275105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548714, 37.500153, 39.264202>,  <39.786957, 37.528408, 39.257660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548714, 37.500153, 39.264202>,  <39.151646, 37.453060, 39.275105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548714, 37.500153, 39.264202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107048, -0.961341, -0.253702,
		-0.056066, 0.248925, -0.966899,
		0.992672, 0.117729, -0.027251,
		39.846516, 37.535473, 39.256027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417122, 37.040695, 38.663116>,  <39.151646, 37.453060, 39.275105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417122, 37.040695, 38.663116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691528, 37.099346, 38.948177>,  <39.856171, 37.134537, 39.119217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691528, 37.099346, 38.948177>,  <39.417122, 37.040695, 38.663116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691528, 37.099346, 38.948177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320225, -0.940363, -0.114772,
		0.653327, 0.306946, -0.692060,
		0.686017, 0.146631, 0.712657,
		39.897335, 37.143337, 39.161976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499561, 36.813850, 39.390469>,  <39.417122, 37.040695, 38.663116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499561, 36.813850, 39.390469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614944, 36.433945, 39.341896>,  <39.684174, 36.206001, 39.312752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614944, 36.433945, 39.341896>,  <39.499561, 36.813850, 39.390469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614944, 36.433945, 39.341896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267582, -0.201728, 0.942182,
		-0.919345, -0.239283, -0.312328,
		0.288453, -0.949763, -0.121429,
		39.701481, 36.149017, 39.305466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902157, 36.298355, 39.454853>,  <39.499561, 36.813850, 39.390469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902157, 36.298355, 39.454853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262306, 36.172871, 39.575459>,  <39.478397, 36.097580, 39.647823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262306, 36.172871, 39.575459>,  <38.902157, 36.298355, 39.454853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262306, 36.172871, 39.575459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379274, -0.226228, 0.897202,
		-0.213234, -0.922181, -0.322666,
		0.900379, -0.313693, 0.301519,
		39.532417, 36.078758, 39.665913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802109, 35.631413, 39.690887>,  <38.902157, 36.298355, 39.454853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802109, 35.631413, 39.690887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133083, 35.791039, 39.848927>,  <39.331669, 35.886814, 39.943748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133083, 35.791039, 39.848927>,  <38.802109, 35.631413, 39.690887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133083, 35.791039, 39.848927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306608, -0.268400, 0.913210,
		0.470474, -0.876760, -0.099726,
		0.827433, 0.399065, 0.395097,
		39.381313, 35.910759, 39.967457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882702, 35.222523, 40.253357>,  <38.802109, 35.631413, 39.690887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882702, 35.222523, 40.253357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155090, 35.501186, 40.343643>,  <39.318523, 35.668385, 40.397816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155090, 35.501186, 40.343643>,  <38.882702, 35.222523, 40.253357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155090, 35.501186, 40.343643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156422, -0.162730, 0.974192,
		0.715412, -0.698700, -0.001841,
		0.680968, 0.696661, 0.225711,
		39.359383, 35.710186, 40.411358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333771, 34.896599, 40.784088>,  <38.882702, 35.222523, 40.253357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333771, 34.896599, 40.784088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341496, 35.295940, 40.805706>,  <39.346130, 35.535545, 40.818676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341496, 35.295940, 40.805706>,  <39.333771, 34.896599, 40.784088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341496, 35.295940, 40.805706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292553, -0.046050, 0.955140,
		0.956055, -0.034253, 0.291181,
		0.019307, 0.998352, 0.054047,
		39.347286, 35.595448, 40.821918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881294, 35.036228, 41.337708>,  <39.333771, 34.896599, 40.784088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881294, 35.036228, 41.337708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607521, 35.326283, 41.307411>,  <39.443256, 35.500313, 41.289234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607521, 35.326283, 41.307411>,  <39.881294, 35.036228, 41.337708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607521, 35.326283, 41.307411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302538, -0.187960, 0.934420,
		0.663345, 0.662459, 0.348026,
		-0.684430, 0.725134, -0.075737,
		39.402191, 35.543823, 41.284691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811668, 35.098587, 41.997101>,  <39.881294, 35.036228, 41.337708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811668, 35.098587, 41.997101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544754, 35.361786, 41.857525>,  <39.384605, 35.519707, 41.773777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544754, 35.361786, 41.857525>,  <39.811668, 35.098587, 41.997101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544754, 35.361786, 41.857525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438257, 0.031922, 0.898282,
		0.602208, 0.752341, 0.267072,
		-0.667290, 0.657999, -0.348943,
		39.344566, 35.559185, 41.752842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802116, 35.696194, 42.516216>,  <39.811668, 35.098587, 41.997101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802116, 35.696194, 42.516216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451534, 35.666046, 42.325996>,  <39.241184, 35.647957, 42.211864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451534, 35.666046, 42.325996>,  <39.802116, 35.696194, 42.516216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451534, 35.666046, 42.325996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462151, -0.145379, 0.874803,
		-0.135071, 0.986501, 0.092585,
		-0.876454, -0.075373, -0.475549,
		39.188599, 35.643433, 42.183331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444443, 36.124805, 42.903362>,  <39.802116, 35.696194, 42.516216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444443, 36.124805, 42.903362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192444, 35.890675, 42.699207>,  <39.041245, 35.750195, 42.576714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192444, 35.890675, 42.699207>,  <39.444443, 36.124805, 42.903362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192444, 35.890675, 42.699207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611911, -0.030543, 0.790337,
		-0.478194, 0.810222, -0.338926,
		-0.629997, -0.585327, -0.510389,
		39.003445, 35.715076, 42.546089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739223, 36.509918, 42.952011>,  <39.444443, 36.124805, 42.903362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739223, 36.509918, 42.952011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650379, 36.129784, 42.864807>,  <38.597073, 35.901703, 42.812485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650379, 36.129784, 42.864807>,  <38.739223, 36.509918, 42.952011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650379, 36.129784, 42.864807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710868, 0.004799, 0.703309,
		-0.667333, 0.311191, -0.676629,
		-0.222111, -0.950335, -0.218013,
		38.583748, 35.844685, 42.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959110, 36.479488, 42.893230>,  <38.739223, 36.509918, 42.952011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959110, 36.479488, 42.893230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101685, 36.117695, 42.986927>,  <38.187229, 35.900620, 43.043144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101685, 36.117695, 42.986927>,  <37.959110, 36.479488, 42.893230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101685, 36.117695, 42.986927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622198, -0.042755, 0.781692,
		-0.697010, -0.424366, -0.578005,
		0.356436, -0.904481, 0.234239,
		38.208614, 35.846352, 43.057198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374977, 36.072212, 42.916122>,  <37.959110, 36.479488, 42.893230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374977, 36.072212, 42.916122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659889, 35.903267, 43.140362>,  <37.830837, 35.801899, 43.274906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659889, 35.903267, 43.140362>,  <37.374977, 36.072212, 42.916122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659889, 35.903267, 43.140362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633255, -0.042211, 0.772792,
		-0.302737, -0.905443, -0.297530,
		0.712277, -0.422365, 0.560597,
		37.873573, 35.776558, 43.308540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917072, 35.677097, 43.359035>,  <37.374977, 36.072212, 42.916122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917072, 35.677097, 43.359035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281776, 35.618904, 43.512676>,  <37.500599, 35.583988, 43.604862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281776, 35.618904, 43.512676>,  <36.917072, 35.677097, 43.359035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281776, 35.618904, 43.512676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407915, -0.211458, 0.888195,
		-0.047991, -0.966500, -0.252141,
		0.911758, -0.145477, 0.384101,
		37.555305, 35.575260, 43.627907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816448, 35.069260, 43.711189>,  <36.917072, 35.677097, 43.359035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816448, 35.069260, 43.711189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111538, 35.293064, 43.862305>,  <37.288589, 35.427345, 43.952972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111538, 35.293064, 43.862305>,  <36.816448, 35.069260, 43.711189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111538, 35.293064, 43.862305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406970, -0.077920, 0.910112,
		0.538651, -0.825155, 0.170219,
		0.737719, 0.559507, 0.377785,
		37.332855, 35.460915, 43.975639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040646, 34.398140, 43.497833>,  <36.816448, 35.069260, 43.711189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040646, 34.398140, 43.497833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982288, 34.002918, 43.477943>,  <36.947273, 33.765785, 43.466011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982288, 34.002918, 43.477943>,  <37.040646, 34.398140, 43.497833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982288, 34.002918, 43.477943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124270, 0.031559, -0.991747,
		0.981464, -0.150871, 0.118181,
		-0.145897, -0.988050, -0.049722,
		36.938519, 33.706505, 43.463028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586792, 34.151661, 43.118130>,  <37.040646, 34.398140, 43.497833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586792, 34.151661, 43.118130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304817, 33.872299, 43.068649>,  <37.135632, 33.704681, 43.038960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304817, 33.872299, 43.068649>,  <37.586792, 34.151661, 43.118130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304817, 33.872299, 43.068649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096949, 0.077889, -0.992237,
		0.702616, -0.711454, 0.012803,
		-0.704933, -0.698403, -0.123701,
		37.093338, 33.662777, 43.031540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827492, 33.626186, 42.653446>,  <37.586792, 34.151661, 43.118130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827492, 33.626186, 42.653446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429207, 33.598064, 42.629391>,  <37.190235, 33.581192, 42.614960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429207, 33.598064, 42.629391>,  <37.827492, 33.626186, 42.653446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429207, 33.598064, 42.629391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065720, -0.080007, -0.994625,
		0.065118, -0.994312, 0.084285,
		-0.995711, -0.070307, -0.060137,
		37.130493, 33.576973, 42.611351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677574, 33.107815, 42.159000>,  <37.827492, 33.626186, 42.653446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677574, 33.107815, 42.159000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332340, 33.308788, 42.179565>,  <37.125198, 33.429375, 42.191906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332340, 33.308788, 42.179565>,  <37.677574, 33.107815, 42.159000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332340, 33.308788, 42.179565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056606, 0.004930, -0.998385,
		-0.501880, -0.864599, 0.024186,
		-0.863083, 0.502438, 0.051415,
		37.073414, 33.459518, 42.194988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173325, 32.852135, 41.652664>,  <37.677574, 33.107815, 42.159000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173325, 32.852135, 41.652664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032784, 33.214184, 41.748413>,  <36.948460, 33.431416, 41.805862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032784, 33.214184, 41.748413>,  <37.173325, 32.852135, 41.652664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032784, 33.214184, 41.748413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289589, 0.138074, -0.947140,
		-0.890333, -0.402097, 0.213602,
		-0.351350, 0.905126, 0.239375,
		36.927380, 33.485722, 41.820225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550522, 32.841564, 41.300770>,  <37.173325, 32.852135, 41.652664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550522, 32.841564, 41.300770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639416, 33.224236, 41.376003>,  <36.692753, 33.453838, 41.421143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639416, 33.224236, 41.376003>,  <36.550522, 32.841564, 41.300770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639416, 33.224236, 41.376003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292452, 0.249433, -0.923176,
		-0.930099, 0.150154, 0.335215,
		0.222233, 0.956680, 0.188085,
		36.706085, 33.511238, 41.432430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908524, 33.164589, 41.230217>,  <36.550522, 32.841564, 41.300770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908524, 33.164589, 41.230217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198021, 33.438477, 41.195927>,  <36.371719, 33.602810, 41.175354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198021, 33.438477, 41.195927>,  <35.908524, 33.164589, 41.230217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198021, 33.438477, 41.195927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410648, 0.327517, -0.850941,
		-0.554579, 0.651070, 0.518218,
		0.723748, 0.684719, -0.085726,
		36.415146, 33.643890, 41.170208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572914, 33.907261, 41.155209>,  <35.908524, 33.164589, 41.230217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572914, 33.907261, 41.155209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941681, 33.954739, 41.007706>,  <36.162941, 33.983227, 40.919205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941681, 33.954739, 41.007706>,  <35.572914, 33.907261, 41.155209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941681, 33.954739, 41.007706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387201, 0.311899, -0.867637,
		0.012032, 0.942672, 0.333503,
		0.921917, 0.118693, -0.368756,
		36.218258, 33.990345, 40.897079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524651, 34.540749, 40.772217>,  <35.572914, 33.907261, 41.155209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524651, 34.540749, 40.772217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848576, 34.351547, 40.633385>,  <36.042931, 34.238026, 40.550083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848576, 34.351547, 40.633385>,  <35.524651, 34.540749, 40.772217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848576, 34.351547, 40.633385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213984, 0.312716, -0.925429,
		0.546267, 0.823699, 0.152028,
		0.809817, -0.473000, -0.347085,
		36.091522, 34.209648, 40.529259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938065, 35.185383, 40.436131>,  <35.524651, 34.540749, 40.772217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938065, 35.185383, 40.436131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068977, 34.834007, 40.296856>,  <36.147526, 34.623180, 40.213291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068977, 34.834007, 40.296856>,  <35.938065, 35.185383, 40.436131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068977, 34.834007, 40.296856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040161, 0.355213, -0.933922,
		0.944072, 0.319641, 0.080977,
		0.327284, -0.878438, -0.348184,
		36.167164, 34.570477, 40.192402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438419, 35.348747, 40.012367>,  <35.938065, 35.185383, 40.436131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438419, 35.348747, 40.012367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325657, 34.984180, 39.892467>,  <36.257999, 34.765442, 39.820526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325657, 34.984180, 39.892467>,  <36.438419, 35.348747, 40.012367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325657, 34.984180, 39.892467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010684, 0.309423, -0.950864,
		0.959383, -0.271256, -0.077490,
		-0.281905, -0.911415, -0.299753,
		36.241085, 34.710754, 39.802540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933685, 35.179089, 39.524868>,  <36.438419, 35.348747, 40.012367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933685, 35.179089, 39.524868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610905, 34.950584, 39.464886>,  <36.417236, 34.813484, 39.428894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610905, 34.950584, 39.464886>,  <36.933685, 35.179089, 39.524868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610905, 34.950584, 39.464886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114460, 0.097828, -0.988599,
		0.579415, -0.814919, -0.013557,
		-0.806955, -0.571258, -0.149959,
		36.368816, 34.779205, 39.419899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.883869, 33.234940, 47.126625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611156, 32.961609, 47.022137>,  <36.447529, 32.797611, 46.959442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611156, 32.961609, 47.022137>,  <36.883869, 33.234940, 47.126625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611156, 32.961609, 47.022137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416802, -0.069377, -0.906346,
		0.601207, -0.726809, 0.332112,
		-0.681781, -0.683327, -0.261225,
		36.406624, 32.756611, 46.943768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297062, 32.738338, 46.786343>,  <36.883869, 33.234940, 47.126625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297062, 32.738338, 46.786343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914883, 32.726784, 46.668850>,  <36.685574, 32.719852, 46.598354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914883, 32.726784, 46.668850>,  <37.297062, 32.738338, 46.786343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914883, 32.726784, 46.668850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294343, -0.019638, -0.955498,
		0.021836, -0.999390, 0.027267,
		-0.955450, -0.028890, -0.293734,
		36.628246, 32.718121, 46.580730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228374, 32.191010, 46.258385>,  <37.297062, 32.738338, 46.786343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228374, 32.191010, 46.258385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917496, 32.439793, 46.220150>,  <36.730968, 32.589062, 46.197208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917496, 32.439793, 46.220150>,  <37.228374, 32.191010, 46.258385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917496, 32.439793, 46.220150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104144, -0.022669, -0.994304,
		-0.620578, -0.782725, -0.047154,
		-0.777198, 0.621954, -0.095585,
		36.684338, 32.626377, 46.191475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923317, 32.003353, 45.576908>,  <37.228374, 32.191010, 46.258385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923317, 32.003353, 45.576908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732121, 32.347408, 45.648106>,  <36.617401, 32.553841, 45.690823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732121, 32.347408, 45.648106>,  <36.923317, 32.003353, 45.576908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732121, 32.347408, 45.648106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121435, 0.135981, -0.983241,
		-0.869929, -0.491596, 0.039453,
		-0.477992, 0.860141, 0.177991,
		36.588722, 32.605450, 45.701504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172771, 32.035892, 45.253441>,  <36.923317, 32.003353, 45.576908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172771, 32.035892, 45.253441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316452, 32.405090, 45.308647>,  <36.402660, 32.626610, 45.341770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316452, 32.405090, 45.308647>,  <36.172771, 32.035892, 45.253441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316452, 32.405090, 45.308647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060916, 0.170755, -0.983429,
		-0.931269, 0.344845, 0.117561,
		0.359205, 0.922998, 0.138013,
		36.424213, 32.681988, 45.350052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806416, 32.451134, 44.672554>,  <36.172771, 32.035892, 45.253441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806416, 32.451134, 44.672554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.126354, 32.648762, 44.808872>,  <36.318317, 32.767338, 44.890663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.126354, 32.648762, 44.808872>,  <35.806416, 32.451134, 44.672554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126354, 32.648762, 44.808872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167300, 0.361773, -0.917132,
		-0.576422, 0.790577, 0.206703,
		0.799843, 0.494074, 0.340798,
		36.366306, 32.796986, 44.911110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781353, 32.986465, 44.283672>,  <35.806416, 32.451134, 44.672554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781353, 32.986465, 44.283672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152084, 33.041168, 44.423550>,  <36.374523, 33.073990, 44.507477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152084, 33.041168, 44.423550>,  <35.781353, 32.986465, 44.283672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152084, 33.041168, 44.423550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237391, 0.508147, -0.827908,
		-0.290922, 0.850343, 0.438499,
		0.926828, 0.136761, 0.349695,
		36.430134, 33.082195, 44.528458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917580, 33.677265, 44.240952>,  <35.781353, 32.986465, 44.283672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917580, 33.677265, 44.240952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271244, 33.491169, 44.223953>,  <36.483444, 33.379509, 44.213757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271244, 33.491169, 44.223953>,  <35.917580, 33.677265, 44.240952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271244, 33.491169, 44.223953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183565, 0.429606, -0.884162,
		0.429606, 0.773942, 0.465244,
		0.884162, -0.465244, -0.042493,
		36.536491, 33.351597, 44.211205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393940, 34.225151, 44.100616>,  <35.917580, 33.677265, 44.240952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393940, 34.225151, 44.100616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535034, 33.868778, 43.986198>,  <36.619690, 33.654957, 43.917545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535034, 33.868778, 43.986198>,  <36.393940, 34.225151, 44.100616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535034, 33.868778, 43.986198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159227, 0.358390, -0.919893,
		0.922076, 0.278932, 0.268277,
		0.352736, -0.890928, -0.286049,
		36.640854, 33.601501, 43.900383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097134, 34.623699, 44.272408>,  <36.393940, 34.225151, 44.100616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097134, 34.623699, 44.272408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238789, 34.991379, 44.341301>,  <37.323784, 35.211987, 44.382637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238789, 34.991379, 44.341301>,  <37.097134, 34.623699, 44.272408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238789, 34.991379, 44.341301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393143, -0.020780, 0.919243,
		0.848542, -0.393255, 0.354016,
		0.354140, 0.919195, 0.172238,
		37.345032, 35.267136, 44.392971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461864, 34.681400, 44.989883>,  <37.097134, 34.623699, 44.272408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461864, 34.681400, 44.989883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346001, 35.056129, 44.911438>,  <37.276482, 35.280968, 44.864372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346001, 35.056129, 44.911438>,  <37.461864, 34.681400, 44.989883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346001, 35.056129, 44.911438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392782, 0.070499, 0.916926,
		0.872822, 0.342629, 0.347545,
		-0.289664, 0.936822, -0.196111,
		37.259102, 35.337177, 44.852604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628330, 35.107887, 45.624393>,  <37.461864, 34.681400, 44.989883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628330, 35.107887, 45.624393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359276, 35.328247, 45.426781>,  <37.197842, 35.460461, 45.308212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359276, 35.328247, 45.426781>,  <37.628330, 35.107887, 45.624393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359276, 35.328247, 45.426781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293458, 0.414299, 0.861533,
		0.679293, 0.724479, -0.117009,
		-0.672639, 0.550896, -0.494034,
		37.157482, 35.493515, 45.278572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659100, 35.761959, 45.978168>,  <37.628330, 35.107887, 45.624393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659100, 35.761959, 45.978168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316650, 35.783680, 45.772602>,  <37.111183, 35.796715, 45.649261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316650, 35.783680, 45.772602>,  <37.659100, 35.761959, 45.978168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316650, 35.783680, 45.772602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429970, 0.476818, 0.766662,
		0.286678, 0.877323, -0.384863,
		-0.856120, 0.054305, -0.513916,
		37.059814, 35.799973, 45.618427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384304, 36.520245, 46.071384>,  <37.659100, 35.761959, 45.978168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384304, 36.520245, 46.071384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087669, 36.264954, 45.988712>,  <36.909687, 36.111778, 45.939110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087669, 36.264954, 45.988712>,  <37.384304, 36.520245, 46.071384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087669, 36.264954, 45.988712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533151, 0.373708, 0.759008,
		-0.407179, 0.673063, -0.617407,
		-0.741590, -0.638223, -0.206678,
		36.865192, 36.073486, 45.926708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813782, 36.891678, 45.962524>,  <37.384304, 36.520245, 46.071384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813782, 36.891678, 45.962524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655041, 36.541943, 46.074268>,  <36.559795, 36.332104, 46.141315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655041, 36.541943, 46.074268>,  <36.813782, 36.891678, 45.962524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655041, 36.541943, 46.074268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495352, 0.460240, 0.736753,
		-0.772743, 0.154002, -0.615753,
		-0.396855, -0.874336, 0.279362,
		36.535984, 36.279640, 46.158077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186512, 37.103249, 46.173691>,  <36.813782, 36.891678, 45.962524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186512, 37.103249, 46.173691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.202648, 36.726074, 46.305897>,  <36.212330, 36.499767, 46.385220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.202648, 36.726074, 46.305897>,  <36.186512, 37.103249, 46.173691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202648, 36.726074, 46.305897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432966, 0.281620, 0.856289,
		-0.900507, -0.177647, -0.396899,
		0.040342, -0.942938, 0.330516,
		36.214752, 36.443192, 46.405052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654560, 37.090405, 46.622036>,  <36.186512, 37.103249, 46.173691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654560, 37.090405, 46.622036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854374, 36.758659, 46.722137>,  <35.974262, 36.559612, 46.782200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854374, 36.758659, 46.722137>,  <35.654560, 37.090405, 46.622036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854374, 36.758659, 46.722137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280691, 0.118340, 0.952475,
		-0.819559, -0.546040, -0.173679,
		0.499536, -0.829359, 0.250255,
		36.004234, 36.509853, 46.797215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150429, 36.605175, 46.954441>,  <35.654560, 37.090405, 46.622036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150429, 36.605175, 46.954441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505116, 36.465290, 47.075397>,  <35.717926, 36.381359, 47.147972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505116, 36.465290, 47.075397>,  <35.150429, 36.605175, 46.954441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505116, 36.465290, 47.075397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386261, -0.200976, 0.900228,
		-0.254051, -0.915045, -0.313290,
		0.886714, -0.349715, 0.302388,
		35.771130, 36.360374, 47.166115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921181, 36.077076, 47.365398>,  <35.150429, 36.605175, 46.954441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921181, 36.077076, 47.365398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.306767, 36.145241, 47.447105>,  <35.538120, 36.186142, 47.496132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.306767, 36.145241, 47.447105>,  <34.921181, 36.077076, 47.365398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306767, 36.145241, 47.447105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164949, -0.219541, 0.961558,
		0.208711, -0.960604, -0.183521,
		0.963966, 0.170416, 0.204272,
		35.595955, 36.196365, 47.508389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233337, 35.459232, 47.566654>,  <34.921181, 36.077076, 47.365398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233337, 35.459232, 47.566654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395641, 35.778915, 47.744030>,  <35.493023, 35.970726, 47.850456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395641, 35.778915, 47.744030>,  <35.233337, 35.459232, 47.566654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395641, 35.778915, 47.744030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547788, -0.175725, 0.817954,
		0.731634, -0.574800, 0.366492,
		0.405758, 0.799203, 0.443435,
		35.517368, 36.018677, 47.877060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419212, 35.246525, 48.274181>,  <35.233337, 35.459232, 47.566654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419212, 35.246525, 48.274181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422203, 35.646469, 48.280190>,  <35.423996, 35.886436, 48.283794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422203, 35.646469, 48.280190>,  <35.419212, 35.246525, 48.274181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422203, 35.646469, 48.280190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491523, -0.009409, 0.870814,
		0.870833, -0.013895, 0.491383,
		0.007477, 0.999859, 0.015023,
		35.424446, 35.946426, 48.284695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802109, 35.475243, 48.769527>,  <35.419212, 35.246525, 48.274181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802109, 35.475243, 48.769527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.555637, 35.780220, 48.690521>,  <35.407757, 35.963207, 48.643120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.555637, 35.780220, 48.690521>,  <35.802109, 35.475243, 48.769527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555637, 35.780220, 48.690521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310654, -0.004827, 0.950511,
		0.723756, 0.647038, 0.239830,
		-0.616174, 0.762443, -0.197511,
		35.370785, 36.008953, 48.631268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796780, 35.987198, 49.308907>,  <35.802109, 35.475243, 48.769527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796780, 35.987198, 49.308907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438038, 36.046352, 49.142159>,  <35.222794, 36.081844, 49.042110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438038, 36.046352, 49.142159>,  <35.796780, 35.987198, 49.308907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438038, 36.046352, 49.142159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412503, 0.060547, 0.908942,
		0.159663, 0.987149, 0.006703,
		-0.896855, 0.147889, -0.416869,
		35.168980, 36.090717, 49.017097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.706375, 34.700729, 45.326988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.038437, 34.478458, 45.308838>,  <28.237675, 34.345097, 45.297947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.038437, 34.478458, 45.308838>,  <27.706375, 34.700729, 45.326988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038437, 34.478458, 45.308838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206548, 0.382126, -0.900732,
		0.517861, 0.738375, 0.431999,
		0.830156, -0.555682, -0.045378,
		28.287483, 34.311752, 45.295223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235416, 35.106346, 45.144688>,  <27.706375, 34.700729, 45.326988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235416, 35.106346, 45.144688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.371141, 34.752625, 45.016396>,  <28.452578, 34.540390, 44.939423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.371141, 34.752625, 45.016396>,  <28.235416, 35.106346, 45.144688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371141, 34.752625, 45.016396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405328, 0.445126, -0.798481,
		0.848867, 0.140935, 0.509472,
		0.339314, -0.884307, -0.320728,
		28.472935, 34.487331, 44.920177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855095, 35.369785, 44.836952>,  <28.235416, 35.106346, 45.144688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855095, 35.369785, 44.836952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.781639, 34.996059, 44.714748>,  <28.737566, 34.771824, 44.641426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.781639, 34.996059, 44.714748>,  <28.855095, 35.369785, 44.836952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781639, 34.996059, 44.714748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564470, 0.154215, -0.810920,
		0.804767, -0.321367, 0.499072,
		-0.183639, -0.934313, -0.305510,
		28.726547, 34.715767, 44.623096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640989, 35.100986, 44.643311>,  <28.855095, 35.369785, 44.836952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640989, 35.100986, 44.643311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.362127, 34.874668, 44.467197>,  <29.194809, 34.738876, 44.361530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.362127, 34.874668, 44.467197>,  <29.640989, 35.100986, 44.643311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362127, 34.874668, 44.467197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591505, -0.106938, -0.799178,
		0.405085, -0.817584, 0.409221,
		-0.697157, -0.565792, -0.440286,
		29.152981, 34.704929, 44.335110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939419, 34.489220, 44.324684>,  <29.640989, 35.100986, 44.643311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939419, 34.489220, 44.324684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602354, 34.515224, 44.110882>,  <29.400114, 34.530827, 43.982601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602354, 34.515224, 44.110882>,  <29.939419, 34.489220, 44.324684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602354, 34.515224, 44.110882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527866, -0.096026, -0.843882,
		-0.106200, -0.993252, 0.046592,
		-0.842661, 0.065026, -0.534503,
		29.349556, 34.534729, 43.950531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939423, 34.008884, 43.732174>,  <29.939419, 34.489220, 44.324684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939423, 34.008884, 43.732174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.662390, 34.266087, 43.601410>,  <29.496170, 34.420410, 43.522953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.662390, 34.266087, 43.601410>,  <29.939423, 34.008884, 43.732174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662390, 34.266087, 43.601410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369396, -0.073104, -0.926392,
		-0.619575, -0.762363, -0.186894,
		-0.692585, 0.643007, -0.326908,
		29.454615, 34.458988, 43.503338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692627, 33.704895, 43.133949>,  <29.939423, 34.008884, 43.732174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692627, 33.704895, 43.133949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.606092, 34.095421, 43.134136>,  <29.554173, 34.329739, 43.134247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.606092, 34.095421, 43.134136>,  <29.692627, 33.704895, 43.133949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606092, 34.095421, 43.134136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450798, 0.100312, -0.886971,
		-0.866013, -0.191675, -0.461824,
		-0.216337, 0.976319, 0.000465,
		29.541191, 34.388317, 43.134277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336723, 33.750011, 42.533844>,  <29.692627, 33.704895, 43.133949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336723, 33.750011, 42.533844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.491131, 34.108643, 42.620689>,  <29.583775, 34.323822, 42.672798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.491131, 34.108643, 42.620689>,  <29.336723, 33.750011, 42.533844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491131, 34.108643, 42.620689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489354, 0.000494, -0.872085,
		-0.781999, 0.442888, -0.438553,
		0.386019, 0.896577, 0.217115,
		29.606937, 34.377617, 42.685825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387102, 34.087498, 41.848728>,  <29.336723, 33.750011, 42.533844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387102, 34.087498, 41.848728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.640821, 34.300877, 42.072552>,  <29.793053, 34.428905, 42.206844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.640821, 34.300877, 42.072552>,  <29.387102, 34.087498, 41.848728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640821, 34.300877, 42.072552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593397, 0.127982, -0.794670,
		-0.495527, 0.836095, -0.235367,
		0.634297, 0.533447, 0.559555,
		29.831110, 34.460911, 42.240417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466927, 34.734993, 41.575706>,  <29.387102, 34.087498, 41.848728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466927, 34.734993, 41.575706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.787632, 34.701195, 41.812363>,  <29.980055, 34.680916, 41.954357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.787632, 34.701195, 41.812363>,  <29.466927, 34.734993, 41.575706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787632, 34.701195, 41.812363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570855, 0.401318, -0.716288,
		-0.176912, 0.912033, 0.369997,
		0.801765, -0.084495, 0.591636,
		30.028162, 34.675846, 41.989853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795368, 35.339905, 41.505665>,  <29.466927, 34.734993, 41.575706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795368, 35.339905, 41.505665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.067686, 35.080372, 41.641624>,  <30.231077, 34.924652, 41.723202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.067686, 35.080372, 41.641624>,  <29.795368, 35.339905, 41.505665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067686, 35.080372, 41.641624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607211, 0.240403, -0.757299,
		0.409648, 0.721957, 0.557644,
		0.680796, -0.648834, 0.339899,
		30.271925, 34.885723, 41.743595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345819, 35.719357, 41.365707>,  <29.795368, 35.339905, 41.505665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345819, 35.719357, 41.365707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480993, 35.350765, 41.442310>,  <30.562098, 35.129612, 41.488274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480993, 35.350765, 41.442310>,  <30.345819, 35.719357, 41.365707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480993, 35.350765, 41.442310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664218, 0.089343, -0.742180,
		0.666793, 0.378014, 0.642255,
		0.337936, -0.921479, 0.191511,
		30.582375, 35.074322, 41.499763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097408, 35.733849, 41.286835>,  <30.345819, 35.719357, 41.365707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097408, 35.733849, 41.286835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.023987, 35.340771, 41.276840>,  <30.979935, 35.104923, 41.270844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.023987, 35.340771, 41.276840>,  <31.097408, 35.733849, 41.286835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023987, 35.340771, 41.276840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642155, -0.100624, -0.759942,
		0.744275, -0.155534, 0.649511,
		-0.183554, -0.982692, -0.024985,
		30.968920, 35.045963, 41.269344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780411, 35.386688, 41.333370>,  <31.097408, 35.733849, 41.286835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780411, 35.386688, 41.333370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513205, 35.154530, 41.147083>,  <31.352880, 35.015236, 41.035309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513205, 35.154530, 41.147083>,  <31.780411, 35.386688, 41.333370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513205, 35.154530, 41.147083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685996, -0.237767, -0.687660,
		0.288381, -0.778851, 0.556981,
		-0.668016, -0.580395, -0.465722,
		31.312799, 34.980412, 41.007366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392227, 35.007362, 41.560516>,  <31.780411, 35.386688, 41.333370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392227, 35.007362, 41.560516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541958, 35.378040, 41.547100>,  <32.631794, 35.600445, 41.539051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541958, 35.378040, 41.547100>,  <32.392227, 35.007362, 41.560516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541958, 35.378040, 41.547100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208114, 0.119201, 0.970814,
		0.903643, -0.356419, 0.237477,
		0.374324, 0.926691, -0.033539,
		32.654255, 35.656048, 41.537037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703709, 35.225636, 42.227921>,  <32.392227, 35.007362, 41.560516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703709, 35.225636, 42.227921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686646, 35.603554, 42.097969>,  <32.676407, 35.830303, 42.019997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686646, 35.603554, 42.097969>,  <32.703709, 35.225636, 42.227921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686646, 35.603554, 42.097969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310132, 0.296591, 0.903245,
		0.949736, 0.139288, 0.280358,
		-0.042660, 0.944793, -0.324880,
		32.673847, 35.886993, 42.000504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033062, 35.537132, 42.738548>,  <32.703709, 35.225636, 42.227921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033062, 35.537132, 42.738548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.816658, 35.804035, 42.533772>,  <32.686817, 35.964176, 42.410908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.816658, 35.804035, 42.533772>,  <33.033062, 35.537132, 42.738548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816658, 35.804035, 42.533772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184981, 0.499398, 0.846394,
		0.820420, 0.552607, -0.146751,
		-0.541011, 0.667253, -0.511938,
		32.654354, 36.004211, 42.380192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222641, 36.265579, 42.928310>,  <33.033062, 35.537132, 42.738548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222641, 36.265579, 42.928310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855968, 36.313889, 42.775944>,  <32.635963, 36.342876, 42.684525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855968, 36.313889, 42.775944>,  <33.222641, 36.265579, 42.928310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855968, 36.313889, 42.775944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298910, 0.425416, 0.854209,
		0.265218, 0.896902, -0.353872,
		-0.916686, 0.120776, -0.380921,
		32.580963, 36.350121, 42.661667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982876, 36.916096, 43.095284>,  <33.222641, 36.265579, 42.928310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982876, 36.916096, 43.095284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648811, 36.708054, 43.023743>,  <32.448372, 36.583229, 42.980820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.648811, 36.708054, 43.023743>,  <32.982876, 36.916096, 43.095284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648811, 36.708054, 43.023743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424989, 0.403848, 0.810118,
		-0.349118, 0.752593, -0.558319,
		-0.835165, -0.520107, -0.178853,
		32.398262, 36.552021, 42.970085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375751, 37.362228, 43.106228>,  <32.982876, 36.916096, 43.095284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375751, 37.362228, 43.106228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177750, 37.020596, 43.170116>,  <32.058949, 36.815617, 43.208450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177750, 37.020596, 43.170116>,  <32.375751, 37.362228, 43.106228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177750, 37.020596, 43.170116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345488, 0.362132, 0.865736,
		-0.797253, 0.373358, -0.474332,
		-0.495001, -0.854086, 0.159720,
		32.029251, 36.764370, 43.218033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776127, 37.562031, 43.491005>,  <32.375751, 37.362228, 43.106228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776127, 37.562031, 43.491005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805302, 37.166775, 43.545055>,  <31.822807, 36.929623, 43.577484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805302, 37.166775, 43.545055>,  <31.776127, 37.562031, 43.491005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805302, 37.166775, 43.545055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414457, 0.093202, 0.905284,
		-0.907142, -0.122032, -0.402744,
		0.072937, -0.988141, 0.135124,
		31.827183, 36.870331, 43.585594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103048, 37.294910, 43.637661>,  <31.776127, 37.562031, 43.491005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103048, 37.294910, 43.637661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340500, 36.997734, 43.761360>,  <31.482971, 36.819427, 43.835579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340500, 36.997734, 43.761360>,  <31.103048, 37.294910, 43.637661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340500, 36.997734, 43.761360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480050, -0.018498, 0.877046,
		-0.645876, -0.669097, -0.367632,
		0.593629, -0.742945, 0.309252,
		31.518589, 36.774849, 43.854137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622650, 36.797302, 43.962479>,  <31.103048, 37.294910, 43.637661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622650, 36.797302, 43.962479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987011, 36.748035, 44.120003>,  <31.205627, 36.718475, 44.214520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987011, 36.748035, 44.120003>,  <30.622650, 36.797302, 43.962479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987011, 36.748035, 44.120003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402975, -0.060327, 0.913221,
		-0.088717, -0.990551, -0.104583,
		0.910901, -0.123163, 0.393815,
		31.260281, 36.711086, 44.238148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524261, 36.210060, 44.429543>,  <30.622650, 36.797302, 43.962479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524261, 36.210060, 44.429543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.836670, 36.424591, 44.557518>,  <31.024115, 36.553310, 44.634304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.836670, 36.424591, 44.557518>,  <30.524261, 36.210060, 44.429543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836670, 36.424591, 44.557518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294461, -0.135521, 0.946006,
		0.550724, -0.833061, 0.052082,
		0.781022, 0.536325, 0.319939,
		31.070976, 36.585487, 44.653500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025972, 35.778095, 44.823269>,  <30.524261, 36.210060, 44.429543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025972, 35.778095, 44.823269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079906, 36.152351, 44.953743>,  <31.112267, 36.376904, 45.032028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079906, 36.152351, 44.953743>,  <31.025972, 35.778095, 44.823269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079906, 36.152351, 44.953743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082713, -0.317412, 0.944674,
		0.987409, -0.154357, 0.034591,
		0.134837, 0.935641, 0.326183,
		31.120358, 36.433044, 45.051598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593988, 35.751183, 45.333813>,  <31.025972, 35.778095, 44.823269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593988, 35.751183, 45.333813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391373, 36.087288, 45.411140>,  <31.269804, 36.288952, 45.457535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391373, 36.087288, 45.411140>,  <31.593988, 35.751183, 45.333813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391373, 36.087288, 45.411140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180005, -0.322328, 0.929356,
		0.843217, 0.435958, 0.314524,
		-0.506540, 0.840265, 0.193317,
		31.239410, 36.339367, 45.469135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820286, 35.978851, 46.010212>,  <31.593988, 35.751183, 45.333813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820286, 35.978851, 46.010212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456236, 36.135391, 45.955772>,  <31.237806, 36.229317, 45.923107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456236, 36.135391, 45.955772>,  <31.820286, 35.978851, 46.010212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456236, 36.135391, 45.955772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217390, -0.171378, 0.960922,
		0.352731, 0.904144, 0.241050,
		-0.910122, 0.391348, -0.136101,
		31.183199, 36.252796, 45.914944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649689, 36.294632, 46.603798>,  <31.820286, 35.978851, 46.010212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649689, 36.294632, 46.603798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299063, 36.258324, 46.414742>,  <31.088686, 36.236538, 46.301308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299063, 36.258324, 46.414742>,  <31.649689, 36.294632, 46.603798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299063, 36.258324, 46.414742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457018, -0.150876, 0.876567,
		-0.150876, 0.984377, 0.090770,
		-0.876567, -0.090770, -0.472642,
		31.036093, 36.231094, 46.272949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825117, 36.927811, 46.861038>,  <31.649689, 36.294632, 46.603798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825117, 36.927811, 46.861038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047031, 37.137856, 47.119175>,  <32.180180, 37.263882, 47.274055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047031, 37.137856, 47.119175>,  <31.825117, 36.927811, 46.861038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047031, 37.137856, 47.119175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724612, 0.076191, -0.684932,
		-0.408837, 0.847614, -0.338235,
		0.554788, 0.525114, 0.645341,
		32.213467, 37.295391, 47.312778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023964, 37.642174, 46.514416>,  <31.825117, 36.927811, 46.861038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023964, 37.642174, 46.514416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292648, 37.580070, 46.804161>,  <32.453857, 37.542809, 46.978008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292648, 37.580070, 46.804161>,  <32.023964, 37.642174, 46.514416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292648, 37.580070, 46.804161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739542, 0.197861, -0.643373,
		-0.043432, 0.967856, 0.247727,
		0.671708, -0.155262, 0.724363,
		32.494160, 37.533493, 47.021469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508263, 38.194794, 46.513470>,  <32.023964, 37.642174, 46.514416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508263, 38.194794, 46.513470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700684, 37.888771, 46.684711>,  <32.816135, 37.705158, 46.787457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700684, 37.888771, 46.684711>,  <32.508263, 38.194794, 46.513470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700684, 37.888771, 46.684711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782879, 0.155097, -0.602533,
		0.394575, 0.625004, 0.673558,
		0.481052, -0.765059, 0.428105,
		32.844997, 37.659252, 46.813145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232800, 38.451248, 46.657368>,  <32.508263, 38.194794, 46.513470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232800, 38.451248, 46.657368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237984, 38.051315, 46.662464>,  <33.241096, 37.811356, 46.665524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237984, 38.051315, 46.662464>,  <33.232800, 38.451248, 46.657368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237984, 38.051315, 46.662464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910641, 0.006541, -0.413147,
		0.412996, 0.016960, 0.910575,
		0.012963, -0.999835, 0.012743,
		33.241871, 37.751366, 46.666286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891159, 38.458805, 46.683502>,  <33.232800, 38.451248, 46.657368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891159, 38.458805, 46.683502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738785, 38.106285, 46.571651>,  <33.647362, 37.894772, 46.504539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.738785, 38.106285, 46.571651>,  <33.891159, 38.458805, 46.683502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738785, 38.106285, 46.571651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641398, -0.034050, -0.766452,
		0.665955, -0.471323, 0.578237,
		-0.380936, -0.881303, -0.279630,
		33.624504, 37.841896, 46.487762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344971, 38.081543, 46.727806>,  <33.891159, 38.458805, 46.683502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344971, 38.081543, 46.727806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119953, 37.884071, 46.462528>,  <33.984943, 37.765591, 46.303360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119953, 37.884071, 46.462528>,  <34.344971, 38.081543, 46.727806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119953, 37.884071, 46.462528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742696, 0.050679, -0.667708,
		0.363243, -0.868167, 0.338143,
		-0.562545, -0.493677, -0.663193,
		33.951191, 37.735970, 46.263569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796951, 37.608223, 46.438091>,  <34.344971, 38.081543, 46.727806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796951, 37.608223, 46.438091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505241, 37.597816, 46.164600>,  <34.330215, 37.591572, 46.000507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.505241, 37.597816, 46.164600>,  <34.796951, 37.608223, 46.438091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505241, 37.597816, 46.164600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684033, -0.050903, -0.727673,
		-0.015868, -0.998365, 0.054922,
		-0.729278, -0.026022, -0.683722,
		34.286457, 37.590012, 45.959484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008827, 37.186165, 45.917751>,  <34.796951, 37.608223, 46.438091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008827, 37.186165, 45.917751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729256, 37.385883, 45.712929>,  <34.561512, 37.505714, 45.590034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729256, 37.385883, 45.712929>,  <35.008827, 37.186165, 45.917751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729256, 37.385883, 45.712929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612576, 0.048406, -0.788928,
		-0.369125, -0.865076, -0.339692,
		-0.698926, 0.499300, -0.512056,
		34.519577, 37.535675, 45.559311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874107, 36.932289, 45.162231>,  <35.008827, 37.186165, 45.917751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874107, 36.932289, 45.162231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790493, 37.319435, 45.218136>,  <34.740322, 37.551723, 45.251678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790493, 37.319435, 45.218136>,  <34.874107, 36.932289, 45.162231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790493, 37.319435, 45.218136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477566, 0.225752, -0.849098,
		-0.853366, -0.110749, -0.509412,
		-0.209037, 0.967869, 0.139759,
		34.727783, 37.609795, 45.260063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597904, 37.094368, 44.523109>,  <34.874107, 36.932289, 45.162231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597904, 37.094368, 44.523109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728321, 37.429649, 44.697971>,  <34.806572, 37.630817, 44.802887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728321, 37.429649, 44.697971>,  <34.597904, 37.094368, 44.523109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728321, 37.429649, 44.697971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504377, 0.236870, -0.830359,
		-0.799562, 0.491223, -0.345543,
		0.326043, 0.838208, 0.437155,
		34.826134, 37.681110, 44.829117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538708, 37.614567, 44.034496>,  <34.597904, 37.094368, 44.523109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538708, 37.614567, 44.034496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808117, 37.769592, 44.286263>,  <34.969761, 37.862606, 44.437321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808117, 37.769592, 44.286263>,  <34.538708, 37.614567, 44.034496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808117, 37.769592, 44.286263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576480, 0.257548, -0.775461,
		-0.462642, 0.885136, -0.049956,
		0.673522, 0.387560, 0.629416,
		35.010174, 37.885860, 44.475086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619907, 38.231808, 43.792618>,  <34.538708, 37.614567, 44.034496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619907, 38.231808, 43.792618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944427, 38.093040, 43.980850>,  <35.139137, 38.009781, 44.093788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944427, 38.093040, 43.980850>,  <34.619907, 38.231808, 43.792618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944427, 38.093040, 43.980850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566331, 0.266509, -0.779899,
		0.145151, 0.899232, 0.412690,
		0.811296, -0.346922, 0.470579,
		35.187817, 37.988964, 44.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042450, 38.449387, 43.382576>,  <34.619907, 38.231808, 43.792618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042450, 38.449387, 43.382576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295067, 38.278477, 43.641373>,  <35.446636, 38.175930, 43.796650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295067, 38.278477, 43.641373>,  <35.042450, 38.449387, 43.382576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295067, 38.278477, 43.641373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718133, 0.007753, -0.695862,
		0.292310, 0.904088, 0.311737,
		0.631538, -0.427276, 0.646989,
		35.484528, 38.150295, 43.835468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606071, 38.883892, 43.531113>,  <35.042450, 38.449387, 43.382576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606071, 38.883892, 43.531113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706463, 38.499969, 43.581352>,  <35.766697, 38.269615, 43.611496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706463, 38.499969, 43.581352>,  <35.606071, 38.883892, 43.531113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706463, 38.499969, 43.581352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573999, 0.043090, -0.817722,
		0.779446, 0.277320, 0.561745,
		0.250976, -0.959811, 0.125595,
		35.781757, 38.212025, 43.619030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.081450, 30.338421, 28.625563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318924, 30.340746, 28.947433>,  <30.461409, 30.342140, 29.140556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318924, 30.340746, 28.947433>,  <30.081450, 30.338421, 28.625563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318924, 30.340746, 28.947433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791558, 0.184184, 0.582677,
		-0.144821, -0.982875, 0.113948,
		0.593686, 0.005813, 0.804675,
		30.497030, 30.342489, 29.188837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617668, 30.029625, 29.070843>,  <30.081450, 30.338421, 28.625563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617668, 30.029625, 29.070843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907049, 30.210590, 29.279434>,  <30.080679, 30.319170, 29.404589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.907049, 30.210590, 29.279434>,  <29.617668, 30.029625, 29.070843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907049, 30.210590, 29.279434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684729, 0.373827, 0.625619,
		0.088095, -0.809677, 0.580226,
		0.723453, 0.452412, 0.521477,
		30.124084, 30.346313, 29.435877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358746, 29.899363, 29.762409>,  <29.617668, 30.029625, 29.070843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358746, 29.899363, 29.762409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635555, 30.187794, 29.775982>,  <29.801641, 30.360851, 29.784124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635555, 30.187794, 29.775982>,  <29.358746, 29.899363, 29.762409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635555, 30.187794, 29.775982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551629, 0.497915, 0.669168,
		0.465626, -0.481798, 0.742336,
		0.692024, 0.721076, 0.033931,
		29.843163, 30.404118, 29.786161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512402, 30.069611, 30.481043>,  <29.358746, 29.899363, 29.762409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512402, 30.069611, 30.481043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649517, 30.404408, 30.310425>,  <29.731787, 30.605286, 30.208054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649517, 30.404408, 30.310425>,  <29.512402, 30.069611, 30.481043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649517, 30.404408, 30.310425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377474, 0.538508, 0.753341,
		0.860238, -0.097228, 0.500537,
		0.342789, 0.836992, -0.426545,
		29.752354, 30.655504, 30.182461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851011, 30.324236, 31.009830>,  <29.512402, 30.069611, 30.481043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851011, 30.324236, 31.009830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728392, 30.615444, 30.764549>,  <29.654819, 30.790169, 30.617380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728392, 30.615444, 30.764549>,  <29.851011, 30.324236, 31.009830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728392, 30.615444, 30.764549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438162, 0.463977, 0.769895,
		0.845011, 0.504691, 0.176759,
		-0.306547, 0.728019, -0.613202,
		29.636427, 30.833851, 30.580589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982498, 30.995741, 31.337954>,  <29.851011, 30.324236, 31.009830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982498, 30.995741, 31.337954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721226, 31.088503, 31.049627>,  <29.564463, 31.144159, 30.876631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721226, 31.088503, 31.049627>,  <29.982498, 30.995741, 31.337954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721226, 31.088503, 31.049627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477202, 0.613037, 0.629654,
		0.587905, 0.755253, -0.289760,
		-0.653181, 0.231903, -0.720816,
		29.525270, 31.158073, 30.833382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885805, 31.705605, 31.350267>,  <29.982498, 30.995741, 31.337954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885805, 31.705605, 31.350267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563541, 31.640005, 31.122578>,  <29.370184, 31.600645, 30.985964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563541, 31.640005, 31.122578>,  <29.885805, 31.705605, 31.350267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563541, 31.640005, 31.122578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506788, 0.688358, 0.518969,
		0.306721, 0.706589, -0.637695,
		-0.805660, -0.163997, -0.569225,
		29.321844, 31.590805, 30.951811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659773, 32.368263, 31.156786>,  <29.885805, 31.705605, 31.350267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659773, 32.368263, 31.156786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341610, 32.127125, 31.131802>,  <29.150713, 31.982441, 31.116812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.341610, 32.127125, 31.131802>,  <29.659773, 32.368263, 31.156786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341610, 32.127125, 31.131802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517129, 0.621314, 0.588682,
		-0.316080, 0.500541, -0.805948,
		-0.795406, -0.602850, -0.062459,
		29.102987, 31.946270, 31.113064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177683, 32.794201, 30.871780>,  <29.659773, 32.368263, 31.156786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177683, 32.794201, 30.871780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979507, 32.493324, 31.045561>,  <28.860601, 32.312798, 31.149830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979507, 32.493324, 31.045561>,  <29.177683, 32.794201, 30.871780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979507, 32.493324, 31.045561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644484, 0.653639, 0.396732,
		-0.582393, -0.083440, -0.808614,
		-0.495438, -0.752192, 0.434451,
		28.830875, 32.267666, 31.175896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517469, 33.050625, 30.797031>,  <29.177683, 32.794201, 30.871780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517469, 33.050625, 30.797031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522261, 32.763683, 31.075674>,  <28.525135, 32.591518, 31.242861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.522261, 32.763683, 31.075674>,  <28.517469, 33.050625, 30.797031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522261, 32.763683, 31.075674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636730, 0.531686, 0.558467,
		-0.770994, -0.450242, -0.450389,
		0.011980, -0.717351, 0.696609,
		28.525854, 32.548477, 31.284657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799276, 32.925243, 31.018295>,  <28.517469, 33.050625, 30.797031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799276, 32.925243, 31.018295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026775, 32.792606, 31.319380>,  <28.163275, 32.713024, 31.500031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026775, 32.792606, 31.319380>,  <27.799276, 32.925243, 31.018295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026775, 32.792606, 31.319380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587552, 0.476625, 0.653920,
		-0.575595, -0.814172, 0.076253,
		0.568747, -0.331590, 0.752711,
		28.197399, 32.693130, 31.545193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388729, 32.490757, 31.589968>,  <27.799276, 32.925243, 31.018295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388729, 32.490757, 31.589968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719007, 32.627270, 31.769638>,  <27.917173, 32.709179, 31.877439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719007, 32.627270, 31.769638>,  <27.388729, 32.490757, 31.589968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719007, 32.627270, 31.769638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544264, 0.272559, 0.793403,
		0.148348, -0.899577, 0.410797,
		0.825693, 0.341282, 0.449174,
		27.966715, 32.729652, 31.904390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252411, 32.387230, 32.271656>,  <27.388729, 32.490757, 31.589968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252411, 32.387230, 32.271656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568277, 32.631752, 32.292549>,  <27.757797, 32.778465, 32.305084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568277, 32.631752, 32.292549>,  <27.252411, 32.387230, 32.271656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568277, 32.631752, 32.292549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449606, 0.518650, 0.727225,
		0.417470, -0.597749, 0.684409,
		0.789666, 0.611309, 0.052231,
		27.805178, 32.815144, 32.308220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304987, 32.553509, 32.991924>,  <27.252411, 32.387230, 32.271656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304987, 32.553509, 32.991924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485415, 32.839123, 32.777748>,  <27.593670, 33.010490, 32.649242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485415, 32.839123, 32.777748>,  <27.304987, 32.553509, 32.991924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485415, 32.839123, 32.777748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432441, 0.699665, 0.568738,
		0.780726, -0.024994, 0.624374,
		0.451068, 0.714033, -0.535438,
		27.620735, 33.053333, 32.617115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703676, 33.103409, 33.460503>,  <27.304987, 32.553509, 32.991924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703676, 33.103409, 33.460503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.642456, 33.269028, 33.101585>,  <27.605724, 33.368401, 32.886234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.642456, 33.269028, 33.101585>,  <27.703676, 33.103409, 33.460503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642456, 33.269028, 33.101585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309014, 0.842408, 0.441427,
		0.938661, 0.344839, -0.000987,
		-0.153052, 0.414046, -0.897296,
		27.596540, 33.393242, 32.832397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022530, 33.720760, 33.561398>,  <27.703676, 33.103409, 33.460503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022530, 33.720760, 33.561398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762220, 33.741367, 33.258389>,  <27.606035, 33.753731, 33.076584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762220, 33.741367, 33.258389>,  <28.022530, 33.720760, 33.561398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762220, 33.741367, 33.258389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480386, 0.744678, 0.463340,
		0.587980, 0.665433, -0.459868,
		-0.650775, 0.051520, -0.757520,
		27.566988, 33.756824, 33.031132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989767, 34.421856, 33.436565>,  <28.022530, 33.720760, 33.561398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989767, 34.421856, 33.436565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668524, 34.260300, 33.261341>,  <27.475779, 34.163368, 33.156208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668524, 34.260300, 33.261341>,  <27.989767, 34.421856, 33.436565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668524, 34.260300, 33.261341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558360, 0.766769, 0.316703,
		0.207975, 0.498939, -0.841312,
		-0.803107, -0.403889, -0.438056,
		27.427591, 34.139133, 33.129925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649931, 35.024658, 32.914349>,  <27.989767, 34.421856, 33.436565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649931, 35.024658, 32.914349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361450, 34.760418, 32.997761>,  <27.188362, 34.601875, 33.047806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361450, 34.760418, 32.997761>,  <27.649931, 35.024658, 32.914349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361450, 34.760418, 32.997761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661797, 0.745986, 0.074367,
		-0.204686, -0.084370, -0.975185,
		-0.721200, -0.660596, 0.208528,
		27.145090, 34.562241, 33.060318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067591, 35.584064, 32.737751>,  <27.649931, 35.024658, 32.914349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067591, 35.584064, 32.737751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366892, 35.751610, 32.943539>,  <28.546473, 35.852135, 33.067013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366892, 35.751610, 32.943539>,  <28.067591, 35.584064, 32.737751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366892, 35.751610, 32.943539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618569, -0.160204, -0.769225,
		-0.239777, 0.893808, -0.378966,
		0.748251, 0.418859, 0.514468,
		28.591368, 35.877266, 33.097878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252378, 36.139149, 32.334766>,  <28.067591, 35.584064, 32.737751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252378, 36.139149, 32.334766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.558138, 35.991222, 32.546021>,  <28.741594, 35.902466, 32.672775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.558138, 35.991222, 32.546021>,  <28.252378, 36.139149, 32.334766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558138, 35.991222, 32.546021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509959, -0.154428, -0.846223,
		0.394504, 0.916183, 0.070545,
		0.764401, -0.369813, 0.528138,
		28.787458, 35.880280, 32.704460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887060, 36.530209, 32.229256>,  <28.252378, 36.139149, 32.334766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887060, 36.530209, 32.229256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028362, 36.181812, 32.365837>,  <29.113144, 35.972775, 32.447784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028362, 36.181812, 32.365837>,  <28.887060, 36.530209, 32.229256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028362, 36.181812, 32.365837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587451, -0.077536, -0.805537,
		0.728088, 0.485146, 0.484274,
		0.353254, -0.870989, 0.341453,
		29.134338, 35.920517, 32.468273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611971, 36.610565, 32.055237>,  <28.887060, 36.530209, 32.229256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611971, 36.610565, 32.055237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506752, 36.226849, 32.096352>,  <29.443621, 35.996620, 32.121021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506752, 36.226849, 32.096352>,  <29.611971, 36.610565, 32.055237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506752, 36.226849, 32.096352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396025, -0.204507, -0.895177,
		0.879756, -0.194768, 0.433699,
		-0.263046, -0.959293, 0.102783,
		29.427837, 35.939060, 32.127186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262373, 36.114120, 31.986843>,  <29.611971, 36.610565, 32.055237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262373, 36.114120, 31.986843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945683, 35.883331, 31.906570>,  <29.755669, 35.744858, 31.858408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945683, 35.883331, 31.906570>,  <30.262373, 36.114120, 31.986843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945683, 35.883331, 31.906570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423466, -0.281602, -0.861032,
		0.440281, -0.766682, 0.467280,
		-0.791725, -0.576974, -0.200680,
		29.708164, 35.710239, 31.846367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458626, 35.724960, 31.498812>,  <30.262373, 36.114120, 31.986843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458626, 35.724960, 31.498812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074690, 35.613430, 31.486412>,  <29.844328, 35.546513, 31.478971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074690, 35.613430, 31.486412>,  <30.458626, 35.724960, 31.498812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074690, 35.613430, 31.486412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150200, -0.417412, -0.896218,
		0.236948, -0.864884, 0.442529,
		-0.959841, -0.278825, -0.031001,
		29.786737, 35.529781, 31.477112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396553, 34.917461, 31.487675>,  <30.458626, 35.724960, 31.498812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396553, 34.917461, 31.487675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087870, 35.101017, 31.311543>,  <29.902660, 35.211151, 31.205864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087870, 35.101017, 31.311543>,  <30.396553, 34.917461, 31.487675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087870, 35.101017, 31.311543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121620, -0.573103, -0.810408,
		-0.624243, -0.678949, 0.386456,
		-0.771706, 0.458891, -0.440329,
		29.856358, 35.238686, 31.179443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019249, 34.356468, 31.253263>,  <30.396553, 34.917461, 31.487675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019249, 34.356468, 31.253263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.872507, 34.649288, 31.023647>,  <29.784462, 34.824978, 30.885878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.872507, 34.649288, 31.023647>,  <30.019249, 34.356468, 31.253263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872507, 34.649288, 31.023647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233563, -0.524820, -0.818543,
		-0.900481, -0.434361, 0.021554,
		-0.366855, 0.732048, -0.574041,
		29.762451, 34.868904, 30.851435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635735, 34.001129, 30.806967>,  <30.019249, 34.356468, 31.253263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635735, 34.001129, 30.806967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690321, 34.348919, 30.617067>,  <29.723072, 34.557594, 30.503128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690321, 34.348919, 30.617067>,  <29.635735, 34.001129, 30.806967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690321, 34.348919, 30.617067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299555, -0.493014, -0.816825,
		-0.944269, -0.030745, -0.327736,
		0.136465, 0.869478, -0.474748,
		29.731260, 34.609764, 30.474644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301697, 33.841892, 30.313675>,  <29.635735, 34.001129, 30.806967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301697, 33.841892, 30.313675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548120, 34.139446, 30.210051>,  <29.695974, 34.317978, 30.147875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548120, 34.139446, 30.210051>,  <29.301697, 33.841892, 30.313675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548120, 34.139446, 30.210051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362668, -0.559815, -0.745036,
		-0.699245, 0.365032, -0.614661,
		0.616059, 0.743881, -0.259062,
		29.732939, 34.362610, 30.132332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267536, 33.927830, 29.674438>,  <29.301697, 33.841892, 30.313675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267536, 33.927830, 29.674438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629059, 34.090088, 29.728968>,  <29.845972, 34.187443, 29.761684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629059, 34.090088, 29.728968>,  <29.267536, 33.927830, 29.674438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629059, 34.090088, 29.728968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386203, -0.635938, -0.668154,
		-0.184344, 0.656530, -0.731427,
		0.903806, 0.405650, 0.136323,
		29.900200, 34.211784, 29.769865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536446, 34.084301, 29.017067>,  <29.267536, 33.927830, 29.674438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536446, 34.084301, 29.017067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.886871, 34.100388, 29.209272>,  <30.097126, 34.110039, 29.324596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.886871, 34.100388, 29.209272>,  <29.536446, 34.084301, 29.017067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886871, 34.100388, 29.209272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470076, -0.293249, -0.832487,
		0.107431, 0.955190, -0.275809,
		0.876063, 0.040216, 0.480516,
		30.149691, 34.112453, 29.353428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896250, 34.515224, 28.665306>,  <29.536446, 34.084301, 29.017067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896250, 34.515224, 28.665306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176102, 34.304035, 28.857874>,  <30.344013, 34.177322, 28.973413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176102, 34.304035, 28.857874>,  <29.896250, 34.515224, 28.665306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176102, 34.304035, 28.857874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367839, -0.311481, -0.876170,
		0.612548, 0.790078, -0.023711,
		0.699628, -0.527974, 0.481418,
		30.385990, 34.145641, 29.002300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558121, 34.708427, 28.339470>,  <29.896250, 34.515224, 28.665306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558121, 34.708427, 28.339470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652037, 34.365288, 28.522326>,  <30.708387, 34.159405, 28.632038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652037, 34.365288, 28.522326>,  <30.558121, 34.708427, 28.339470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652037, 34.365288, 28.522326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320443, -0.375689, -0.869583,
		0.917709, 0.350658, 0.186681,
		0.234792, -0.857844, 0.457139,
		30.722475, 34.107933, 28.659468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297377, 34.457470, 28.152760>,  <30.558121, 34.708427, 28.339470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297377, 34.457470, 28.152760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091839, 34.129211, 28.252758>,  <30.968515, 33.932255, 28.312757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091839, 34.129211, 28.252758>,  <31.297377, 34.457470, 28.152760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091839, 34.129211, 28.252758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314346, -0.451252, -0.835200,
		0.798217, -0.350578, 0.489841,
		-0.513844, -0.820650, 0.249994,
		30.937685, 33.883015, 28.327757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724905, 34.030830, 27.783979>,  <31.297377, 34.457470, 28.152760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724905, 34.030830, 27.783979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388187, 33.836266, 27.877605>,  <31.186157, 33.719528, 27.933781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388187, 33.836266, 27.877605>,  <31.724905, 34.030830, 27.783979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388187, 33.836266, 27.877605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090386, -0.554509, -0.827255,
		0.532176, -0.675223, 0.510748,
		-0.841796, -0.486409, 0.234065,
		31.135649, 33.690342, 27.947824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774734, 33.319756, 27.576324>,  <31.724905, 34.030830, 27.783979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774734, 33.319756, 27.576324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.376066, 33.339306, 27.602419>,  <31.136866, 33.351036, 27.618074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.376066, 33.339306, 27.602419>,  <31.774734, 33.319756, 27.576324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376066, 33.339306, 27.602419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080569, -0.712319, -0.697216,
		0.012388, -0.700152, 0.713887,
		-0.996672, 0.048879, 0.065235,
		31.077065, 33.353970, 27.621990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597855, 32.585941, 27.564762>,  <31.774734, 33.319756, 27.576324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597855, 32.585941, 27.564762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.284939, 32.815800, 27.468590>,  <31.097189, 32.953712, 27.410887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.284939, 32.815800, 27.468590>,  <31.597855, 32.585941, 27.564762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284939, 32.815800, 27.468590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191114, -0.588776, -0.785378,
		-0.592896, -0.568426, 0.570409,
		-0.782272, 0.574661, -0.240448,
		31.050251, 32.988194, 27.396460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049305, 32.174072, 27.376040>,  <31.597855, 32.585941, 27.564762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049305, 32.174072, 27.376040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.954065, 32.524689, 27.208714>,  <30.896921, 32.735058, 27.108318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.954065, 32.524689, 27.208714>,  <31.049305, 32.174072, 27.376040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954065, 32.524689, 27.208714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102749, -0.451018, -0.886581,
		-0.965791, -0.168112, 0.197450,
		-0.238099, 0.876539, -0.418316,
		30.882635, 32.787651, 27.083220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616888, 31.936548, 26.858498>,  <31.049305, 32.174072, 27.376040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616888, 31.936548, 26.858498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683933, 32.314816, 26.747057>,  <30.724161, 32.541775, 26.680193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683933, 32.314816, 26.747057>,  <30.616888, 31.936548, 26.858498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683933, 32.314816, 26.747057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092004, -0.266360, -0.959472,
		-0.981550, 0.186452, 0.042360,
		0.167613, 0.945668, -0.278600,
		30.734217, 32.598515, 26.663477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981203, 32.237202, 26.440075>,  <30.616888, 31.936548, 26.858498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981203, 32.237202, 26.440075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.333488, 32.410736, 26.364044>,  <30.544859, 32.514858, 26.318426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.333488, 32.410736, 26.364044>,  <29.981203, 32.237202, 26.440075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333488, 32.410736, 26.364044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038682, -0.465843, -0.884022,
		-0.472071, 0.771215, -0.427055,
		0.880712, 0.433840, -0.190078,
		30.597702, 32.540890, 26.307020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929064, 32.547363, 25.805483>,  <29.981203, 32.237202, 26.440075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929064, 32.547363, 25.805483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.324427, 32.502613, 25.846537>,  <30.561644, 32.475761, 25.871170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.324427, 32.502613, 25.846537>,  <29.929064, 32.547363, 25.805483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324427, 32.502613, 25.846537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033292, -0.499858, -0.865467,
		0.148128, 0.858851, -0.490339,
		0.988408, -0.111876, 0.102636,
		30.620949, 32.469051, 25.877327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081882, 32.529121, 25.125521>,  <29.929064, 32.547363, 25.805483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081882, 32.529121, 25.125521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418631, 32.409729, 25.305370>,  <30.620680, 32.338093, 25.413280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418631, 32.409729, 25.305370>,  <30.081882, 32.529121, 25.125521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418631, 32.409729, 25.305370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279540, -0.471484, -0.836397,
		0.461636, 0.829828, -0.313493,
		0.841873, -0.298477, 0.449624,
		30.671192, 32.320187, 25.440258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610744, 32.546818, 24.601387>,  <30.081882, 32.529121, 25.125521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610744, 32.546818, 24.601387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730566, 32.287167, 24.881075>,  <30.802458, 32.131378, 25.048887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.730566, 32.287167, 24.881075>,  <30.610744, 32.546818, 24.601387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730566, 32.287167, 24.881075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102819, -0.706639, -0.700064,
		0.948524, 0.281599, -0.144933,
		0.299552, -0.649125, 0.699218,
		30.820431, 32.092430, 25.090839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.321003, 36.364384, 49.864059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050735, 36.283920, 49.580368>,  <34.888577, 36.235641, 49.410152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050735, 36.283920, 49.580368>,  <35.321003, 36.364384, 49.864059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050735, 36.283920, 49.580368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697358, -0.137604, 0.703389,
		-0.239088, 0.969845, -0.047307,
		-0.675669, -0.201161, -0.709229,
		34.848034, 36.223572, 49.367599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727093, 36.864433, 49.963665>,  <35.321003, 36.364384, 49.864059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727093, 36.864433, 49.963665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614895, 36.528931, 49.776985>,  <34.547577, 36.327629, 49.664978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614895, 36.528931, 49.776985>,  <34.727093, 36.864433, 49.963665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614895, 36.528931, 49.776985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670520, -0.176684, 0.720545,
		-0.686821, 0.515041, -0.512845,
		-0.280499, -0.838758, -0.466696,
		34.530746, 36.277302, 49.636978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971371, 36.765255, 50.033520>,  <34.727093, 36.864433, 49.963665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971371, 36.765255, 50.033520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108498, 36.397461, 49.956551>,  <34.190773, 36.176785, 49.910370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108498, 36.397461, 49.956551>,  <33.971371, 36.765255, 50.033520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108498, 36.397461, 49.956551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674836, -0.383544, 0.630469,
		-0.653507, -0.086286, -0.751986,
		0.342820, -0.919483, -0.192420,
		34.211342, 36.121616, 49.898827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346291, 36.382702, 49.990131>,  <33.971371, 36.765255, 50.033520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346291, 36.382702, 49.990131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652725, 36.133392, 50.052917>,  <33.836586, 35.983807, 50.090591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652725, 36.133392, 50.052917>,  <33.346291, 36.382702, 49.990131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652725, 36.133392, 50.052917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517478, -0.453270, 0.725784,
		-0.381213, -0.637242, -0.669775,
		0.766089, -0.623273, 0.156967,
		33.882553, 35.946411, 50.100006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934063, 35.839054, 50.180706>,  <33.346291, 36.382702, 49.990131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934063, 35.839054, 50.180706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301029, 35.705662, 50.267548>,  <33.521210, 35.625626, 50.319653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301029, 35.705662, 50.267548>,  <32.934063, 35.839054, 50.180706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301029, 35.705662, 50.267548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355380, -0.441187, 0.824050,
		-0.179021, -0.833154, -0.523265,
		0.917418, -0.333480, 0.217105,
		33.576256, 35.605618, 50.332680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843796, 35.219635, 50.192894>,  <32.934063, 35.839054, 50.180706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843796, 35.219635, 50.192894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143990, 35.306297, 50.442638>,  <33.324108, 35.358295, 50.592487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143990, 35.306297, 50.442638>,  <32.843796, 35.219635, 50.192894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143990, 35.306297, 50.442638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506311, -0.418709, 0.753878,
		0.424756, -0.881899, -0.204543,
		0.750488, 0.216651, 0.624364,
		33.369137, 35.371292, 50.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948387, 34.608879, 50.518581>,  <32.843796, 35.219635, 50.192894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948387, 34.608879, 50.518581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137756, 34.869270, 50.755932>,  <33.251377, 35.025505, 50.898342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137756, 34.869270, 50.755932>,  <32.948387, 34.608879, 50.518581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137756, 34.869270, 50.755932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314472, -0.504342, 0.804206,
		0.822786, -0.567330, -0.034052,
		0.473424, 0.650981, 0.593375,
		33.279785, 35.064564, 50.933945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309887, 34.246319, 51.131935>,  <32.948387, 34.608879, 50.518581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309887, 34.246319, 51.131935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249252, 34.622826, 51.252621>,  <33.212872, 34.848732, 51.325031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249252, 34.622826, 51.252621>,  <33.309887, 34.246319, 51.131935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249252, 34.622826, 51.252621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365422, -0.336983, 0.867704,
		0.918416, 0.021283, 0.395044,
		-0.151591, 0.941270, 0.301713,
		33.203773, 34.905209, 51.343136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352432, 34.162708, 51.841267>,  <33.309887, 34.246319, 51.131935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352432, 34.162708, 51.841267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213631, 34.537830, 51.845551>,  <33.130348, 34.762901, 51.848122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213631, 34.537830, 51.845551>,  <33.352432, 34.162708, 51.841267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213631, 34.537830, 51.845551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656076, -0.250885, 0.711773,
		0.670188, 0.239965, 0.702328,
		-0.347004, 0.937803, 0.010705,
		33.109531, 34.819172, 51.848763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255341, 34.479622, 52.541710>,  <33.352432, 34.162708, 51.841267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255341, 34.479622, 52.541710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969921, 34.669994, 52.336052>,  <32.798672, 34.784218, 52.212658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969921, 34.669994, 52.336052>,  <33.255341, 34.479622, 52.541710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969921, 34.669994, 52.336052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635547, -0.130872, 0.760889,
		0.294842, 0.869693, 0.395858,
		-0.713546, 0.475928, -0.514144,
		32.755856, 34.812775, 52.181808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057194, 34.842270, 53.108353>,  <33.255341, 34.479622, 52.541710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057194, 34.842270, 53.108353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772545, 34.891468, 52.831669>,  <32.601757, 34.920986, 52.665657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772545, 34.891468, 52.831669>,  <33.057194, 34.842270, 53.108353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772545, 34.891468, 52.831669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692361, 0.044402, 0.720184,
		0.119294, 0.991413, 0.053561,
		-0.711622, 0.122997, -0.691713,
		32.559059, 34.928368, 52.624153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697426, 35.532959, 53.344212>,  <33.057194, 34.842270, 53.108353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697426, 35.532959, 53.344212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454887, 35.317867, 53.109882>,  <32.309364, 35.188812, 52.969284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454887, 35.317867, 53.109882>,  <32.697426, 35.532959, 53.344212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454887, 35.317867, 53.109882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755087, 0.158312, 0.636224,
		-0.249370, 0.828124, -0.502022,
		-0.606349, -0.537725, -0.585827,
		32.272984, 35.156551, 52.934135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104290, 35.948952, 53.287140>,  <32.697426, 35.532959, 53.344212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104290, 35.948952, 53.287140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008106, 35.563160, 53.243404>,  <31.950396, 35.331684, 53.217163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008106, 35.563160, 53.243404>,  <32.104290, 35.948952, 53.287140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008106, 35.563160, 53.243404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790519, 0.129222, 0.598649,
		-0.563257, 0.230383, -0.793514,
		-0.240458, -0.964482, -0.109337,
		31.935968, 35.273815, 53.210602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290274, 35.841805, 53.065750>,  <32.104290, 35.948952, 53.287140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290274, 35.841805, 53.065750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428808, 35.510387, 53.241734>,  <31.511929, 35.311535, 53.347324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428808, 35.510387, 53.241734>,  <31.290274, 35.841805, 53.065750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428808, 35.510387, 53.241734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879228, -0.123148, 0.460209,
		-0.327123, -0.546213, -0.771130,
		0.346335, -0.828544, 0.439961,
		31.532709, 35.261826, 53.373722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998314, 35.411266, 52.447811>,  <31.290274, 35.841805, 53.065750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998314, 35.411266, 52.447811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.722393, 35.694340, 52.508953>,  <30.556841, 35.864182, 52.545639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.722393, 35.694340, 52.508953>,  <30.998314, 35.411266, 52.447811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722393, 35.694340, 52.508953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161718, 0.356401, -0.920231,
		-0.705708, -0.610056, -0.360290,
		-0.689800, 0.707680, 0.152858,
		30.515453, 35.906643, 52.554810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653351, 35.433758, 51.866581>,  <30.998314, 35.411266, 52.447811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653351, 35.433758, 51.866581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597841, 35.791721, 52.036228>,  <30.564535, 36.006500, 52.138016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.597841, 35.791721, 52.036228>,  <30.653351, 35.433758, 51.866581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597841, 35.791721, 52.036228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163342, 0.443078, -0.881477,
		-0.976761, -0.053048, -0.207663,
		-0.138772, 0.894912, 0.424116,
		30.556210, 36.060196, 52.163464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223215, 35.823921, 51.370674>,  <30.653351, 35.433758, 51.866581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223215, 35.823921, 51.370674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345049, 36.114517, 51.617069>,  <30.418150, 36.288876, 51.764908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345049, 36.114517, 51.617069>,  <30.223215, 35.823921, 51.370674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345049, 36.114517, 51.617069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015716, 0.650465, -0.759374,
		-0.952356, 0.221612, 0.209539,
		0.304584, 0.726487, 0.615991,
		30.436424, 36.332462, 51.801865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788370, 36.307079, 51.200695>,  <30.223215, 35.823921, 51.370674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788370, 36.307079, 51.200695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082560, 36.503620, 51.387306>,  <30.259073, 36.621544, 51.499271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082560, 36.503620, 51.387306>,  <29.788370, 36.307079, 51.200695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082560, 36.503620, 51.387306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200594, 0.499778, -0.842605,
		-0.647179, 0.713297, 0.269011,
		0.735474, 0.491354, 0.466529,
		30.303202, 36.651028, 51.527264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813122, 36.979305, 51.024784>,  <29.788370, 36.307079, 51.200695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813122, 36.979305, 51.024784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.189842, 36.924782, 51.147701>,  <30.415874, 36.892067, 51.221451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.189842, 36.924782, 51.147701>,  <29.813122, 36.979305, 51.024784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189842, 36.924782, 51.147701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331693, 0.525486, -0.783482,
		-0.054683, 0.839812, 0.540117,
		0.941801, -0.136309, 0.307295,
		30.472383, 36.883888, 51.239891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140797, 37.654305, 50.947357>,  <29.813122, 36.979305, 51.024784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140797, 37.654305, 50.947357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428791, 37.376736, 50.943581>,  <30.601587, 37.210194, 50.941315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428791, 37.376736, 50.943581>,  <30.140797, 37.654305, 50.947357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428791, 37.376736, 50.943581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418938, 0.445438, -0.791250,
		0.553276, 0.565730, 0.611420,
		0.719984, -0.693927, -0.009445,
		30.644787, 37.168556, 50.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771061, 37.995945, 50.856819>,  <30.140797, 37.654305, 50.947357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771061, 37.995945, 50.856819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872210, 37.623852, 50.750450>,  <30.932899, 37.400597, 50.686626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872210, 37.623852, 50.750450>,  <30.771061, 37.995945, 50.856819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872210, 37.623852, 50.750450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481268, 0.359383, -0.799516,
		0.839307, 0.074193, 0.538571,
		0.252871, -0.930236, -0.265926,
		30.948071, 37.344780, 50.670673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459503, 38.010612, 50.631741>,  <30.771061, 37.995945, 50.856819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459503, 38.010612, 50.631741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308016, 37.680099, 50.464970>,  <31.217123, 37.481792, 50.364906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308016, 37.680099, 50.464970>,  <31.459503, 38.010612, 50.631741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308016, 37.680099, 50.464970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540088, 0.168514, -0.824566,
		0.751584, -0.537454, 0.382447,
		-0.378718, -0.826285, -0.416924,
		31.194401, 37.432213, 50.339893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949467, 37.555397, 50.450741>,  <31.459503, 38.010612, 50.631741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949467, 37.555397, 50.450741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659546, 37.445915, 50.197838>,  <31.485594, 37.380226, 50.046097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659546, 37.445915, 50.197838>,  <31.949467, 37.555397, 50.450741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659546, 37.445915, 50.197838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680663, -0.142520, -0.718600,
		0.106576, -0.951196, 0.289601,
		-0.724803, -0.273706, -0.632255,
		31.442104, 37.363804, 50.008160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329914, 37.101883, 49.983921>,  <31.949467, 37.555397, 50.450741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329914, 37.101883, 49.983921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.994812, 37.192345, 49.785118>,  <31.793749, 37.246620, 49.665836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.994812, 37.192345, 49.785118>,  <32.329914, 37.101883, 49.983921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994812, 37.192345, 49.785118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462707, -0.189272, -0.866071,
		-0.289934, -0.955527, 0.053921,
		-0.837759, 0.226153, -0.497005,
		31.743484, 37.260189, 49.636017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454201, 36.870438, 49.341396>,  <32.329914, 37.101883, 49.983921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454201, 36.870438, 49.341396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128822, 37.083660, 49.248318>,  <31.933594, 37.211594, 49.192471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128822, 37.083660, 49.248318>,  <32.454201, 36.870438, 49.341396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128822, 37.083660, 49.248318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226984, -0.077420, -0.970816,
		-0.535515, -0.842530, -0.058018,
		-0.813451, 0.533056, -0.232701,
		31.884787, 37.243576, 49.178509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188389, 36.497337, 48.830963>,  <32.454201, 36.870438, 49.341396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188389, 36.497337, 48.830963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026463, 36.860958, 48.791481>,  <31.929308, 37.079132, 48.767792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026463, 36.860958, 48.791481>,  <32.188389, 36.497337, 48.830963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026463, 36.860958, 48.791481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267264, 0.014400, -0.963516,
		-0.874469, -0.416424, -0.248787,
		-0.404814, 0.909056, -0.098702,
		31.905018, 37.133675, 48.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852598, 36.513023, 48.202332>,  <32.188389, 36.497337, 48.830963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852598, 36.513023, 48.202332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.923063, 36.901314, 48.267647>,  <31.965342, 37.134289, 48.306835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.923063, 36.901314, 48.267647>,  <31.852598, 36.513023, 48.202332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923063, 36.901314, 48.267647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355179, 0.092021, -0.930258,
		-0.918049, 0.221872, -0.328570,
		0.176163, 0.970724, 0.163284,
		31.975912, 37.192532, 48.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625540, 36.664650, 47.517784>,  <31.852598, 36.513023, 48.202332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625540, 36.664650, 47.517784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828308, 36.985046, 47.645180>,  <31.949970, 37.177284, 47.721619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.828308, 36.985046, 47.645180>,  <31.625540, 36.664650, 47.517784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828308, 36.985046, 47.645180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487696, 0.038149, -0.872180,
		-0.710762, 0.597453, -0.371304,
		0.506922, 0.800996, 0.318490,
		31.980385, 37.225346, 47.740726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117535, 36.720112, 47.036354>,  <31.625540, 36.664650, 47.517784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117535, 36.720112, 47.036354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905832, 36.446941, 46.834961>,  <30.778811, 36.283039, 46.714123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905832, 36.446941, 46.834961>,  <31.117535, 36.720112, 47.036354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905832, 36.446941, 46.834961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519276, -0.208573, 0.828764,
		-0.670999, 0.700077, -0.244239,
		-0.529257, -0.682927, -0.503485,
		30.747055, 36.242062, 46.683914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366034, 36.667988, 47.346256>,  <31.117535, 36.720112, 47.036354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366034, 36.667988, 47.346256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369699, 36.338676, 47.119228>,  <30.371899, 36.141090, 46.983013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369699, 36.338676, 47.119228>,  <30.366034, 36.667988, 47.346256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369699, 36.338676, 47.119228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759731, -0.374782, 0.531363,
		-0.650172, 0.426328, -0.628904,
		0.009167, -0.823276, -0.567568,
		30.372450, 36.091694, 46.948959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608875, 36.534679, 47.147434>,  <30.366034, 36.667988, 47.346256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608875, 36.534679, 47.147434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818573, 36.194065, 47.144661>,  <29.944391, 35.989697, 47.142998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818573, 36.194065, 47.144661>,  <29.608875, 36.534679, 47.147434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818573, 36.194065, 47.144661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656865, -0.409547, 0.633088,
		-0.541937, -0.327342, -0.774049,
		0.524245, -0.851539, -0.006929,
		29.975847, 35.938602, 47.142582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111788, 35.999855, 47.158253>,  <29.608875, 36.534679, 47.147434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111788, 35.999855, 47.158253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455656, 35.818752, 47.252892>,  <29.661978, 35.710091, 47.309677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.455656, 35.818752, 47.252892>,  <29.111788, 35.999855, 47.158253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455656, 35.818752, 47.252892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492569, -0.611858, 0.618874,
		-0.135433, -0.648569, -0.749010,
		0.859670, -0.452756, 0.236600,
		29.713556, 35.682926, 47.323872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956051, 35.320881, 47.200886>,  <29.111788, 35.999855, 47.158253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956051, 35.320881, 47.200886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303511, 35.322521, 47.399048>,  <29.511988, 35.323505, 47.517944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303511, 35.322521, 47.399048>,  <28.956051, 35.320881, 47.200886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303511, 35.322521, 47.399048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402367, -0.577563, 0.710297,
		0.289044, -0.816336, -0.500049,
		0.868651, 0.004104, 0.495408,
		29.564106, 35.323753, 47.547668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938519, 34.634251, 47.507309>,  <28.956051, 35.320881, 47.200886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938519, 34.634251, 47.507309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.191977, 34.875393, 47.701241>,  <29.344051, 35.020081, 47.817600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.191977, 34.875393, 47.701241>,  <28.938519, 34.634251, 47.507309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191977, 34.875393, 47.701241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253783, -0.430033, 0.866410,
		0.730815, -0.672035, -0.119492,
		0.633643, 0.602860, 0.484826,
		29.382069, 35.056252, 47.846687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293276, 34.158459, 48.002930>,  <28.938519, 34.634251, 47.507309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293276, 34.158459, 48.002930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.304489, 34.531963, 48.145649>,  <29.311216, 34.756065, 48.231281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.304489, 34.531963, 48.145649>,  <29.293276, 34.158459, 48.002930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304489, 34.531963, 48.145649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530699, -0.288574, 0.796921,
		0.847096, -0.211691, 0.487457,
		0.028034, 0.933762, 0.356795,
		29.312899, 34.812092, 48.252689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420763, 33.429676, 48.047367>,  <29.293276, 34.158459, 48.002930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420763, 33.429676, 48.047367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.088388, 33.242912, 47.926342>,  <28.888964, 33.130856, 47.853729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.088388, 33.242912, 47.926342>,  <29.420763, 33.429676, 48.047367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088388, 33.242912, 47.926342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162841, 0.315903, -0.934713,
		0.532007, -0.825954, -0.186462,
		-0.830935, -0.466910, -0.302561,
		28.839108, 33.102840, 47.835575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582441, 33.060745, 47.403469>,  <29.420763, 33.429676, 48.047367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582441, 33.060745, 47.403469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.188513, 33.128807, 47.417152>,  <28.952156, 33.169643, 47.425362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.188513, 33.128807, 47.417152>,  <29.582441, 33.060745, 47.403469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188513, 33.128807, 47.417152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027318, 0.346623, -0.937606,
		-0.171401, -0.922441, -0.346011,
		-0.984822, 0.170159, 0.034212,
		28.893066, 33.179855, 47.427418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384150, 32.647762, 46.789841>,  <29.582441, 33.060745, 47.403469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384150, 32.647762, 46.789841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.064072, 32.873692, 46.870495>,  <28.872025, 33.009251, 46.918888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.064072, 32.873692, 46.870495>,  <29.384150, 32.647762, 46.789841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064072, 32.873692, 46.870495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075273, 0.238967, -0.968106,
		-0.594998, -0.789851, -0.148704,
		-0.800195, 0.564827, 0.201640,
		28.824013, 33.043140, 46.930988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808321, 32.524265, 46.283810>,  <29.384150, 32.647762, 46.789841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808321, 32.524265, 46.283810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.702236, 32.878712, 46.435837>,  <28.638586, 33.091381, 46.527054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.702236, 32.878712, 46.435837>,  <28.808321, 32.524265, 46.283810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702236, 32.878712, 46.435837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188550, 0.338913, -0.921730,
		-0.945575, -0.316115, 0.077195,
		-0.265210, 0.886120, 0.380072,
		28.622673, 33.144547, 46.549858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070023, 32.703449, 45.950706>,  <28.808321, 32.524265, 46.283810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070023, 32.703449, 45.950706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.241240, 33.033607, 46.097946>,  <28.343969, 33.231705, 46.186291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.241240, 33.033607, 46.097946>,  <28.070023, 32.703449, 45.950706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241240, 33.033607, 46.097946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062874, 0.433503, -0.898956,
		-0.901568, 0.361649, 0.237454,
		0.428044, 0.825400, 0.368094,
		28.369652, 33.281227, 46.208374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692501, 33.271954, 45.618675>,  <28.070023, 32.703449, 45.950706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692501, 33.271954, 45.618675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.993561, 33.480007, 45.780159>,  <28.174196, 33.604839, 45.877048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.993561, 33.480007, 45.780159>,  <27.692501, 33.271954, 45.618675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993561, 33.480007, 45.780159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068082, 0.548377, -0.833455,
		-0.654891, 0.654785, 0.377324,
		0.752650, 0.520133, 0.403707,
		28.219357, 33.636047, 45.901272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519499, 34.016281, 45.493340>,  <27.692501, 33.271954, 45.618675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519499, 34.016281, 45.493340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.914263, 33.985661, 45.550121>,  <28.151121, 33.967289, 45.584190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.914263, 33.985661, 45.550121>,  <27.519499, 34.016281, 45.493340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914263, 33.985661, 45.550121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157612, 0.644491, -0.748191,
		-0.034211, 0.760770, 0.648120,
		0.986908, -0.076555, 0.141955,
		28.210335, 33.962692, 45.592709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.644630, 33.047234, 51.206913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.320601, 32.898838, 51.388523>,  <30.126183, 32.809799, 51.497490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.320601, 32.898838, 51.388523>,  <30.644630, 33.047234, 51.206913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320601, 32.898838, 51.388523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544001, 0.186697, -0.818051,
		0.218724, -0.909676, -0.353058,
		-0.810076, -0.370991, 0.454029,
		30.077578, 32.787540, 51.524731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208702, 32.556057, 51.460003>,  <30.644630, 33.047234, 51.206913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208702, 32.556057, 51.460003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561560, 32.700039, 51.581493>,  <31.773275, 32.786430, 51.654388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561560, 32.700039, 51.581493>,  <31.208702, 32.556057, 51.460003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561560, 32.700039, 51.581493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244371, 0.201459, -0.948524,
		-0.402618, 0.910957, 0.089753,
		0.882146, 0.359960, 0.303722,
		31.826204, 32.808025, 51.672611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616545, 32.790283, 50.866428>,  <31.208702, 32.556057, 51.460003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616545, 32.790283, 50.866428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.931183, 32.877098, 51.097656>,  <32.119965, 32.929188, 51.236393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.931183, 32.877098, 51.097656>,  <31.616545, 32.790283, 50.866428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931183, 32.877098, 51.097656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601884, -0.060503, -0.796288,
		-0.137847, 0.974287, -0.178220,
		0.786596, 0.217034, 0.578068,
		32.167160, 32.942207, 51.271076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961529, 33.167782, 50.401409>,  <31.616545, 32.790283, 50.866428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961529, 33.167782, 50.401409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.225060, 33.057587, 50.681423>,  <32.383179, 32.991470, 50.849434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.225060, 33.057587, 50.681423>,  <31.961529, 33.167782, 50.401409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225060, 33.057587, 50.681423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674503, -0.195778, -0.711840,
		0.333154, 0.941158, 0.056832,
		0.658828, -0.275485, 0.700038,
		32.422707, 32.974941, 50.891434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674805, 33.581882, 50.226219>,  <31.961529, 33.167782, 50.401409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674805, 33.581882, 50.226219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747898, 33.262802, 50.456100>,  <32.791752, 33.071354, 50.594028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747898, 33.262802, 50.456100>,  <32.674805, 33.581882, 50.226219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747898, 33.262802, 50.456100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764105, -0.252609, -0.593576,
		0.618670, 0.547600, 0.563366,
		0.182731, -0.797698, 0.574706,
		32.802719, 33.023491, 50.628513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359196, 33.634605, 50.236927>,  <32.674805, 33.581882, 50.226219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359196, 33.634605, 50.236927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286808, 33.264626, 50.370621>,  <33.243374, 33.042637, 50.450836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286808, 33.264626, 50.370621>,  <33.359196, 33.634605, 50.236927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286808, 33.264626, 50.370621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730922, -0.353876, -0.583545,
		0.658029, 0.138695, 0.740109,
		-0.180972, -0.924952, 0.334236,
		33.232517, 32.987141, 50.470890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989822, 33.426815, 50.395348>,  <33.359196, 33.634605, 50.236927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989822, 33.426815, 50.395348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.781223, 33.088799, 50.348122>,  <33.656063, 32.885986, 50.319786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.781223, 33.088799, 50.348122>,  <33.989822, 33.426815, 50.395348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781223, 33.088799, 50.348122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670420, -0.320216, -0.669327,
		0.527804, -0.428208, 0.733526,
		-0.521498, -0.845044, -0.118068,
		33.624775, 32.835285, 50.312702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458145, 32.922535, 50.406494>,  <33.989822, 33.426815, 50.395348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458145, 32.922535, 50.406494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154469, 32.736805, 50.224052>,  <33.972263, 32.625366, 50.114586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154469, 32.736805, 50.224052>,  <34.458145, 32.922535, 50.406494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154469, 32.736805, 50.224052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579940, -0.164468, -0.797885,
		0.295466, -0.870258, 0.394145,
		-0.759190, -0.464328, -0.456103,
		33.926712, 32.597507, 50.087223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724846, 32.289070, 50.178581>,  <34.458145, 32.922535, 50.406494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724846, 32.289070, 50.178581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.412079, 32.356045, 49.938393>,  <34.224419, 32.396229, 49.794281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.412079, 32.356045, 49.938393>,  <34.724846, 32.289070, 50.178581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412079, 32.356045, 49.938393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564937, -0.216863, -0.796126,
		-0.263526, -0.961734, 0.074975,
		-0.781921, 0.167444, -0.600468,
		34.177502, 32.406277, 49.758251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810249, 31.827053, 49.610134>,  <34.724846, 32.289070, 50.178581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810249, 31.827053, 49.610134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552616, 32.088413, 49.451027>,  <34.398033, 32.245228, 49.355564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552616, 32.088413, 49.451027>,  <34.810249, 31.827053, 49.610134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552616, 32.088413, 49.451027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414010, -0.139490, -0.899521,
		-0.643231, -0.744051, -0.180670,
		-0.644088, 0.653400, -0.397769,
		34.359390, 32.284431, 49.331696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546436, 31.483576, 49.005894>,  <34.810249, 31.827053, 49.610134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546436, 31.483576, 49.005894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.483948, 31.876982, 48.969475>,  <34.446453, 32.113026, 48.947624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.483948, 31.876982, 48.969475>,  <34.546436, 31.483576, 49.005894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483948, 31.876982, 48.969475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553189, 0.010758, -0.832986,
		-0.818276, -0.180498, -0.545751,
		-0.156223, 0.983517, -0.091046,
		34.437080, 32.172035, 48.942162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442528, 31.533375, 48.344894>,  <34.546436, 31.483576, 49.005894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442528, 31.533375, 48.344894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562767, 31.892889, 48.472534>,  <34.634911, 32.108597, 48.549118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562767, 31.892889, 48.472534>,  <34.442528, 31.533375, 48.344894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562767, 31.892889, 48.472534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682996, 0.030663, -0.729778,
		-0.665699, 0.437314, -0.604650,
		0.300602, 0.898786, 0.319096,
		34.652946, 32.162525, 48.568264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575600, 31.661451, 48.407757>,  <34.442528, 31.533375, 48.344894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575600, 31.661451, 48.407757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241821, 31.550648, 48.217194>,  <33.041553, 31.484165, 48.102856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241821, 31.550648, 48.217194>,  <33.575600, 31.661451, 48.407757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241821, 31.550648, 48.217194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391239, -0.311051, 0.866129,
		-0.388112, 0.909128, 0.151179,
		-0.834446, -0.277009, -0.476409,
		32.991486, 31.467545, 48.074272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964188, 31.801205, 48.736023>,  <33.575600, 31.661451, 48.407757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964188, 31.801205, 48.736023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.818485, 31.524364, 48.486763>,  <32.731064, 31.358261, 48.337208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.818485, 31.524364, 48.486763>,  <32.964188, 31.801205, 48.736023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818485, 31.524364, 48.486763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507974, -0.413167, 0.755815,
		-0.780565, 0.591852, -0.201072,
		-0.364254, -0.692101, -0.623149,
		32.709209, 31.316734, 48.299820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240269, 31.793789, 48.854836>,  <32.964188, 31.801205, 48.736023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240269, 31.793789, 48.854836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.320484, 31.441858, 48.682472>,  <32.368614, 31.230700, 48.579052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.320484, 31.441858, 48.682472>,  <32.240269, 31.793789, 48.854836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320484, 31.441858, 48.682472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332632, -0.474868, 0.814774,
		-0.921487, -0.020062, -0.387891,
		0.200543, -0.879829, -0.430911,
		32.380646, 31.177910, 48.553200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605396, 31.480894, 48.889309>,  <32.240269, 31.793789, 48.854836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605396, 31.480894, 48.889309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.893267, 31.205986, 48.849861>,  <32.065987, 31.041040, 48.826191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.893267, 31.205986, 48.849861>,  <31.605396, 31.480894, 48.889309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893267, 31.205986, 48.849861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388642, -0.516458, 0.763039,
		-0.575351, -0.510809, -0.638784,
		0.719673, -0.687273, -0.098623,
		32.109169, 30.999804, 48.820274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154015, 30.841200, 48.767967>,  <31.605396, 31.480894, 48.889309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154015, 30.841200, 48.767967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.524395, 30.749121, 48.887714>,  <31.746624, 30.693872, 48.959560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.524395, 30.749121, 48.887714>,  <31.154015, 30.841200, 48.767967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524395, 30.749121, 48.887714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375366, -0.474197, 0.796390,
		-0.041369, -0.849792, -0.525493,
		0.925953, -0.230198, 0.299366,
		31.802181, 30.680061, 48.977524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282452, 30.120905, 48.491741>,  <31.154015, 30.841200, 48.767967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282452, 30.120905, 48.491741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.526237, 30.178852, 48.803528>,  <31.672508, 30.213619, 48.990601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.526237, 30.178852, 48.803528>,  <31.282452, 30.120905, 48.491741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526237, 30.178852, 48.803528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496868, -0.696337, 0.517916,
		0.617801, -0.702943, -0.352411,
		0.609462, 0.144867, 0.779467,
		31.709076, 30.222313, 49.037369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410349, 29.510517, 48.715271>,  <31.282452, 30.120905, 48.491741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410349, 29.510517, 48.715271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483522, 29.720417, 49.047817>,  <31.527426, 29.846357, 49.247345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483522, 29.720417, 49.047817>,  <31.410349, 29.510517, 48.715271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483522, 29.720417, 49.047817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655094, -0.565488, 0.501075,
		0.733067, -0.636288, 0.240313,
		0.182933, 0.524749, 0.831369,
		31.538403, 29.877842, 49.297226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098446, 29.079210, 49.209995>,  <31.410349, 29.510517, 48.715271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098446, 29.079210, 49.209995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.199577, 29.397322, 49.430401>,  <31.260256, 29.588188, 49.562645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.199577, 29.397322, 49.430401>,  <31.098446, 29.079210, 49.209995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199577, 29.397322, 49.430401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723457, -0.222748, 0.653448,
		0.642408, -0.563842, 0.519032,
		0.252828, 0.795277, 0.551010,
		31.275425, 29.635904, 49.595703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144361, 28.828396, 49.840134>,  <31.098446, 29.079210, 49.209995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144361, 28.828396, 49.840134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.066334, 29.220036, 49.863171>,  <31.019518, 29.455019, 49.876991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.066334, 29.220036, 49.863171>,  <31.144361, 28.828396, 49.840134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066334, 29.220036, 49.863171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770860, -0.189356, 0.608210,
		0.606402, 0.074246, 0.791684,
		-0.195067, 0.979097, 0.057593,
		31.007814, 29.513765, 49.880447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048616, 29.048655, 50.576092>,  <31.144361, 28.828396, 49.840134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048616, 29.048655, 50.576092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859859, 29.297998, 50.326694>,  <30.746605, 29.447605, 50.177055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859859, 29.297998, 50.326694>,  <31.048616, 29.048655, 50.576092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859859, 29.297998, 50.326694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865201, -0.191429, 0.463445,
		0.169539, 0.758141, 0.629666,
		-0.471894, 0.623360, -0.623490,
		30.718292, 29.485006, 50.139648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538332, 29.406841, 51.057552>,  <31.048616, 29.048655, 50.576092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538332, 29.406841, 51.057552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407038, 29.518543, 50.696602>,  <30.328262, 29.585564, 50.480034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407038, 29.518543, 50.696602>,  <30.538332, 29.406841, 51.057552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407038, 29.518543, 50.696602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942520, -0.033529, 0.332462,
		0.062585, 0.959632, 0.274208,
		-0.328235, 0.279253, -0.902374,
		30.308567, 29.602320, 50.425888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031776, 29.831272, 51.230492>,  <30.538332, 29.406841, 51.057552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031776, 29.831272, 51.230492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.943813, 29.738407, 50.851494>,  <29.891035, 29.682688, 50.624096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.943813, 29.738407, 50.851494>,  <30.031776, 29.831272, 51.230492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943813, 29.738407, 50.851494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973839, -0.004760, 0.227188,
		-0.057254, 0.972665, -0.225042,
		-0.219907, -0.232163, -0.947492,
		29.877842, 29.668758, 50.567245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611805, 30.325064, 51.027374>,  <30.031776, 29.831272, 51.230492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611805, 30.325064, 51.027374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.534981, 30.011950, 50.790611>,  <29.488886, 29.824081, 50.648552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.534981, 30.011950, 50.790611>,  <29.611805, 30.325064, 51.027374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534981, 30.011950, 50.790611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965556, 0.042841, 0.256645,
		-0.175540, 0.620814, -0.764052,
		-0.192062, -0.782786, -0.591911,
		29.477362, 29.777113, 50.613037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126272, 30.543139, 50.520821>,  <29.611805, 30.325064, 51.027374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126272, 30.543139, 50.520821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.113956, 30.149590, 50.591301>,  <29.106567, 29.913460, 50.633587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.113956, 30.149590, 50.591301>,  <29.126272, 30.543139, 50.520821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113956, 30.149590, 50.591301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998353, 0.038809, 0.042241,
		-0.048398, -0.174607, -0.983448,
		-0.030791, -0.983873, 0.176197,
		29.104719, 29.854427, 50.644161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889570, 31.000469, 49.944130>,  <29.126272, 30.543139, 50.520821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889570, 31.000469, 49.944130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739206, 31.322912, 50.126945>,  <28.648989, 31.516378, 50.236637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739206, 31.322912, 50.126945>,  <28.889570, 31.000469, 49.944130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739206, 31.322912, 50.126945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119074, 0.447106, -0.886520,
		-0.918975, -0.387672, -0.072085,
		-0.375909, 0.806106, 0.457041,
		28.626434, 31.564743, 50.264057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149570, 31.023243, 49.699059>,  <28.889570, 31.000469, 49.944130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149570, 31.023243, 49.699059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.297773, 31.377436, 49.811234>,  <28.386696, 31.589952, 49.878536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.297773, 31.377436, 49.811234>,  <28.149570, 31.023243, 49.699059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297773, 31.377436, 49.811234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104674, 0.339806, -0.934653,
		-0.922913, 0.316941, 0.218587,
		0.370507, 0.885483, 0.280436,
		28.408926, 31.643080, 49.895363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789238, 31.493900, 49.352436>,  <28.149570, 31.023243, 49.699059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789238, 31.493900, 49.352436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.086973, 31.735954, 49.465412>,  <28.265615, 31.881187, 49.533199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.086973, 31.735954, 49.465412>,  <27.789238, 31.493900, 49.352436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086973, 31.735954, 49.465412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151753, 0.565146, -0.810913,
		-0.650331, 0.560734, 0.512492,
		0.744339, 0.605134, 0.282439,
		28.310274, 31.917494, 49.550144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491909, 32.254829, 49.335072>,  <27.789238, 31.493900, 49.352436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491909, 32.254829, 49.335072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.891310, 32.245605, 49.315205>,  <28.130949, 32.240070, 49.303284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.891310, 32.245605, 49.315205>,  <27.491909, 32.254829, 49.335072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891310, 32.245605, 49.315205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028274, 0.559587, -0.828289,
		0.046893, 0.828451, 0.558095,
		0.998500, -0.023062, -0.049664,
		28.190859, 32.238686, 49.300304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811609, 33.013054, 49.290630>,  <27.491909, 32.254829, 49.335072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811609, 33.013054, 49.290630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.090502, 32.768753, 49.140507>,  <28.257837, 32.622173, 49.050434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.090502, 32.768753, 49.140507>,  <27.811609, 33.013054, 49.290630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090502, 32.768753, 49.140507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053494, 0.566421, -0.822378,
		0.714849, 0.553310, 0.427597,
		0.697229, -0.610750, -0.375307,
		28.299671, 32.585529, 49.027916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232222, 33.470581, 48.960297>,  <27.811609, 33.013054, 49.290630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232222, 33.470581, 48.960297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.292601, 33.112667, 48.792217>,  <28.328829, 32.897919, 48.691368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.292601, 33.112667, 48.792217>,  <28.232222, 33.470581, 48.960297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292601, 33.112667, 48.792217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101386, 0.436841, -0.893807,
		0.983329, 0.092318, 0.156660,
		0.150950, -0.894789, -0.420199,
		28.337885, 32.844231, 48.666157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849201, 33.517265, 48.604794>,  <28.232222, 33.470581, 48.960297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849201, 33.517265, 48.604794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.680429, 33.202423, 48.424820>,  <28.579166, 33.013519, 48.316837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.680429, 33.202423, 48.424820>,  <28.849201, 33.517265, 48.604794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680429, 33.202423, 48.424820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162241, 0.422710, -0.891624,
		0.891994, -0.449200, -0.050652,
		-0.421928, -0.787106, -0.449933,
		28.553850, 32.966290, 48.289841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480394, 34.007481, 48.831150>,  <28.849201, 33.517265, 48.604794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480394, 34.007481, 48.831150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.370903, 34.386944, 48.767754>,  <29.305208, 34.614620, 48.729717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.370903, 34.386944, 48.767754>,  <29.480394, 34.007481, 48.831150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370903, 34.386944, 48.767754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268210, 0.082961, 0.959782,
		0.923654, 0.305227, 0.231731,
		-0.273727, 0.948659, -0.158493,
		29.288786, 34.671543, 48.720207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831730, 34.458447, 49.315495>,  <29.480394, 34.007481, 48.831150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831730, 34.458447, 49.315495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.514187, 34.680565, 49.216347>,  <29.323662, 34.813835, 49.156857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.514187, 34.680565, 49.216347>,  <29.831730, 34.458447, 49.315495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514187, 34.680565, 49.216347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296668, 0.002162, 0.954978,
		0.530829, 0.831652, 0.163022,
		-0.793857, 0.555294, -0.247872,
		29.276030, 34.847153, 49.141987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878572, 35.116047, 49.644405>,  <29.831730, 34.458447, 49.315495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878572, 35.116047, 49.644405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.487896, 35.108181, 49.558907>,  <29.253490, 35.103462, 49.507607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.487896, 35.108181, 49.558907>,  <29.878572, 35.116047, 49.644405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487896, 35.108181, 49.558907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212337, 0.234424, 0.948661,
		0.031452, 0.971935, -0.233136,
		-0.976690, -0.019666, -0.213751,
		29.194889, 35.102280, 49.494781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556892, 35.685455, 50.015194>,  <29.878572, 35.116047, 49.644405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556892, 35.685455, 50.015194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.251583, 35.445091, 49.920269>,  <29.068398, 35.300873, 49.863312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.251583, 35.445091, 49.920269>,  <29.556892, 35.685455, 50.015194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251583, 35.445091, 49.920269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382570, 0.124378, 0.915516,
		-0.520628, 0.789579, -0.324825,
		-0.763274, -0.600912, -0.237315,
		29.022600, 35.264816, 49.849075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856062, 36.103485, 50.251221>,  <29.556892, 35.685455, 50.015194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856062, 36.103485, 50.251221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.749327, 35.718102, 50.241913>,  <28.685286, 35.486870, 50.236328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.749327, 35.718102, 50.241913>,  <28.856062, 36.103485, 50.251221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749327, 35.718102, 50.241913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500052, 0.117771, 0.857950,
		-0.823860, 0.240572, -0.513206,
		-0.266839, -0.963460, -0.023272,
		28.669275, 35.429062, 50.234932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171129, 36.138580, 50.470657>,  <28.856062, 36.103485, 50.251221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171129, 36.138580, 50.470657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.274437, 35.754650, 50.514542>,  <28.336422, 35.524292, 50.540874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.274437, 35.754650, 50.514542>,  <28.171129, 36.138580, 50.470657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274437, 35.754650, 50.514542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340894, 0.015717, 0.939970,
		-0.903930, -0.280164, -0.323139,
		0.258267, -0.959824, 0.109714,
		28.351917, 35.466702, 50.547455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626520, 35.846386, 50.889885>,  <28.171129, 36.138580, 50.470657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626520, 35.846386, 50.889885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944530, 35.613876, 50.959229>,  <28.135338, 35.474369, 51.000835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944530, 35.613876, 50.959229>,  <27.626520, 35.846386, 50.889885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944530, 35.613876, 50.959229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248952, -0.052070, 0.967115,
		-0.553131, -0.812041, -0.186106,
		0.795027, -0.581273, 0.173358,
		28.183039, 35.439495, 51.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469986, 35.616276, 51.579113>,  <27.626520, 35.846386, 50.889885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469986, 35.616276, 51.579113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.828135, 35.457809, 51.497765>,  <28.043024, 35.362732, 51.448956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.828135, 35.457809, 51.497765>,  <27.469986, 35.616276, 51.579113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828135, 35.457809, 51.497765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046766, -0.370521, 0.927646,
		-0.442856, -0.840100, -0.313227,
		0.895372, -0.396166, -0.203375,
		28.096746, 35.338959, 51.436752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419727, 34.936291, 51.591003>,  <27.469986, 35.616276, 51.579113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419727, 34.936291, 51.591003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.798935, 35.032810, 51.673985>,  <28.026459, 35.090721, 51.723774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.798935, 35.032810, 51.673985>,  <27.419727, 34.936291, 51.591003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798935, 35.032810, 51.673985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117983, -0.338926, 0.933386,
		0.295539, -0.909342, -0.292838,
		0.948017, 0.241302, 0.207453,
		28.083340, 35.105202, 51.736221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.159878, 37.602596, 37.248241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425129, 37.529007, 37.538460>,  <35.584282, 37.484856, 37.712589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425129, 37.529007, 37.538460>,  <35.159878, 37.602596, 37.248241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425129, 37.529007, 37.538460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658245, -0.604786, 0.448271,
		0.356331, -0.774848, -0.522149,
		0.663131, -0.183969, 0.725544,
		35.624069, 37.473816, 37.756123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097939, 36.867378, 37.509895>,  <35.159878, 37.602596, 37.248241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097939, 36.867378, 37.509895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290073, 37.067753, 37.797878>,  <35.405354, 37.187977, 37.970669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290073, 37.067753, 37.797878>,  <35.097939, 36.867378, 37.509895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290073, 37.067753, 37.797878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588703, -0.424339, 0.688016,
		0.650157, -0.754322, 0.091075,
		0.480338, 0.500934, 0.719959,
		35.434174, 37.218033, 38.013866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341751, 36.283218, 38.003410>,  <35.097939, 36.867378, 37.509895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341751, 36.283218, 38.003410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297562, 36.634773, 38.189034>,  <35.271049, 36.845707, 38.300407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297562, 36.634773, 38.189034>,  <35.341751, 36.283218, 38.003410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297562, 36.634773, 38.189034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430025, -0.463216, 0.774926,
		0.896033, -0.113947, 0.429117,
		-0.110473, 0.878890, 0.464056,
		35.264420, 36.898441, 38.328251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545952, 36.114147, 38.699844>,  <35.341751, 36.283218, 38.003410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545952, 36.114147, 38.699844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333508, 36.450489, 38.741577>,  <35.206039, 36.652294, 38.766617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333508, 36.450489, 38.741577>,  <35.545952, 36.114147, 38.699844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333508, 36.450489, 38.741577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392779, -0.353442, 0.849001,
		0.750760, 0.409936, 0.517987,
		-0.531115, 0.840851, 0.104336,
		35.174171, 36.702744, 38.772877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534397, 36.219189, 39.464752>,  <35.545952, 36.114147, 38.699844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534397, 36.219189, 39.464752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263443, 36.482830, 39.334072>,  <35.100872, 36.641014, 39.255665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263443, 36.482830, 39.334072>,  <35.534397, 36.219189, 39.464752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263443, 36.482830, 39.334072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569000, -0.187966, 0.800567,
		0.466250, 0.728182, 0.502356,
		-0.677384, 0.659105, -0.326697,
		35.060226, 36.680561, 39.236065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275436, 36.611137, 40.046295>,  <35.534397, 36.219189, 39.464752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275436, 36.611137, 40.046295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984116, 36.650871, 39.775089>,  <34.809322, 36.674709, 39.612366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984116, 36.650871, 39.775089>,  <35.275436, 36.611137, 40.046295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984116, 36.650871, 39.775089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684741, -0.143807, 0.714457,
		-0.026535, 0.984608, 0.172752,
		-0.728303, 0.099333, -0.678017,
		34.765625, 36.680672, 39.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721169, 36.827885, 40.423882>,  <35.275436, 36.611137, 40.046295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721169, 36.827885, 40.423882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533649, 36.698906, 40.094940>,  <34.421139, 36.621517, 39.897575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533649, 36.698906, 40.094940>,  <34.721169, 36.827885, 40.423882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533649, 36.698906, 40.094940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798731, -0.242790, 0.550529,
		-0.377175, 0.914921, -0.143730,
		-0.468794, -0.322448, -0.822350,
		34.393013, 36.602173, 39.848236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131451, 37.131157, 40.425850>,  <34.721169, 36.827885, 40.423882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131451, 37.131157, 40.425850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065178, 36.820168, 40.183174>,  <34.025414, 36.633572, 40.037567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065178, 36.820168, 40.183174>,  <34.131451, 37.131157, 40.425850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065178, 36.820168, 40.183174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889356, -0.148037, 0.432588,
		-0.426140, 0.611240, -0.666926,
		-0.165686, -0.777477, -0.606694,
		34.015472, 36.586926, 40.001167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460339, 37.158936, 40.116383>,  <34.131451, 37.131157, 40.425850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460339, 37.158936, 40.116383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565250, 36.772945, 40.118919>,  <33.628197, 36.541351, 40.120441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565250, 36.772945, 40.118919>,  <33.460339, 37.158936, 40.116383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565250, 36.772945, 40.118919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818919, -0.219090, 0.530444,
		-0.510474, -0.144319, -0.847696,
		0.262275, -0.964972, 0.006345,
		33.643932, 36.483452, 40.120823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856098, 36.852955, 40.032837>,  <33.460339, 37.158936, 40.116383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856098, 36.852955, 40.032837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073284, 36.550346, 40.178638>,  <33.203594, 36.368782, 40.266121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073284, 36.550346, 40.178638>,  <32.856098, 36.852955, 40.032837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073284, 36.550346, 40.178638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693792, -0.159568, 0.702276,
		-0.473123, -0.634202, -0.611508,
		0.542962, -0.756522, 0.364509,
		33.236172, 36.323391, 40.287991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423954, 36.265472, 40.118713>,  <32.856098, 36.852955, 40.032837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423954, 36.265472, 40.118713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719845, 36.171452, 40.370922>,  <32.897381, 36.115040, 40.522247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719845, 36.171452, 40.370922>,  <32.423954, 36.265472, 40.118713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719845, 36.171452, 40.370922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665210, -0.114138, 0.737881,
		-0.101450, -0.965266, -0.240770,
		0.739732, -0.235020, 0.630526,
		32.941765, 36.100937, 40.560078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237717, 35.673382, 40.497585>,  <32.423954, 36.265472, 40.118713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237717, 35.673382, 40.497585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513409, 35.821560, 40.746658>,  <32.678825, 35.910465, 40.896103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513409, 35.821560, 40.746658>,  <32.237717, 35.673382, 40.497585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513409, 35.821560, 40.746658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630581, -0.116570, 0.767319,
		0.356835, -0.921511, 0.153251,
		0.689229, 0.370444, 0.622684,
		32.720177, 35.932693, 40.933464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245689, 35.028614, 40.786617>,  <32.237717, 35.673382, 40.497585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245689, 35.028614, 40.786617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876394, 34.943886, 40.658390>,  <31.654818, 34.893047, 40.581455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876394, 34.943886, 40.658390>,  <32.245689, 35.028614, 40.786617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876394, 34.943886, 40.658390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336634, -0.043724, -0.940620,
		0.185227, -0.976330, 0.111674,
		-0.923239, -0.211822, -0.320567,
		31.599422, 34.880341, 40.562222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197002, 34.401386, 40.291882>,  <32.245689, 35.028614, 40.786617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197002, 34.401386, 40.291882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884113, 34.635910, 40.207626>,  <31.696381, 34.776627, 40.157074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884113, 34.635910, 40.207626>,  <32.197002, 34.401386, 40.291882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884113, 34.635910, 40.207626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183462, -0.106334, -0.977259,
		-0.595378, -0.803076, -0.024389,
		-0.782220, 0.586312, -0.210643,
		31.649446, 34.811802, 40.144432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739904, 34.009373, 39.749493>,  <32.197002, 34.401386, 40.291882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739904, 34.009373, 39.749493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660355, 34.401382, 39.748360>,  <31.612625, 34.636589, 39.747681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660355, 34.401382, 39.748360>,  <31.739904, 34.009373, 39.749493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660355, 34.401382, 39.748360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070769, 0.011477, -0.997427,
		-0.977466, -0.198565, -0.071638,
		-0.198877, 0.980021, -0.002834,
		31.600691, 34.695389, 39.747509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257257, 34.051319, 39.224567>,  <31.739904, 34.009373, 39.749493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257257, 34.051319, 39.224567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382492, 34.429806, 39.257191>,  <31.457632, 34.656898, 39.276764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382492, 34.429806, 39.257191>,  <31.257257, 34.051319, 39.224567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382492, 34.429806, 39.257191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059758, 0.105331, -0.992640,
		-0.947843, 0.305909, 0.089521,
		0.313087, 0.946216, 0.081557,
		31.476418, 34.713669, 39.281658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803585, 34.591328, 38.792622>,  <31.257257, 34.051319, 39.224567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803585, 34.591328, 38.792622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157091, 34.775284, 38.827156>,  <31.369194, 34.885658, 38.847878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157091, 34.775284, 38.827156>,  <30.803585, 34.591328, 38.792622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157091, 34.775284, 38.827156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055715, 0.286619, -0.956423,
		-0.464600, 0.840444, 0.278927,
		0.883766, 0.459895, 0.086338,
		31.422220, 34.913254, 38.853058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685976, 35.140945, 38.569149>,  <30.803585, 34.591328, 38.792622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685976, 35.140945, 38.569149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082621, 35.102333, 38.534767>,  <31.320608, 35.079166, 38.514137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082621, 35.102333, 38.534767>,  <30.685976, 35.140945, 38.569149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082621, 35.102333, 38.534767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057318, 0.267608, -0.961821,
		0.115845, 0.958680, 0.259831,
		0.991612, -0.096530, -0.085951,
		31.380104, 35.073376, 38.508984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772963, 35.570412, 38.021004>,  <30.685976, 35.140945, 38.569149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772963, 35.570412, 38.021004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127844, 35.387184, 38.043072>,  <31.340773, 35.277248, 38.056313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127844, 35.387184, 38.043072>,  <30.772963, 35.570412, 38.021004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127844, 35.387184, 38.043072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155054, 0.183389, -0.970735,
		0.434547, 0.869793, 0.233729,
		0.887202, -0.458070, 0.055174,
		31.394005, 35.249763, 38.059624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264488, 35.950390, 37.589272>,  <30.772963, 35.570412, 38.021004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264488, 35.950390, 37.589272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414164, 35.581509, 37.628300>,  <31.503969, 35.360180, 37.651714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414164, 35.581509, 37.628300>,  <31.264488, 35.950390, 37.589272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414164, 35.581509, 37.628300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206118, -0.019870, -0.978325,
		0.904157, 0.386186, 0.182648,
		0.374186, -0.922207, 0.097566,
		31.526419, 35.304848, 37.657570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705332, 36.050476, 37.091007>,  <31.264488, 35.950390, 37.589272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705332, 36.050476, 37.091007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699753, 35.661747, 37.185120>,  <31.696405, 35.428509, 37.241589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699753, 35.661747, 37.185120>,  <31.705332, 36.050476, 37.091007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699753, 35.661747, 37.185120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215353, -0.232705, -0.948405,
		0.976437, 0.037442, 0.212531,
		-0.013947, -0.971826, 0.235285,
		31.695568, 35.370197, 37.255707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310349, 35.779480, 36.626259>,  <31.705332, 36.050476, 37.091007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310349, 35.779480, 36.626259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059643, 35.480751, 36.715187>,  <31.909220, 35.301514, 36.768543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059643, 35.480751, 36.715187>,  <32.310349, 35.779480, 36.626259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059643, 35.480751, 36.715187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120131, -0.189294, -0.974544,
		0.769895, -0.637514, 0.028926,
		-0.626761, -0.746822, 0.222322,
		31.871614, 35.256706, 36.781883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458866, 35.229706, 36.125469>,  <32.310349, 35.779480, 36.626259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458866, 35.229706, 36.125469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085022, 35.178833, 36.258339>,  <31.860716, 35.148312, 36.338058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085022, 35.178833, 36.258339>,  <32.458866, 35.229706, 36.125469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085022, 35.178833, 36.258339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328001, -0.053056, -0.943186,
		0.137580, -0.990459, 0.007871,
		-0.934606, -0.127182, 0.332171,
		31.804640, 35.140678, 36.357990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209644, 34.658463, 35.916725>,  <32.458866, 35.229706, 36.125469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209644, 34.658463, 35.916725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885502, 34.881798, 35.987816>,  <31.691017, 35.015797, 36.030472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885502, 34.881798, 35.987816>,  <32.209644, 34.658463, 35.916725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885502, 34.881798, 35.987816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329345, -0.183148, -0.926277,
		-0.484623, -0.809146, 0.332300,
		-0.810353, 0.558336, 0.177731,
		31.642395, 35.049297, 36.041134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733379, 34.118351, 35.760372>,  <32.209644, 34.658463, 35.916725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733379, 34.118351, 35.760372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062622, 34.310131, 35.882103>,  <33.260170, 34.425201, 35.955143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062622, 34.310131, 35.882103>,  <32.733379, 34.118351, 35.760372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062622, 34.310131, 35.882103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020760, -0.560945, 0.827593,
		0.567505, -0.674881, -0.471672,
		0.823108, 0.479454, 0.304329,
		33.309555, 34.453968, 35.973400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148422, 33.680626, 36.135956>,  <32.733379, 34.118351, 35.760372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148422, 33.680626, 36.135956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274605, 34.030399, 36.283390>,  <33.350315, 34.240261, 36.371849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274605, 34.030399, 36.283390>,  <33.148422, 33.680626, 36.135956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274605, 34.030399, 36.283390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138509, -0.426688, 0.893729,
		0.938776, -0.230882, -0.255719,
		0.315458, 0.874432, 0.368586,
		33.369244, 34.292728, 36.393967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749233, 33.540436, 36.457977>,  <33.148422, 33.680626, 36.135956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749233, 33.540436, 36.457977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555878, 33.850471, 36.620739>,  <33.439865, 34.036491, 36.718395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555878, 33.850471, 36.620739>,  <33.749233, 33.540436, 36.457977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555878, 33.850471, 36.620739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033386, -0.480806, 0.876191,
		0.874769, 0.409956, 0.258293,
		-0.483389, 0.775088, 0.406907,
		33.410862, 34.082996, 36.742813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738987, 33.392857, 37.093304>,  <33.749233, 33.540436, 36.457977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738987, 33.392857, 37.093304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494736, 33.707893, 37.126366>,  <33.348186, 33.896915, 37.146202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494736, 33.707893, 37.126366>,  <33.738987, 33.392857, 37.093304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494736, 33.707893, 37.126366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383410, -0.385351, 0.839346,
		0.692914, 0.480837, 0.537277,
		-0.610629, 0.787591, 0.082657,
		33.311546, 33.944172, 37.151161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647034, 33.163643, 37.795860>,  <33.738987, 33.392857, 37.093304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647034, 33.163643, 37.795860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034294, 33.191364, 37.892101>,  <34.266651, 33.207996, 37.949844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034294, 33.191364, 37.892101>,  <33.647034, 33.163643, 37.795860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034294, 33.191364, 37.892101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246610, 0.097783, 0.964169,
		0.043290, -0.992792, 0.111759,
		0.968147, 0.069300, 0.240599,
		34.324738, 33.212154, 37.964279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857174, 32.599949, 38.253895>,  <33.647034, 33.163643, 37.795860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857174, 32.599949, 38.253895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066769, 32.933533, 38.323128>,  <34.192524, 33.133682, 38.364666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066769, 32.933533, 38.323128>,  <33.857174, 32.599949, 38.253895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066769, 32.933533, 38.323128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147777, -0.111111, 0.982759,
		0.838811, -0.540527, 0.065020,
		0.523983, 0.833957, 0.173079,
		34.223965, 33.183720, 38.375050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231586, 32.430286, 38.820255>,  <33.857174, 32.599949, 38.253895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231586, 32.430286, 38.820255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252586, 32.829731, 38.822304>,  <34.265186, 33.069397, 38.823532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252586, 32.829731, 38.822304>,  <34.231586, 32.430286, 38.820255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252586, 32.829731, 38.822304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199055, 0.005444, 0.979973,
		0.978581, -0.052470, 0.199064,
		0.052503, 0.998607, 0.005117,
		34.268337, 33.129314, 38.823837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671719, 32.730511, 39.361748>,  <34.231586, 32.430286, 38.820255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671719, 32.730511, 39.361748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414696, 33.026077, 39.280640>,  <34.260483, 33.203419, 39.231976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414696, 33.026077, 39.280640>,  <34.671719, 32.730511, 39.361748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414696, 33.026077, 39.280640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184991, 0.107206, 0.976875,
		0.743571, 0.665210, 0.067807,
		-0.642558, 0.738920, -0.202773,
		34.221928, 33.247753, 39.219807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929897, 33.200020, 39.719807>,  <34.671719, 32.730511, 39.361748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929897, 33.200020, 39.719807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554798, 33.323669, 39.656464>,  <34.329739, 33.397861, 39.618458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554798, 33.323669, 39.656464>,  <34.929897, 33.200020, 39.719807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554798, 33.323669, 39.656464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060895, 0.302547, 0.951187,
		0.341949, 0.901613, -0.264887,
		-0.937744, 0.309127, -0.158360,
		34.273476, 33.416409, 39.608955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926289, 33.836014, 39.975655>,  <34.929897, 33.200020, 39.719807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926289, 33.836014, 39.975655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541157, 33.732098, 39.946091>,  <34.310078, 33.669746, 39.928352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541157, 33.732098, 39.946091>,  <34.926289, 33.836014, 39.975655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541157, 33.732098, 39.946091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137398, 0.235500, 0.962113,
		-0.232546, 0.936508, -0.262442,
		-0.962831, -0.259794, -0.073910,
		34.252308, 33.654160, 39.923920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486328, 34.368248, 40.447334>,  <34.926289, 33.836014, 39.975655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486328, 34.368248, 40.447334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256939, 34.043327, 40.404816>,  <34.119305, 33.848373, 40.379303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256939, 34.043327, 40.404816>,  <34.486328, 34.368248, 40.447334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256939, 34.043327, 40.404816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258910, 0.056603, 0.964242,
		-0.777237, 0.580485, -0.242772,
		-0.573470, -0.812301, -0.106300,
		34.084896, 33.799637, 40.372925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852867, 34.475704, 40.836639>,  <34.486328, 34.368248, 40.447334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852867, 34.475704, 40.836639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899998, 34.080196, 40.799866>,  <33.928276, 33.842892, 40.777802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899998, 34.080196, 40.799866>,  <33.852867, 34.475704, 40.836639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899998, 34.080196, 40.799866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117143, -0.105777, 0.987466,
		-0.986101, -0.105577, -0.128290,
		0.117824, -0.988769, -0.091939,
		33.935345, 33.783566, 40.772285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430447, 34.275166, 41.328880>,  <33.852867, 34.475704, 40.836639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430447, 34.275166, 41.328880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628201, 33.938648, 41.241413>,  <33.746853, 33.736740, 41.188934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628201, 33.938648, 41.241413>,  <33.430447, 34.275166, 41.328880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628201, 33.938648, 41.241413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107553, -0.308828, 0.945017,
		-0.862563, -0.443685, -0.243163,
		0.494386, -0.841290, -0.218664,
		33.776516, 33.686260, 41.175816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048584, 33.714394, 41.619232>,  <33.430447, 34.275166, 41.328880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048584, 33.714394, 41.619232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424400, 33.582386, 41.582664>,  <33.649891, 33.503181, 41.560722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424400, 33.582386, 41.582664>,  <33.048584, 33.714394, 41.619232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424400, 33.582386, 41.582664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010065, -0.293449, 0.955922,
		-0.342306, -0.897201, -0.279027,
		0.939535, -0.330026, -0.091419,
		33.706261, 33.483379, 41.555241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010471, 33.188190, 41.951324>,  <33.048584, 33.714394, 41.619232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010471, 33.188190, 41.951324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402058, 33.264618, 41.922691>,  <33.637009, 33.310474, 41.905510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402058, 33.264618, 41.922691>,  <33.010471, 33.188190, 41.951324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402058, 33.264618, 41.922691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126801, -0.294857, 0.947091,
		0.159853, -0.936243, -0.312882,
		0.978963, 0.191069, -0.071583,
		33.695747, 33.321938, 41.901215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391499, 32.591728, 42.082722>,  <33.010471, 33.188190, 41.951324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391499, 32.591728, 42.082722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611023, 32.913132, 42.174965>,  <33.742737, 33.105972, 42.230312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611023, 32.913132, 42.174965>,  <33.391499, 32.591728, 42.082722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611023, 32.913132, 42.174965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010460, -0.269243, 0.963015,
		0.835879, -0.530928, -0.139360,
		0.548814, 0.803507, 0.230608,
		33.775669, 33.154182, 42.244148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914959, 32.232826, 42.541054>,  <33.391499, 32.591728, 42.082722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914959, 32.232826, 42.541054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939381, 32.627445, 42.601723>,  <33.954033, 32.864216, 42.638126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939381, 32.627445, 42.601723>,  <33.914959, 32.232826, 42.541054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939381, 32.627445, 42.601723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122728, -0.158225, 0.979746,
		0.990561, -0.041201, -0.130737,
		0.061052, 0.986543, 0.151675,
		33.957695, 32.923409, 42.647224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512016, 32.406727, 42.911213>,  <33.914959, 32.232826, 42.541054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512016, 32.406727, 42.911213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261608, 32.709572, 42.985909>,  <34.111362, 32.891281, 43.030727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261608, 32.709572, 42.985909>,  <34.512016, 32.406727, 42.911213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261608, 32.709572, 42.985909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009285, -0.246689, 0.969050,
		0.779749, 0.604914, 0.161463,
		-0.626023, 0.757115, 0.186739,
		34.073803, 32.936707, 43.041931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898590, 32.750023, 43.407677>,  <34.512016, 32.406727, 42.911213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898590, 32.750023, 43.407677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509773, 32.833778, 43.450188>,  <34.276485, 32.884033, 43.475693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509773, 32.833778, 43.450188>,  <34.898590, 32.750023, 43.407677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509773, 32.833778, 43.450188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070978, -0.169421, 0.982985,
		0.223830, 0.963044, 0.149822,
		-0.972040, 0.209387, 0.106277,
		34.218163, 32.896595, 43.482071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796143, 33.105381, 44.110657>,  <34.898590, 32.750023, 43.407677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796143, 33.105381, 44.110657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408470, 33.063610, 44.021404>,  <34.175869, 33.038548, 43.967854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408470, 33.063610, 44.021404>,  <34.796143, 33.105381, 44.110657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408470, 33.063610, 44.021404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218878, -0.050670, 0.974436,
		-0.113065, 0.993241, 0.026251,
		-0.969179, -0.104429, -0.223128,
		34.117718, 33.032280, 43.954468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465092, 33.516308, 44.628792>,  <34.796143, 33.105381, 44.110657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465092, 33.516308, 44.628792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201046, 33.260986, 44.470387>,  <34.042618, 33.107796, 44.375343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201046, 33.260986, 44.470387>,  <34.465092, 33.516308, 44.628792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201046, 33.260986, 44.470387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298400, -0.260986, 0.918065,
		-0.689357, 0.724194, -0.018189,
		-0.660110, -0.638302, -0.396012,
		34.003014, 33.069496, 44.351582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750023, 33.629353, 44.845825>,  <34.465092, 33.516308, 44.628792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750023, 33.629353, 44.845825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724609, 33.244263, 44.740662>,  <33.709362, 33.013206, 44.677563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724609, 33.244263, 44.740662>,  <33.750023, 33.629353, 44.845825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724609, 33.244263, 44.740662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405909, -0.215740, 0.888085,
		-0.911703, 0.163137, -0.377073,
		-0.063530, -0.962727, -0.262909,
		33.705551, 32.955444, 44.661789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110336, 33.388760, 45.118446>,  <33.750023, 33.629353, 44.845825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110336, 33.388760, 45.118446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332790, 33.064430, 45.045471>,  <33.466263, 32.869835, 45.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332790, 33.064430, 45.045471>,  <33.110336, 33.388760, 45.118446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332790, 33.064430, 45.045471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358472, -0.432070, 0.827535,
		-0.749805, -0.394826, -0.530946,
		0.556139, -0.810819, -0.182434,
		33.499634, 32.821186, 44.990742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672691, 32.897854, 45.226681>,  <33.110336, 33.388760, 45.118446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672691, 32.897854, 45.226681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013371, 32.688568, 45.238354>,  <33.217777, 32.562996, 45.245358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013371, 32.688568, 45.238354>,  <32.672691, 32.897854, 45.226681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013371, 32.688568, 45.238354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291404, -0.426598, 0.856211,
		-0.435551, -0.737729, -0.515802,
		0.851692, -0.523230, 0.029172,
		33.268883, 32.531605, 45.247108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542881, 32.211357, 45.222614>,  <32.672691, 32.897854, 45.226681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542881, 32.211357, 45.222614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893410, 32.266232, 45.407326>,  <33.103725, 32.299156, 45.518154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893410, 32.266232, 45.407326>,  <32.542881, 32.211357, 45.222614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893410, 32.266232, 45.407326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385579, -0.374895, 0.843079,
		0.288776, -0.916861, -0.275634,
		0.876320, 0.137183, 0.461783,
		33.156307, 32.307384, 45.545860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488724, 31.710381, 45.747070>,  <32.542881, 32.211357, 45.222614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488724, 31.710381, 45.747070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814468, 31.905022, 45.873585>,  <33.009914, 32.021805, 45.949493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814468, 31.905022, 45.873585>,  <32.488724, 31.710381, 45.747070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814468, 31.905022, 45.873585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172341, -0.317640, 0.932418,
		0.554181, -0.813833, -0.174812,
		0.814360, 0.486601, 0.316287,
		33.058777, 32.051003, 45.968472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799614, 31.191544, 46.141853>,  <32.488724, 31.710381, 45.747070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799614, 31.191544, 46.141853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977222, 31.519547, 46.286316>,  <33.083790, 31.716349, 46.372993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977222, 31.519547, 46.286316>,  <32.799614, 31.191544, 46.141853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977222, 31.519547, 46.286316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154273, -0.327083, 0.932318,
		0.882634, -0.469687, -0.018728,
		0.444023, 0.820006, 0.361155,
		33.110428, 31.765549, 46.394661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378532, 30.914988, 46.579044>,  <32.799614, 31.191544, 46.141853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378532, 30.914988, 46.579044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282345, 31.284109, 46.699448>,  <33.224632, 31.505581, 46.771690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282345, 31.284109, 46.699448>,  <33.378532, 30.914988, 46.579044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282345, 31.284109, 46.699448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257890, -0.359705, 0.896719,
		0.935770, 0.138010, 0.324481,
		-0.240474, 0.922803, 0.301010,
		33.210201, 31.560949, 46.789749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768936, 31.034607, 47.128052>,  <33.378532, 30.914988, 46.579044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768936, 31.034607, 47.128052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462727, 31.291056, 47.149712>,  <33.278999, 31.444925, 47.162708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462727, 31.291056, 47.149712>,  <33.768936, 31.034607, 47.128052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462727, 31.291056, 47.149712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137103, -0.244780, 0.959836,
		0.628627, 0.727356, 0.275285,
		-0.765527, 0.641121, 0.054153,
		33.233070, 31.483393, 47.165958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889740, 31.377462, 47.780693>,  <33.768936, 31.034607, 47.128052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889740, 31.377462, 47.780693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501926, 31.435938, 47.702065>,  <33.269238, 31.471024, 47.654888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501926, 31.435938, 47.702065>,  <33.889740, 31.377462, 47.780693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501926, 31.435938, 47.702065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227653, -0.241335, 0.943362,
		0.090472, 0.959367, 0.267262,
		-0.969530, 0.146191, -0.196568,
		33.211067, 31.479795, 47.643093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318573, 31.984537, 47.823219>,  <33.889740, 31.377462, 47.780693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318573, 31.984537, 47.823219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609032, 32.159466, 48.035431>,  <34.783306, 32.264423, 48.162758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609032, 32.159466, 48.035431>,  <34.318573, 31.984537, 47.823219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609032, 32.159466, 48.035431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486341, 0.218714, -0.845953,
		-0.485988, 0.872304, -0.053868,
		0.726147, 0.437321, 0.530529,
		34.826874, 32.290661, 48.194592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612526, 32.553169, 47.429619>,  <34.318573, 31.984537, 47.823219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612526, 32.553169, 47.429619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906094, 32.542839, 47.701118>,  <35.082233, 32.536640, 47.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906094, 32.542839, 47.701118>,  <34.612526, 32.553169, 47.429619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906094, 32.542839, 47.701118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633595, 0.386146, -0.670409,
		-0.244783, 0.922076, 0.299761,
		0.733920, -0.025822, 0.678745,
		35.126270, 32.535091, 47.904743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015205, 33.073463, 47.208469>,  <34.612526, 32.553169, 47.429619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015205, 33.073463, 47.208469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249207, 32.868832, 47.460201>,  <35.389606, 32.746052, 47.611240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249207, 32.868832, 47.460201>,  <35.015205, 33.073463, 47.208469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249207, 32.868832, 47.460201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806047, 0.280862, -0.520965,
		0.089759, 0.812038, 0.576661,
		0.585005, -0.511577, 0.629331,
		35.424709, 32.715359, 47.649002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592377, 33.477299, 47.447746>,  <35.015205, 33.073463, 47.208469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592377, 33.477299, 47.447746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701801, 33.095497, 47.495216>,  <35.767456, 32.866417, 47.523697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701801, 33.095497, 47.495216>,  <35.592377, 33.477299, 47.447746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701801, 33.095497, 47.495216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747481, 0.133319, -0.650767,
		0.605338, 0.266736, 0.749945,
		0.273565, -0.954504, 0.118677,
		35.783871, 32.809147, 47.530819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269821, 33.519131, 47.356922>,  <35.592377, 33.477299, 47.447746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269821, 33.519131, 47.356922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165173, 33.139282, 47.287910>,  <36.102383, 32.911373, 47.246502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165173, 33.139282, 47.287910>,  <36.269821, 33.519131, 47.356922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165173, 33.139282, 47.287910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598071, -0.019202, -0.801213,
		0.757539, -0.312800, 0.572967,
		-0.261622, -0.949625, -0.172531,
		36.086685, 32.854393, 47.236153>
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
