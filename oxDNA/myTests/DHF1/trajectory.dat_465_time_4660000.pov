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
	<2.463255, 3.180343, 0.721528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.503250, 3.056328, 1.099709>,  <2.527247, 2.981919, 1.326617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.503250, 3.056328, 1.099709>,  <2.463255, 3.180343, 0.721528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.503250, 3.056328, 1.099709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570212, -0.796552, -0.200906,
		0.815390, -0.519020, -0.256433,
		0.099988, -0.310038, 0.945452,
		2.533246, 2.963316, 1.383344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.642026, 2.421286, 0.734232>,  <2.463255, 3.180343, 0.721528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.642026, 2.421286, 0.734232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.492362, 2.501484, 1.096405>,  <2.402564, 2.549603, 1.313709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.492362, 2.501484, 1.096405>,  <2.642026, 2.421286, 0.734232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.492362, 2.501484, 1.096405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485707, -0.874092, -0.007157,
		0.789996, -0.442453, 0.424431,
		-0.374159, 0.200495, 0.905432,
		2.380114, 2.561632, 1.368035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.688987, 1.779801, 1.114444>,  <2.642026, 2.421286, 0.734232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.688987, 1.779801, 1.114444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.394004, 2.005962, 1.262215>,  <2.217014, 2.141659, 1.350877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.394004, 2.005962, 1.262215>,  <2.688987, 1.779801, 1.114444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.394004, 2.005962, 1.262215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571985, -0.813701, 0.103555,
		0.359154, -0.134940, 0.923472,
		-0.737457, 0.565404, 0.369427,
		2.172767, 2.175584, 1.373043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.489910, 1.462976, 1.753606>,  <2.688987, 1.779801, 1.114444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.489910, 1.462976, 1.753606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.185931, 1.666317, 1.591591>,  <2.003543, 1.788322, 1.494382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.185931, 1.666317, 1.591591>,  <2.489910, 1.462976, 1.753606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.185931, 1.666317, 1.591591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622766, -0.747906, 0.229779,
		-0.186121, 0.426864, 0.884955,
		-0.759948, 0.508353, -0.405038,
		1.957946, 1.818823, 1.470080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.952423, 1.134234, 2.032205>,  <2.489910, 1.462976, 1.753606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.952423, 1.134234, 2.032205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.725605, 1.354267, 1.786972>,  <1.589514, 1.486287, 1.639832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.725605, 1.354267, 1.786972>,  <1.952423, 1.134234, 2.032205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.725605, 1.354267, 1.786972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760769, -0.635075, 0.133829,
		-0.315736, 0.542300, 0.778602,
		-0.567046, 0.550082, -0.613082,
		1.555491, 1.519292, 1.603048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.333188, 1.306924, 2.370317>,  <1.952423, 1.134234, 2.032205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.333188, 1.306924, 2.370317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.275812, 1.320244, 1.974678>,  <1.241386, 1.328236, 1.737294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.275812, 1.320244, 1.974678>,  <1.333188, 1.306924, 2.370317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.275812, 1.320244, 1.974678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778870, -0.620391, 0.092067,
		-0.610562, 0.783586, 0.114927,
		-0.143442, 0.033301, -0.989098,
		1.232779, 1.330234, 1.677948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.633434, 1.288160, 2.409102>,  <1.333188, 1.306924, 2.370317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.633434, 1.288160, 2.409102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737454, 1.200890, 2.032852>,  <0.799866, 1.148527, 1.807102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.737454, 1.200890, 2.032852>,  <0.633434, 1.288160, 2.409102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.737454, 1.200890, 2.032852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741910, -0.668631, -0.050024,
		-0.618016, 0.710867, -0.335745,
		0.260049, -0.218177, -0.940624,
		0.815469, 1.135437, 1.750665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.008652, 1.170055, 2.016508>,  <0.633434, 1.288160, 2.409102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.008652, 1.170055, 2.016508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.281969, 1.002190, 1.777512>,  <0.445959, 0.901471, 1.634114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.281969, 1.002190, 1.777512>,  <0.008652, 1.170055, 2.016508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.281969, 1.002190, 1.777512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633357, -0.747820, -0.199060,
		-0.363277, 0.514441, -0.776776,
		0.683293, -0.419662, -0.597490,
		0.486957, 0.876291, 1.598264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.427720, -0.142933, 1.288849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.082432, -0.311569, 1.177773>,  <0.124741, -0.412751, 1.111127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.082432, -0.311569, 1.177773>,  <-0.427720, -0.142933, 1.288849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.082432, -0.311569, 1.177773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405930, 0.906682, -0.114668,
		0.300121, -0.013739, 0.953802,
		0.863220, -0.421591, -0.277691,
		0.176534, -0.438047, 1.094465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.302692, -0.052824, 1.821425>,  <-0.427720, -0.142933, 1.288849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.302692, -0.052824, 1.821425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.331764, -0.055717, 1.422493>,  <0.349208, -0.057454, 1.183134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.331764, -0.055717, 1.422493>,  <0.302692, -0.052824, 1.821425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.331764, -0.055717, 1.422493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420015, 0.907199, 0.024029,
		0.904602, -0.420639, 0.068975,
		0.072681, -0.007234, -0.997329,
		0.353568, -0.057888, 1.123294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.091101, -0.026368, 1.623840>,  <0.302692, -0.052824, 1.821425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.091101, -0.026368, 1.623840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813265, 0.147865, 1.394821>,  <0.646563, 0.252405, 1.257410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813265, 0.147865, 1.394821>,  <1.091101, -0.026368, 1.623840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.813265, 0.147865, 1.394821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377842, 0.898139, 0.224905,
		0.612191, -0.060115, -0.788421,
		-0.694592, 0.435583, -0.572547,
		0.604887, 0.278540, 1.223057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.336407, 0.160862, 0.967984>,  <1.091101, -0.026368, 1.623840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.336407, 0.160862, 0.967984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061737, 0.398361, 1.135765>,  <0.896935, 0.540860, 1.236434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061737, 0.398361, 1.135765>,  <1.336407, 0.160862, 0.967984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.061737, 0.398361, 1.135765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675325, 0.734586, 0.065732,
		-0.269096, 0.328403, -0.905394,
		-0.686676, 0.593747, 0.419453,
		0.855734, 0.576485, 1.261601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.178333, 0.703811, 0.592544>,  <1.336407, 0.160862, 0.967984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.178333, 0.703811, 0.592544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.062305, 0.855980, 0.943802>,  <0.992689, 0.947281, 1.154557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.062305, 0.855980, 0.943802>,  <1.178333, 0.703811, 0.592544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.062305, 0.855980, 0.943802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461629, 0.859406, -0.219820,
		-0.838307, 0.341614, -0.424902,
		-0.290070, 0.380423, 0.878145,
		0.975285, 0.970107, 1.207245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.112515, 1.381212, 0.433764>,  <1.178333, 0.703811, 0.592544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.112515, 1.381212, 0.433764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.124079, 1.375572, 0.833557>,  <1.131017, 1.372188, 1.073433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.124079, 1.375572, 0.833557>,  <1.112515, 1.381212, 0.433764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.124079, 1.375572, 0.833557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550836, 0.834603, -0.004160,
		-0.834113, 0.550671, 0.031895,
		0.028910, -0.014099, 0.999483,
		1.132752, 1.371343, 1.133402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.961627, 2.004944, 0.583726>,  <1.112515, 1.381212, 0.433764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.961627, 2.004944, 0.583726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.150444, 1.866196, 0.907913>,  <1.263734, 1.782947, 1.102425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.150444, 1.866196, 0.907913>,  <0.961627, 2.004944, 0.583726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.150444, 1.866196, 0.907913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607218, 0.794418, -0.013661,
		-0.639111, 0.498579, 0.585625,
		0.472042, -0.346871, 0.810467,
		1.292057, 1.762134, 1.151053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.019295, 2.562929, 1.006354>,  <0.961627, 2.004944, 0.583726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.019295, 2.562929, 1.006354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.309395, 2.307129, 1.108376>,  <1.483455, 2.153649, 1.169588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.309395, 2.307129, 1.108376>,  <1.019295, 2.562929, 1.006354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.309395, 2.307129, 1.108376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672457, 0.737438, -0.063148,
		-0.147703, 0.217311, 0.964863,
		0.725249, -0.639501, 0.255054,
		1.526969, 2.115278, 1.184892>
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
