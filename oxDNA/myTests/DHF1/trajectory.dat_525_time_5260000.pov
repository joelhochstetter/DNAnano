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
	<3.332373, 3.848861, 1.274021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.474417, 4.207066, 1.381321>,  <3.559644, 4.421988, 1.445701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.474417, 4.207066, 1.381321>,  <3.332373, 3.848861, 1.274021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.474417, 4.207066, 1.381321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467474, 0.418607, -0.778612,
		-0.809547, 0.151092, 0.567279,
		0.355109, 0.895510, 0.268250,
		3.580950, 4.475718, 1.461796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.714675, 4.339000, 1.057319>,  <3.332373, 3.848861, 1.274021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.714675, 4.339000, 1.057319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.076611, 4.504223, 1.098598>,  <3.293772, 4.603356, 1.123366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.076611, 4.504223, 1.098598>,  <2.714675, 4.339000, 1.057319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.076611, 4.504223, 1.098598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112318, 0.465390, -0.877950,
		-0.410671, 0.782813, 0.467497,
		0.904839, 0.413057, 0.103198,
		3.348062, 4.628140, 1.129558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.630672, 5.024307, 0.916984>,  <2.714675, 4.339000, 1.057319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.630672, 5.024307, 0.916984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.000664, 4.890327, 0.845184>,  <3.222660, 4.809940, 0.802104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.000664, 4.890327, 0.845184>,  <2.630672, 5.024307, 0.916984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.000664, 4.890327, 0.845184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076703, 0.298068, -0.951458,
		0.372193, 0.893848, 0.250015,
		0.924981, -0.334949, -0.179500,
		3.278158, 4.789843, 0.791334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.133589, 5.551322, 0.623751>,  <2.630672, 5.024307, 0.916984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.133589, 5.551322, 0.623751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.246304, 5.198669, 0.472321>,  <3.313932, 4.987078, 0.381462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.246304, 5.198669, 0.472321>,  <3.133589, 5.551322, 0.623751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.246304, 5.198669, 0.472321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145611, 0.350700, -0.925099,
		0.948364, 0.315806, -0.029553,
		0.281787, -0.881633, -0.378576,
		3.330840, 4.934179, 0.358748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.509541, 5.688685, -0.010750>,  <3.133589, 5.551322, 0.623751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.509541, 5.688685, -0.010750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.413378, 5.306278, -0.077965>,  <3.355680, 5.076834, -0.118294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.413378, 5.306278, -0.077965>,  <3.509541, 5.688685, -0.010750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.413378, 5.306278, -0.077965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356746, 0.248020, -0.900677,
		0.902738, -0.156583, -0.400681,
		-0.240408, -0.956017, -0.168037,
		3.341256, 5.019473, -0.128376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.778577, 5.475871, -0.617666>,  <3.509541, 5.688685, -0.010750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.778577, 5.475871, -0.617666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.474472, 5.218597, -0.581184>,  <3.292009, 5.064233, -0.559296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.474472, 5.218597, -0.581184>,  <3.778577, 5.475871, -0.617666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.474472, 5.218597, -0.581184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295145, 0.216926, -0.930501,
		0.578699, -0.734342, -0.354753,
		-0.760261, -0.643183, 0.091203,
		3.246393, 5.025642, -0.553823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.681997, 5.253407, -1.246733>,  <3.778577, 5.475871, -0.617666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.681997, 5.253407, -1.246733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.334364, 5.145817, -1.080673>,  <3.125784, 5.081263, -0.981037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.334364, 5.145817, -1.080673>,  <3.681997, 5.253407, -1.246733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.334364, 5.145817, -1.080673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491777, 0.379184, -0.783821,
		0.053410, -0.885366, -0.461817,
		-0.869081, -0.268974, 0.415150,
		3.073639, 5.065124, -0.956128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.299761, 4.805711, -1.777692>,  <3.681997, 5.253407, -1.246733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.299761, 4.805711, -1.777692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046950, 4.979588, -1.521072>,  <2.895263, 5.083913, -1.367101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046950, 4.979588, -1.521072>,  <3.299761, 4.805711, -1.777692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.046950, 4.979588, -1.521072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494569, 0.411092, -0.765771,
		-0.596609, -0.801279, -0.044837,
		-0.632028, 0.434690, 0.641548,
		2.857341, 5.109995, -1.328608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.710759, 0.886326, 2.747890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.342882, 0.788452, 2.870720>,  <2.122156, 0.729728, 2.944418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.342882, 0.788452, 2.870720>,  <2.710759, 0.886326, 2.747890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.342882, 0.788452, 2.870720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353946, -0.178103, 0.918151,
		-0.169967, 0.953105, 0.250405,
		-0.919692, -0.244685, 0.307076,
		2.066974, 0.715047, 2.962843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.623954, 1.218345, 3.368675>,  <2.710759, 0.886326, 2.747890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.623954, 1.218345, 3.368675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.397993, 0.888397, 3.359932>,  <2.262417, 0.690429, 3.354686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.397993, 0.888397, 3.359932>,  <2.623954, 1.218345, 3.368675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.397993, 0.888397, 3.359932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393752, -0.292746, 0.871354,
		-0.725152, 0.483623, 0.490167,
		-0.564901, -0.824869, -0.021858,
		2.228523, 0.640936, 3.353374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.335175, 1.012097, 4.040218>,  <2.623954, 1.218345, 3.368675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.335175, 1.012097, 4.040218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.336962, 0.679482, 3.818039>,  <2.338034, 0.479912, 3.684731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.336962, 0.679482, 3.818039>,  <2.335175, 1.012097, 4.040218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.336962, 0.679482, 3.818039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236252, -0.538853, 0.808593,
		-0.971682, -0.134837, 0.194045,
		0.004466, -0.831539, -0.555449,
		2.338302, 0.430020, 3.651404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.917156, 0.485179, 4.482904>,  <2.335175, 1.012097, 4.040218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.917156, 0.485179, 4.482904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.185959, 0.332703, 4.228943>,  <2.347240, 0.241217, 4.076566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.185959, 0.332703, 4.228943>,  <1.917156, 0.485179, 4.482904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.185959, 0.332703, 4.228943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446023, -0.476060, 0.757912,
		-0.591162, -0.792502, -0.149895,
		0.672006, -0.381192, -0.634902,
		2.387561, 0.218345, 4.038472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.907143, -0.213996, 4.538516>,  <1.917156, 0.485179, 4.482904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.907143, -0.213996, 4.538516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266375, -0.126728, 4.385750>,  <2.481913, -0.074367, 4.294090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266375, -0.126728, 4.385750>,  <1.907143, -0.213996, 4.538516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.266375, -0.126728, 4.385750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439435, -0.482173, 0.757896,
		-0.018799, -0.848476, -0.528900,
		0.898077, 0.218170, -0.381914,
		2.535798, -0.061277, 4.271175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.336484, -0.834518, 4.460687>,  <1.907143, -0.213996, 4.538516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.336484, -0.834518, 4.460687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.606380, -0.540710, 4.489548>,  <2.768318, -0.364426, 4.506865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.606380, -0.540710, 4.489548>,  <2.336484, -0.834518, 4.460687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.606380, -0.540710, 4.489548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404295, -0.449632, 0.796477,
		0.617470, -0.508245, -0.600348,
		0.674742, 0.734519, 0.072153,
		2.808803, -0.320355, 4.511194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.938366, -1.184561, 4.582056>,  <2.336484, -0.834518, 4.460687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.938366, -1.184561, 4.582056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.030703, -0.812263, 4.695496>,  <3.086104, -0.588885, 4.763560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.030703, -0.812263, 4.695496>,  <2.938366, -1.184561, 4.582056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.030703, -0.812263, 4.695496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390888, -0.355628, 0.848962,
		0.891022, -0.085119, -0.445909,
		0.230840, 0.930744, 0.283600,
		3.099955, -0.533040, 4.780576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.559997, -1.287973, 4.910486>,  <2.938366, -1.184561, 4.582056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.559997, -1.287973, 4.910486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.471657, -0.924526, 5.052269>,  <3.418653, -0.706458, 5.137339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.471657, -0.924526, 5.052269>,  <3.559997, -1.287973, 4.910486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.471657, -0.924526, 5.052269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517520, -0.198873, 0.832239,
		0.826678, 0.367241, -0.426306,
		-0.220852, 0.908616, 0.354459,
		3.405401, -0.651941, 5.158607>
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
