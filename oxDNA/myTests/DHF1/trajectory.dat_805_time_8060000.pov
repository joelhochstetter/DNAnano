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
	<1.118005, 2.863940, 3.627015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.411144, 2.932045, 3.890512>,  <1.587028, 2.972908, 4.048611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.411144, 2.932045, 3.890512>,  <1.118005, 2.863940, 3.627015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.411144, 2.932045, 3.890512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526294, 0.755465, 0.390239,
		-0.431216, -0.632679, 0.643249,
		0.732849, 0.170261, 0.658744,
		1.630999, 2.983123, 4.088136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.921366, 2.891798, 4.392380>,  <1.118005, 2.863940, 3.627015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.921366, 2.891798, 4.392380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.256836, 3.107437, 4.361399>,  <1.458118, 3.236821, 4.342810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.256836, 3.107437, 4.361399>,  <0.921366, 2.891798, 4.392380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.256836, 3.107437, 4.361399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364404, 0.661127, 0.655835,
		0.404767, -0.521807, 0.750920,
		0.838674, 0.539099, -0.077453,
		1.508438, 3.269167, 4.338163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.430947, 2.933436, 5.013235>,  <0.921366, 2.891798, 4.392380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.430947, 2.933436, 5.013235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.430538, 3.265984, 4.790947>,  <1.430293, 3.465512, 4.657574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.430538, 3.265984, 4.790947>,  <1.430947, 2.933436, 5.013235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.430538, 3.265984, 4.790947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572800, 0.455033, 0.681795,
		0.819694, 0.319013, 0.475744,
		-0.001022, 0.831369, -0.555719,
		1.430231, 3.515394, 4.624231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.249102, 3.482443, 5.443132>,  <1.430947, 2.933436, 5.013235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.249102, 3.482443, 5.443132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.216175, 3.667427, 5.090008>,  <1.196419, 3.778418, 4.878133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.216175, 3.667427, 5.090008>,  <1.249102, 3.482443, 5.443132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.216175, 3.667427, 5.090008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474137, 0.760974, 0.442847,
		0.876595, 0.455027, 0.156628,
		-0.082318, 0.462460, -0.882810,
		1.191480, 3.806165, 4.825165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.494549, 4.187732, 5.454634>,  <1.249102, 3.482443, 5.443132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.494549, 4.187732, 5.454634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.248497, 4.205681, 5.139774>,  <1.100866, 4.216450, 4.950859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.248497, 4.205681, 5.139774>,  <1.494549, 4.187732, 5.454634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.248497, 4.205681, 5.139774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430653, 0.817162, 0.383124,
		0.660419, 0.574658, -0.483336,
		-0.615129, 0.044872, -0.787148,
		1.063958, 4.219142, 4.903630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.508269, 4.875834, 5.203609>,  <1.494549, 4.187732, 5.454634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.508269, 4.875834, 5.203609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.159924, 4.722527, 5.080515>,  <0.950916, 4.630542, 5.006659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.159924, 4.722527, 5.080515>,  <1.508269, 4.875834, 5.203609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.159924, 4.722527, 5.080515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453297, 0.868325, 0.201331,
		0.190049, 0.314827, -0.929928,
		-0.870864, -0.383270, -0.307734,
		0.898664, 4.607545, 4.988194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.334479, 5.378819, 4.715474>,  <1.508269, 4.875834, 5.203609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.334479, 5.378819, 4.715474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.996967, 5.175316, 4.783829>,  <0.794461, 5.053214, 4.824841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.996967, 5.175316, 4.783829>,  <1.334479, 5.378819, 4.715474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.996967, 5.175316, 4.783829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490901, 0.860312, 0.137404,
		-0.216921, 0.032050, -0.975663,
		-0.843778, -0.508759, 0.170887,
		0.743834, 5.022688, 4.835094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.820955, 5.823292, 4.441245>,  <1.334479, 5.378819, 4.715474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.820955, 5.823292, 4.441245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.637115, 5.563568, 4.683622>,  <0.526812, 5.407734, 4.829049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.637115, 5.563568, 4.683622>,  <0.820955, 5.823292, 4.441245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.637115, 5.563568, 4.683622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677630, 0.697402, 0.233341,
		-0.574097, -0.303363, -0.760516,
		-0.459598, -0.649309, 0.605944,
		0.499236, 5.368775, 4.865406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.196119, 6.537754, 5.200650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.153313, 6.344116, 5.180603>,  <-0.362972, 6.227933, 5.168575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.153313, 6.344116, 5.180603>,  <0.196119, 6.537754, 5.200650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.153313, 6.344116, 5.180603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485456, -0.859440, -0.160300,
		0.034527, -0.164365, 0.985795,
		-0.873579, -0.484095, -0.050118,
		-0.415386, 6.198888, 5.165567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.262531, 5.962078, 5.577242>,  <0.196119, 6.537754, 5.200650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.262531, 5.962078, 5.577242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.043053, 5.836044, 5.351999>,  <-0.226403, 5.760424, 5.216854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.043053, 5.836044, 5.351999>,  <0.262531, 5.962078, 5.577242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.043053, 5.836044, 5.351999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328161, -0.941110, 0.081381,
		-0.555587, -0.122618, 0.822368,
		-0.763959, -0.315083, -0.563106,
		-0.272240, 5.741519, 5.183067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.052744, 5.377566, 5.925204>,  <0.262531, 5.962078, 5.577242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.052744, 5.377566, 5.925204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.063835, 5.360001, 5.525743>,  <-0.070490, 5.349462, 5.286067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.063835, 5.360001, 5.525743>,  <-0.052744, 5.377566, 5.925204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.063835, 5.360001, 5.525743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430251, -0.902284, 0.027729,
		-0.902284, -0.428901, 0.043913,
		-0.027729, -0.043913, -0.998650,
		-0.072154, 5.346827, 5.226148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.097091, 4.649911, 5.787846>,  <-0.052744, 5.377566, 5.925204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.097091, 4.649911, 5.787846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.063148, 4.862846, 5.489548>,  <0.159292, 4.990607, 5.310569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.063148, 4.862846, 5.489548>,  <-0.097091, 4.649911, 5.787846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.063148, 4.862846, 5.489548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465785, -0.819212, -0.334570,
		-0.789028, -0.213329, -0.576130,
		0.400599, 0.532337, -0.745746,
		0.183328, 5.022548, 5.265824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.373685, 4.350047, 5.082971>,  <-0.097091, 4.649911, 5.787846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.373685, 4.350047, 5.082971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.039764, 4.557213, 5.008278>,  <0.160588, 4.681513, 4.963462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.039764, 4.557213, 5.008278>,  <-0.373685, 4.350047, 5.082971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.039764, 4.557213, 5.008278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384217, -0.790978, -0.476162,
		-0.394313, 0.325755, -0.859303,
		0.834802, 0.517916, -0.186732,
		0.210676, 4.712587, 4.952258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.168926, 4.212151, 4.373372>,  <-0.373685, 4.350047, 5.082971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.168926, 4.212151, 4.373372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.164581, 4.331055, 4.559477>,  <0.364685, 4.402397, 4.671140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.164581, 4.331055, 4.559477>,  <-0.168926, 4.212151, 4.373372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.164581, 4.331055, 4.559477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524108, -0.691117, -0.497663,
		0.173616, 0.658783, -0.732026,
		0.833767, 0.297259, 0.465263,
		0.414711, 4.420232, 4.699056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.261271, 4.234407, 3.900095>,  <-0.168926, 4.212151, 4.373372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.261271, 4.234407, 3.900095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.517990, 4.234474, 4.206844>,  <0.672022, 4.234515, 4.390894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.517990, 4.234474, 4.206844>,  <0.261271, 4.234407, 3.900095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.517990, 4.234474, 4.206844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549098, -0.698179, -0.459388,
		0.535338, 0.715923, -0.448182,
		0.641798, 0.000168, 0.766874,
		0.710529, 4.234525, 4.436906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.925972, 4.392169, 3.648856>,  <0.261271, 4.234407, 3.900095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.925972, 4.392169, 3.648856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.976028, 4.186829, 3.988459>,  <1.006062, 4.063624, 4.192220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.976028, 4.186829, 3.988459>,  <0.925972, 4.392169, 3.648856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.976028, 4.186829, 3.988459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546043, -0.678833, -0.490941,
		0.828358, 0.525031, 0.195362,
		0.125141, -0.513351, 0.849006,
		1.013571, 4.032824, 4.243160>
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
