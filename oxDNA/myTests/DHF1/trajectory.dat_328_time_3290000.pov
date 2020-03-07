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
	<1.496580, 3.840612, 2.908054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.197144, 3.737762, 3.152512>,  <1.017482, 3.676053, 3.299186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.197144, 3.737762, 3.152512>,  <1.496580, 3.840612, 2.908054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.197144, 3.737762, 3.152512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656614, -0.159556, 0.737157,
		-0.092029, 0.953115, 0.288273,
		-0.748591, -0.257124, 0.611145,
		0.972566, 3.660625, 3.335855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.584464, 4.261129, 3.541779>,  <1.496580, 3.840612, 2.908054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.584464, 4.261129, 3.541779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414780, 3.910370, 3.632195>,  <1.312969, 3.699914, 3.686444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.414780, 3.910370, 3.632195>,  <1.584464, 4.261129, 3.541779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.414780, 3.910370, 3.632195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709074, -0.166394, 0.685221,
		-0.563257, 0.450957, 0.692372,
		-0.424212, -0.876898, 0.226039,
		1.287516, 3.647300, 3.700006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.618030, 4.180533, 4.262993>,  <1.584464, 4.261129, 3.541779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.618030, 4.180533, 4.262993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.638000, 3.840363, 4.053505>,  <1.649983, 3.636260, 3.927812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.638000, 3.840363, 4.053505>,  <1.618030, 4.180533, 4.262993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.638000, 3.840363, 4.053505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920304, -0.164541, 0.354919,
		-0.388006, -0.499702, 0.774435,
		0.049927, -0.850426, -0.523721,
		1.652979, 3.585235, 3.896389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.768995, 3.695456, 4.796684>,  <1.618030, 4.180533, 4.262993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.768995, 3.695456, 4.796684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.887367, 3.562302, 4.438553>,  <1.958391, 3.482409, 4.223674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.887367, 3.562302, 4.438553>,  <1.768995, 3.695456, 4.796684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.887367, 3.562302, 4.438553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895492, -0.229532, 0.381326,
		-0.332445, -0.914605, 0.230171,
		0.295931, -0.332886, -0.895328,
		1.976147, 3.462436, 4.169954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.853561, 2.909667, 4.897786>,  <1.768995, 3.695456, 4.796684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.853561, 2.909667, 4.897786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.088879, 3.096680, 4.633869>,  <2.230069, 3.208887, 4.475519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.088879, 3.096680, 4.633869>,  <1.853561, 2.909667, 4.897786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.088879, 3.096680, 4.633869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803504, -0.246082, 0.542056,
		0.091066, -0.849033, -0.520433,
		0.588293, 0.467532, -0.659791,
		2.265367, 3.236939, 4.435932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.426953, 2.488861, 4.694900>,  <1.853561, 2.909667, 4.897786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.426953, 2.488861, 4.694900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.547871, 2.865593, 4.636147>,  <2.620421, 3.091632, 4.600895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.547871, 2.865593, 4.636147>,  <2.426953, 2.488861, 4.694900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.547871, 2.865593, 4.636147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896069, -0.228227, 0.380753,
		0.325082, -0.246716, -0.912937,
		0.302294, 0.941830, -0.146882,
		2.638559, 3.148142, 4.592082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.106226, 2.350294, 4.618288>,  <2.426953, 2.488861, 4.694900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.106226, 2.350294, 4.618288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.064377, 2.739136, 4.702255>,  <3.039267, 2.972441, 4.752636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.064377, 2.739136, 4.702255>,  <3.106226, 2.350294, 4.618288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.064377, 2.739136, 4.702255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861992, -0.016635, 0.506648,
		0.496007, 0.233956, -0.836207,
		-0.104623, 0.972105, 0.209919,
		3.032990, 3.030767, 4.765231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.798796, 2.669965, 4.521535>,  <3.106226, 2.350294, 4.618288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.798796, 2.669965, 4.521535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.608612, 2.912338, 4.776653>,  <3.494502, 3.057762, 4.929724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.608612, 2.912338, 4.776653>,  <3.798796, 2.669965, 4.521535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.608612, 2.912338, 4.776653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763477, -0.075991, 0.641349,
		0.437082, 0.791877, -0.426486,
		-0.475460, 0.605934, 0.637795,
		3.465974, 3.094118, 4.967992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.819393, 3.102065, 1.199939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.559416, 3.386871, 1.306229>,  <4.403430, 3.557755, 1.370002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.559416, 3.386871, 1.306229>,  <4.819393, 3.102065, 1.199939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.559416, 3.386871, 1.306229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711344, -0.446872, -0.542490,
		-0.267516, -0.541608, 0.796929,
		-0.649942, 0.712016, 0.265724,
		4.364433, 3.600476, 1.385946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.104608, 2.921084, 1.421631>,  <4.819393, 3.102065, 1.199939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.104608, 2.921084, 1.421631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.042278, 3.288559, 1.276451>,  <4.004880, 3.509044, 1.189343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.042278, 3.288559, 1.276451>,  <4.104608, 2.921084, 1.421631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.042278, 3.288559, 1.276451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742295, -0.351328, -0.570584,
		-0.651703, 0.180505, 0.736683,
		-0.155824, 0.918687, -0.362949,
		3.995531, 3.564165, 1.167566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.427060, 3.010153, 1.380741>,  <4.104608, 2.921084, 1.421631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.427060, 3.010153, 1.380741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.574400, 3.265305, 1.110207>,  <3.662804, 3.418395, 0.947886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.574400, 3.265305, 1.110207>,  <3.427060, 3.010153, 1.380741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.574400, 3.265305, 1.110207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730321, -0.251628, -0.635070,
		-0.575283, 0.727870, 0.373169,
		0.368349, 0.637878, -0.676336,
		3.684905, 3.456668, 0.907306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.820037, 3.293221, 1.087251>,  <3.427060, 3.010153, 1.380741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.820037, 3.293221, 1.087251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.129889, 3.341370, 0.838909>,  <3.315800, 3.370259, 0.689904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.129889, 3.341370, 0.838909>,  <2.820037, 3.293221, 1.087251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.129889, 3.341370, 0.838909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625464, 0.000664, -0.780253,
		-0.093508, 0.992729, 0.075803,
		0.774630, 0.120371, -0.620854,
		3.362278, 3.377481, 0.652653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.783535, 3.926667, 0.645734>,  <2.820037, 3.293221, 1.087251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.783535, 3.926667, 0.645734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.011492, 3.681381, 0.426941>,  <3.148266, 3.534209, 0.295665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.011492, 3.681381, 0.426941>,  <2.783535, 3.926667, 0.645734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.011492, 3.681381, 0.426941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661815, 0.052026, -0.747859,
		0.487056, 0.788201, -0.376186,
		0.569892, -0.613215, -0.546983,
		3.182459, 3.497417, 0.262846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.856060, 4.277369, 0.028790>,  <2.783535, 3.926667, 0.645734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.856060, 4.277369, 0.028790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.960049, 3.904465, -0.071854>,  <3.022442, 3.680722, -0.132240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.960049, 3.904465, -0.071854>,  <2.856060, 4.277369, 0.028790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.960049, 3.904465, -0.071854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595918, 0.050132, -0.801479,
		0.759800, 0.358301, -0.542517,
		0.259973, -0.932259, -0.251608,
		3.038041, 3.624787, -0.147336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.122108, 4.323821, -0.639790>,  <2.856060, 4.277369, 0.028790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.122108, 4.323821, -0.639790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.959246, 3.964661, -0.572857>,  <2.861528, 3.749165, -0.532697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.959246, 3.964661, -0.572857>,  <3.122108, 4.323821, -0.639790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.959246, 3.964661, -0.572857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662495, 0.164212, -0.730845,
		0.628748, -0.408424, -0.661714,
		-0.407156, -0.897900, 0.167331,
		2.837099, 3.695291, -0.522657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.048588, 4.050155, -1.330276>,  <3.122108, 4.323821, -0.639790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.048588, 4.050155, -1.330276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809433, 3.805862, -1.122608>,  <2.665940, 3.659287, -0.998007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809433, 3.805862, -1.122608>,  <3.048588, 4.050155, -1.330276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809433, 3.805862, -1.122608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727096, 0.140558, -0.671993,
		0.337435, -0.779262, -0.528099,
		-0.597887, -0.610732, 0.519169,
		2.630067, 3.622643, -0.966857>
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
