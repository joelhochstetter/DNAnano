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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
	<39.814514, 34.817608, 50.814449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803444, 35.216980, 50.794956>,  <39.796803, 35.456604, 50.783260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803444, 35.216980, 50.794956>,  <39.814514, 34.817608, 50.814449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803444, 35.216980, 50.794956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983352, 0.018432, -0.180772,
		-0.179590, -0.052927, -0.982317,
		-0.027673, 0.998428, -0.048735,
		39.795143, 35.516510, 50.780334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275440, 35.126083, 50.233974>,  <39.814514, 34.817608, 50.814449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275440, 35.126083, 50.233974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224293, 35.413609, 50.507313>,  <40.193604, 35.586124, 50.671314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224293, 35.413609, 50.507313>,  <40.275440, 35.126083, 50.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224293, 35.413609, 50.507313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984029, 0.177982, -0.003092,
		-0.123845, 0.672033, -0.730092,
		-0.127865, 0.718815, 0.683342,
		40.185932, 35.629253, 50.712315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619331, 35.730301, 49.912689>,  <40.275440, 35.126083, 50.233974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619331, 35.730301, 49.912689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592247, 35.779804, 50.308689>,  <40.575996, 35.809505, 50.546288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592247, 35.779804, 50.308689>,  <40.619331, 35.730301, 49.912689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592247, 35.779804, 50.308689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981361, 0.187129, 0.043730,
		-0.179846, 0.974508, -0.134126,
		-0.067714, 0.123761, 0.989999,
		40.571934, 35.816933, 50.605690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102276, 36.370720, 50.096832>,  <40.619331, 35.730301, 49.912689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102276, 36.370720, 50.096832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049889, 36.165054, 50.435886>,  <41.018456, 36.041653, 50.639317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049889, 36.165054, 50.435886>,  <41.102276, 36.370720, 50.096832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049889, 36.165054, 50.435886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981363, 0.054030, 0.184410,
		-0.140615, 0.855986, 0.497509,
		-0.130972, -0.514168, 0.847631,
		41.010597, 36.010803, 50.690174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442902, 36.767494, 50.613976>,  <41.102276, 36.370720, 50.096832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442902, 36.767494, 50.613976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428661, 36.393959, 50.756340>,  <41.420116, 36.169838, 50.841759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428661, 36.393959, 50.756340>,  <41.442902, 36.767494, 50.613976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428661, 36.393959, 50.756340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996034, -0.004095, 0.088882,
		-0.081544, 0.357662, 0.930284,
		-0.035599, -0.933842, 0.355910,
		41.417980, 36.113808, 50.863113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086258, 36.737236, 50.840347>,  <41.442902, 36.767494, 50.613976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086258, 36.737236, 50.840347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002434, 36.361717, 50.949707>,  <41.952141, 36.136406, 51.015324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002434, 36.361717, 50.949707>,  <42.086258, 36.737236, 50.840347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002434, 36.361717, 50.949707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932619, -0.107894, 0.344356,
		-0.293781, 0.327140, 0.898149,
		-0.209558, -0.938796, 0.273400,
		41.939568, 36.080078, 51.031727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291508, 36.580910, 51.593670>,  <42.086258, 36.737236, 50.840347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291508, 36.580910, 51.593670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275879, 36.240726, 51.383831>,  <42.266502, 36.036617, 51.257927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275879, 36.240726, 51.383831>,  <42.291508, 36.580910, 51.593670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275879, 36.240726, 51.383831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946407, -0.199939, 0.253651,
		-0.320606, -0.486570, 0.812688,
		-0.039068, -0.850455, -0.524595,
		42.264160, 35.985588, 51.226452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595268, 36.110252, 52.099941>,  <42.291508, 36.580910, 51.593670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595268, 36.110252, 52.099941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626438, 35.950401, 51.734596>,  <42.645142, 35.854488, 51.515388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626438, 35.950401, 51.734596>,  <42.595268, 36.110252, 52.099941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626438, 35.950401, 51.734596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894038, -0.377390, 0.241399,
		-0.441162, -0.835388, 0.327876,
		0.077924, -0.399630, -0.913359,
		42.649815, 35.830513, 51.460590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847897, 35.472595, 52.212711>,  <42.595268, 36.110252, 52.099941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847897, 35.472595, 52.212711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925396, 35.558846, 51.829887>,  <42.971897, 35.610596, 51.600193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925396, 35.558846, 51.829887>,  <42.847897, 35.472595, 52.212711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925396, 35.558846, 51.829887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955374, -0.263204, 0.134109,
		-0.222985, -0.940335, -0.256997,
		0.193750, 0.215624, -0.957062,
		42.983521, 35.623531, 51.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470699, 35.134129, 52.096996>,  <42.847897, 35.472595, 52.212711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470699, 35.134129, 52.096996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455044, 35.384209, 51.785202>,  <43.445652, 35.534256, 51.598125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455044, 35.384209, 51.785202>,  <43.470699, 35.134129, 52.096996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455044, 35.384209, 51.785202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988021, -0.092319, -0.123657,
		-0.149271, -0.774988, -0.614094,
		-0.039140, 0.625197, -0.779485,
		43.443302, 35.571766, 51.551357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814102, 34.800594, 51.702869>,  <43.470699, 35.134129, 52.096996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814102, 34.800594, 51.702869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805828, 35.159771, 51.527016>,  <43.800861, 35.375275, 51.421505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805828, 35.159771, 51.527016>,  <43.814102, 34.800594, 51.702869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805828, 35.159771, 51.527016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934496, -0.138934, -0.327743,
		-0.355374, -0.417615, -0.836246,
		-0.020687, 0.897939, -0.439633,
		43.799622, 35.429153, 51.395126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046024, 34.685669, 51.088654>,  <43.814102, 34.800594, 51.702869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046024, 34.685669, 51.088654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105930, 35.075531, 51.155132>,  <44.141872, 35.309448, 51.195019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105930, 35.075531, 51.155132>,  <44.046024, 34.685669, 51.088654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105930, 35.075531, 51.155132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934572, -0.084681, -0.345550,
		-0.322718, 0.207070, -0.923566,
		0.149761, 0.974654, 0.166194,
		44.150860, 35.367928, 51.204990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636982, 34.700554, 50.662998>,  <44.046024, 34.685669, 51.088654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636982, 34.700554, 50.662998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644661, 35.047546, 50.861839>,  <44.649269, 35.255741, 50.981144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644661, 35.047546, 50.861839>,  <44.636982, 34.700554, 50.662998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644661, 35.047546, 50.861839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995189, 0.031193, -0.092871,
		-0.096069, 0.496495, -0.862707,
		0.019199, 0.867479, 0.497104,
		44.650421, 35.307789, 51.010971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175076, 35.180069, 50.324322>,  <44.636982, 34.700554, 50.662998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175076, 35.180069, 50.324322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129162, 35.333954, 50.690670>,  <45.101612, 35.426285, 50.910480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129162, 35.333954, 50.690670>,  <45.175076, 35.180069, 50.324322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129162, 35.333954, 50.690670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993123, 0.023049, 0.114784,
		0.023049, 0.922751, -0.384708,
		-0.114784, 0.384708, 0.915874,
		45.094727, 35.449368, 50.965431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619820, 35.803383, 50.352287>,  <45.175076, 35.180069, 50.324322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619820, 35.803383, 50.352287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569908, 35.667725, 50.725254>,  <45.539963, 35.586330, 50.949036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569908, 35.667725, 50.725254>,  <45.619820, 35.803383, 50.352287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569908, 35.667725, 50.725254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991632, -0.011246, 0.128608,
		-0.033131, 0.940666, 0.337714,
		-0.124775, -0.339148, 0.932421,
		45.532475, 35.565979, 51.004982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973419, 36.151917, 50.730289>,  <45.619820, 35.803383, 50.352287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973419, 36.151917, 50.730289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921486, 35.847450, 50.984459>,  <45.890324, 35.664768, 51.136963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921486, 35.847450, 50.984459>,  <45.973419, 36.151917, 50.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921486, 35.847450, 50.984459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975519, 0.016660, 0.219284,
		-0.177498, 0.648341, 0.740371,
		-0.129836, -0.761168, 0.635425,
		45.882534, 35.619099, 51.175087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386131, 36.305653, 51.204819>,  <45.973419, 36.151917, 50.730289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386131, 36.305653, 51.204819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332737, 35.919968, 51.296444>,  <46.300701, 35.688557, 51.351421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332737, 35.919968, 51.296444>,  <46.386131, 36.305653, 51.204819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332737, 35.919968, 51.296444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938729, -0.048906, 0.341169,
		-0.317758, 0.260572, 0.911664,
		-0.133485, -0.964215, 0.229067,
		46.292690, 35.630703, 51.365166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639137, 36.241795, 51.937927>,  <46.386131, 36.305653, 51.204819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639137, 36.241795, 51.937927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655407, 35.883202, 51.761444>,  <46.665169, 35.668045, 51.655556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655407, 35.883202, 51.761444>,  <46.639137, 36.241795, 51.937927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655407, 35.883202, 51.761444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903520, -0.155536, 0.399325,
		-0.426611, -0.414879, 0.803666,
		0.040673, -0.896484, -0.441204,
		46.667610, 35.614258, 51.629082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981739, 35.771900, 52.385647>,  <46.639137, 36.241795, 51.937927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981739, 35.771900, 52.385647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011723, 35.545223, 52.057442>,  <47.029713, 35.409218, 51.860519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011723, 35.545223, 52.057442>,  <46.981739, 35.771900, 52.385647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011723, 35.545223, 52.057442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958453, -0.186158, 0.216132,
		-0.275225, -0.802625, 0.529191,
		0.074960, -0.566690, -0.820514,
		47.034210, 35.375217, 51.811287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.410065, 35.167057, 52.543079>,  <46.981739, 35.771900, 52.385647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.410065, 35.167057, 52.543079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406349, 35.248158, 52.151405>,  <47.404121, 35.296818, 51.916401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406349, 35.248158, 52.151405>,  <47.410065, 35.167057, 52.543079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406349, 35.248158, 52.151405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996339, -0.081344, -0.026291,
		-0.084981, -0.975846, -0.201251,
		-0.009286, 0.202749, -0.979187,
		47.403564, 35.308983, 51.857651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836197, 34.613182, 52.196800>,  <47.410065, 35.167057, 52.543079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836197, 34.613182, 52.196800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820362, 34.936619, 51.961987>,  <47.810860, 35.130680, 51.821098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820362, 34.936619, 51.961987>,  <47.836197, 34.613182, 52.196800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.820362, 34.936619, 51.961987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988030, -0.055984, -0.143743,
		-0.149094, -0.585703, -0.796695,
		-0.039589, 0.808590, -0.587039,
		47.808487, 35.179195, 51.785873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.113232, 35.206570, 51.484035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.234591, 35.048634, 51.830917>,  <24.307405, 34.953873, 52.039047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.234591, 35.048634, 51.830917>,  <24.113232, 35.206570, 51.484035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234591, 35.048634, 51.830917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898679, 0.421101, -0.122678,
		-0.316744, 0.816562, 0.482596,
		0.303396, -0.394841, 0.867209,
		24.325609, 34.930180, 52.091080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452055, 35.711311, 51.886288>,  <24.113232, 35.206570, 51.484035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452055, 35.711311, 51.886288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.604353, 35.363705, 52.012680>,  <24.695732, 35.155140, 52.088516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.604353, 35.363705, 52.012680>,  <24.452055, 35.711311, 51.886288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604353, 35.363705, 52.012680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920513, 0.323806, -0.218644,
		0.087691, 0.374109, 0.923230,
		0.380744, -0.869018, 0.315977,
		24.718576, 35.103001, 52.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083752, 35.912174, 52.161362>,  <24.452055, 35.711311, 51.886288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083752, 35.912174, 52.161362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.163664, 35.520939, 52.137943>,  <25.211611, 35.286198, 52.123890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.163664, 35.520939, 52.137943>,  <25.083752, 35.912174, 52.161362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163664, 35.520939, 52.137943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976244, 0.193575, 0.097347,
		-0.083880, -0.076607, 0.993527,
		0.199779, -0.978090, -0.058550,
		25.223598, 35.227512, 52.120377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498505, 35.846767, 52.746189>,  <25.083752, 35.912174, 52.161362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498505, 35.846767, 52.746189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.530504, 35.524746, 52.511074>,  <25.549704, 35.331535, 52.370007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.530504, 35.524746, 52.511074>,  <25.498505, 35.846767, 52.746189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530504, 35.524746, 52.511074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996506, 0.078798, 0.027700,
		0.024017, -0.587948, 0.808542,
		0.079997, -0.805052, -0.587786,
		25.554504, 35.283230, 52.334740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057304, 35.473583, 53.076012>,  <25.498505, 35.846767, 52.746189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057304, 35.473583, 53.076012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.033745, 35.318008, 52.708260>,  <26.019609, 35.224663, 52.487610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.033745, 35.318008, 52.708260>,  <26.057304, 35.473583, 53.076012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033745, 35.318008, 52.708260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997397, 0.015462, -0.070438,
		0.041611, -0.921136, 0.387011,
		-0.058899, -0.388934, -0.919381,
		26.016075, 35.201328, 52.432446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498716, 34.891880, 53.003284>,  <26.057304, 35.473583, 53.076012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498716, 34.891880, 53.003284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.455139, 35.022598, 52.627766>,  <26.428993, 35.101028, 52.402454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.455139, 35.022598, 52.627766>,  <26.498716, 34.891880, 53.003284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455139, 35.022598, 52.627766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994027, 0.041975, -0.100743,
		0.006484, -0.944163, -0.329414,
		-0.108945, 0.326793, -0.938796,
		26.422455, 35.120636, 52.346127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068167, 34.637806, 52.701012>,  <26.498716, 34.891880, 53.003284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068167, 34.637806, 52.701012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.946243, 34.882549, 52.409061>,  <26.873089, 35.029396, 52.233891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.946243, 34.882549, 52.409061>,  <27.068167, 34.637806, 52.701012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946243, 34.882549, 52.409061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952388, 0.190265, -0.238234,
		-0.006897, -0.767739, -0.640725,
		-0.304809, 0.611862, -0.729874,
		26.854801, 35.066109, 52.190098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546675, 34.531693, 52.125008>,  <27.068167, 34.637806, 52.701012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546675, 34.531693, 52.125008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.355515, 34.873295, 52.042751>,  <27.240818, 35.078255, 51.993397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.355515, 34.873295, 52.042751>,  <27.546675, 34.531693, 52.125008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355515, 34.873295, 52.042751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855009, 0.398565, -0.331821,
		-0.201415, -0.334402, -0.920656,
		-0.477902, 0.854003, -0.205639,
		27.212143, 35.129498, 51.981060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483150, 34.649582, 51.348045>,  <27.546675, 34.531693, 52.125008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483150, 34.649582, 51.348045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.495190, 34.991325, 51.555573>,  <27.502413, 35.196369, 51.680088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.495190, 34.991325, 51.555573>,  <27.483150, 34.649582, 51.348045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495190, 34.991325, 51.555573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864259, 0.238512, -0.442910,
		-0.502146, 0.461723, -0.731205,
		0.030100, 0.854356, 0.518816,
		27.504219, 35.247631, 51.711216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844658, 35.129940, 50.791573>,  <27.483150, 34.649582, 51.348045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844658, 35.129940, 50.791573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.882929, 35.263840, 51.166546>,  <27.905891, 35.344181, 51.391529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.882929, 35.263840, 51.166546>,  <27.844658, 35.129940, 50.791573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882929, 35.263840, 51.166546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948954, 0.253680, -0.187439,
		-0.300555, 0.907517, -0.293394,
		0.095676, 0.334753, 0.937436,
		27.911633, 35.364265, 51.447777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052397, 35.836666, 50.759686>,  <27.844658, 35.129940, 50.791573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052397, 35.836666, 50.759686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.161770, 35.732227, 51.129997>,  <28.227394, 35.669563, 51.352184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.161770, 35.732227, 51.129997>,  <28.052397, 35.836666, 50.759686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161770, 35.732227, 51.129997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944000, 0.257609, -0.206160,
		-0.184661, 0.930305, 0.316912,
		0.273430, -0.261095, 0.925778,
		28.243799, 35.653900, 51.407730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437719, 36.400322, 51.012043>,  <28.052397, 35.836666, 50.759686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437719, 36.400322, 51.012043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.558294, 36.085552, 51.227406>,  <28.630640, 35.896690, 51.356625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.558294, 36.085552, 51.227406>,  <28.437719, 36.400322, 51.012043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558294, 36.085552, 51.227406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953399, 0.241133, -0.181344,
		0.012876, 0.567983, 0.822940,
		0.301438, -0.786925, 0.538409,
		28.648726, 35.849476, 51.388927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099955, 36.511494, 51.157890>,  <28.437719, 36.400322, 51.012043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099955, 36.511494, 51.157890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.133707, 36.133209, 51.283440>,  <29.153959, 35.906239, 51.358768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.133707, 36.133209, 51.283440>,  <29.099955, 36.511494, 51.157890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133707, 36.133209, 51.283440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968925, 0.004368, -0.247318,
		0.232519, 0.324992, 0.916687,
		0.084381, -0.945707, 0.313877,
		29.159021, 35.849499, 51.377602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742683, 36.424065, 51.542858>,  <29.099955, 36.511494, 51.157890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742683, 36.424065, 51.542858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.624985, 36.073757, 51.389786>,  <29.554365, 35.863571, 51.297943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.624985, 36.073757, 51.389786>,  <29.742683, 36.424065, 51.542858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624985, 36.073757, 51.389786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915258, -0.142927, -0.376663,
		0.275175, -0.461083, 0.843612,
		-0.294248, -0.875771, -0.382680,
		29.536711, 35.811028, 51.274982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216400, 36.069748, 51.715752>,  <29.742683, 36.424065, 51.542858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216400, 36.069748, 51.715752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.051521, 35.859695, 51.417938>,  <29.952593, 35.733665, 51.239250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.051521, 35.859695, 51.417938>,  <30.216400, 36.069748, 51.715752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051521, 35.859695, 51.417938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910022, -0.276931, -0.308496,
		-0.044186, -0.804706, 0.592028,
		-0.412199, -0.525127, -0.744536,
		29.927862, 35.702156, 51.194576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688105, 35.474655, 51.715946>,  <30.216400, 36.069748, 51.715752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688105, 35.474655, 51.715946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496756, 35.488167, 51.364944>,  <30.381947, 35.496273, 51.154343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496756, 35.488167, 51.364944>,  <30.688105, 35.474655, 51.715946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496756, 35.488167, 51.364944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865316, -0.152131, -0.477581,
		-0.149616, -0.987784, 0.043567,
		-0.478375, 0.033754, -0.877507,
		30.353245, 35.498299, 51.101692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769958, 34.803497, 51.338657>,  <30.688105, 35.474655, 51.715946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769958, 34.803497, 51.338657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.694136, 35.078438, 51.058193>,  <30.648642, 35.243401, 50.889915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.694136, 35.078438, 51.058193>,  <30.769958, 34.803497, 51.338657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694136, 35.078438, 51.058193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819800, -0.282210, -0.498281,
		-0.540366, -0.669262, -0.509993,
		-0.189556, 0.687347, -0.701158,
		30.637268, 35.284641, 50.847847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169359, 34.569145, 50.868786>,  <30.769958, 34.803497, 51.338657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169359, 34.569145, 50.868786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066221, 34.918427, 50.703362>,  <31.004337, 35.127995, 50.604107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.066221, 34.918427, 50.703362>,  <31.169359, 34.569145, 50.868786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066221, 34.918427, 50.703362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817497, -0.030979, -0.575099,
		-0.514989, -0.486375, -0.705851,
		-0.257847, 0.873201, -0.413564,
		30.988867, 35.180386, 50.579292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111708, 34.463570, 50.173534>,  <31.169359, 34.569145, 50.868786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111708, 34.463570, 50.173534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.193321, 34.854855, 50.188904>,  <31.242289, 35.089626, 50.198124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.193321, 34.854855, 50.188904>,  <31.111708, 34.463570, 50.173534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193321, 34.854855, 50.188904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840301, -0.154861, -0.519532,
		-0.502260, 0.138289, -0.853587,
		0.204033, 0.978210, 0.038424,
		31.254532, 35.148319, 50.200432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458174, 34.517761, 49.602379>,  <31.111708, 34.463570, 50.173534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458174, 34.517761, 49.602379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.535761, 34.865261, 49.784657>,  <31.582314, 35.073761, 49.894024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.535761, 34.865261, 49.784657>,  <31.458174, 34.517761, 49.602379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535761, 34.865261, 49.784657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799816, 0.128928, -0.586235,
		-0.568041, 0.478180, -0.669831,
		0.193966, 0.868747, 0.455692,
		31.593950, 35.125885, 49.921364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628448, 35.034828, 49.033722>,  <31.458174, 34.517761, 49.602379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628448, 35.034828, 49.033722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.800589, 35.205814, 49.351734>,  <31.903873, 35.308407, 49.542542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.800589, 35.205814, 49.351734>,  <31.628448, 35.034828, 49.033722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800589, 35.205814, 49.351734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870686, 0.035764, -0.490537,
		-0.238122, 0.903323, -0.356800,
		0.430353, 0.427468, 0.795027,
		31.929695, 35.334053, 49.590240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.093115, 34.843678, 34.388538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.105639, 34.944458, 34.775433>,  <24.113153, 35.004925, 35.007568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.105639, 34.944458, 34.775433>,  <24.093115, 34.843678, 34.388538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.105639, 34.944458, 34.775433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943756, 0.311231, -0.111623,
		-0.329156, 0.916327, -0.228036,
		0.031311, 0.251951, 0.967233,
		24.115032, 35.020042, 35.065601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.157232, 35.552155, 34.368034>,  <24.093115, 34.843678, 34.388538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.157232, 35.552155, 34.368034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.298056, 35.346695, 34.681011>,  <24.382549, 35.223419, 34.868797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.298056, 35.346695, 34.681011>,  <24.157232, 35.552155, 34.368034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298056, 35.346695, 34.681011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878136, 0.470583, -0.086188,
		-0.323934, 0.717435, 0.616728,
		0.352056, -0.513652, 0.782443,
		24.403673, 35.192600, 34.915745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208786, 35.869858, 35.101425>,  <24.157232, 35.552155, 34.368034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208786, 35.869858, 35.101425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.485682, 35.609741, 34.976254>,  <24.651819, 35.453671, 34.901150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.485682, 35.609741, 34.976254>,  <24.208786, 35.869858, 35.101425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485682, 35.609741, 34.976254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676909, 0.735420, -0.030850,
		0.250193, -0.190465, 0.949277,
		0.692241, -0.650293, -0.312924,
		24.693354, 35.414654, 34.882378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852282, 35.798698, 35.602005>,  <24.208786, 35.869858, 35.101425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852282, 35.798698, 35.602005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.915415, 35.754429, 35.209507>,  <24.953295, 35.727867, 34.974007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.915415, 35.754429, 35.209507>,  <24.852282, 35.798698, 35.602005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915415, 35.754429, 35.209507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670115, 0.741865, 0.024115,
		0.725282, -0.661353, 0.191256,
		0.157835, -0.110674, -0.981244,
		24.962765, 35.721226, 34.915134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524681, 35.556927, 35.463055>,  <24.852282, 35.798698, 35.602005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524681, 35.556927, 35.463055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.438522, 35.794674, 35.153130>,  <25.386827, 35.937321, 34.967175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.438522, 35.794674, 35.153130>,  <25.524681, 35.556927, 35.463055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438522, 35.794674, 35.153130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836354, 0.521868, 0.167826,
		0.504099, -0.611866, -0.609512,
		-0.215398, 0.594368, -0.774810,
		25.373903, 35.972984, 34.920685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258865, 35.706184, 35.222721>,  <25.524681, 35.556927, 35.463055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258865, 35.706184, 35.222721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.014561, 35.983784, 35.070229>,  <25.867979, 36.150345, 34.978733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.014561, 35.983784, 35.070229>,  <26.258865, 35.706184, 35.222721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014561, 35.983784, 35.070229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761001, 0.647487, -0.040488,
		0.218745, -0.314848, -0.923591,
		-0.610761, 0.693997, -0.381234,
		25.831333, 36.191982, 34.955860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585905, 36.011818, 34.661270>,  <26.258865, 35.706184, 35.222721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585905, 36.011818, 34.661270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.337322, 36.302551, 34.778233>,  <26.188173, 36.476990, 34.848412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.337322, 36.302551, 34.778233>,  <26.585905, 36.011818, 34.661270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337322, 36.302551, 34.778233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750156, 0.659695, -0.045482,
		-0.225957, 0.191086, -0.955212,
		-0.621458, 0.726835, 0.292407,
		26.150885, 36.520603, 34.865955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302732, 35.900249, 34.859509>,  <26.585905, 36.011818, 34.661270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302732, 35.900249, 34.859509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.637228, 35.957481, 34.647762>,  <27.837925, 35.991821, 34.520714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.637228, 35.957481, 34.647762>,  <27.302732, 35.900249, 34.859509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637228, 35.957481, 34.647762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219350, 0.972042, -0.083783,
		0.502582, 0.186180, 0.844244,
		0.836240, 0.143077, -0.529370,
		27.888100, 36.000404, 34.488953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757757, 36.279083, 35.309895>,  <27.302732, 35.900249, 34.859509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757757, 36.279083, 35.309895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.761988, 36.362747, 34.918766>,  <27.764526, 36.412945, 34.684090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.761988, 36.362747, 34.918766>,  <27.757757, 36.279083, 35.309895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761988, 36.362747, 34.918766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022475, 0.977681, 0.208888,
		0.999691, 0.019767, 0.015041,
		0.010576, 0.209162, -0.977824,
		27.765162, 36.425495, 34.625420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032579, 36.774204, 35.843182>,  <27.757757, 36.279083, 35.309895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032579, 36.774204, 35.843182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276581, 37.026752, 35.651653>,  <28.422981, 37.178280, 35.536736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276581, 37.026752, 35.651653>,  <28.032579, 36.774204, 35.843182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276581, 37.026752, 35.651653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005020, 0.607337, 0.794428,
		0.792383, -0.482200, 0.373647,
		0.610003, 0.631367, -0.478823,
		28.459581, 37.216164, 35.508007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541933, 36.881058, 36.277489>,  <28.032579, 36.774204, 35.843182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541933, 36.881058, 36.277489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472795, 37.206993, 36.056156>,  <28.431313, 37.402554, 35.923359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472795, 37.206993, 36.056156>,  <28.541933, 36.881058, 36.277489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472795, 37.206993, 36.056156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026367, 0.557753, 0.829588,
		0.984596, 0.157979, -0.074919,
		-0.172844, 0.814834, -0.553327,
		28.420942, 37.451443, 35.890160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951649, 37.488148, 36.458687>,  <28.541933, 36.881058, 36.277489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951649, 37.488148, 36.458687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.688009, 37.537098, 36.755501>,  <28.529825, 37.566467, 36.933590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.688009, 37.537098, 36.755501>,  <28.951649, 37.488148, 36.458687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688009, 37.537098, 36.755501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672107, -0.346854, 0.654190,
		0.337432, 0.929902, 0.146365,
		-0.659099, 0.122372, 0.742033,
		28.490280, 37.573811, 36.978111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287138, 37.770679, 37.075470>,  <28.951649, 37.488148, 36.458687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287138, 37.770679, 37.075470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.946915, 37.601494, 37.200470>,  <28.742781, 37.499985, 37.275471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.946915, 37.601494, 37.200470>,  <29.287138, 37.770679, 37.075470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946915, 37.601494, 37.200470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477127, -0.370803, 0.796778,
		-0.221130, 0.826807, 0.517195,
		-0.850559, -0.422959, 0.312497,
		28.691748, 37.474606, 37.294220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148851, 37.975662, 37.819530>,  <29.287138, 37.770679, 37.075470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148851, 37.975662, 37.819530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995100, 37.628044, 37.694939>,  <28.902849, 37.419476, 37.620182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995100, 37.628044, 37.694939>,  <29.148851, 37.975662, 37.819530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995100, 37.628044, 37.694939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459395, -0.472719, 0.751993,
		-0.800756, 0.145956, 0.580936,
		-0.384377, -0.869042, -0.311482,
		28.879787, 37.367332, 37.601494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550333, 37.583023, 38.210220>,  <29.148851, 37.975662, 37.819530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550333, 37.583023, 38.210220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.806700, 37.324627, 38.044365>,  <28.960520, 37.169590, 37.944851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.806700, 37.324627, 38.044365>,  <28.550333, 37.583023, 38.210220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806700, 37.324627, 38.044365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268629, -0.317258, 0.909498,
		-0.719071, -0.694297, -0.029805,
		0.640917, -0.645987, -0.414639,
		28.998976, 37.130833, 37.919971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506287, 37.001724, 38.647293>,  <28.550333, 37.583023, 38.210220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506287, 37.001724, 38.647293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860640, 37.037685, 38.465248>,  <29.073252, 37.059261, 38.356022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860640, 37.037685, 38.465248>,  <28.506287, 37.001724, 38.647293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860640, 37.037685, 38.465248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463063, -0.230513, 0.855825,
		-0.027965, -0.968907, -0.245840,
		0.885884, 0.089907, -0.455111,
		29.126406, 37.064655, 38.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939760, 36.419174, 38.738041>,  <28.506287, 37.001724, 38.647293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939760, 36.419174, 38.738041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189528, 36.724644, 38.672428>,  <29.339388, 36.907925, 38.633060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189528, 36.724644, 38.672428>,  <28.939760, 36.419174, 38.738041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189528, 36.724644, 38.672428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553037, -0.283948, 0.783277,
		0.551592, -0.579807, -0.599642,
		0.624417, 0.763673, -0.164031,
		29.376852, 36.953747, 38.623219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659328, 36.162895, 38.653721>,  <28.939760, 36.419174, 38.738041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659328, 36.162895, 38.653721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.604389, 36.528351, 38.806774>,  <29.571424, 36.747623, 38.898605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.604389, 36.528351, 38.806774>,  <29.659328, 36.162895, 38.653721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604389, 36.528351, 38.806774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626881, -0.218909, 0.747729,
		0.766913, 0.342565, -0.542673,
		-0.137351, 0.913634, 0.382632,
		29.563185, 36.802441, 38.921562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307323, 36.307209, 39.067928>,  <29.659328, 36.162895, 38.653721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307323, 36.307209, 39.067928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049646, 36.568634, 39.226860>,  <29.895041, 36.725491, 39.322220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049646, 36.568634, 39.226860>,  <30.307323, 36.307209, 39.067928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049646, 36.568634, 39.226860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551597, 0.037098, 0.833286,
		0.529865, 0.755962, -0.384402,
		-0.644192, 0.653564, 0.397329,
		29.856388, 36.764702, 39.346058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612423, 37.000561, 39.333881>,  <30.307323, 36.307209, 39.067928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612423, 37.000561, 39.333881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.289705, 36.880459, 39.537422>,  <30.096075, 36.808399, 39.659546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.289705, 36.880459, 39.537422>,  <30.612423, 37.000561, 39.333881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289705, 36.880459, 39.537422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504898, 0.096939, 0.857718,
		-0.306858, 0.948922, 0.073386,
		-0.806794, -0.300251, 0.508855,
		30.047667, 36.790382, 39.690079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539297, 37.445377, 39.971153>,  <30.612423, 37.000561, 39.333881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539297, 37.445377, 39.971153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309219, 37.127186, 40.047428>,  <30.171173, 36.936272, 40.093193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309219, 37.127186, 40.047428>,  <30.539297, 37.445377, 39.971153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309219, 37.127186, 40.047428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407252, -0.076303, 0.910123,
		-0.709434, 0.601157, 0.367850,
		-0.575195, -0.795480, 0.190691,
		30.136662, 36.888542, 40.104637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301388, 37.562439, 40.612072>,  <30.539297, 37.445377, 39.971153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301388, 37.562439, 40.612072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276896, 37.167706, 40.552193>,  <30.262199, 36.930866, 40.516266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276896, 37.167706, 40.552193>,  <30.301388, 37.562439, 40.612072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276896, 37.167706, 40.552193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420696, -0.161525, 0.892706,
		-0.905133, -0.008316, 0.425047,
		-0.061233, -0.986834, -0.149700,
		30.258526, 36.871655, 40.507282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782440, 37.112572, 41.030457>,  <30.301388, 37.562439, 40.612072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782440, 37.112572, 41.030457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.127550, 36.949383, 40.911003>,  <30.334616, 36.851471, 40.839333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.127550, 36.949383, 40.911003>,  <29.782440, 37.112572, 41.030457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127550, 36.949383, 40.911003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379855, 0.133257, 0.915398,
		-0.333660, -0.903219, 0.269940,
		0.862776, -0.407969, -0.298629,
		30.386383, 36.826992, 40.821415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884066, 36.397015, 41.476406>,  <29.782440, 37.112572, 41.030457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884066, 36.397015, 41.476406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208782, 36.616199, 41.395676>,  <30.403612, 36.747711, 41.347237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.208782, 36.616199, 41.395676>,  <29.884066, 36.397015, 41.476406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208782, 36.616199, 41.395676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252215, -0.017288, 0.967517,
		0.526673, -0.836325, -0.152238,
		0.811790, 0.547961, -0.201828,
		30.452320, 36.780586, 41.335129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372175, 36.119980, 41.918636>,  <29.884066, 36.397015, 41.476406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372175, 36.119980, 41.918636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455154, 36.498638, 41.819988>,  <30.504942, 36.725834, 41.760799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455154, 36.498638, 41.819988>,  <30.372175, 36.119980, 41.918636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455154, 36.498638, 41.819988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098493, 0.230615, 0.968048,
		0.973276, -0.225108, -0.045398,
		0.207446, 0.946648, -0.246623,
		30.517387, 36.782631, 41.746002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060202, 36.456284, 42.139263>,  <30.372175, 36.119980, 41.918636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060202, 36.456284, 42.139263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753860, 36.713131, 42.152855>,  <30.570055, 36.867241, 42.161011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753860, 36.713131, 42.152855>,  <31.060202, 36.456284, 42.139263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753860, 36.713131, 42.152855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040987, -0.003992, 0.999152,
		0.641708, 0.766596, -0.023262,
		-0.765853, 0.642117, 0.033982,
		30.524105, 36.905766, 42.163048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275784, 37.119541, 42.488197>,  <31.060202, 36.456284, 42.139263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275784, 37.119541, 42.488197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.896957, 37.003578, 42.543362>,  <30.669662, 36.933998, 42.576462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.896957, 37.003578, 42.543362>,  <31.275784, 37.119541, 42.488197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896957, 37.003578, 42.543362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157946, -0.046753, 0.986340,
		-0.279503, 0.955911, 0.090069,
		-0.947064, -0.289911, 0.137915,
		30.612839, 36.916603, 42.584736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837381, 37.540768, 42.981438>,  <31.275784, 37.119541, 42.488197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837381, 37.540768, 42.981438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711235, 37.161301, 42.991016>,  <30.635548, 36.933620, 42.996761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711235, 37.161301, 42.991016>,  <30.837381, 37.540768, 42.981438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711235, 37.161301, 42.991016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141923, -0.022202, 0.989629,
		-0.938298, 0.315492, 0.141640,
		-0.315365, -0.948668, 0.023944,
		30.616625, 36.876701, 42.998199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580414, 37.610130, 43.627594>,  <30.837381, 37.540768, 42.981438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580414, 37.610130, 43.627594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648298, 37.226772, 43.535793>,  <30.689030, 36.996758, 43.480713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648298, 37.226772, 43.535793>,  <30.580414, 37.610130, 43.627594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648298, 37.226772, 43.535793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358839, -0.156797, 0.920135,
		-0.917841, -0.238511, 0.317301,
		0.169711, -0.958398, -0.229502,
		30.699211, 36.939255, 43.466942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237549, 37.102921, 44.020634>,  <30.580414, 37.610130, 43.627594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237549, 37.102921, 44.020634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584137, 36.948364, 43.894184>,  <30.792089, 36.855633, 43.818314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.584137, 36.948364, 43.894184>,  <30.237549, 37.102921, 44.020634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584137, 36.948364, 43.894184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347638, 0.012510, 0.937545,
		-0.358301, -0.922252, 0.145163,
		0.866469, -0.386388, -0.316127,
		30.844078, 36.832447, 43.799347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526134, 36.446980, 44.149323>,  <30.237549, 37.102921, 44.020634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526134, 36.446980, 44.149323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.863440, 36.656204, 44.099819>,  <31.065823, 36.781738, 44.070118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.863440, 36.656204, 44.099819>,  <30.526134, 36.446980, 44.149323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863440, 36.656204, 44.099819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120235, 0.040856, 0.991904,
		0.523882, -0.851316, -0.028438,
		0.843262, 0.523060, -0.123762,
		31.116419, 36.813122, 44.062691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161333, 36.229195, 44.516205>,  <30.526134, 36.446980, 44.149323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161333, 36.229195, 44.516205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232067, 36.616016, 44.442951>,  <31.274508, 36.848110, 44.398998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232067, 36.616016, 44.442951>,  <31.161333, 36.229195, 44.516205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232067, 36.616016, 44.442951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258906, 0.133808, 0.956589,
		0.949578, -0.216571, -0.226714,
		0.176833, 0.967053, -0.183133,
		31.285118, 36.906132, 44.388012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622349, 36.430916, 45.035542>,  <31.161333, 36.229195, 44.516205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622349, 36.430916, 45.035542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446285, 36.765865, 44.905888>,  <31.340647, 36.966835, 44.828094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446285, 36.765865, 44.905888>,  <31.622349, 36.430916, 45.035542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446285, 36.765865, 44.905888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033963, 0.345199, 0.937915,
		0.897277, 0.423842, -0.123503,
		-0.440160, 0.837374, -0.324134,
		31.314238, 37.017078, 44.808647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804035, 36.493999, 45.764488>,  <31.622349, 36.430916, 45.035542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804035, 36.493999, 45.764488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.163662, 36.416939, 45.607231>,  <32.379440, 36.370705, 45.512878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.163662, 36.416939, 45.607231>,  <31.804035, 36.493999, 45.764488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163662, 36.416939, 45.607231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233150, -0.549376, 0.802388,
		-0.370562, -0.813064, -0.449011,
		0.899069, -0.192648, -0.393144,
		32.433384, 36.359142, 45.489288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936626, 35.784050, 45.621361>,  <31.804035, 36.493999, 45.764488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936626, 35.784050, 45.621361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275848, 35.969688, 45.723671>,  <32.479382, 36.081070, 45.785057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275848, 35.969688, 45.723671>,  <31.936626, 35.784050, 45.621361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275848, 35.969688, 45.723671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139053, -0.660658, 0.737696,
		0.511339, -0.590041, -0.624807,
		0.848055, 0.464094, 0.255773,
		32.530266, 36.108917, 45.800404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671413, 35.837955, 46.336281>,  <31.936626, 35.784050, 45.621361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671413, 35.837955, 46.336281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816519, 35.538208, 46.557858>,  <31.903582, 35.358360, 46.690804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816519, 35.538208, 46.557858>,  <31.671413, 35.837955, 46.336281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816519, 35.538208, 46.557858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476501, 0.660012, 0.580802,
		-0.800842, 0.053261, 0.596502,
		0.362764, -0.749365, 0.553944,
		31.925348, 35.313400, 46.724041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930927, 36.145336, 46.885403>,  <31.671413, 35.837955, 46.336281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930927, 36.145336, 46.885403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066570, 35.783173, 46.987572>,  <32.147957, 35.565876, 47.048874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066570, 35.783173, 46.987572>,  <31.930927, 36.145336, 46.885403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066570, 35.783173, 46.987572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704158, 0.424337, 0.569297,
		-0.623833, -0.013193, 0.781446,
		0.339107, -0.905408, 0.255426,
		32.168301, 35.511551, 47.064198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181782, 36.236481, 47.487473>,  <31.930927, 36.145336, 46.885403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181782, 36.236481, 47.487473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.348545, 35.882278, 47.405426>,  <32.448605, 35.669758, 47.356197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.348545, 35.882278, 47.405426>,  <32.181782, 36.236481, 47.487473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348545, 35.882278, 47.405426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796006, 0.246747, 0.552712,
		-0.438816, -0.393702, 0.807737,
		0.416910, -0.885502, -0.205113,
		32.473618, 35.616627, 47.343891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374695, 35.878578, 48.114475>,  <32.181782, 36.236481, 47.487473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374695, 35.878578, 48.114475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606857, 35.718796, 47.830627>,  <32.746155, 35.622925, 47.660316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606857, 35.718796, 47.830627>,  <32.374695, 35.878578, 48.114475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606857, 35.718796, 47.830627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809031, 0.382080, 0.446636,
		0.092721, -0.833337, 0.544933,
		0.580407, -0.399455, -0.709622,
		32.780979, 35.598961, 47.617741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149220, 35.530594, 48.803768>,  <32.374695, 35.878578, 48.114475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149220, 35.530594, 48.803768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268646, 35.512558, 49.185097>,  <32.340302, 35.501736, 49.413895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268646, 35.512558, 49.185097>,  <32.149220, 35.530594, 48.803768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268646, 35.512558, 49.185097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929439, -0.213162, -0.301173,
		0.216791, 0.975976, -0.021736,
		0.298571, -0.045089, 0.953322,
		32.358219, 35.499031, 49.471092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751789, 36.071415, 48.930798>,  <32.149220, 35.530594, 48.803768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751789, 36.071415, 48.930798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757099, 35.758793, 49.180275>,  <32.760284, 35.571220, 49.329964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757099, 35.758793, 49.180275>,  <32.751789, 36.071415, 48.930798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757099, 35.758793, 49.180275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952642, -0.179628, -0.245372,
		0.303805, 0.597416, 0.742157,
		0.013277, -0.781555, 0.623695,
		32.761082, 35.524326, 49.367382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124981, 36.199844, 49.545383>,  <32.751789, 36.071415, 48.930798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124981, 36.199844, 49.545383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134430, 35.800476, 49.525002>,  <33.140099, 35.560856, 49.512772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134430, 35.800476, 49.525002>,  <33.124981, 36.199844, 49.545383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134430, 35.800476, 49.525002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999721, 0.023647, 0.000099,
		0.001106, -0.050941, 0.998701,
		0.023622, -0.998422, -0.050953,
		33.141518, 35.500950, 49.509716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726162, 35.982979, 50.035637>,  <33.124981, 36.199844, 49.545383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726162, 35.982979, 50.035637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644394, 35.674355, 49.794670>,  <33.595333, 35.489182, 49.650089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644394, 35.674355, 49.794670>,  <33.726162, 35.982979, 50.035637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644394, 35.674355, 49.794670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973909, -0.098349, -0.204518,
		0.098550, -0.628510, 0.771533,
		-0.204421, -0.771559, -0.602419,
		33.583069, 35.442886, 49.613945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243114, 35.498425, 50.254940>,  <33.726162, 35.982979, 50.035637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243114, 35.498425, 50.254940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139599, 35.370762, 49.890266>,  <34.077492, 35.294163, 49.671463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139599, 35.370762, 49.890266>,  <34.243114, 35.498425, 50.254940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139599, 35.370762, 49.890266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965844, -0.072551, -0.248761,
		0.013251, -0.944920, 0.327034,
		-0.258785, -0.319160, -0.911684,
		34.061962, 35.275013, 49.616760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852428, 35.085297, 50.035393>,  <34.243114, 35.498425, 50.254940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852428, 35.085297, 50.035393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648243, 35.103123, 49.691895>,  <34.525730, 35.113819, 49.485798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648243, 35.103123, 49.691895>,  <34.852428, 35.085297, 50.035393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648243, 35.103123, 49.691895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817110, -0.285963, -0.500557,
		-0.267873, -0.957204, 0.109564,
		-0.510466, 0.044560, -0.858743,
		34.495102, 35.116493, 49.434273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935432, 34.474545, 49.724506>,  <34.852428, 35.085297, 50.035393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935432, 34.474545, 49.724506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831074, 34.716255, 49.423367>,  <34.768459, 34.861282, 49.242683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831074, 34.716255, 49.423367>,  <34.935432, 34.474545, 49.724506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831074, 34.716255, 49.423367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717358, -0.400517, -0.570073,
		-0.646010, -0.688796, -0.328985,
		-0.260900, 0.604273, -0.752851,
		34.752804, 34.897537, 49.197510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896534, 34.048100, 49.252571>,  <34.935432, 34.474545, 49.724506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896534, 34.048100, 49.252571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940769, 34.397747, 49.063389>,  <34.967312, 34.607536, 48.949879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940769, 34.397747, 49.063389>,  <34.896534, 34.048100, 49.252571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940769, 34.397747, 49.063389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666850, -0.418118, -0.616837,
		-0.736940, -0.247177, -0.629144,
		0.110588, 0.874117, -0.472958,
		34.973946, 34.659981, 48.921501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905468, 33.990829, 48.499290>,  <34.896534, 34.048100, 49.252571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905468, 33.990829, 48.499290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091564, 34.335796, 48.579079>,  <35.203224, 34.542774, 48.626953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091564, 34.335796, 48.579079>,  <34.905468, 33.990829, 48.499290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091564, 34.335796, 48.579079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766822, -0.280093, -0.577523,
		-0.442193, 0.421650, -0.791630,
		0.465243, 0.862415, 0.199475,
		35.231136, 34.594521, 48.638920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284302, 34.246437, 47.779549>,  <34.905468, 33.990829, 48.499290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284302, 34.246437, 47.779549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452366, 34.428806, 48.093388>,  <35.553204, 34.538227, 48.281693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452366, 34.428806, 48.093388>,  <35.284302, 34.246437, 47.779549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452366, 34.428806, 48.093388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902636, -0.298915, -0.309673,
		0.093339, 0.838320, -0.537129,
		0.420161, 0.455927, 0.784599,
		35.578415, 34.565586, 48.328766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903336, 34.491379, 47.469952>,  <35.284302, 34.246437, 47.779549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903336, 34.491379, 47.469952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996017, 34.510620, 47.858589>,  <36.051628, 34.522163, 48.091770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996017, 34.510620, 47.858589>,  <35.903336, 34.491379, 47.469952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996017, 34.510620, 47.858589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935744, -0.284007, -0.209099,
		0.265882, 0.957615, -0.110817,
		0.231709, 0.048100, 0.971595,
		36.065529, 34.525051, 48.150066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590561, 34.876537, 47.548420>,  <35.903336, 34.491379, 47.469952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590561, 34.876537, 47.548420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539822, 34.663837, 47.883358>,  <36.509380, 34.536217, 48.084320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539822, 34.663837, 47.883358>,  <36.590561, 34.876537, 47.548420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539822, 34.663837, 47.883358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903494, -0.410354, -0.123728,
		0.409401, 0.740845, 0.532485,
		-0.126844, -0.531751, 0.837348,
		36.501770, 34.504311, 48.134563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159641, 34.999023, 47.996433>,  <36.590561, 34.876537, 47.548420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159641, 34.999023, 47.996433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994850, 34.644707, 48.081898>,  <36.895977, 34.432117, 48.133175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994850, 34.644707, 48.081898>,  <37.159641, 34.999023, 47.996433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994850, 34.644707, 48.081898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848287, -0.458454, -0.265008,
		0.332695, 0.072068, 0.940277,
		-0.411975, -0.885791, 0.213659,
		36.871258, 34.378971, 48.145996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742680, 34.572536, 48.190212>,  <37.159641, 34.999023, 47.996433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742680, 34.572536, 48.190212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445625, 34.305782, 48.165676>,  <37.267395, 34.145729, 48.150955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445625, 34.305782, 48.165676>,  <37.742680, 34.572536, 48.190212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445625, 34.305782, 48.165676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669147, -0.735177, -0.108428,
		0.027210, -0.121571, 0.992210,
		-0.742632, -0.666885, -0.061345,
		37.222836, 34.105717, 48.147274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204956, 35.071274, 48.557568>,  <37.742680, 34.572536, 48.190212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204956, 35.071274, 48.557568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853115, 35.158497, 48.726685>,  <37.642010, 35.210831, 48.828156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853115, 35.158497, 48.726685>,  <38.204956, 35.071274, 48.557568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853115, 35.158497, 48.726685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251473, -0.541290, 0.802351,
		0.403815, 0.812068, 0.421282,
		-0.879599, 0.218061, 0.422794,
		37.589233, 35.223915, 48.853523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341705, 35.232956, 49.228584>,  <38.204956, 35.071274, 48.557568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341705, 35.232956, 49.228584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962734, 35.108612, 49.198250>,  <37.735352, 35.034004, 49.180050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962734, 35.108612, 49.198250>,  <38.341705, 35.232956, 49.228584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962734, 35.108612, 49.198250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097588, -0.506425, 0.856744,
		-0.304735, 0.804300, 0.510136,
		-0.947425, -0.310863, -0.075835,
		37.678505, 35.015354, 49.175499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839256, 34.619488, 49.186054>,  <38.341705, 35.232956, 49.228584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839256, 34.619488, 49.186054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900085, 35.014175, 49.208881>,  <38.936584, 35.250988, 49.222576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900085, 35.014175, 49.208881>,  <38.839256, 34.619488, 49.186054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900085, 35.014175, 49.208881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309222, -0.007340, 0.950961,
		0.938752, -0.162263, 0.303999,
		0.152074, 0.986720, 0.057066,
		38.945709, 35.310192, 49.226002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304272, 34.828056, 49.761063>,  <38.839256, 34.619488, 49.186054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304272, 34.828056, 49.761063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051132, 35.116714, 49.648830>,  <38.899246, 35.289909, 49.581490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051132, 35.116714, 49.648830>,  <39.304272, 34.828056, 49.761063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051132, 35.116714, 49.648830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365611, 0.040916, 0.929868,
		0.682515, 0.691053, 0.237948,
		-0.632852, 0.721645, -0.280583,
		38.861275, 35.333206, 49.564655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981251, 34.602108, 50.430679>,  <39.304272, 34.828056, 49.761063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981251, 34.602108, 50.430679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204639, 34.424026, 50.710651>,  <39.338673, 34.317177, 50.878635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204639, 34.424026, 50.710651>,  <38.981251, 34.602108, 50.430679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204639, 34.424026, 50.710651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790154, -0.028663, 0.612238,
		-0.252511, -0.894968, -0.367791,
		0.558475, -0.445208, 0.699925,
		39.372181, 34.290462, 50.920628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790199, 34.033226, 50.502705>,  <38.981251, 34.602108, 50.430679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790199, 34.033226, 50.502705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944374, 34.151855, 50.852215>,  <39.036880, 34.223034, 51.061920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944374, 34.151855, 50.852215>,  <38.790199, 34.033226, 50.502705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944374, 34.151855, 50.852215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908654, -0.042799, 0.415351,
		0.160579, -0.954050, 0.252987,
		0.385438, 0.296574, 0.873774,
		39.060005, 34.240826, 51.114346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750671, 33.607693, 51.225220>,  <38.790199, 34.033226, 50.502705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750671, 33.607693, 51.225220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766476, 33.989891, 51.342163>,  <38.775959, 34.219208, 51.412331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766476, 33.989891, 51.342163>,  <38.750671, 33.607693, 51.225220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766476, 33.989891, 51.342163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830279, -0.131397, 0.541639,
		0.555947, -0.264140, 0.788133,
		0.039510, 0.955492, 0.292360,
		38.778328, 34.276539, 51.429871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762035, 33.644890, 52.016064>,  <38.750671, 33.607693, 51.225220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762035, 33.644890, 52.016064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635357, 33.992474, 51.863949>,  <38.559349, 34.201023, 51.772678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635357, 33.992474, 51.863949>,  <38.762035, 33.644890, 52.016064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635357, 33.992474, 51.863949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755752, 0.011113, 0.654764,
		0.573187, 0.494766, 0.653195,
		-0.316696, 0.868955, -0.380290,
		38.540348, 34.253159, 51.749863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640747, 34.059269, 52.571857>,  <38.762035, 33.644890, 52.016064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640747, 34.059269, 52.571857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422791, 34.254478, 52.299114>,  <38.292015, 34.371605, 52.135468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422791, 34.254478, 52.299114>,  <38.640747, 34.059269, 52.571857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422791, 34.254478, 52.299114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712875, 0.158521, 0.683140,
		0.441477, 0.858314, 0.261524,
		-0.544892, 0.488024, -0.681854,
		38.259323, 34.400887, 52.094559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477283, 34.648811, 52.920460>,  <38.640747, 34.059269, 52.571857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477283, 34.648811, 52.920460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205090, 34.632572, 52.627804>,  <38.041775, 34.622829, 52.452209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205090, 34.632572, 52.627804>,  <38.477283, 34.648811, 52.920460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205090, 34.632572, 52.627804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707439, 0.296615, 0.641522,
		0.190970, 0.954134, -0.230562,
		-0.680486, -0.040597, -0.731636,
		38.000942, 34.620392, 52.408314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125362, 35.287304, 52.876842>,  <38.477283, 34.648811, 52.920460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125362, 35.287304, 52.876842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.882099, 35.008858, 52.724228>,  <37.736141, 34.841789, 52.632660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.882099, 35.008858, 52.724228>,  <38.125362, 35.287304, 52.876842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882099, 35.008858, 52.724228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740297, 0.323872, 0.589124,
		-0.286529, 0.640730, -0.712296,
		-0.608162, -0.696112, -0.381532,
		37.699650, 34.800026, 52.609768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454803, 35.660133, 52.776058>,  <38.125362, 35.287304, 52.876842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454803, 35.660133, 52.776058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396954, 35.264374, 52.781330>,  <37.362244, 35.026917, 52.784492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396954, 35.264374, 52.781330>,  <37.454803, 35.660133, 52.776058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396954, 35.264374, 52.781330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839518, 0.129743, 0.527614,
		-0.523731, 0.065240, -0.849382,
		-0.144623, -0.989399, 0.013181,
		37.353565, 34.967552, 52.785286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730194, 35.485752, 52.612438>,  <37.454803, 35.660133, 52.776058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730194, 35.485752, 52.612438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864155, 35.158924, 52.800156>,  <36.944530, 34.962830, 52.912788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864155, 35.158924, 52.800156>,  <36.730194, 35.485752, 52.612438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864155, 35.158924, 52.800156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857014, -0.057133, 0.512116,
		-0.391621, -0.573703, -0.719373,
		0.334902, -0.817069, 0.469297,
		36.964626, 34.913803, 52.940945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137772, 35.001221, 52.653614>,  <36.730194, 35.485752, 52.612438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137772, 35.001221, 52.653614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397739, 34.888706, 52.936028>,  <36.553719, 34.821198, 53.105476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397739, 34.888706, 52.936028>,  <36.137772, 35.001221, 52.653614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397739, 34.888706, 52.936028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759383, -0.202840, 0.618218,
		-0.030685, -0.937942, -0.345433,
		0.649920, -0.281286, 0.706033,
		36.592716, 34.804321, 53.147839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789402, 34.380287, 52.971489>,  <36.137772, 35.001221, 52.653614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789402, 34.380287, 52.971489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.057281, 34.483215, 53.250141>,  <36.218010, 34.544971, 53.417332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.057281, 34.483215, 53.250141>,  <35.789402, 34.380287, 52.971489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057281, 34.483215, 53.250141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654016, -0.240020, 0.717393,
		0.351804, -0.936043, 0.007550,
		0.669698, 0.257320, 0.696628,
		36.258190, 34.560410, 53.459129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690697, 33.867237, 53.589268>,  <35.789402, 34.380287, 52.971489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690697, 33.867237, 53.589268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.872330, 34.180309, 53.759548>,  <35.981308, 34.368153, 53.861717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.872330, 34.180309, 53.759548>,  <35.690697, 33.867237, 53.589268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872330, 34.180309, 53.759548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628018, -0.057749, 0.776053,
		0.631986, -0.619738, 0.465316,
		0.454078, 0.782682, 0.425703,
		36.008553, 34.415115, 53.887260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598106, 33.707966, 54.343388>,  <35.690697, 33.867237, 53.589268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598106, 33.707966, 54.343388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672234, 34.100315, 54.367207>,  <35.716709, 34.335724, 54.381496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672234, 34.100315, 54.367207>,  <35.598106, 33.707966, 54.343388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672234, 34.100315, 54.367207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539728, 0.050963, 0.840295,
		0.821188, -0.187862, 0.538849,
		0.185321, 0.980872, 0.059545,
		35.727829, 34.394577, 54.385071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823708, 33.856995, 55.043884>,  <35.598106, 33.707966, 54.343388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823708, 33.856995, 55.043884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.698444, 34.208202, 54.899101>,  <35.623287, 34.418926, 54.812233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.698444, 34.208202, 54.899101>,  <35.823708, 33.856995, 55.043884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698444, 34.208202, 54.899101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432621, 0.207400, 0.877397,
		0.845442, 0.431354, 0.314901,
		-0.313158, 0.878020, -0.361957,
		35.604496, 34.471607, 54.790516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848072, 34.299366, 55.656445>,  <35.823708, 33.856995, 55.043884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848072, 34.299366, 55.656445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616947, 34.502769, 55.401085>,  <35.478271, 34.624809, 55.247868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616947, 34.502769, 55.401085>,  <35.848072, 34.299366, 55.656445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616947, 34.502769, 55.401085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584799, 0.287691, 0.758448,
		0.569338, 0.811576, 0.131143,
		-0.577810, 0.508506, -0.638402,
		35.443604, 34.655323, 55.209564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776501, 34.984585, 55.882751>,  <35.848072, 34.299366, 55.656445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776501, 34.984585, 55.882751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466450, 34.944637, 55.633209>,  <35.280418, 34.920670, 55.483482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466450, 34.944637, 55.633209>,  <35.776501, 34.984585, 55.882751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466450, 34.944637, 55.633209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570609, 0.534593, 0.623391,
		0.271250, 0.839188, -0.471367,
		-0.775132, -0.099871, -0.623856,
		35.233910, 34.914677, 55.446053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475109, 35.603985, 56.067982>,  <35.776501, 34.984585, 55.882751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475109, 35.603985, 56.067982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198166, 35.397408, 55.866417>,  <35.031998, 35.273460, 55.745480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198166, 35.397408, 55.866417>,  <35.475109, 35.603985, 56.067982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198166, 35.397408, 55.866417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720721, 0.528474, 0.448638,
		0.034610, 0.673799, -0.738104,
		-0.692360, -0.516440, -0.503912,
		34.990459, 35.242477, 55.715244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015835, 36.162067, 55.689743>,  <35.475109, 35.603985, 56.067982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015835, 36.162067, 55.689743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809475, 35.819542, 55.699375>,  <34.685658, 35.614029, 55.705154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809475, 35.819542, 55.699375>,  <35.015835, 36.162067, 55.689743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809475, 35.819542, 55.699375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656013, 0.412988, 0.631734,
		-0.550904, 0.310116, -0.774812,
		-0.515898, -0.856311, 0.024077,
		34.654705, 35.562649, 55.706596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359371, 36.326355, 55.441738>,  <35.015835, 36.162067, 55.689743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359371, 36.326355, 55.441738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353161, 35.994102, 55.664379>,  <34.349434, 35.794750, 55.797962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353161, 35.994102, 55.664379>,  <34.359371, 36.326355, 55.441738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353161, 35.994102, 55.664379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818762, 0.330088, 0.469757,
		-0.573924, -0.448431, -0.685216,
		-0.015528, -0.830633, 0.556603,
		34.348503, 35.744911, 55.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666100, 36.220776, 55.488762>,  <34.359371, 36.326355, 55.441738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666100, 36.220776, 55.488762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828831, 36.021969, 55.795349>,  <33.926468, 35.902687, 55.979301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828831, 36.021969, 55.795349>,  <33.666100, 36.220776, 55.488762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828831, 36.021969, 55.795349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629221, 0.455801, 0.629545,
		-0.662248, -0.738392, -0.127300,
		0.406828, -0.497015, 0.766465,
		33.950878, 35.872864, 56.025288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072075, 35.929062, 55.866673>,  <33.666100, 36.220776, 55.488762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072075, 35.929062, 55.866673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371117, 35.961880, 56.130295>,  <33.550541, 35.981571, 56.288467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371117, 35.961880, 56.130295>,  <33.072075, 35.929062, 55.866673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371117, 35.961880, 56.130295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651620, 0.282437, 0.704004,
		-0.128379, -0.955771, 0.264616,
		0.747603, 0.082049, 0.659058,
		33.595398, 35.986496, 56.328011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825085, 35.725422, 56.449730>,  <33.072075, 35.929062, 55.866673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825085, 35.725422, 56.449730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151318, 35.927349, 56.562859>,  <33.347057, 36.048504, 56.630733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151318, 35.927349, 56.562859>,  <32.825085, 35.725422, 56.449730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151318, 35.927349, 56.562859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544870, 0.505470, 0.669042,
		0.194785, -0.699759, 0.687310,
		0.815583, 0.504814, 0.282819,
		33.395992, 36.078793, 56.647705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985973, 35.601536, 57.193539>,  <32.825085, 35.725422, 56.449730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985973, 35.601536, 57.193539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193665, 35.934814, 57.117447>,  <33.318279, 36.134781, 57.071793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193665, 35.934814, 57.117447>,  <32.985973, 35.601536, 57.193539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193665, 35.934814, 57.117447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361343, 0.415739, 0.834621,
		0.774488, -0.364621, 0.516934,
		0.519230, 0.833194, -0.190232,
		33.349434, 36.184772, 57.060379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310951, 35.849766, 57.844265>,  <32.985973, 35.601536, 57.193539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310951, 35.849766, 57.844265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331776, 36.166676, 57.601089>,  <33.344273, 36.356819, 57.455185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.331776, 36.166676, 57.601089>,  <33.310951, 35.849766, 57.844265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331776, 36.166676, 57.601089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154670, 0.607819, 0.778867,
		0.986593, 0.053479, 0.154187,
		0.052065, 0.792273, -0.607942,
		33.347397, 36.404358, 57.418709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638733, 36.329765, 58.185600>,  <33.310951, 35.849766, 57.844265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638733, 36.329765, 58.185600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432137, 36.517181, 57.898907>,  <33.308178, 36.629631, 57.726891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432137, 36.517181, 57.898907>,  <33.638733, 36.329765, 58.185600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432137, 36.517181, 57.898907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245165, 0.721066, 0.648042,
		0.820444, 0.510427, -0.257556,
		-0.516493, 0.468538, -0.716733,
		33.277187, 36.657742, 57.683887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809364, 37.090126, 58.242901>,  <33.638733, 36.329765, 58.185600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809364, 37.090126, 58.242901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476189, 37.107891, 58.022270>,  <33.276283, 37.118549, 57.889893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476189, 37.107891, 58.022270>,  <33.809364, 37.090126, 58.242901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476189, 37.107891, 58.022270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177018, 0.923012, 0.341633,
		0.524286, 0.382199, -0.760952,
		-0.832940, 0.044411, -0.551578,
		33.226307, 37.121216, 57.856796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645012, 37.788303, 58.033531>,  <33.809364, 37.090126, 58.242901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645012, 37.788303, 58.033531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294529, 37.598831, 57.997997>,  <33.084240, 37.485149, 57.976677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294529, 37.598831, 57.997997>,  <33.645012, 37.788303, 58.033531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294529, 37.598831, 57.997997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469398, 0.797009, 0.380057,
		-0.109221, 0.374708, -0.920687,
		-0.876206, -0.473679, -0.088837,
		33.031666, 37.456726, 57.971348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138084, 38.296207, 57.894188>,  <33.645012, 37.788303, 58.033531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138084, 38.296207, 57.894188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.917465, 37.996590, 58.041012>,  <32.785095, 37.816818, 58.129105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.917465, 37.996590, 58.041012>,  <33.138084, 38.296207, 57.894188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917465, 37.996590, 58.041012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591079, 0.661451, 0.461637,
		-0.588575, 0.037655, -0.807565,
		-0.551548, -0.749043, 0.367056,
		32.752003, 37.771877, 58.151127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491203, 38.572590, 57.886784>,  <33.138084, 38.296207, 57.894188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491203, 38.572590, 57.886784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.474339, 38.258854, 58.134342>,  <32.464218, 38.070614, 58.282879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.474339, 38.258854, 58.134342>,  <32.491203, 38.572590, 57.886784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474339, 38.258854, 58.134342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501589, 0.552347, 0.665823,
		-0.864078, -0.282357, -0.416707,
		-0.042166, -0.784339, 0.618898,
		32.461689, 38.023552, 58.320011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889441, 38.615578, 58.129818>,  <32.491203, 38.572590, 57.886784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889441, 38.615578, 58.129818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028072, 38.356323, 58.401054>,  <32.111252, 38.200771, 58.563797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028072, 38.356323, 58.401054>,  <31.889441, 38.615578, 58.129818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028072, 38.356323, 58.401054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405422, 0.548383, 0.731375,
		-0.845881, -0.528393, -0.072708,
		0.346582, -0.648134, 0.678088,
		32.132046, 38.161884, 58.604481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267231, 38.355141, 58.564037>,  <31.889441, 38.615578, 58.129818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267231, 38.355141, 58.564037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602074, 38.309978, 58.778141>,  <31.802979, 38.282883, 58.906605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602074, 38.309978, 58.778141>,  <31.267231, 38.355141, 58.564037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602074, 38.309978, 58.778141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416712, 0.502305, 0.757654,
		-0.354409, -0.857287, 0.373433,
		0.837105, -0.112905, 0.535264,
		31.853205, 38.276108, 58.938721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044235, 38.191002, 59.242477>,  <31.267231, 38.355141, 58.564037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044235, 38.191002, 59.242477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408087, 38.356003, 59.262135>,  <31.626398, 38.455006, 59.273930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.408087, 38.356003, 59.262135>,  <31.044235, 38.191002, 59.242477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408087, 38.356003, 59.262135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280468, 0.522548, 0.805159,
		0.306453, -0.746178, 0.591019,
		0.909628, 0.412506, 0.049143,
		31.680975, 38.479755, 59.276878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234509, 38.094971, 59.989994>,  <31.044235, 38.191002, 59.242477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234509, 38.094971, 59.989994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494415, 38.368004, 59.856197>,  <31.650358, 38.531826, 59.775921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494415, 38.368004, 59.856197>,  <31.234509, 38.094971, 59.989994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494415, 38.368004, 59.856197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187060, 0.570091, 0.800003,
		0.736759, -0.457245, 0.498109,
		0.649765, 0.682586, -0.334488,
		31.689344, 38.572781, 59.755852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688177, 38.279202, 60.566830>,  <31.234509, 38.094971, 59.989994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688177, 38.279202, 60.566830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709148, 38.588890, 60.314537>,  <31.721731, 38.774704, 60.163162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709148, 38.588890, 60.314537>,  <31.688177, 38.279202, 60.566830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709148, 38.588890, 60.314537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099953, 0.632500, 0.768083,
		0.993610, 0.022774, 0.110548,
		0.052429, 0.774225, -0.630735,
		31.724876, 38.821159, 60.125317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046986, 38.684868, 60.985939>,  <31.688177, 38.279202, 60.566830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046986, 38.684868, 60.985939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929476, 38.937904, 60.699299>,  <31.858969, 39.089725, 60.527313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929476, 38.937904, 60.699299>,  <32.046986, 38.684868, 60.985939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929476, 38.937904, 60.699299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045927, 0.739475, 0.671615,
		0.954770, 0.230217, -0.188187,
		-0.293777, 0.632595, -0.716602,
		31.841343, 39.127682, 60.484318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469700, 39.251274, 61.019691>,  <32.046986, 38.684868, 60.985939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469700, 39.251274, 61.019691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132149, 39.384579, 60.851501>,  <31.929617, 39.464561, 60.750587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132149, 39.384579, 60.851501>,  <32.469700, 39.251274, 61.019691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132149, 39.384579, 60.851501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016176, 0.799139, 0.600928,
		0.536285, 0.500311, -0.679770,
		-0.843882, 0.333265, -0.420474,
		31.878984, 39.484558, 60.725361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651337, 39.931736, 60.921814>,  <32.469700, 39.251274, 61.019691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651337, 39.931736, 60.921814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255852, 39.874519, 60.903969>,  <32.018562, 39.840191, 60.893261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255852, 39.874519, 60.903969>,  <32.651337, 39.931736, 60.921814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255852, 39.874519, 60.903969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138281, 0.756448, 0.639269,
		-0.057694, 0.638221, -0.767688,
		-0.988711, -0.143039, -0.044611,
		31.959238, 39.831608, 60.890587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252743, 40.587402, 60.740524>,  <32.651337, 39.931736, 60.921814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252743, 40.587402, 60.740524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.010117, 40.334606, 60.933464>,  <31.864540, 40.182926, 61.049229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.010117, 40.334606, 60.933464>,  <32.252743, 40.587402, 60.740524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010117, 40.334606, 60.933464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229152, 0.719935, 0.655121,
		-0.761292, 0.286844, -0.581511,
		-0.606568, -0.631993, 0.482349,
		31.828146, 40.145008, 61.078167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742468, 41.004215, 60.887878>,  <32.252743, 40.587402, 60.740524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742468, 41.004215, 60.887878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652172, 40.713223, 61.147049>,  <31.597994, 40.538628, 61.302551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652172, 40.713223, 61.147049>,  <31.742468, 41.004215, 60.887878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652172, 40.713223, 61.147049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366811, 0.679622, 0.635266,
		-0.902492, -0.094263, -0.420266,
		-0.225740, -0.727481, 0.647930,
		31.584450, 40.494980, 61.341427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192551, 41.233685, 61.128120>,  <31.742468, 41.004215, 60.887878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192551, 41.233685, 61.128120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335850, 40.969955, 61.392529>,  <31.421829, 40.811718, 61.551174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.335850, 40.969955, 61.392529>,  <31.192551, 41.233685, 61.128120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335850, 40.969955, 61.392529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268215, 0.605488, 0.749296,
		-0.894270, -0.445730, 0.040075,
		0.358249, -0.659324, 0.661021,
		31.443325, 40.772160, 61.590836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675398, 41.106968, 61.733967>,  <31.192551, 41.233685, 61.128120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675398, 41.106968, 61.733967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034576, 40.993122, 61.868244>,  <31.250084, 40.924816, 61.948811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034576, 40.993122, 61.868244>,  <30.675398, 41.106968, 61.733967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034576, 40.993122, 61.868244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104678, 0.602751, 0.791034,
		-0.427479, -0.745444, 0.511444,
		0.897944, -0.284614, 0.335695,
		31.303959, 40.907738, 61.968952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574581, 41.397305, 62.359821>,  <30.675398, 41.106968, 61.733967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574581, 41.397305, 62.359821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961054, 41.294304, 62.365276>,  <31.192938, 41.232502, 62.368549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961054, 41.294304, 62.365276>,  <30.574581, 41.397305, 62.359821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961054, 41.294304, 62.365276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174421, 0.691564, 0.700940,
		-0.189923, -0.674857, 0.713090,
		0.966181, -0.257502, 0.013634,
		31.250908, 41.217052, 62.369366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759407, 41.245689, 63.137001>,  <30.574581, 41.397305, 62.359821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759407, 41.245689, 63.137001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083248, 41.337112, 62.920742>,  <31.277554, 41.391968, 62.790985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083248, 41.337112, 62.920742>,  <30.759407, 41.245689, 63.137001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083248, 41.337112, 62.920742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168193, 0.792120, 0.586734,
		0.562365, -0.565955, 0.602861,
		0.809603, 0.228562, -0.540650,
		31.326128, 41.405682, 62.758545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313862, 41.285286, 63.603886>,  <30.759407, 41.245689, 63.137001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313862, 41.285286, 63.603886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431036, 41.496593, 63.285110>,  <31.501341, 41.623379, 63.093845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431036, 41.496593, 63.285110>,  <31.313862, 41.285286, 63.603886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431036, 41.496593, 63.285110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393279, 0.693160, 0.604037,
		0.871505, -0.490365, -0.004708,
		0.292935, 0.528273, -0.796942,
		31.518917, 41.655075, 63.046028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193398, 41.315571, 63.437088>,  <31.313862, 41.285286, 63.603886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193398, 41.315571, 63.437088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920244, 41.607609, 63.427055>,  <31.756351, 41.782829, 63.421036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920244, 41.607609, 63.427055>,  <32.193398, 41.315571, 63.437088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920244, 41.607609, 63.427055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467477, 0.463118, 0.752985,
		0.561364, 0.502480, -0.657559,
		-0.682888, 0.730093, -0.025080,
		31.715378, 41.826637, 63.419533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526512, 41.965477, 63.630688>,  <32.193398, 41.315571, 63.437088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526512, 41.965477, 63.630688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140560, 42.068558, 63.651039>,  <31.908989, 42.130405, 63.663250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140560, 42.068558, 63.651039>,  <32.526512, 41.965477, 63.630688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140560, 42.068558, 63.651039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204927, 0.617312, 0.759559,
		0.164334, 0.743312, -0.648445,
		-0.964883, 0.257706, 0.050879,
		31.851095, 42.145870, 63.666302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438297, 42.694187, 63.667114>,  <32.526512, 41.965477, 63.630688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438297, 42.694187, 63.667114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121647, 42.537956, 63.855064>,  <31.931658, 42.444218, 63.967834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121647, 42.537956, 63.855064>,  <32.438297, 42.694187, 63.667114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121647, 42.537956, 63.855064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206825, 0.552327, 0.807564,
		-0.574941, 0.736467, -0.356453,
		-0.791623, -0.390578, 0.469875,
		31.884161, 42.420784, 63.996025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449547, 43.130577, 64.256088>,  <32.438297, 42.694187, 63.667114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449547, 43.130577, 64.256088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142532, 42.883282, 64.323814>,  <31.958324, 42.734905, 64.364449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142532, 42.883282, 64.323814>,  <32.449547, 43.130577, 64.256088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142532, 42.883282, 64.323814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064882, 0.337719, 0.939008,
		-0.637715, 0.709736, -0.299324,
		-0.767535, -0.618240, 0.169319,
		31.912271, 42.697811, 64.374611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464008, 43.856701, 64.232910>,  <32.449547, 43.130577, 64.256088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464008, 43.856701, 64.232910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370705, 44.093491, 64.541496>,  <32.314724, 44.235565, 64.726646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370705, 44.093491, 64.541496>,  <32.464008, 43.856701, 64.232910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370705, 44.093491, 64.541496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799646, -0.334650, 0.498573,
		0.553314, 0.733193, -0.395312,
		-0.233259, 0.591977, 0.771462,
		32.300728, 44.271084, 64.772934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944443, 44.385517, 64.463554>,  <32.464008, 43.856701, 64.232910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944443, 44.385517, 64.463554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765488, 44.277157, 64.804482>,  <32.658115, 44.212139, 65.009041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765488, 44.277157, 64.804482>,  <32.944443, 44.385517, 64.463554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765488, 44.277157, 64.804482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872739, -0.340429, 0.349906,
		0.195364, 0.900399, 0.388734,
		-0.447392, -0.270905, 0.852321,
		32.631271, 44.195885, 65.060181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137573, 44.420563, 63.630619>,  <32.944443, 44.385517, 64.463554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137573, 44.420563, 63.630619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249489, 44.718651, 63.388508>,  <33.316639, 44.897503, 63.243240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249489, 44.718651, 63.388508>,  <33.137573, 44.420563, 63.630619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249489, 44.718651, 63.388508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719004, -0.255134, -0.646483,
		-0.636201, 0.616075, 0.464435,
		0.279789, 0.745224, -0.605277,
		33.333424, 44.942219, 63.206924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585087, 44.988819, 63.378540>,  <33.137573, 44.420563, 63.630619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585087, 44.988819, 63.378540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.851246, 44.964981, 63.080898>,  <33.010941, 44.950676, 62.902313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.851246, 44.964981, 63.080898>,  <32.585087, 44.988819, 63.378540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851246, 44.964981, 63.080898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742717, -0.152956, -0.651902,
		-0.074964, 0.986434, -0.146040,
		0.665396, -0.059597, -0.744108,
		33.050865, 44.947102, 62.857666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201706, 45.123676, 62.784740>,  <32.585087, 44.988819, 63.378540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201706, 45.123676, 62.784740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549076, 44.972038, 62.656910>,  <32.757500, 44.881058, 62.580212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549076, 44.972038, 62.656910>,  <32.201706, 45.123676, 62.784740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549076, 44.972038, 62.656910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457644, -0.364839, -0.810836,
		0.190788, 0.850401, -0.490325,
		0.868425, -0.379092, -0.319574,
		32.809605, 44.858311, 62.561039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000683, 44.844105, 62.203178>,  <32.201706, 45.123676, 62.784740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000683, 44.844105, 62.203178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.241852, 44.694069, 62.484829>,  <32.386551, 44.604046, 62.653820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.241852, 44.694069, 62.484829>,  <32.000683, 44.844105, 62.203178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241852, 44.694069, 62.484829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255877, -0.745043, -0.615986,
		0.755655, 0.551560, -0.353224,
		0.602920, -0.375091, 0.704126,
		32.422729, 44.581543, 62.696068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428020, 44.380413, 61.688477>,  <32.000683, 44.844105, 62.203178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428020, 44.380413, 61.688477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363781, 44.007378, 61.817772>,  <32.325237, 43.783558, 61.895351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363781, 44.007378, 61.817772>,  <32.428020, 44.380413, 61.688477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363781, 44.007378, 61.817772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281743, -0.270552, -0.920555,
		0.945953, -0.238915, -0.219298,
		-0.160603, -0.932588, 0.323243,
		32.315601, 43.727600, 61.914745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784637, 43.851608, 61.232929>,  <32.428020, 44.380413, 61.688477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784637, 43.851608, 61.232929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448086, 43.713764, 61.399460>,  <32.246155, 43.631058, 61.499378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448086, 43.713764, 61.399460>,  <32.784637, 43.851608, 61.232929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448086, 43.713764, 61.399460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222198, -0.481637, -0.847735,
		0.492655, -0.805772, 0.328667,
		-0.841379, -0.344612, 0.416322,
		32.195671, 43.610382, 61.524357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752430, 43.203133, 60.977951>,  <32.784637, 43.851608, 61.232929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752430, 43.203133, 60.977951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377697, 43.251808, 61.109127>,  <32.152859, 43.281013, 61.187832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377697, 43.251808, 61.109127>,  <32.752430, 43.203133, 60.977951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377697, 43.251808, 61.109127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339011, -0.546799, -0.765560,
		0.086159, -0.828374, 0.553510,
		-0.936829, 0.121686, 0.327940,
		32.096649, 43.288315, 61.207508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409794, 42.537605, 60.905396>,  <32.752430, 43.203133, 60.977951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409794, 42.537605, 60.905396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124153, 42.817619, 60.906746>,  <31.952768, 42.985626, 60.907558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124153, 42.817619, 60.906746>,  <32.409794, 42.537605, 60.905396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124153, 42.817619, 60.906746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415765, -0.420232, -0.806563,
		-0.563200, -0.577375, 0.591138,
		-0.714105, 0.700031, 0.003378,
		31.909922, 43.027630, 60.907761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753448, 42.093403, 60.910572>,  <32.409794, 42.537605, 60.905396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753448, 42.093403, 60.910572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697668, 42.469528, 60.786400>,  <31.664200, 42.695202, 60.711895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697668, 42.469528, 60.786400>,  <31.753448, 42.093403, 60.910572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697668, 42.469528, 60.786400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386499, -0.340315, -0.857208,
		-0.911686, 0.000441, 0.410887,
		-0.139453, 0.940312, -0.310431,
		31.655832, 42.751621, 60.693272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187325, 42.070339, 60.517010>,  <31.753448, 42.093403, 60.910572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187325, 42.070339, 60.517010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283232, 42.437321, 60.390018>,  <31.340776, 42.657509, 60.313824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283232, 42.437321, 60.390018>,  <31.187325, 42.070339, 60.517010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283232, 42.437321, 60.390018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573791, -0.129869, -0.808640,
		-0.783119, 0.376053, 0.495287,
		0.239769, 0.917452, -0.317479,
		31.355162, 42.712555, 60.294773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569052, 42.330826, 60.167473>,  <31.187325, 42.070339, 60.517010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569052, 42.330826, 60.167473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899710, 42.511936, 60.033813>,  <31.098104, 42.620602, 59.953617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899710, 42.511936, 60.033813>,  <30.569052, 42.330826, 60.167473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899710, 42.511936, 60.033813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381761, 0.014974, -0.924140,
		-0.413420, 0.891501, 0.185229,
		0.826645, 0.452771, -0.334149,
		31.147703, 42.647766, 59.933567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302042, 42.760853, 59.672279>,  <30.569052, 42.330826, 60.167473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302042, 42.760853, 59.672279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696039, 42.753784, 59.603603>,  <30.932438, 42.749542, 59.562397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696039, 42.753784, 59.603603>,  <30.302042, 42.760853, 59.672279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696039, 42.753784, 59.603603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172226, -0.165930, -0.970982,
		-0.011333, 0.985979, -0.166483,
		0.984992, -0.017668, -0.171692,
		30.991537, 42.748486, 59.552097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392807, 43.079079, 59.118462>,  <30.302042, 42.760853, 59.672279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392807, 43.079079, 59.118462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731760, 42.866898, 59.108929>,  <30.935131, 42.739590, 59.103210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.731760, 42.866898, 59.108929>,  <30.392807, 43.079079, 59.118462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731760, 42.866898, 59.108929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243517, -0.348350, -0.905181,
		0.471854, 0.772835, -0.424359,
		0.847381, -0.530451, -0.023828,
		30.985973, 42.707764, 59.101780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698591, 43.263004, 58.440735>,  <30.392807, 43.079079, 59.118462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698591, 43.263004, 58.440735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887001, 42.928120, 58.551884>,  <31.000048, 42.727188, 58.618572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887001, 42.928120, 58.551884>,  <30.698591, 43.263004, 58.440735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887001, 42.928120, 58.551884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087047, -0.357587, -0.929814,
		0.877814, 0.413778, -0.241309,
		0.471026, -0.837209, 0.277877,
		31.028309, 42.676956, 58.635246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039845, 43.104549, 57.804741>,  <30.698591, 43.263004, 58.440735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039845, 43.104549, 57.804741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.051058, 42.777325, 58.034519>,  <31.057785, 42.580990, 58.172386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.051058, 42.777325, 58.034519>,  <31.039845, 43.104549, 57.804741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051058, 42.777325, 58.034519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106557, -0.568950, -0.815439,
		0.993911, 0.084071, 0.071221,
		0.028034, -0.818063, 0.574444,
		31.059467, 42.531906, 58.206852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550508, 42.750141, 57.548054>,  <31.039845, 43.104549, 57.804741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550508, 42.750141, 57.548054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341135, 42.461823, 57.729809>,  <31.215511, 42.288830, 57.838863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341135, 42.461823, 57.729809>,  <31.550508, 42.750141, 57.548054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341135, 42.461823, 57.729809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106485, -0.584434, -0.804423,
		0.845387, -0.372675, 0.382666,
		-0.523432, -0.720798, 0.454389,
		31.184105, 42.245583, 57.866127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984550, 42.214706, 57.683495>,  <31.550508, 42.750141, 57.548054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984550, 42.214706, 57.683495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604801, 42.095482, 57.643799>,  <31.376951, 42.023949, 57.619980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604801, 42.095482, 57.643799>,  <31.984550, 42.214706, 57.683495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604801, 42.095482, 57.643799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229313, -0.441583, -0.867421,
		0.214720, -0.846265, 0.487577,
		-0.949374, -0.298061, -0.099243,
		31.319988, 42.006065, 57.614025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020477, 41.821541, 57.126217>,  <31.984550, 42.214706, 57.683495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020477, 41.821541, 57.126217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625116, 41.779621, 57.170166>,  <31.387899, 41.754467, 57.196533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625116, 41.779621, 57.170166>,  <32.020477, 41.821541, 57.126217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625116, 41.779621, 57.170166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026784, -0.591906, -0.805561,
		0.149457, -0.799164, 0.582236,
		-0.988406, -0.104802, 0.109869,
		31.328594, 41.748180, 57.203125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895128, 41.074959, 57.112972>,  <32.020477, 41.821541, 57.126217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895128, 41.074959, 57.112972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586290, 41.296791, 56.988838>,  <31.400988, 41.429890, 56.914360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586290, 41.296791, 56.988838>,  <31.895128, 41.074959, 57.112972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586290, 41.296791, 56.988838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105847, -0.593723, -0.797677,
		-0.626631, -0.583035, 0.517112,
		-0.772095, 0.554584, -0.310332,
		31.354662, 41.463165, 56.895741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354439, 40.542660, 56.940331>,  <31.895128, 41.074959, 57.112972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354439, 40.542660, 56.940331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.311441, 40.883228, 56.734989>,  <31.285643, 41.087570, 56.611786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.311441, 40.883228, 56.734989>,  <31.354439, 40.542660, 56.940331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311441, 40.883228, 56.734989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007367, -0.515645, -0.856770,
		-0.994179, -0.095879, 0.049156,
		-0.107493, 0.851421, -0.513350,
		31.279194, 41.138653, 56.580986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894123, 40.403988, 56.342968>,  <31.354439, 40.542660, 56.940331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894123, 40.403988, 56.342968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079227, 40.742638, 56.237831>,  <31.190290, 40.945827, 56.174751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079227, 40.742638, 56.237831>,  <30.894123, 40.403988, 56.342968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079227, 40.742638, 56.237831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126288, -0.356433, -0.925747,
		-0.877441, 0.395207, -0.271862,
		0.462762, 0.846621, -0.262839,
		31.218056, 40.996624, 56.158978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763680, 40.578117, 55.555305>,  <30.894123, 40.403988, 56.342968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763680, 40.578117, 55.555305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099991, 40.765327, 55.664154>,  <31.301777, 40.877651, 55.729462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099991, 40.765327, 55.664154>,  <30.763680, 40.578117, 55.555305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099991, 40.765327, 55.664154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377782, -0.147176, -0.914122,
		-0.387779, 0.871375, -0.300553,
		0.840778, 0.468021, 0.272118,
		31.352224, 40.905735, 55.745789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940208, 40.869602, 54.941360>,  <30.763680, 40.578117, 55.555305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940208, 40.869602, 54.941360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281569, 40.854427, 55.149307>,  <31.486385, 40.845322, 55.274075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281569, 40.854427, 55.149307>,  <30.940208, 40.869602, 54.941360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281569, 40.854427, 55.149307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519161, -0.027395, -0.854237,
		0.046647, 0.998905, -0.003685,
		0.853402, -0.037934, 0.519870,
		31.537590, 40.843048, 55.305267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418299, 41.260067, 54.532360>,  <30.940208, 40.869602, 54.941360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418299, 41.260067, 54.532360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646770, 41.077412, 54.805191>,  <31.783854, 40.967819, 54.968891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646770, 41.077412, 54.805191>,  <31.418299, 41.260067, 54.532360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646770, 41.077412, 54.805191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678871, -0.204294, -0.705265,
		0.461397, 0.865877, 0.193311,
		0.571181, -0.456640, 0.682079,
		31.818125, 40.940418, 55.009815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174618, 41.393051, 54.351074>,  <31.418299, 41.260067, 54.532360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174618, 41.393051, 54.351074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160641, 41.041996, 54.542297>,  <32.152252, 40.831364, 54.657032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160641, 41.041996, 54.542297>,  <32.174618, 41.393051, 54.351074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160641, 41.041996, 54.542297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718732, -0.354442, -0.598160,
		0.694409, 0.322692, 0.643169,
		-0.034945, -0.877633, 0.478057,
		32.150158, 40.778706, 54.685715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853588, 41.175415, 54.238750>,  <32.174618, 41.393051, 54.351074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853588, 41.175415, 54.238750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649979, 40.847187, 54.342716>,  <32.527813, 40.650249, 54.405094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649979, 40.847187, 54.342716>,  <32.853588, 41.175415, 54.238750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649979, 40.847187, 54.342716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650237, -0.564434, -0.508533,
		0.563993, -0.089849, 0.820877,
		-0.509023, -0.820573, 0.259914,
		32.497272, 40.601013, 54.420689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372765, 40.735184, 54.450275>,  <32.853588, 41.175415, 54.238750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372765, 40.735184, 54.450275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057266, 40.497292, 54.388092>,  <32.867966, 40.354557, 54.350780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.057266, 40.497292, 54.388092>,  <33.372765, 40.735184, 54.450275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057266, 40.497292, 54.388092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580141, -0.636567, -0.508152,
		0.203254, -0.490993, 0.847121,
		-0.788749, -0.594733, -0.155461,
		32.820641, 40.318871, 54.341454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596069, 40.042488, 54.658379>,  <33.372765, 40.735184, 54.450275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596069, 40.042488, 54.658379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281738, 40.010517, 54.413074>,  <33.093140, 39.991337, 54.265892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281738, 40.010517, 54.413074>,  <33.596069, 40.042488, 54.658379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281738, 40.010517, 54.413074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461052, -0.736621, -0.494794,
		-0.412190, -0.671567, 0.615709,
		-0.785831, -0.079925, -0.613256,
		33.045990, 39.986538, 54.229099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430832, 39.300861, 54.688442>,  <33.596069, 40.042488, 54.658379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430832, 39.300861, 54.688442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263721, 39.444321, 54.354538>,  <33.163456, 39.530396, 54.154194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263721, 39.444321, 54.354538>,  <33.430832, 39.300861, 54.688442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263721, 39.444321, 54.354538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310014, -0.807373, -0.502035,
		-0.854021, -0.468528, 0.226118,
		-0.417779, 0.358649, -0.834764,
		33.138390, 39.551914, 54.104107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124283, 38.750374, 54.382828>,  <33.430832, 39.300861, 54.688442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124283, 38.750374, 54.382828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.177155, 39.002464, 54.076797>,  <33.208878, 39.153721, 53.893181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.177155, 39.002464, 54.076797>,  <33.124283, 38.750374, 54.382828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177155, 39.002464, 54.076797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212556, -0.771913, -0.599141,
		-0.968168, -0.083428, -0.235989,
		0.132178, 0.630230, -0.765074,
		33.216808, 39.191532, 53.847275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802181, 38.398949, 53.813324>,  <33.124283, 38.750374, 54.382828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802181, 38.398949, 53.813324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026283, 38.668774, 53.621040>,  <33.160744, 38.830669, 53.505669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026283, 38.668774, 53.621040>,  <32.802181, 38.398949, 53.813324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026283, 38.668774, 53.621040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246891, -0.689957, -0.680444,
		-0.790672, 0.262537, -0.553093,
		0.560252, 0.674562, -0.480712,
		33.194359, 38.871143, 53.476826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790306, 38.116745, 53.215942>,  <32.802181, 38.398949, 53.813324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790306, 38.116745, 53.215942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078236, 38.394020, 53.201279>,  <33.250996, 38.560383, 53.192478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078236, 38.394020, 53.201279>,  <32.790306, 38.116745, 53.215942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078236, 38.394020, 53.201279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520686, -0.574120, -0.631880,
		-0.459057, 0.435755, -0.774199,
		0.719828, 0.693184, -0.036662,
		33.294186, 38.601974, 53.190281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891163, 38.238892, 52.523865>,  <32.790306, 38.116745, 53.215942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891163, 38.238892, 52.523865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230907, 38.348579, 52.704254>,  <33.434753, 38.414394, 52.812489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230907, 38.348579, 52.704254>,  <32.891163, 38.238892, 52.523865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230907, 38.348579, 52.704254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520634, -0.575668, -0.630513,
		0.086712, 0.770330, -0.631722,
		0.849365, 0.274222, 0.450977,
		33.485718, 38.430847, 52.839546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306171, 38.498947, 52.033081>,  <32.891163, 38.238892, 52.523865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306171, 38.498947, 52.033081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592556, 38.422379, 52.301636>,  <33.764385, 38.376438, 52.462769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592556, 38.422379, 52.301636>,  <33.306171, 38.498947, 52.033081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592556, 38.422379, 52.301636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578496, -0.375692, -0.724015,
		0.390824, 0.906761, -0.158246,
		0.715960, -0.191418, 0.671387,
		33.807343, 38.364952, 52.503052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035442, 38.597584, 51.731792>,  <33.306171, 38.498947, 52.033081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035442, 38.597584, 51.731792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113430, 38.354752, 52.039936>,  <34.160221, 38.209053, 52.224823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113430, 38.354752, 52.039936>,  <34.035442, 38.597584, 51.731792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113430, 38.354752, 52.039936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788855, -0.369672, -0.490968,
		0.582834, 0.703421, 0.406822,
		0.194966, -0.607076, 0.770355,
		34.171921, 38.172630, 52.271042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717457, 38.698082, 51.889755>,  <34.035442, 38.597584, 51.731792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717457, 38.698082, 51.889755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640934, 38.326176, 52.015575>,  <34.595020, 38.103031, 52.091068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640934, 38.326176, 52.015575>,  <34.717457, 38.698082, 51.889755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640934, 38.326176, 52.015575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707378, -0.352768, -0.612512,
		0.680454, 0.105326, 0.725182,
		-0.191307, -0.929764, 0.314548,
		34.583542, 38.047245, 52.109940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362350, 38.446747, 51.980133>,  <34.717457, 38.698082, 51.889755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362350, 38.446747, 51.980133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146667, 38.110161, 51.993927>,  <35.017258, 37.908211, 52.002201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146667, 38.110161, 51.993927>,  <35.362350, 38.446747, 51.980133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146667, 38.110161, 51.993927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567190, -0.393112, -0.723712,
		0.622533, -0.370676, 0.689240,
		-0.539211, -0.841464, 0.034481,
		34.984905, 37.857723, 52.004272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858910, 37.845039, 51.750927>,  <35.362350, 38.446747, 51.980133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858910, 37.845039, 51.750927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486118, 37.718410, 51.680271>,  <35.262444, 37.642433, 51.637878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486118, 37.718410, 51.680271>,  <35.858910, 37.845039, 51.750927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486118, 37.718410, 51.680271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280946, -0.322806, -0.903806,
		0.229099, -0.891952, 0.389787,
		-0.931978, -0.316570, -0.176636,
		35.206524, 37.623440, 51.627281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898651, 37.166061, 51.631405>,  <35.858910, 37.845039, 51.750927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898651, 37.166061, 51.631405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551239, 37.273102, 51.464531>,  <35.342793, 37.337326, 51.364407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551239, 37.273102, 51.464531>,  <35.898651, 37.166061, 51.631405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551239, 37.273102, 51.464531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193195, -0.592360, -0.782167,
		-0.456434, -0.759934, 0.462783,
		-0.868529, 0.267600, -0.417189,
		35.290680, 37.353382, 51.339375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605824, 36.614338, 51.337101>,  <35.898651, 37.166061, 51.631405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605824, 36.614338, 51.337101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383739, 36.882839, 51.140667>,  <35.250488, 37.043941, 51.022808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383739, 36.882839, 51.140667>,  <35.605824, 36.614338, 51.337101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383739, 36.882839, 51.140667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106740, -0.528058, -0.842474,
		-0.824835, -0.520164, 0.221531,
		-0.555206, 0.671256, -0.491083,
		35.217178, 37.084217, 50.993343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183460, 36.303619, 50.940487>,  <35.605824, 36.614338, 51.337101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183460, 36.303619, 50.940487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180794, 36.665329, 50.769730>,  <35.179192, 36.882355, 50.667274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180794, 36.665329, 50.769730>,  <35.183460, 36.303619, 50.940487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180794, 36.665329, 50.769730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142382, -0.421692, -0.895491,
		-0.989789, -0.066755, -0.125940,
		-0.006671, 0.904279, -0.426890,
		35.178791, 36.936611, 50.641663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687111, 36.347183, 50.464996>,  <35.183460, 36.303619, 50.940487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687111, 36.347183, 50.464996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926811, 36.638592, 50.332237>,  <35.070633, 36.813435, 50.252583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926811, 36.638592, 50.332237>,  <34.687111, 36.347183, 50.464996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926811, 36.638592, 50.332237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177512, -0.525179, -0.832272,
		-0.780630, 0.439827, -0.444037,
		0.599254, 0.728518, -0.331896,
		35.106586, 36.857147, 50.232670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638630, 36.298553, 49.776703>,  <34.687111, 36.347183, 50.464996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638630, 36.298553, 49.776703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988506, 36.488052, 49.817665>,  <35.198433, 36.601749, 49.842243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988506, 36.488052, 49.817665>,  <34.638630, 36.298553, 49.776703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988506, 36.488052, 49.817665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351685, -0.474954, -0.806682,
		-0.333523, 0.741610, -0.582046,
		0.874689, 0.473744, 0.102405,
		35.250912, 36.630177, 49.848385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840569, 36.628624, 49.025936>,  <34.638630, 36.298553, 49.776703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840569, 36.628624, 49.025936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145351, 36.567738, 49.277733>,  <35.328220, 36.531204, 49.428810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.145351, 36.567738, 49.277733>,  <34.840569, 36.628624, 49.025936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145351, 36.567738, 49.277733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431912, -0.604828, -0.669056,
		0.482572, 0.781674, -0.395108,
		0.761955, -0.152216, 0.629487,
		35.373940, 36.522072, 49.466579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922283, 37.243370, 48.460484>,  <34.840569, 36.628624, 49.025936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922283, 37.243370, 48.460484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.743584, 37.443539, 48.163837>,  <34.636364, 37.563641, 47.985847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.743584, 37.443539, 48.163837>,  <34.922283, 37.243370, 48.460484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743584, 37.443539, 48.163837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628363, 0.414563, 0.658253,
		0.636851, 0.760078, 0.129240,
		-0.446745, 0.500418, -0.741620,
		34.609562, 37.593666, 47.941353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777950, 37.967854, 48.706951>,  <34.922283, 37.243370, 48.460484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777950, 37.967854, 48.706951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532536, 37.956409, 48.391293>,  <34.385288, 37.949543, 48.201897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532536, 37.956409, 48.391293>,  <34.777950, 37.967854, 48.706951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532536, 37.956409, 48.391293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687506, 0.510976, 0.515984,
		0.388472, 0.859119, -0.333174,
		-0.613535, -0.028614, -0.789149,
		34.348476, 37.947826, 48.154549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438847, 38.522343, 48.731113>,  <34.777950, 37.967854, 48.706951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438847, 38.522343, 48.731113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164768, 38.338486, 48.505108>,  <34.000320, 38.228172, 48.369507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164768, 38.338486, 48.505108>,  <34.438847, 38.522343, 48.731113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164768, 38.338486, 48.505108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719259, 0.549231, 0.425456,
		0.114764, 0.697909, -0.706931,
		-0.685198, -0.459639, -0.565009,
		33.959209, 38.200596, 48.335606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977386, 39.046734, 48.348690>,  <34.438847, 38.522343, 48.731113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977386, 39.046734, 48.348690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765232, 38.709545, 48.384640>,  <33.637939, 38.507233, 48.406212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765232, 38.709545, 48.384640>,  <33.977386, 39.046734, 48.348690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765232, 38.709545, 48.384640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737001, 0.510891, 0.442515,
		-0.418947, 0.168466, -0.892246,
		-0.530389, -0.842976, 0.089876,
		33.606113, 38.456654, 48.411602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267780, 39.241364, 48.186588>,  <33.977386, 39.046734, 48.348690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267780, 39.241364, 48.186588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238712, 38.890118, 48.375751>,  <33.221272, 38.679371, 48.489250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238712, 38.890118, 48.375751>,  <33.267780, 39.241364, 48.186588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238712, 38.890118, 48.375751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924571, 0.237123, 0.298231,
		-0.374017, -0.415565, -0.829106,
		-0.072665, -0.878111, 0.472908,
		33.216911, 38.626686, 48.517624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547729, 39.196770, 48.247501>,  <33.267780, 39.241364, 48.186588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547729, 39.196770, 48.247501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699009, 38.924438, 48.498402>,  <32.789776, 38.761040, 48.648941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699009, 38.924438, 48.498402>,  <32.547729, 39.196770, 48.247501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699009, 38.924438, 48.498402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761341, 0.156698, 0.629131,
		-0.526620, -0.715483, -0.459082,
		0.378195, -0.680831, 0.627246,
		32.812466, 38.720188, 48.686577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942554, 38.843555, 48.456493>,  <32.547729, 39.196770, 48.247501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942554, 38.843555, 48.456493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.224281, 38.821476, 48.739590>,  <32.393318, 38.808228, 48.909447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.224281, 38.821476, 48.739590>,  <31.942554, 38.843555, 48.456493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224281, 38.821476, 48.739590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675462, 0.254585, 0.692053,
		-0.218377, -0.965474, 0.142026,
		0.704317, -0.055195, 0.707737,
		32.435577, 38.804916, 48.951912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758251, 38.313587, 49.052494>,  <31.942554, 38.843555, 48.456493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758251, 38.313587, 49.052494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025669, 38.544380, 49.240170>,  <32.186119, 38.682858, 49.352776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025669, 38.544380, 49.240170>,  <31.758251, 38.313587, 49.052494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025669, 38.544380, 49.240170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614146, 0.072571, 0.785848,
		0.419371, -0.813526, 0.402868,
		0.668545, 0.576982, 0.469190,
		32.226234, 38.717476, 49.380928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678911, 38.045082, 49.791790>,  <31.758251, 38.313587, 49.052494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678911, 38.045082, 49.791790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892752, 38.383125, 49.792400>,  <32.021057, 38.585949, 49.792767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892752, 38.383125, 49.792400>,  <31.678911, 38.045082, 49.791790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892752, 38.383125, 49.792400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510376, 0.321418, 0.797626,
		0.673587, -0.427189, 0.603150,
		0.534600, 0.845104, 0.001524,
		32.053131, 38.636658, 49.792858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863953, 38.202801, 50.525402>,  <31.678911, 38.045082, 49.791790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863953, 38.202801, 50.525402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901720, 38.553421, 50.336620>,  <31.924379, 38.763794, 50.223351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901720, 38.553421, 50.336620>,  <31.863953, 38.202801, 50.525402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901720, 38.553421, 50.336620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572039, 0.435764, 0.694897,
		0.814774, 0.204367, 0.542565,
		0.094417, 0.876552, -0.471955,
		31.930046, 38.816387, 50.195034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809320, 38.663155, 51.062046>,  <31.863953, 38.202801, 50.525402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809320, 38.663155, 51.062046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.769045, 38.910492, 50.750275>,  <31.744879, 39.058895, 50.563210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.769045, 38.910492, 50.750275>,  <31.809320, 38.663155, 51.062046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769045, 38.910492, 50.750275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504414, 0.643537, 0.575696,
		0.857571, 0.451124, 0.247102,
		-0.100691, 0.618342, -0.779432,
		31.738838, 39.095993, 50.516445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938000, 39.184715, 51.293591>,  <31.809320, 38.663155, 51.062046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938000, 39.184715, 51.293591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707289, 39.315472, 50.994133>,  <31.568863, 39.393925, 50.814457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.707289, 39.315472, 50.994133>,  <31.938000, 39.184715, 51.293591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707289, 39.315472, 50.994133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523585, 0.555529, 0.645946,
		0.627047, 0.764547, -0.149263,
		-0.576776, 0.326887, -0.748648,
		31.534256, 39.413536, 50.769539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974468, 39.956142, 51.124409>,  <31.938000, 39.184715, 51.293591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974468, 39.956142, 51.124409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624477, 39.829243, 50.978107>,  <31.414484, 39.753105, 50.890327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624477, 39.829243, 50.978107>,  <31.974468, 39.956142, 51.124409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624477, 39.829243, 50.978107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461412, 0.775240, 0.431396,
		0.146684, 0.546222, -0.824697,
		-0.874976, -0.317246, -0.365749,
		31.361984, 39.734070, 50.868382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680193, 40.561810, 50.879726>,  <31.974468, 39.956142, 51.124409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680193, 40.561810, 50.879726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359375, 40.326450, 50.920734>,  <31.166883, 40.185234, 50.945339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359375, 40.326450, 50.920734>,  <31.680193, 40.561810, 50.879726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359375, 40.326450, 50.920734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528991, 0.779515, 0.335448,
		-0.277293, 0.214812, -0.936464,
		-0.802046, -0.588398, 0.102521,
		31.118761, 40.149933, 50.951492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026403, 40.992821, 51.020523>,  <31.680193, 40.561810, 50.879726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026403, 40.992821, 51.020523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907854, 40.621567, 51.110619>,  <30.836723, 40.398815, 51.164677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907854, 40.621567, 51.110619>,  <31.026403, 40.992821, 51.020523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907854, 40.621567, 51.110619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758599, 0.372044, 0.534893,
		-0.580249, -0.012335, -0.814345,
		-0.296374, -0.928133, 0.225235,
		30.818941, 40.343128, 51.178188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335915, 41.061520, 50.967506>,  <31.026403, 40.992821, 51.020523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335915, 41.061520, 50.967506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402552, 40.745392, 51.203354>,  <30.442533, 40.555717, 51.344864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402552, 40.745392, 51.203354>,  <30.335915, 41.061520, 50.967506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402552, 40.745392, 51.203354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760240, 0.277848, 0.587226,
		-0.627918, -0.546079, -0.554542,
		0.166594, -0.790315, 0.589617,
		30.452530, 40.508297, 51.380238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683628, 40.826088, 51.256248>,  <30.335915, 41.061520, 50.967506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683628, 40.826088, 51.256248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934164, 40.663898, 51.522568>,  <30.084486, 40.566586, 51.682362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934164, 40.663898, 51.522568>,  <29.683628, 40.826088, 51.256248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934164, 40.663898, 51.522568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559451, 0.360977, 0.746130,
		-0.542876, -0.839812, -0.000750,
		0.626338, -0.405476, 0.665800,
		30.122065, 40.542255, 51.722309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300922, 40.524086, 51.906467>,  <29.683628, 40.826088, 51.256248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300922, 40.524086, 51.906467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.668030, 40.530914, 52.065166>,  <29.888294, 40.535011, 52.160385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.668030, 40.530914, 52.065166>,  <29.300922, 40.524086, 51.906467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668030, 40.530914, 52.065166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365795, 0.425218, 0.827879,
		-0.154574, -0.904930, 0.396496,
		0.917770, 0.017067, 0.396747,
		29.943361, 40.536034, 52.184189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259981, 40.367947, 52.607769>,  <29.300922, 40.524086, 51.906467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259981, 40.367947, 52.607769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606167, 40.561817, 52.557068>,  <29.813877, 40.678139, 52.526646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606167, 40.561817, 52.557068>,  <29.259981, 40.367947, 52.607769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606167, 40.561817, 52.557068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163180, 0.511953, 0.843372,
		0.473646, -0.709227, 0.522166,
		0.865467, 0.484667, -0.126753,
		29.865805, 40.707218, 52.519039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554071, 40.174225, 53.184425>,  <29.259981, 40.367947, 52.607769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554071, 40.174225, 53.184425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726799, 40.508545, 53.048794>,  <29.830435, 40.709137, 52.967415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726799, 40.508545, 53.048794>,  <29.554071, 40.174225, 53.184425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726799, 40.508545, 53.048794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202847, 0.456292, 0.866401,
		0.878855, -0.305347, 0.366574,
		0.431818, 0.835800, -0.339076,
		29.856344, 40.759285, 52.947071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008345, 40.364517, 53.764103>,  <29.554071, 40.174225, 53.184425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008345, 40.364517, 53.764103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.942980, 40.685085, 53.533966>,  <29.903761, 40.877426, 53.395885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.942980, 40.685085, 53.533966>,  <30.008345, 40.364517, 53.764103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942980, 40.685085, 53.533966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336797, 0.502827, 0.796073,
		0.927289, 0.323860, 0.187750,
		-0.163411, 0.801424, -0.575341,
		29.893957, 40.925514, 53.361362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232586, 40.853909, 54.148956>,  <30.008345, 40.364517, 53.764103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232586, 40.853909, 54.148956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.980713, 41.022282, 53.887783>,  <29.829590, 41.123306, 53.731079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.980713, 41.022282, 53.887783>,  <30.232586, 40.853909, 54.148956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980713, 41.022282, 53.887783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435177, 0.505102, 0.745314,
		0.643524, 0.753449, -0.134872,
		-0.629680, 0.420935, -0.652930,
		29.791809, 41.148563, 53.691906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330454, 41.522961, 54.285641>,  <30.232586, 40.853909, 54.148956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330454, 41.522961, 54.285641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972975, 41.506721, 54.106907>,  <29.758488, 41.496979, 53.999668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972975, 41.506721, 54.106907>,  <30.330454, 41.522961, 54.285641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972975, 41.506721, 54.106907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406510, 0.494738, 0.768104,
		0.189882, 0.868093, -0.458649,
		-0.893697, -0.040596, -0.446831,
		29.704866, 41.494541, 53.972858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085627, 42.174110, 54.309486>,  <30.330454, 41.522961, 54.285641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085627, 42.174110, 54.309486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744448, 41.979134, 54.234779>,  <29.539740, 41.862148, 54.189957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744448, 41.979134, 54.234779>,  <30.085627, 42.174110, 54.309486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744448, 41.979134, 54.234779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468937, 0.558362, 0.684346,
		-0.229295, 0.671294, -0.704832,
		-0.852949, -0.487439, -0.186765,
		29.488564, 41.832901, 54.178749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584232, 42.715218, 54.384937>,  <30.085627, 42.174110, 54.309486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584232, 42.715218, 54.384937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406687, 42.358967, 54.424461>,  <29.300159, 42.145214, 54.448177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.406687, 42.358967, 54.424461>,  <29.584232, 42.715218, 54.384937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406687, 42.358967, 54.424461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448674, 0.316341, 0.835835,
		-0.775677, 0.326663, -0.540015,
		-0.443865, -0.890629, 0.098814,
		29.273527, 42.091778, 54.454105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875114, 42.829113, 54.567535>,  <29.584232, 42.715218, 54.384937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875114, 42.829113, 54.567535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947325, 42.457611, 54.697037>,  <28.990652, 42.234711, 54.774738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947325, 42.457611, 54.697037>,  <28.875114, 42.829113, 54.567535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947325, 42.457611, 54.697037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523040, 0.188111, 0.831290,
		-0.832970, -0.319406, -0.451819,
		0.180527, -0.928759, 0.323753,
		29.001484, 42.178982, 54.794163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382435, 42.797733, 55.025269>,  <28.875114, 42.829113, 54.567535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382435, 42.797733, 55.025269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587584, 42.475922, 55.145061>,  <28.710672, 42.282833, 55.216938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587584, 42.475922, 55.145061>,  <28.382435, 42.797733, 55.025269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587584, 42.475922, 55.145061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389588, 0.092731, 0.916309,
		-0.764971, -0.586624, -0.265877,
		0.512874, -0.804533, 0.299479,
		28.741446, 42.234562, 55.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899862, 42.279999, 55.333355>,  <28.382435, 42.797733, 55.025269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899862, 42.279999, 55.333355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.261248, 42.199711, 55.484863>,  <28.478079, 42.151539, 55.575768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.261248, 42.199711, 55.484863>,  <27.899862, 42.279999, 55.333355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261248, 42.199711, 55.484863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404850, -0.109079, 0.907854,
		-0.140904, -0.973558, -0.179808,
		0.903462, -0.200715, 0.378776,
		28.532286, 42.139496, 55.598495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048988, 41.482220, 55.675213>,  <27.899862, 42.279999, 55.333355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048988, 41.482220, 55.675213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.264656, 41.775524, 55.840923>,  <28.394056, 41.951508, 55.940350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.264656, 41.775524, 55.840923>,  <28.048988, 41.482220, 55.675213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264656, 41.775524, 55.840923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345660, -0.255891, 0.902795,
		0.767996, -0.629955, 0.115492,
		0.539167, 0.733264, 0.414274,
		28.426407, 41.995502, 55.965206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021677, 41.205616, 56.303833>,  <28.048988, 41.482220, 55.675213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021677, 41.205616, 56.303833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.180159, 41.569565, 56.353085>,  <28.275248, 41.787933, 56.382633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.180159, 41.569565, 56.353085>,  <28.021677, 41.205616, 56.303833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180159, 41.569565, 56.353085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297316, 0.000262, 0.954779,
		0.868693, -0.414893, 0.270623,
		0.396203, 0.909870, 0.123126,
		28.299019, 41.842525, 56.390022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342281, 41.182621, 57.008400>,  <28.021677, 41.205616, 56.303833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342281, 41.182621, 57.008400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299526, 41.571392, 56.924557>,  <28.273874, 41.804653, 56.874252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299526, 41.571392, 56.924557>,  <28.342281, 41.182621, 57.008400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299526, 41.571392, 56.924557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248513, 0.178005, 0.952132,
		0.962713, 0.153859, 0.222510,
		-0.106887, 0.971927, -0.209603,
		28.267460, 41.862968, 56.861675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492521, 41.521664, 57.644958>,  <28.342281, 41.182621, 57.008400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492521, 41.521664, 57.644958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.308300, 41.811646, 57.440086>,  <28.197767, 41.985634, 57.317162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.308300, 41.811646, 57.440086>,  <28.492521, 41.521664, 57.644958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308300, 41.811646, 57.440086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487707, 0.275441, 0.828417,
		0.741641, 0.631325, 0.226710,
		-0.460555, 0.724956, -0.512180,
		28.170134, 42.029133, 57.286434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627775, 42.117046, 57.924099>,  <28.492521, 41.521664, 57.644958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627775, 42.117046, 57.924099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.278477, 42.191368, 57.743916>,  <28.068897, 42.235962, 57.635803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.278477, 42.191368, 57.743916>,  <28.627775, 42.117046, 57.924099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278477, 42.191368, 57.743916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336302, 0.439164, 0.833089,
		0.352617, 0.878984, -0.321013,
		-0.873248, 0.185804, -0.450460,
		28.016502, 42.247108, 57.608776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595802, 42.843258, 58.086380>,  <28.627775, 42.117046, 57.924099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595802, 42.843258, 58.086380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.239902, 42.719158, 57.952457>,  <28.026363, 42.644699, 57.872105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.239902, 42.719158, 57.952457>,  <28.595802, 42.843258, 58.086380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239902, 42.719158, 57.952457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442048, 0.402851, 0.801439,
		-0.113769, 0.861078, -0.495581,
		-0.889747, -0.310249, -0.334806,
		27.972979, 42.626083, 57.852016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195726, 43.426674, 58.050732>,  <28.595802, 42.843258, 58.086380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195726, 43.426674, 58.050732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936285, 43.123482, 58.078381>,  <27.780621, 42.941566, 58.094971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936285, 43.123482, 58.078381>,  <28.195726, 43.426674, 58.050732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936285, 43.123482, 58.078381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334707, 0.365612, 0.868504,
		-0.683582, 0.540178, -0.490838,
		-0.648603, -0.757981, 0.069125,
		27.741703, 42.896088, 58.099117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586895, 43.744591, 58.348747>,  <28.195726, 43.426674, 58.050732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586895, 43.744591, 58.348747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.546762, 43.347694, 58.378113>,  <27.522684, 43.109558, 58.395733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.546762, 43.347694, 58.378113>,  <27.586895, 43.744591, 58.348747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546762, 43.347694, 58.378113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272486, 0.098368, 0.957118,
		-0.956914, 0.076023, -0.280241,
		-0.100330, -0.992242, 0.073414,
		27.516663, 43.050022, 58.400139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819145, 43.505375, 58.424797>,  <27.586895, 43.744591, 58.348747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819145, 43.505375, 58.424797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.037733, 43.202927, 58.568825>,  <27.168886, 43.021458, 58.655243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.037733, 43.202927, 58.568825>,  <26.819145, 43.505375, 58.424797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037733, 43.202927, 58.568825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462723, 0.085760, 0.882345,
		-0.698040, -0.648787, -0.303010,
		0.546468, -0.756122, 0.360073,
		27.201674, 42.976089, 58.676846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343075, 43.137283, 58.841267>,  <26.819145, 43.505375, 58.424797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343075, 43.137283, 58.841267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.713903, 43.042789, 58.957703>,  <26.936401, 42.986095, 59.027565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.713903, 43.042789, 58.957703>,  <26.343075, 43.137283, 58.841267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713903, 43.042789, 58.957703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289787, 0.041012, 0.956212,
		-0.237828, -0.970830, -0.030436,
		0.927071, -0.236234, 0.291088,
		26.992025, 42.971920, 59.045029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699881, 43.362587, 59.312653>,  <26.343075, 43.137283, 58.841267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699881, 43.362587, 59.312653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.644104, 43.067684, 59.577080>,  <25.610638, 42.890743, 59.735737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.644104, 43.067684, 59.577080>,  <25.699881, 43.362587, 59.312653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644104, 43.067684, 59.577080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034483, 0.663567, 0.747322,
		-0.989630, 0.127001, -0.067105,
		-0.139439, -0.737258, 0.661065,
		25.602272, 42.846508, 59.775398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576502, 43.014683, 58.717373>,  <25.699881, 43.362587, 59.312653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576502, 43.014683, 58.717373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.256866, 42.776310, 58.685577>,  <25.065084, 42.633286, 58.666500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.256866, 42.776310, 58.685577>,  <25.576502, 43.014683, 58.717373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256866, 42.776310, 58.685577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340620, -0.339809, -0.876646,
		0.495415, -0.727592, 0.474525,
		-0.799088, -0.595936, -0.079486,
		25.017139, 42.597530, 58.661732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826723, 42.569347, 58.309608>,  <25.576502, 43.014683, 58.717373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826723, 42.569347, 58.309608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.431364, 42.508804, 58.314766>,  <25.194149, 42.472481, 58.317860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.431364, 42.508804, 58.314766>,  <25.826723, 42.569347, 58.309608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431364, 42.508804, 58.314766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088343, -0.641801, -0.761766,
		0.123571, -0.751787, 0.647724,
		-0.988395, -0.151354, 0.012893,
		25.134846, 42.463398, 58.318634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701185, 41.817547, 58.307049>,  <25.826723, 42.569347, 58.309608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701185, 41.817547, 58.307049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.392504, 42.025993, 58.161221>,  <25.207294, 42.151062, 58.073723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.392504, 42.025993, 58.161221>,  <25.701185, 41.817547, 58.307049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392504, 42.025993, 58.161221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064612, -0.506030, -0.860092,
		-0.632693, -0.687291, 0.356834,
		-0.771703, 0.521119, -0.364569,
		25.160994, 42.182327, 58.051849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252193, 41.270149, 57.988239>,  <25.701185, 41.817547, 58.307049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252193, 41.270149, 57.988239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.138906, 41.616821, 57.823967>,  <25.070934, 41.824825, 57.725403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.138906, 41.616821, 57.823967>,  <25.252193, 41.270149, 57.988239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138906, 41.616821, 57.823967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057110, -0.442692, -0.894853,
		-0.957354, -0.229985, 0.174874,
		-0.283218, 0.866678, -0.410678,
		25.053942, 41.876823, 57.700764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119093, 41.060726, 57.376572>,  <25.252193, 41.270149, 57.988239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119093, 41.060726, 57.376572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.103529, 41.457684, 57.329861>,  <25.094191, 41.695858, 57.301834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.103529, 41.457684, 57.329861>,  <25.119093, 41.060726, 57.376572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103529, 41.457684, 57.329861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132868, -0.110686, -0.984934,
		-0.990370, -0.053841, -0.127551,
		-0.038911, 0.992396, -0.116774,
		25.091856, 41.755402, 57.294830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.498520, 41.104317, 57.108467>,  <25.119093, 41.060726, 57.376572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.498520, 41.104317, 57.108467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764809, 41.392704, 57.031509>,  <24.924582, 41.565739, 56.985332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764809, 41.392704, 57.031509>,  <24.498520, 41.104317, 57.108467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764809, 41.392704, 57.031509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009917, -0.266360, -0.963823,
		-0.746136, 0.639728, -0.184471,
		0.665720, 0.720972, -0.192396,
		24.964525, 41.608997, 56.973789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250641, 41.325077, 56.466442>,  <24.498520, 41.104317, 57.108467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250641, 41.325077, 56.466442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.625845, 41.462257, 56.486534>,  <24.850967, 41.544567, 56.498589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.625845, 41.462257, 56.486534>,  <24.250641, 41.325077, 56.466442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625845, 41.462257, 56.486534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172723, -0.336837, -0.925585,
		-0.300512, 0.876882, -0.375192,
		0.938008, 0.342954, 0.050234,
		24.907248, 41.565144, 56.501606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406803, 41.556530, 55.785908>,  <24.250641, 41.325077, 56.466442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406803, 41.556530, 55.785908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.788591, 41.564747, 55.904945>,  <25.017664, 41.569675, 55.976368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.788591, 41.564747, 55.904945>,  <24.406803, 41.556530, 55.785908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788591, 41.564747, 55.904945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297195, -0.151194, -0.942770,
		0.025629, 0.988291, -0.150415,
		0.954473, 0.020541, 0.297590,
		25.074934, 41.570908, 55.994221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839428, 41.894703, 55.253433>,  <24.406803, 41.556530, 55.785908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839428, 41.894703, 55.253433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.078794, 41.677135, 55.488739>,  <25.222414, 41.546597, 55.629921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.078794, 41.677135, 55.488739>,  <24.839428, 41.894703, 55.253433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078794, 41.677135, 55.488739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534738, -0.275613, -0.798807,
		0.596618, 0.792585, 0.125923,
		0.598417, -0.543918, 0.588261,
		25.258320, 41.513962, 55.665218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659334, 42.055607, 54.938248>,  <24.839428, 41.894703, 55.253433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659334, 42.055607, 54.938248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.661379, 41.711334, 55.141891>,  <25.662605, 41.504768, 55.264080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.661379, 41.711334, 55.141891>,  <25.659334, 42.055607, 54.938248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661379, 41.711334, 55.141891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332514, -0.478685, -0.812585,
		0.943084, 0.173439, 0.283744,
		0.005110, -0.860685, 0.509111,
		25.662912, 41.453129, 55.294624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350212, 41.701405, 54.959080>,  <25.659334, 42.055607, 54.938248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350212, 41.701405, 54.959080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.083958, 41.405048, 54.994873>,  <25.924204, 41.227234, 55.016350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.083958, 41.405048, 54.994873>,  <26.350212, 41.701405, 54.959080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083958, 41.405048, 54.994873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425258, -0.475108, -0.770343,
		0.613256, -0.474713, 0.631319,
		-0.665637, -0.740891, 0.089488,
		25.884266, 41.182781, 55.021721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744188, 41.117851, 54.982155>,  <26.350212, 41.701405, 54.959080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744188, 41.117851, 54.982155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.400970, 40.925400, 54.910297>,  <26.195040, 40.809929, 54.867180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.400970, 40.925400, 54.910297>,  <26.744188, 41.117851, 54.982155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400970, 40.925400, 54.910297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479131, -0.623985, -0.617314,
		0.184910, -0.615758, 0.765931,
		-0.858045, -0.481129, -0.179648,
		26.143557, 40.781063, 54.856403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000782, 40.476074, 54.904591>,  <26.744188, 41.117851, 54.982155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000782, 40.476074, 54.904591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.641989, 40.502808, 54.729797>,  <26.426712, 40.518848, 54.624920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.641989, 40.502808, 54.729797>,  <27.000782, 40.476074, 54.904591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641989, 40.502808, 54.729797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299085, -0.636166, -0.711225,
		-0.325528, -0.768652, 0.550641,
		-0.896984, 0.066835, -0.436982,
		26.372894, 40.522858, 54.598701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797949, 39.766712, 54.841839>,  <27.000782, 40.476074, 54.904591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797949, 39.766712, 54.841839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.587841, 39.975761, 54.573227>,  <26.461777, 40.101192, 54.412060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.587841, 39.975761, 54.573227>,  <26.797949, 39.766712, 54.841839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587841, 39.975761, 54.573227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084926, -0.753031, -0.652481,
		-0.846688, -0.399759, 0.351159,
		-0.525269, 0.522625, -0.671532,
		26.430260, 40.132549, 54.371769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353195, 39.315674, 54.575531>,  <26.797949, 39.766712, 54.841839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353195, 39.315674, 54.575531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.334297, 39.607620, 54.302750>,  <26.322958, 39.782787, 54.139080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.334297, 39.607620, 54.302750>,  <26.353195, 39.315674, 54.575531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334297, 39.607620, 54.302750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269328, -0.648125, -0.712318,
		-0.961889, -0.217322, -0.165954,
		-0.047243, 0.729867, -0.681955,
		26.320124, 39.826580, 54.098164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097408, 38.951828, 53.946724>,  <26.353195, 39.315674, 54.575531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097408, 38.951828, 53.946724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.288746, 39.282993, 53.829590>,  <26.403547, 39.481693, 53.759308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.288746, 39.282993, 53.829590>,  <26.097408, 38.951828, 53.946724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288746, 39.282993, 53.829590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446379, -0.516395, -0.730809,
		-0.756264, 0.218861, -0.616575,
		0.478342, 0.827910, -0.292836,
		26.432249, 39.531368, 53.741737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169443, 38.926353, 53.187908>,  <26.097408, 38.951828, 53.946724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169443, 38.926353, 53.187908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.453209, 39.188053, 53.292744>,  <26.623468, 39.345074, 53.355644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.453209, 39.188053, 53.292744>,  <26.169443, 38.926353, 53.187908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453209, 39.188053, 53.292744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542102, -0.268885, -0.796132,
		-0.450393, 0.706869, -0.545419,
		0.709417, 0.654245, 0.262091,
		26.666035, 39.384327, 53.371372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385927, 39.211826, 52.570621>,  <26.169443, 38.926353, 53.187908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385927, 39.211826, 52.570621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.691362, 39.276752, 52.820610>,  <26.874624, 39.315708, 52.970604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.691362, 39.276752, 52.820610>,  <26.385927, 39.211826, 52.570621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691362, 39.276752, 52.820610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631996, -0.386250, -0.671857,
		0.132343, 0.908000, -0.397518,
		0.763587, 0.162314, 0.624971,
		26.920439, 39.325447, 53.008102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877174, 39.382431, 52.154579>,  <26.385927, 39.211826, 52.570621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877174, 39.382431, 52.154579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097382, 39.303749, 52.479107>,  <27.229506, 39.256538, 52.673824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097382, 39.303749, 52.479107>,  <26.877174, 39.382431, 52.154579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097382, 39.303749, 52.479107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676374, -0.464552, -0.571585,
		0.489333, 0.863422, -0.122699,
		0.550519, -0.196705, 0.811317,
		27.262537, 39.244736, 52.722504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506489, 39.866673, 52.106384>,  <26.877174, 39.382431, 52.154579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506489, 39.866673, 52.106384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.603565, 39.553215, 52.335117>,  <27.661812, 39.365139, 52.472359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.603565, 39.553215, 52.335117>,  <27.506489, 39.866673, 52.106384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603565, 39.553215, 52.335117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902629, -0.033585, -0.429108,
		0.355474, 0.620298, 0.699191,
		0.242693, -0.783647, 0.571837,
		27.676373, 39.318123, 52.506668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174175, 39.873726, 52.120453>,  <27.506489, 39.866673, 52.106384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174175, 39.873726, 52.120453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191151, 39.510529, 52.287189>,  <28.201336, 39.292610, 52.387230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.191151, 39.510529, 52.287189>,  <28.174175, 39.873726, 52.120453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191151, 39.510529, 52.287189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766495, -0.238023, -0.596516,
		0.640847, 0.344818, 0.685869,
		0.042436, -0.907990, 0.416837,
		28.203882, 39.238132, 52.412239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891977, 39.801464, 52.148312>,  <28.174175, 39.873726, 52.120453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891977, 39.801464, 52.148312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676613, 39.465263, 52.124092>,  <28.547394, 39.263542, 52.109558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676613, 39.465263, 52.124092>,  <28.891977, 39.801464, 52.148312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676613, 39.465263, 52.124092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687472, -0.396555, -0.608381,
		0.487334, -0.369188, 0.791332,
		-0.538413, -0.840503, -0.060552,
		28.515089, 39.213112, 52.105927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284952, 39.235023, 52.369736>,  <28.891977, 39.801464, 52.148312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284952, 39.235023, 52.369736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.018627, 39.055660, 52.131199>,  <28.858831, 38.948044, 51.988075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.018627, 39.055660, 52.131199>,  <29.284952, 39.235023, 52.369736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018627, 39.055660, 52.131199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743584, -0.464603, -0.480861,
		-0.061441, -0.763594, 0.642766,
		-0.665814, -0.448406, -0.596342,
		28.818884, 38.921139, 51.952297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596474, 38.546368, 52.264790>,  <29.284952, 39.235023, 52.369736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596474, 38.546368, 52.264790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.306791, 38.610363, 51.996483>,  <29.132982, 38.648758, 51.835499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.306791, 38.610363, 51.996483>,  <29.596474, 38.546368, 52.264790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306791, 38.610363, 51.996483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463210, -0.607725, -0.645064,
		-0.510842, -0.777866, 0.366012,
		-0.724208, 0.159985, -0.670766,
		29.089529, 38.658360, 51.795254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374491, 37.903336, 52.130417>,  <29.596474, 38.546368, 52.264790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374491, 37.903336, 52.130417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274752, 38.116409, 51.806919>,  <29.214909, 38.244255, 51.612820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274752, 38.116409, 51.806919>,  <29.374491, 37.903336, 52.130417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274752, 38.116409, 51.806919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459728, -0.669909, -0.582985,
		-0.852335, -0.517169, -0.077850,
		-0.249350, 0.532689, -0.808744,
		29.199947, 38.276215, 51.564297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211735, 37.471878, 51.622425>,  <29.374491, 37.903336, 52.130417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211735, 37.471878, 51.622425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.270992, 37.788521, 51.385303>,  <29.306547, 37.978508, 51.243031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.270992, 37.788521, 51.385303>,  <29.211735, 37.471878, 51.622425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270992, 37.788521, 51.385303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349307, -0.602663, -0.717483,
		-0.925223, -0.100778, -0.365796,
		0.148145, 0.791607, -0.592800,
		29.315435, 38.026001, 51.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887400, 37.323990, 51.052967>,  <29.211735, 37.471878, 51.622425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887400, 37.323990, 51.052967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170694, 37.588448, 50.953941>,  <29.340672, 37.747124, 50.894527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170694, 37.588448, 50.953941>,  <28.887400, 37.323990, 51.052967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170694, 37.588448, 50.953941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308435, -0.605203, -0.733892,
		-0.635033, 0.443414, -0.632548,
		0.708238, 0.661146, -0.247560,
		29.383165, 37.786793, 50.879673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795137, 37.394909, 50.295692>,  <28.887400, 37.323990, 51.052967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795137, 37.394909, 50.295692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.161575, 37.524540, 50.390133>,  <29.381437, 37.602318, 50.446796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.161575, 37.524540, 50.390133>,  <28.795137, 37.394909, 50.295692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161575, 37.524540, 50.390133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386412, -0.556371, -0.735620,
		-0.107042, 0.765128, -0.634918,
		0.916094, 0.324082, 0.236100,
		29.436403, 37.621765, 50.460964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170959, 37.595097, 49.697556>,  <28.795137, 37.394909, 50.295692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170959, 37.595097, 49.697556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.482294, 37.533588, 49.941048>,  <29.669094, 37.496681, 50.087143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.482294, 37.533588, 49.941048>,  <29.170959, 37.595097, 49.697556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482294, 37.533588, 49.941048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501124, -0.431940, -0.749868,
		0.378243, 0.888696, -0.259134,
		0.778336, -0.153774, 0.608726,
		29.715796, 37.487457, 50.123665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867752, 37.827309, 49.331886>,  <29.170959, 37.595097, 49.697556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867752, 37.827309, 49.331886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933880, 37.544983, 49.607418>,  <29.973557, 37.375587, 49.772739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933880, 37.544983, 49.607418>,  <29.867752, 37.827309, 49.331886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933880, 37.544983, 49.607418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488795, -0.547989, -0.678813,
		0.856591, 0.448919, 0.254407,
		0.165319, -0.705819, 0.688832,
		29.983475, 37.333237, 49.814068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403519, 37.537941, 49.132263>,  <29.867752, 37.827309, 49.331886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403519, 37.537941, 49.132263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296688, 37.251064, 49.389729>,  <30.232590, 37.078938, 49.544209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296688, 37.251064, 49.389729>,  <30.403519, 37.537941, 49.132263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296688, 37.251064, 49.389729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557156, -0.659896, -0.504097,
		0.786287, 0.223991, 0.575830,
		-0.267075, -0.717192, 0.643666,
		30.216566, 37.035908, 49.582829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012810, 37.125263, 49.157547>,  <30.403519, 37.537941, 49.132263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012810, 37.125263, 49.157547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.706703, 36.899281, 49.280964>,  <30.523039, 36.763691, 49.355015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.706703, 36.899281, 49.280964>,  <31.012810, 37.125263, 49.157547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706703, 36.899281, 49.280964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435994, -0.807532, -0.397244,
		0.473582, -0.169473, 0.864291,
		-0.765264, -0.564953, 0.308543,
		30.477123, 36.729794, 49.373528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257240, 36.399307, 49.220161>,  <31.012810, 37.125263, 49.157547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257240, 36.399307, 49.220161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.861883, 36.343739, 49.195576>,  <30.624668, 36.310398, 49.180824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.861883, 36.343739, 49.195576>,  <31.257240, 36.399307, 49.220161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861883, 36.343739, 49.195576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151900, -0.899457, -0.409761,
		0.001644, -0.414341, 0.910120,
		-0.988395, -0.138921, -0.061460,
		30.565365, 36.302063, 49.177139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178776, 35.853329, 49.559761>,  <31.257240, 36.399307, 49.220161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178776, 35.853329, 49.559761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827740, 35.848759, 49.368050>,  <30.617119, 35.846016, 49.253021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827740, 35.848759, 49.368050>,  <31.178776, 35.853329, 49.559761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827740, 35.848759, 49.368050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164087, -0.946495, -0.277890,
		-0.450460, -0.322517, 0.832507,
		-0.877588, -0.011425, -0.479279,
		30.564463, 35.845329, 49.224266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884941, 35.154129, 49.688919>,  <31.178776, 35.853329, 49.559761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884941, 35.154129, 49.688919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.690943, 35.298004, 49.370071>,  <30.574543, 35.384327, 49.178761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.690943, 35.298004, 49.370071>,  <30.884941, 35.154129, 49.688919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690943, 35.298004, 49.370071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068197, -0.893171, -0.444516,
		-0.871851, -0.269951, 0.408659,
		-0.485000, 0.359683, -0.797122,
		30.545443, 35.405910, 49.130936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384579, 34.656872, 49.550175>,  <30.884941, 35.154129, 49.688919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384579, 34.656872, 49.550175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449682, 34.864017, 49.214241>,  <30.488745, 34.988304, 49.012680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449682, 34.864017, 49.214241>,  <30.384579, 34.656872, 49.550175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449682, 34.864017, 49.214241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028709, -0.853312, -0.520610,
		-0.986248, 0.060623, -0.153751,
		0.162758, 0.517864, -0.839837,
		30.498510, 35.019379, 48.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921146, 34.338947, 49.082603>,  <30.384579, 34.656872, 49.550175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921146, 34.338947, 49.082603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187054, 34.529686, 48.852577>,  <30.346598, 34.644127, 48.714561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187054, 34.529686, 48.852577>,  <29.921146, 34.338947, 49.082603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187054, 34.529686, 48.852577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176609, -0.848280, -0.499230,
		-0.725874, 0.230309, -0.648124,
		0.664768, 0.476842, -0.575070,
		30.386484, 34.672737, 48.680058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816082, 34.186855, 48.356983>,  <29.921146, 34.338947, 49.082603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816082, 34.186855, 48.356983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202171, 34.281769, 48.400871>,  <30.433825, 34.338718, 48.427204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.202171, 34.281769, 48.400871>,  <29.816082, 34.186855, 48.356983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202171, 34.281769, 48.400871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257077, -0.785358, -0.563138,
		-0.047457, 0.571760, -0.819047,
		0.965225, 0.237283, 0.109716,
		30.491739, 34.352955, 48.433784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112253, 33.762753, 47.825954>,  <29.816082, 34.186855, 48.356983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112253, 33.762753, 47.825954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454536, 33.881401, 47.995556>,  <30.659906, 33.952591, 48.097317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454536, 33.881401, 47.995556>,  <30.112253, 33.762753, 47.825954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454536, 33.881401, 47.995556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480113, -0.760760, -0.436733,
		0.193022, 0.577286, -0.793400,
		0.855707, 0.296623, 0.424006,
		30.711248, 33.970387, 48.122757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549486, 33.959026, 47.319515>,  <30.112253, 33.762753, 47.825954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549486, 33.959026, 47.319515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742910, 33.824131, 47.642609>,  <30.858965, 33.743195, 47.836464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742910, 33.824131, 47.642609>,  <30.549486, 33.959026, 47.319515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742910, 33.824131, 47.642609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511587, -0.639887, -0.573430,
		0.710245, 0.690515, -0.136895,
		0.483560, -0.337243, 0.807736,
		30.887978, 33.722958, 47.884930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210089, 33.738628, 47.043453>,  <30.549486, 33.959026, 47.319515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210089, 33.738628, 47.043453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175713, 33.562424, 47.400902>,  <31.155087, 33.456703, 47.615372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175713, 33.562424, 47.400902>,  <31.210089, 33.738628, 47.043453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175713, 33.562424, 47.400902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246232, -0.878510, -0.409377,
		0.965393, 0.184857, 0.183969,
		-0.085942, -0.440508, 0.893626,
		31.149929, 33.430271, 47.668991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845800, 33.427525, 47.217365>,  <31.210089, 33.738628, 47.043453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845800, 33.427525, 47.217365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.527102, 33.238907, 47.368542>,  <31.335882, 33.125736, 47.459248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.527102, 33.238907, 47.368542>,  <31.845800, 33.427525, 47.217365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527102, 33.238907, 47.368542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243054, -0.822643, -0.513988,
		0.553280, -0.317658, 0.770048,
		-0.796747, -0.471542, 0.377944,
		31.288076, 33.097443, 47.481926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434578, 33.555717, 46.685543>,  <31.845800, 33.427525, 47.217365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434578, 33.555717, 46.685543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776917, 33.754425, 46.743156>,  <32.982319, 33.873650, 46.777725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.776917, 33.754425, 46.743156>,  <32.434578, 33.555717, 46.685543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776917, 33.754425, 46.743156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334572, -0.744077, 0.578283,
		0.394444, -0.446733, -0.803022,
		0.855848, 0.496769, 0.144033,
		33.033672, 33.903454, 46.786366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973228, 33.200012, 47.063725>,  <32.434578, 33.555717, 46.685543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973228, 33.200012, 47.063725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264389, 33.264702, 46.797188>,  <33.439083, 33.303516, 46.637264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264389, 33.264702, 46.797188>,  <32.973228, 33.200012, 47.063725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264389, 33.264702, 46.797188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652618, -0.461535, 0.600895,
		-0.210363, -0.872257, -0.441492,
		0.727899, 0.161720, -0.666340,
		33.482758, 33.313217, 46.597286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621838, 32.718605, 47.170273>,  <32.973228, 33.200012, 47.063725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621838, 32.718605, 47.170273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984528, 32.873550, 47.236965>,  <34.202141, 32.966518, 47.276981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984528, 32.873550, 47.236965>,  <33.621838, 32.718605, 47.170273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984528, 32.873550, 47.236965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237941, 0.143489, 0.960622,
		0.348186, -0.910693, 0.222274,
		0.906725, 0.387363, 0.166730,
		34.256546, 32.989758, 47.286983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887886, 33.148960, 47.688301>,  <33.621838, 32.718605, 47.170273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887886, 33.148960, 47.688301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116177, 32.835472, 47.786327>,  <34.253151, 32.647381, 47.845142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116177, 32.835472, 47.786327>,  <33.887886, 33.148960, 47.688301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116177, 32.835472, 47.786327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727166, 0.621014, 0.292525,
		-0.381449, 0.011255, 0.924321,
		0.570724, -0.783718, 0.245070,
		34.287395, 32.600357, 47.859848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145149, 33.220795, 48.296833>,  <33.887886, 33.148960, 47.688301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145149, 33.220795, 48.296833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417099, 32.995804, 48.108620>,  <34.580269, 32.860809, 47.995693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417099, 32.995804, 48.108620>,  <34.145149, 33.220795, 48.296833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417099, 32.995804, 48.108620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713326, 0.656093, 0.246389,
		0.170125, -0.503155, 0.847286,
		0.679870, -0.562474, -0.470531,
		34.621059, 32.827061, 47.967461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668587, 33.099087, 48.900642>,  <34.145149, 33.220795, 48.296833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668587, 33.099087, 48.900642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796543, 33.090271, 48.521763>,  <34.873318, 33.084980, 48.294434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796543, 33.090271, 48.521763>,  <34.668587, 33.099087, 48.900642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796543, 33.090271, 48.521763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684978, 0.696078, 0.215130,
		0.654582, -0.717628, 0.237767,
		0.319887, -0.022044, -0.947199,
		34.892509, 33.083656, 48.237602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299244, 32.893257, 49.345573>,  <34.668587, 33.099087, 48.900642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299244, 32.893257, 49.345573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384052, 32.753769, 49.710743>,  <35.434937, 32.670074, 49.929844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384052, 32.753769, 49.710743>,  <35.299244, 32.893257, 49.345573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384052, 32.753769, 49.710743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823043, 0.567402, 0.025590,
		-0.526921, 0.745953, 0.407318,
		0.212025, -0.348724, 0.912928,
		35.447659, 32.649151, 49.984623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489182, 33.500088, 49.752300>,  <35.299244, 32.893257, 49.345573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489182, 33.500088, 49.752300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652565, 33.174046, 49.916622>,  <35.750595, 32.978420, 50.015217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652565, 33.174046, 49.916622>,  <35.489182, 33.500088, 49.752300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652565, 33.174046, 49.916622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858072, 0.496359, 0.131683,
		-0.311243, 0.298712, 0.902164,
		0.408462, -0.815107, 0.410804,
		35.775105, 32.929512, 50.039864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773991, 33.699303, 50.417145>,  <35.489182, 33.500088, 49.752300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773991, 33.699303, 50.417145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983471, 33.379616, 50.299171>,  <36.109158, 33.187805, 50.228386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983471, 33.379616, 50.299171>,  <35.773991, 33.699303, 50.417145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983471, 33.379616, 50.299171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849038, 0.518030, 0.103831,
		0.069802, -0.304787, 0.949859,
		0.523701, -0.799219, -0.294935,
		36.140583, 33.139851, 50.210690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510578, 33.768925, 50.700405>,  <35.773991, 33.699303, 50.417145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510578, 33.768925, 50.700405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576454, 33.464661, 50.449242>,  <36.615978, 33.282101, 50.298542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576454, 33.464661, 50.449242>,  <36.510578, 33.768925, 50.700405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576454, 33.464661, 50.449242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863349, 0.419018, -0.281162,
		0.476975, -0.495801, 0.725725,
		0.164692, -0.760661, -0.627910,
		36.625862, 33.236462, 50.260868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185211, 33.503502, 50.865101>,  <36.510578, 33.768925, 50.700405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185211, 33.503502, 50.865101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115517, 33.402760, 50.484322>,  <37.073700, 33.342316, 50.255852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115517, 33.402760, 50.484322>,  <37.185211, 33.503502, 50.865101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115517, 33.402760, 50.484322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927386, 0.283045, -0.244623,
		0.331054, -0.925449, 0.184247,
		-0.174236, -0.251852, -0.951952,
		37.063248, 33.327206, 50.198734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780621, 33.134426, 50.715553>,  <37.185211, 33.503502, 50.865101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780621, 33.134426, 50.715553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637737, 33.256584, 50.362480>,  <37.552006, 33.329880, 50.150635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.637737, 33.256584, 50.362480>,  <37.780621, 33.134426, 50.715553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637737, 33.256584, 50.362480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892968, 0.388770, -0.226859,
		0.273880, -0.869247, -0.411581,
		-0.357207, 0.305397, -0.882687,
		37.530575, 33.348202, 50.097675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379826, 33.046932, 50.257389>,  <37.780621, 33.134426, 50.715553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379826, 33.046932, 50.257389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130802, 33.275520, 50.043530>,  <37.981388, 33.412674, 49.915215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130802, 33.275520, 50.043530>,  <38.379826, 33.046932, 50.257389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130802, 33.275520, 50.043530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781321, 0.415218, -0.465975,
		-0.044294, -0.707827, -0.704996,
		-0.622556, 0.571468, -0.534648,
		37.944035, 33.446960, 49.883137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743324, 33.077522, 49.640171>,  <38.379826, 33.046932, 50.257389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743324, 33.077522, 49.640171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.474033, 33.373135, 49.649853>,  <38.312458, 33.550503, 49.655663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.474033, 33.373135, 49.649853>,  <38.743324, 33.077522, 49.640171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474033, 33.373135, 49.649853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656301, 0.612302, -0.440857,
		-0.340629, -0.280914, -0.897251,
		-0.673232, 0.739035, 0.024203,
		38.272064, 33.594845, 49.657112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708294, 33.322350, 48.933556>,  <38.743324, 33.077522, 49.640171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708294, 33.322350, 48.933556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608982, 33.593918, 49.209938>,  <38.549397, 33.756859, 49.375767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608982, 33.593918, 49.209938>,  <38.708294, 33.322350, 48.933556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608982, 33.593918, 49.209938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699865, 0.618879, -0.356621,
		-0.669737, 0.395037, -0.628806,
		-0.248276, 0.678922, 0.690959,
		38.534500, 33.797596, 49.417225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648235, 33.825912, 48.537426>,  <38.708294, 33.322350, 48.933556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648235, 33.825912, 48.537426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746208, 33.959332, 48.901569>,  <38.804993, 34.039383, 49.120056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746208, 33.959332, 48.901569>,  <38.648235, 33.825912, 48.537426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746208, 33.959332, 48.901569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733725, 0.550005, -0.398926,
		-0.633763, 0.765663, -0.110017,
		0.244933, 0.333547, 0.910359,
		38.819687, 34.059395, 49.174679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967155, 33.368828, 47.997417>,  <38.648235, 33.825912, 48.537426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967155, 33.368828, 47.997417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701878, 33.131176, 47.815346>,  <38.542709, 32.988586, 47.706104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701878, 33.131176, 47.815346>,  <38.967155, 33.368828, 47.997417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701878, 33.131176, 47.815346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259735, 0.387671, -0.884448,
		0.701935, -0.704786, -0.102784,
		-0.663193, -0.594128, -0.455177,
		38.502918, 32.952938, 47.678791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528160, 33.097649, 47.626583>,  <38.967155, 33.368828, 47.997417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528160, 33.097649, 47.626583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148182, 33.073364, 47.504005>,  <38.920193, 33.058792, 47.430458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148182, 33.073364, 47.504005>,  <39.528160, 33.097649, 47.626583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148182, 33.073364, 47.504005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219036, 0.570004, -0.791909,
		0.222753, -0.819396, -0.528177,
		-0.949950, -0.060710, -0.306448,
		38.863197, 33.055153, 47.412071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444427, 32.724434, 47.047829>,  <39.528160, 33.097649, 47.626583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444427, 32.724434, 47.047829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225571, 33.056889, 47.087524>,  <39.094257, 33.256363, 47.111343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225571, 33.056889, 47.087524>,  <39.444427, 32.724434, 47.047829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225571, 33.056889, 47.087524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439699, 0.386272, -0.810838,
		-0.712251, -0.400007, -0.576795,
		-0.547141, 0.831137, 0.099241,
		39.061428, 33.306229, 47.117298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477680, 32.548683, 46.390152>,  <39.444427, 32.724434, 47.047829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477680, 32.548683, 46.390152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.633434, 32.905491, 46.481968>,  <39.726887, 33.119576, 46.537056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.633434, 32.905491, 46.481968>,  <39.477680, 32.548683, 46.390152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633434, 32.905491, 46.481968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829945, -0.447870, 0.332572,
		0.399464, 0.061007, -0.914717,
		0.389385, 0.892015, 0.229540,
		39.750248, 33.173096, 46.550831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035355, 32.692749, 46.056873>,  <39.477680, 32.548683, 46.390152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035355, 32.692749, 46.056873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059143, 32.896080, 46.400517>,  <40.073418, 33.018078, 46.606701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059143, 32.896080, 46.400517>,  <40.035355, 32.692749, 46.056873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059143, 32.896080, 46.400517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884946, -0.425062, 0.190243,
		0.461880, 0.748949, -0.475124,
		0.059475, 0.508329, 0.859107,
		40.076984, 33.048580, 46.658249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690437, 33.121708, 46.069984>,  <40.035355, 32.692749, 46.056873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690437, 33.121708, 46.069984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579975, 33.015182, 46.439377>,  <40.513699, 32.951267, 46.661011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579975, 33.015182, 46.439377>,  <40.690437, 33.121708, 46.069984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579975, 33.015182, 46.439377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955894, -0.176096, 0.235067,
		0.100019, 0.947664, 0.303199,
		-0.276156, -0.266315, 0.923479,
		40.497128, 32.935287, 46.716419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026234, 33.646873, 46.558247>,  <40.690437, 33.121708, 46.069984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026234, 33.646873, 46.558247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.945972, 33.264614, 46.644485>,  <40.897816, 33.035259, 46.696228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.945972, 33.264614, 46.644485>,  <41.026234, 33.646873, 46.558247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945972, 33.264614, 46.644485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979532, -0.199308, 0.028172,
		0.016047, 0.216835, 0.976076,
		-0.200648, -0.955646, 0.215595,
		40.885777, 32.977921, 46.709164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510674, 33.425869, 47.158726>,  <41.026234, 33.646873, 46.558247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510674, 33.425869, 47.158726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.388378, 33.132660, 46.915680>,  <41.314999, 32.956734, 46.769852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.388378, 33.132660, 46.915680>,  <41.510674, 33.425869, 47.158726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388378, 33.132660, 46.915680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935939, -0.348524, -0.050490,
		-0.174759, -0.584130, 0.792623,
		-0.305741, -0.733023, -0.607618,
		41.296658, 32.912754, 46.733395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947754, 32.925270, 47.448311>,  <41.510674, 33.425869, 47.158726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947754, 32.925270, 47.448311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824974, 32.822319, 47.081806>,  <41.751308, 32.760548, 46.861904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824974, 32.822319, 47.081806>,  <41.947754, 32.925270, 47.448311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824974, 32.822319, 47.081806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825751, -0.550698, -0.121934,
		-0.473203, -0.794034, 0.381562,
		-0.306945, -0.257376, -0.916265,
		41.732891, 32.745106, 46.806927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066822, 32.226208, 47.182365>,  <41.947754, 32.925270, 47.448311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066822, 32.226208, 47.182365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.059349, 32.419605, 46.832306>,  <42.054867, 32.535645, 46.622269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.059349, 32.419605, 46.832306>,  <42.066822, 32.226208, 47.182365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059349, 32.419605, 46.832306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704937, -0.614349, -0.354457,
		-0.709024, -0.623547, -0.329353,
		-0.018683, 0.483492, -0.875149,
		42.053745, 32.564651, 46.569759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943851, 31.743809, 46.555008>,  <42.066822, 32.226208, 47.182365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943851, 31.743809, 46.555008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.155460, 32.061565, 46.435623>,  <42.282425, 32.252220, 46.363995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.155460, 32.061565, 46.435623>,  <41.943851, 31.743809, 46.555008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155460, 32.061565, 46.435623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739321, -0.604098, -0.297441,
		-0.416583, -0.063305, -0.906891,
		0.529021, 0.794392, -0.298460,
		42.314167, 32.299885, 46.346085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295300, 31.620535, 45.910355>,  <41.943851, 31.743809, 46.555008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295300, 31.620535, 45.910355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.499077, 31.906197, 46.102375>,  <42.621342, 32.077595, 46.217587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.499077, 31.906197, 46.102375>,  <42.295300, 31.620535, 45.910355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499077, 31.906197, 46.102375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851550, -0.498667, -0.161843,
		0.123807, 0.491241, -0.862180,
		0.509445, 0.714152, 0.480055,
		42.651909, 32.120441, 46.246391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672234, 32.124226, 45.407948>,  <42.295300, 31.620535, 45.910355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672234, 32.124226, 45.407948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825966, 32.041386, 45.767815>,  <42.918205, 31.991682, 45.983734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825966, 32.041386, 45.767815>,  <42.672234, 32.124226, 45.407948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825966, 32.041386, 45.767815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727113, -0.532576, -0.433209,
		0.568859, 0.820654, -0.054100,
		0.384327, -0.207098, 0.899668,
		42.941265, 31.979256, 46.037716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600208, 32.596760, 44.901993>,  <42.672234, 32.124226, 45.407948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600208, 32.596760, 44.901993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.889259, 32.364807, 44.751503>,  <43.062691, 32.225636, 44.661209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.889259, 32.364807, 44.751503>,  <42.600208, 32.596760, 44.901993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889259, 32.364807, 44.751503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208085, 0.336542, -0.918390,
		0.659174, 0.741940, 0.122530,
		0.722627, -0.579883, -0.376226,
		43.106049, 32.190842, 44.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919056, 33.045044, 44.293186>,  <42.600208, 32.596760, 44.901993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919056, 33.045044, 44.293186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953976, 32.648037, 44.259056>,  <42.974926, 32.409832, 44.238579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953976, 32.648037, 44.259056>,  <42.919056, 33.045044, 44.293186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953976, 32.648037, 44.259056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222980, 0.064012, -0.972719,
		0.970906, 0.103945, -0.215724,
		0.087300, -0.992521, -0.085327,
		42.980167, 32.350281, 44.233459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409420, 32.908169, 43.802464>,  <42.919056, 33.045044, 44.293186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409420, 32.908169, 43.802464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.111500, 32.641357, 43.809990>,  <42.932747, 32.481270, 43.814507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.111500, 32.641357, 43.809990>,  <43.409420, 32.908169, 43.802464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111500, 32.641357, 43.809990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212338, 0.210175, -0.954326,
		0.632607, -0.714774, -0.298173,
		-0.744796, -0.667027, 0.018816,
		42.888062, 32.441250, 43.815636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408939, 32.366272, 43.217918>,  <43.409420, 32.908169, 43.802464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408939, 32.366272, 43.217918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028053, 32.420307, 43.327496>,  <42.799522, 32.452728, 43.393242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028053, 32.420307, 43.327496>,  <43.408939, 32.366272, 43.217918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028053, 32.420307, 43.327496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212995, 0.349149, -0.912540,
		-0.218923, -0.927278, -0.303689,
		-0.952211, 0.135092, 0.273942,
		42.742390, 32.460835, 43.409679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925293, 32.763485, 42.991386>,  <43.408939, 32.366272, 43.217918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925293, 32.763485, 42.991386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.683704, 32.556007, 42.749336>,  <43.538754, 32.431522, 42.604107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.683704, 32.556007, 42.749336>,  <43.925293, 32.763485, 42.991386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683704, 32.556007, 42.749336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555263, 0.270823, -0.786345,
		0.571755, -0.810931, 0.124444,
		-0.603969, -0.518696, -0.605125,
		43.502514, 32.400398, 42.567799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417538, 32.338207, 42.766678>,  <43.925293, 32.763485, 42.991386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417538, 32.338207, 42.766678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.099102, 32.380108, 42.528259>,  <43.908039, 32.405247, 42.385208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.099102, 32.380108, 42.528259>,  <44.417538, 32.338207, 42.766678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099102, 32.380108, 42.528259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604930, 0.109359, -0.788733,
		-0.017440, -0.988467, -0.150428,
		-0.796088, 0.104753, -0.596046,
		43.860275, 32.411533, 42.349445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563667, 31.945864, 42.153950>,  <44.417538, 32.338207, 42.766678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563667, 31.945864, 42.153950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.313984, 32.242950, 42.057011>,  <44.164173, 32.421204, 41.998848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.313984, 32.242950, 42.057011>,  <44.563667, 31.945864, 42.153950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313984, 32.242950, 42.057011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545959, 0.192809, -0.815324,
		-0.558828, -0.641246, -0.525847,
		-0.624211, 0.742717, -0.242347,
		44.126720, 32.465767, 41.984306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267406, 31.807922, 41.514160>,  <44.563667, 31.945864, 42.153950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267406, 31.807922, 41.514160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277557, 32.203232, 41.574387>,  <44.283646, 32.440418, 41.610523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277557, 32.203232, 41.574387>,  <44.267406, 31.807922, 41.514160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277557, 32.203232, 41.574387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515143, 0.116153, -0.849198,
		-0.856729, 0.099112, -0.506155,
		0.025374, 0.988274, 0.150569,
		44.285168, 32.499714, 41.619556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998367, 32.157207, 41.038456>,  <44.267406, 31.807922, 41.514160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998367, 32.157207, 41.038456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284618, 32.401352, 41.174297>,  <44.456371, 32.547840, 41.255802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284618, 32.401352, 41.174297>,  <43.998367, 32.157207, 41.038456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284618, 32.401352, 41.174297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510095, -0.124546, -0.851053,
		-0.477152, 0.782272, -0.400470,
		0.715632, 0.610360, 0.339606,
		44.499310, 32.584461, 41.276180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250431, 32.531738, 40.366642>,  <43.998367, 32.157207, 41.038456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250431, 32.531738, 40.366642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.520779, 32.558846, 40.660202>,  <44.682987, 32.575111, 40.836338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.520779, 32.558846, 40.660202>,  <44.250431, 32.531738, 40.366642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520779, 32.558846, 40.660202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735190, -0.132116, -0.664862,
		0.051903, 0.988915, -0.139116,
		0.675871, 0.067768, 0.733897,
		44.723541, 32.579178, 40.880371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805397, 32.652622, 39.950417>,  <44.250431, 32.531738, 40.366642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805397, 32.652622, 39.950417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.970886, 32.601540, 40.310978>,  <45.070179, 32.570889, 40.527313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.970886, 32.601540, 40.310978>,  <44.805397, 32.652622, 39.950417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970886, 32.601540, 40.310978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909764, 0.020889, -0.414599,
		0.034117, 0.991592, 0.124824,
		0.413721, -0.127705, 0.901402,
		45.095001, 32.563229, 40.581398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330727, 33.180077, 40.149429>,  <44.805397, 32.652622, 39.950417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330727, 33.180077, 40.149429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.401154, 32.824741, 40.319065>,  <45.443409, 32.611538, 40.420845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.401154, 32.824741, 40.319065>,  <45.330727, 33.180077, 40.149429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401154, 32.824741, 40.319065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904172, -0.024393, -0.426471,
		0.389196, 0.458536, 0.798918,
		0.176065, -0.888341, 0.424089,
		45.453972, 32.558239, 40.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980083, 33.316669, 40.305557>,  <45.330727, 33.180077, 40.149429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980083, 33.316669, 40.305557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.943020, 32.921349, 40.257107>,  <45.920784, 32.684155, 40.228035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.943020, 32.921349, 40.257107>,  <45.980083, 33.316669, 40.305557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943020, 32.921349, 40.257107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904575, -0.032709, -0.425058,
		0.416124, -0.148955, 0.897024,
		-0.092656, -0.988303, -0.121130,
		45.915222, 32.624859, 40.220768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806873, 33.316799, 40.654270>,  <45.980083, 33.316669, 40.305557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806873, 33.316799, 40.654270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.202850, 33.339645, 40.706039>,  <47.440437, 33.353352, 40.737099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.202850, 33.339645, 40.706039>,  <46.806873, 33.316799, 40.654270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.202850, 33.339645, 40.706039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031881, 0.981409, -0.189259,
		-0.137822, 0.183230, 0.973361,
		0.989944, 0.057116, 0.129419,
		47.499832, 33.356781, 40.744865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957512, 33.878849, 41.209881>,  <46.806873, 33.316799, 40.654270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957512, 33.878849, 41.209881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.261810, 33.852272, 40.951626>,  <47.444389, 33.836327, 40.796673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.261810, 33.852272, 40.951626>,  <46.957512, 33.878849, 41.209881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261810, 33.852272, 40.951626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161712, 0.943972, -0.287690,
		0.628579, 0.323266, 0.707380,
		0.760748, -0.066444, -0.645638,
		47.490036, 33.832340, 40.757935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262608, 34.429466, 41.312141>,  <46.957512, 33.878849, 41.209881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262608, 34.429466, 41.312141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.356628, 34.303371, 40.944366>,  <47.413040, 34.227715, 40.723701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.356628, 34.303371, 40.944366>,  <47.262608, 34.429466, 41.312141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.356628, 34.303371, 40.944366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299625, 0.876379, -0.377073,
		0.924648, 0.364121, 0.111544,
		0.235055, -0.315239, -0.919442,
		47.427143, 34.208801, 40.668533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.791252, 34.844028, 40.854836>,  <47.262608, 34.429466, 41.312141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.791252, 34.844028, 40.854836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.526077, 34.664387, 40.615227>,  <47.366974, 34.556602, 40.471462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.526077, 34.664387, 40.615227>,  <47.791252, 34.844028, 40.854836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526077, 34.664387, 40.615227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115074, 0.851717, -0.511211,
		0.739781, -0.269968, -0.616313,
		-0.662934, -0.449106, -0.599018,
		47.327198, 34.529655, 40.435520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933975, 35.150627, 40.190990>,  <47.791252, 34.844028, 40.854836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933975, 35.150627, 40.190990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.566933, 34.992561, 40.208202>,  <47.346706, 34.897724, 40.218529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.566933, 34.992561, 40.208202>,  <47.933975, 35.150627, 40.190990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.566933, 34.992561, 40.208202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342011, 0.729713, -0.592070,
		0.202562, -0.558002, -0.804737,
		-0.917604, -0.395160, 0.043031,
		47.291653, 34.874012, 40.221111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.682400, 34.792053, 39.616127>,  <47.933975, 35.150627, 40.190990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.682400, 34.792053, 39.616127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.387672, 34.985874, 39.804726>,  <47.210838, 35.102165, 39.917885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.387672, 34.985874, 39.804726>,  <47.682400, 34.792053, 39.616127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.387672, 34.985874, 39.804726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138588, 0.574333, -0.806806,
		-0.661736, -0.659812, -0.356025,
		-0.736817, 0.484552, 0.471499,
		47.166626, 35.131241, 39.946175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.259651, 34.636932, 39.160141>,  <47.682400, 34.792053, 39.616127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.259651, 34.636932, 39.160141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.647488, 34.539150, 39.164650>,  <48.880192, 34.480480, 39.167355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.647488, 34.539150, 39.164650>,  <48.259651, 34.636932, 39.160141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.647488, 34.539150, 39.164650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078432, 0.266812, -0.960552,
		0.231804, 0.932231, 0.277873,
		0.969596, -0.244454, 0.011268,
		48.938366, 34.465813, 39.168030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.612476, 35.263897, 38.933678>,  <48.259651, 34.636932, 39.160141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.612476, 35.263897, 38.933678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.812840, 34.928745, 38.846912>,  <48.933056, 34.727654, 38.794853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.812840, 34.928745, 38.846912>,  <48.612476, 35.263897, 38.933678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.812840, 34.928745, 38.846912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042299, 0.226618, -0.973065,
		0.864469, 0.496586, 0.078072,
		0.500903, -0.837882, -0.216910,
		48.963112, 34.677380, 38.781841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.237030, 35.395882, 38.501186>,  <48.612476, 35.263897, 38.933678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.237030, 35.395882, 38.501186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.039967, 35.048832, 38.474308>,  <48.921730, 34.840603, 38.458183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.039967, 35.048832, 38.474308>,  <49.237030, 35.395882, 38.501186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.039967, 35.048832, 38.474308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329152, 0.257263, -0.908556,
		0.805573, -0.425491, -0.412323,
		-0.492658, -0.867625, -0.067193,
		48.892170, 34.788544, 38.454151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.455433, 34.901588, 37.862236>,  <49.237030, 35.395882, 38.501186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.455433, 34.901588, 37.862236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.068672, 34.877148, 37.961330>,  <48.836617, 34.862484, 38.020786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.068672, 34.877148, 37.961330>,  <49.455433, 34.901588, 37.862236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.068672, 34.877148, 37.961330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255105, 0.251991, -0.933500,
		-0.005395, -0.965799, -0.259236,
		-0.966899, -0.061096, 0.247740,
		48.778603, 34.858818, 38.035652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.242702, 34.775154, 37.195774>,  <49.455433, 34.901588, 37.862236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.242702, 34.775154, 37.195774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.934532, 34.943413, 37.387402>,  <48.749630, 35.044369, 37.502377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.934532, 34.943413, 37.387402>,  <49.242702, 34.775154, 37.195774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.934532, 34.943413, 37.387402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341922, 0.361600, -0.867372,
		-0.538086, -0.832048, -0.134758,
		-0.770424, 0.420644, 0.479068,
		48.703403, 35.069607, 37.531120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.631420, 34.626453, 36.837055>,  <49.242702, 34.775154, 37.195774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.631420, 34.626453, 36.837055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.562447, 34.954418, 37.055416>,  <48.521061, 35.151196, 37.186432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.562447, 34.954418, 37.055416>,  <48.631420, 34.626453, 36.837055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.562447, 34.954418, 37.055416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443342, 0.430294, -0.786317,
		-0.879610, -0.377612, 0.289303,
		-0.172437, 0.819912, 0.545902,
		48.510715, 35.200394, 37.219185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.874363, 34.811089, 36.875641>,  <48.631420, 34.626453, 36.837055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.874363, 34.811089, 36.875641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.091709, 35.146572, 36.890133>,  <48.222118, 35.347862, 36.898827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.091709, 35.146572, 36.890133>,  <47.874363, 34.811089, 36.875641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.091709, 35.146572, 36.890133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549809, 0.388147, -0.739630,
		-0.634398, 0.381973, 0.672039,
		0.543368, 0.838712, 0.036228,
		48.254719, 35.398186, 36.901001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.405052, 35.340500, 36.459953>,  <47.874363, 34.811089, 36.875641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.405052, 35.340500, 36.459953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.185257, 35.104321, 36.223503>,  <47.053379, 34.962612, 36.081631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.185257, 35.104321, 36.223503>,  <47.405052, 35.340500, 36.459953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185257, 35.104321, 36.223503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454432, 0.382498, -0.804479,
		0.701107, -0.710682, 0.058139,
		-0.549491, -0.590446, -0.591128,
		47.020409, 34.927185, 36.046165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898418, 35.079453, 36.021320>,  <47.405052, 35.340500, 36.459953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898418, 35.079453, 36.021320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.537006, 35.097431, 35.850857>,  <47.320160, 35.108219, 35.748581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.537006, 35.097431, 35.850857>,  <47.898418, 35.079453, 36.021320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537006, 35.097431, 35.850857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344853, 0.666600, -0.660848,
		0.254375, -0.744059, -0.617794,
		-0.903532, 0.044945, -0.426157,
		47.265945, 35.110916, 35.723011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909035, 34.711914, 35.339115>,  <47.898418, 35.079453, 36.021320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909035, 34.711914, 35.339115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.694031, 34.894619, 35.055580>,  <47.565029, 35.004242, 34.885460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.694031, 34.894619, 35.055580>,  <47.909035, 34.711914, 35.339115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694031, 34.894619, 35.055580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637767, -0.770125, -0.012639,
		-0.551666, 0.445280, 0.705259,
		-0.537510, 0.456764, -0.708836,
		47.532776, 35.031647, 34.842930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.630991, 35.752296, 57.514858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.997248, 35.693657, 57.664581>,  <30.217003, 35.658474, 57.754414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.997248, 35.693657, 57.664581>,  <29.630991, 35.752296, 57.514858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997248, 35.693657, 57.664581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338545, -0.220852, -0.914665,
		0.216757, 0.964226, -0.152591,
		0.915644, -0.146601, 0.374306,
		30.271940, 35.649677, 57.776875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175039, 36.149311, 57.028572>,  <29.630991, 35.752296, 57.514858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175039, 36.149311, 57.028572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.387428, 35.892090, 57.249317>,  <30.514862, 35.737759, 57.381763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.387428, 35.892090, 57.249317>,  <30.175039, 36.149311, 57.028572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387428, 35.892090, 57.249317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597781, -0.177347, -0.781797,
		0.600605, 0.745008, 0.290236,
		0.530972, -0.643048, 0.551867,
		30.546721, 35.699177, 57.414879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958706, 36.345852, 56.934952>,  <30.175039, 36.149311, 57.028572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958706, 36.345852, 56.934952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.939543, 35.967381, 57.062981>,  <30.928045, 35.740295, 57.139797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.939543, 35.967381, 57.062981>,  <30.958706, 36.345852, 56.934952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939543, 35.967381, 57.062981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518936, -0.297375, -0.801419,
		0.853469, 0.127701, 0.505255,
		-0.047909, -0.946182, 0.320069,
		30.925171, 35.683525, 57.159000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595005, 36.132759, 56.789051>,  <30.958706, 36.345852, 56.934952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595005, 36.132759, 56.789051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.408421, 35.781841, 56.834259>,  <31.296471, 35.571293, 56.861385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.408421, 35.781841, 56.834259>,  <31.595005, 36.132759, 56.789051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408421, 35.781841, 56.834259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482201, -0.359319, -0.798982,
		0.741551, -0.318194, 0.590639,
		-0.466459, -0.877293, 0.113020,
		31.268482, 35.518654, 56.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148724, 35.645222, 56.793736>,  <31.595005, 36.132759, 56.789051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148724, 35.645222, 56.793736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.826466, 35.415852, 56.734249>,  <31.633110, 35.278229, 56.698559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.826466, 35.415852, 56.734249>,  <32.148724, 35.645222, 56.793736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826466, 35.415852, 56.734249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526781, -0.578636, -0.622641,
		0.270984, -0.579971, 0.768245,
		-0.805648, -0.573423, -0.148716,
		31.584770, 35.243824, 56.689632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362434, 34.889759, 56.912743>,  <32.148724, 35.645222, 56.793736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362434, 34.889759, 56.912743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.023491, 34.878571, 56.700630>,  <31.820124, 34.871857, 56.573364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.023491, 34.878571, 56.700630>,  <32.362434, 34.889759, 56.912743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023491, 34.878571, 56.700630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419414, -0.647718, -0.636045,
		-0.325683, -0.761367, 0.560581,
		-0.847362, -0.027967, -0.530279,
		31.769281, 34.870182, 56.541546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306622, 34.212101, 56.772552>,  <32.362434, 34.889759, 56.912743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306622, 34.212101, 56.772552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.089642, 34.424038, 56.511780>,  <31.959454, 34.551201, 56.355316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.089642, 34.424038, 56.511780>,  <32.306622, 34.212101, 56.772552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089642, 34.424038, 56.511780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306924, -0.597389, -0.740894,
		-0.782016, -0.601989, 0.161430,
		-0.542447, 0.529845, -0.651933,
		31.926907, 34.582993, 56.316200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950153, 33.689991, 56.258049>,  <32.306622, 34.212101, 56.772552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950153, 33.689991, 56.258049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.976910, 34.052948, 56.092083>,  <31.992964, 34.270721, 55.992504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.976910, 34.052948, 56.092083>,  <31.950153, 33.689991, 56.258049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976910, 34.052948, 56.092083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244141, -0.418094, -0.874982,
		-0.967430, -0.042771, -0.249499,
		0.066890, 0.907396, -0.414919,
		31.996977, 34.325169, 55.967606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666979, 33.583622, 55.636272>,  <31.950153, 33.689991, 56.258049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666979, 33.583622, 55.636272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.880831, 33.920208, 55.605007>,  <32.009144, 34.122158, 55.586246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.880831, 33.920208, 55.605007>,  <31.666979, 33.583622, 55.636272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880831, 33.920208, 55.605007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313365, -0.283298, -0.906391,
		-0.784838, 0.460090, -0.415145,
		0.534632, 0.841462, -0.078167,
		32.041222, 34.172646, 55.581558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498003, 33.851429, 55.036255>,  <31.666979, 33.583622, 55.636272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498003, 33.851429, 55.036255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.856339, 34.009975, 55.116619>,  <32.071339, 34.105103, 55.164837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.856339, 34.009975, 55.116619>,  <31.498003, 33.851429, 55.036255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856339, 34.009975, 55.116619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287237, -0.171513, -0.942379,
		-0.339072, 0.901928, -0.267500,
		0.895838, 0.396370, 0.200912,
		32.125092, 34.128887, 55.176891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588408, 34.232578, 54.489254>,  <31.498003, 33.851429, 55.036255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588408, 34.232578, 54.489254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.953926, 34.176556, 54.641758>,  <32.173237, 34.142941, 54.733261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.953926, 34.176556, 54.641758>,  <31.588408, 34.232578, 54.489254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953926, 34.176556, 54.641758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229570, -0.596257, -0.769270,
		0.335068, 0.790482, -0.512706,
		0.913798, -0.140056, 0.381257,
		32.228065, 34.134541, 54.756134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067322, 34.397488, 53.971092>,  <31.588408, 34.232578, 54.489254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067322, 34.397488, 53.971092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.293697, 34.180614, 54.219528>,  <32.429523, 34.050491, 54.368587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.293697, 34.180614, 54.219528>,  <32.067322, 34.397488, 53.971092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293697, 34.180614, 54.219528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461212, -0.416223, -0.783609,
		0.683372, 0.729926, 0.014507,
		0.565939, -0.542187, 0.621085,
		32.463478, 34.017960, 54.405853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787884, 34.453686, 53.696754>,  <32.067322, 34.397488, 53.971092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787884, 34.453686, 53.696754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.814610, 34.122257, 53.919106>,  <32.830647, 33.923401, 54.052517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.814610, 34.122257, 53.919106>,  <32.787884, 34.453686, 53.696754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814610, 34.122257, 53.919106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575475, -0.423119, -0.699856,
		0.815085, 0.366656, 0.448553,
		0.066815, -0.828573, 0.555880,
		32.834656, 33.873684, 54.085869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485603, 34.265804, 53.712242>,  <32.787884, 34.453686, 53.696754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485603, 34.265804, 53.712242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.279133, 33.942013, 53.824177>,  <33.155251, 33.747738, 53.891338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.279133, 33.942013, 53.824177>,  <33.485603, 34.265804, 53.712242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279133, 33.942013, 53.824177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465943, -0.539546, -0.701275,
		0.718652, -0.231591, 0.655671,
		-0.516174, -0.809478, 0.279838,
		33.124279, 33.699169, 53.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005028, 33.772392, 53.833881>,  <33.485603, 34.265804, 53.712242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005028, 33.772392, 53.833881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.657871, 33.575176, 53.809643>,  <33.449577, 33.456844, 53.795097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.657871, 33.575176, 53.809643>,  <34.005028, 33.772392, 53.833881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657871, 33.575176, 53.809643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433317, -0.691759, -0.577673,
		0.242898, -0.527617, 0.814016,
		-0.867892, -0.493042, -0.060598,
		33.397503, 33.427265, 53.791462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116760, 33.130390, 54.065746>,  <34.005028, 33.772392, 53.833881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116760, 33.130390, 54.065746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.792072, 33.096935, 53.834538>,  <33.597260, 33.076862, 53.695812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.792072, 33.096935, 53.834538>,  <34.116760, 33.130390, 54.065746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792072, 33.096935, 53.834538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449309, -0.721720, -0.526537,
		-0.373129, -0.687113, 0.623418,
		-0.811724, -0.083641, -0.578021,
		33.548553, 33.071842, 53.661133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078400, 32.406044, 53.926022>,  <34.116760, 33.130390, 54.065746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078400, 32.406044, 53.926022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.833328, 32.514061, 53.628914>,  <33.686287, 32.578873, 53.450649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.833328, 32.514061, 53.628914>,  <34.078400, 32.406044, 53.926022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833328, 32.514061, 53.628914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433309, -0.671198, -0.601445,
		-0.660958, -0.690340, 0.294218,
		-0.612681, 0.270043, -0.742765,
		33.649525, 32.595074, 53.406086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849823, 31.821508, 53.594158>,  <34.078400, 32.406044, 53.926022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849823, 31.821508, 53.594158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.750954, 32.082016, 53.307171>,  <33.691631, 32.238319, 53.134979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.750954, 32.082016, 53.307171>,  <33.849823, 31.821508, 53.594158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750954, 32.082016, 53.307171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068822, -0.726770, -0.683424,
		-0.966525, -0.218301, 0.134815,
		-0.247171, 0.651268, -0.717465,
		33.676804, 32.277397, 53.091930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160412, 31.559347, 53.263737>,  <33.849823, 31.821508, 53.594158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160412, 31.559347, 53.263737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.323017, 31.817251, 53.004807>,  <33.420578, 31.971994, 52.849449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.323017, 31.817251, 53.004807>,  <33.160412, 31.559347, 53.263737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323017, 31.817251, 53.004807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038974, -0.720102, -0.692772,
		-0.912815, 0.256389, -0.317857,
		0.406509, 0.644761, -0.647328,
		33.444969, 32.010681, 52.810608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769749, 31.607037, 52.648449>,  <33.160412, 31.559347, 53.263737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769749, 31.607037, 52.648449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.142677, 31.704601, 52.541653>,  <33.366436, 31.763140, 52.477577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.142677, 31.704601, 52.541653>,  <32.769749, 31.607037, 52.648449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142677, 31.704601, 52.541653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062167, -0.619198, -0.782770,
		-0.356246, 0.746392, -0.562128,
		0.932322, 0.243913, -0.266987,
		33.422375, 31.777775, 52.461555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673519, 31.614706, 52.001465>,  <32.769749, 31.607037, 52.648449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673519, 31.614706, 52.001465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.069118, 31.572128, 52.042561>,  <33.306477, 31.546581, 52.067219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.069118, 31.572128, 52.042561>,  <32.673519, 31.614706, 52.001465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069118, 31.572128, 52.042561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025691, -0.560333, -0.827869,
		0.145687, 0.821399, -0.551433,
		0.988997, -0.106443, 0.102736,
		33.365818, 31.540195, 52.073380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953045, 31.739096, 51.316090>,  <32.673519, 31.614706, 52.001465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953045, 31.739096, 51.316090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.196281, 31.518291, 51.544304>,  <33.342224, 31.385809, 51.681232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.196281, 31.518291, 51.544304>,  <32.953045, 31.739096, 51.316090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196281, 31.518291, 51.544304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045279, -0.693390, -0.719138,
		0.792572, 0.463137, -0.396653,
		0.608095, -0.552009, 0.570532,
		33.378712, 31.352688, 51.715462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697273, 32.192825, 50.738625>,  <32.953045, 31.739096, 51.316090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697273, 32.192825, 50.738625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.347839, 32.130196, 50.554310>,  <32.138180, 32.092617, 50.443722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.347839, 32.130196, 50.554310>,  <32.697273, 32.192825, 50.738625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347839, 32.130196, 50.554310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449687, 0.621725, 0.641280,
		0.186078, 0.767426, -0.613540,
		-0.873588, -0.156573, -0.460791,
		32.085762, 32.083225, 50.416073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247322, 32.916901, 50.849297>,  <32.697273, 32.192825, 50.738625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247322, 32.916901, 50.849297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.983200, 32.641033, 50.730404>,  <31.824726, 32.475513, 50.659069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.983200, 32.641033, 50.730404>,  <32.247322, 32.916901, 50.849297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983200, 32.641033, 50.730404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695939, 0.413189, 0.587319,
		-0.282243, 0.594669, -0.752800,
		-0.660309, -0.689670, -0.297234,
		31.785107, 32.434132, 50.641235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669386, 33.297306, 50.636440>,  <32.247322, 32.916901, 50.849297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669386, 33.297306, 50.636440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.551746, 32.930073, 50.742748>,  <31.481163, 32.709732, 50.806534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.551746, 32.930073, 50.742748>,  <31.669386, 33.297306, 50.636440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551746, 32.930073, 50.742748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634096, 0.395480, 0.664468,
		-0.715141, 0.026899, -0.698462,
		-0.294101, -0.918081, 0.265768,
		31.463516, 32.654648, 50.822479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997023, 33.381046, 50.671043>,  <31.669386, 33.297306, 50.636440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997023, 33.381046, 50.671043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071157, 33.045345, 50.875511>,  <31.115639, 32.843925, 50.998192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071157, 33.045345, 50.875511>,  <30.997023, 33.381046, 50.671043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071157, 33.045345, 50.875511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747464, 0.217289, 0.627760,
		-0.637924, -0.498431, -0.587043,
		0.185337, -0.839257, 0.511173,
		31.126759, 32.793568, 51.028862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382105, 33.062832, 50.820183>,  <30.997023, 33.381046, 50.671043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382105, 33.062832, 50.820183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629049, 32.908207, 51.094246>,  <30.777216, 32.815434, 51.258682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629049, 32.908207, 51.094246>,  <30.382105, 33.062832, 50.820183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629049, 32.908207, 51.094246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739289, 0.012637, 0.673269,
		-0.268917, -0.922178, -0.277977,
		0.617362, -0.386559, 0.685155,
		30.814259, 32.792240, 51.299793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957664, 32.545288, 51.169056>,  <30.382105, 33.062832, 50.820183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957664, 32.545288, 51.169056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.276972, 32.622902, 51.397133>,  <30.468555, 32.669472, 51.533978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.276972, 32.622902, 51.397133>,  <29.957664, 32.545288, 51.169056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276972, 32.622902, 51.397133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544273, -0.173046, 0.820867,
		0.257949, -0.965611, -0.032527,
		0.798266, 0.194038, 0.570193,
		30.516453, 32.681114, 51.568192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957054, 32.012375, 51.714752>,  <29.957664, 32.545288, 51.169056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957054, 32.012375, 51.714752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.138037, 32.351959, 51.823963>,  <30.246626, 32.555710, 51.889488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.138037, 32.351959, 51.823963>,  <29.957054, 32.012375, 51.714752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138037, 32.351959, 51.823963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569866, 0.039751, 0.820776,
		0.685956, -0.526954, 0.501781,
		0.452457, 0.848964, 0.273026,
		30.273773, 32.606647, 51.905872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906269, 32.092304, 52.469551>,  <29.957054, 32.012375, 51.714752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906269, 32.092304, 52.469551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.015711, 32.466362, 52.379532>,  <30.081377, 32.690796, 52.325520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.015711, 32.466362, 52.379532>,  <29.906269, 32.092304, 52.469551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015711, 32.466362, 52.379532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456188, 0.332152, 0.825571,
		0.846778, -0.123217, 0.517480,
		0.273606, 0.935143, -0.225049,
		30.097792, 32.746906, 52.312016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025059, 32.432232, 53.094170>,  <29.906269, 32.092304, 52.469551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025059, 32.432232, 53.094170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.980810, 32.742847, 52.846054>,  <29.954262, 32.929214, 52.697186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.980810, 32.742847, 52.846054>,  <30.025059, 32.432232, 53.094170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980810, 32.742847, 52.846054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477833, 0.505696, 0.718295,
		0.871458, 0.375851, 0.315115,
		-0.110620, 0.776536, -0.620286,
		29.947624, 32.975807, 52.659969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283998, 32.891663, 53.481972>,  <30.025059, 32.432232, 53.094170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283998, 32.891663, 53.481972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.064159, 33.071819, 53.200523>,  <29.932255, 33.179913, 53.031654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.064159, 33.071819, 53.200523>,  <30.283998, 32.891663, 53.481972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064159, 33.071819, 53.200523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330010, 0.656689, 0.678124,
		0.767485, 0.604899, -0.212281,
		-0.549599, 0.450395, -0.703622,
		29.899281, 33.206940, 52.989437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392962, 33.576942, 53.544861>,  <30.283998, 32.891663, 53.481972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392962, 33.576942, 53.544861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.038389, 33.531906, 53.365280>,  <29.825645, 33.504883, 53.257530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.038389, 33.531906, 53.365280>,  <30.392962, 33.576942, 53.544861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038389, 33.531906, 53.365280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423259, 0.589734, 0.687798,
		0.187323, 0.799711, -0.570415,
		-0.886432, -0.112593, -0.448956,
		29.772459, 33.498127, 53.230595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179001, 34.202393, 53.346523>,  <30.392962, 33.576942, 53.544861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179001, 34.202393, 53.346523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.825769, 34.014702, 53.345749>,  <29.613831, 33.902088, 53.345284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.825769, 34.014702, 53.345749>,  <30.179001, 34.202393, 53.346523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825769, 34.014702, 53.345749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316188, 0.592004, 0.741321,
		-0.346701, 0.655255, -0.671148,
		-0.883076, -0.469225, -0.001935,
		29.560846, 33.873936, 53.345169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717619, 34.702824, 53.337036>,  <30.179001, 34.202393, 53.346523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717619, 34.702824, 53.337036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.483721, 34.397217, 53.446110>,  <29.343382, 34.213852, 53.511555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.483721, 34.397217, 53.446110>,  <29.717619, 34.702824, 53.337036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483721, 34.397217, 53.446110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324237, 0.528240, 0.784750,
		-0.743601, 0.370465, -0.556608,
		-0.584745, -0.764014, 0.272681,
		29.308298, 34.168011, 53.527916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008348, 34.956139, 53.409050>,  <29.717619, 34.702824, 53.337036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008348, 34.956139, 53.409050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.977121, 34.618401, 53.621082>,  <28.958385, 34.415756, 53.748302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.977121, 34.618401, 53.621082>,  <29.008348, 34.956139, 53.409050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977121, 34.618401, 53.621082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363012, 0.519278, 0.773675,
		-0.928508, -0.132028, -0.347046,
		-0.078067, -0.844346, 0.530081,
		28.953701, 34.365097, 53.780106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407286, 35.014454, 53.749550>,  <29.008348, 34.956139, 53.409050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407286, 35.014454, 53.749550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.599709, 34.723919, 53.945923>,  <28.715162, 34.549599, 54.063747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.599709, 34.723919, 53.945923>,  <28.407286, 35.014454, 53.749550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599709, 34.723919, 53.945923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325575, 0.371926, 0.869294,
		-0.813992, -0.578017, -0.057560,
		0.481059, -0.726339, 0.490933,
		28.744026, 34.506016, 54.093204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941931, 34.772198, 54.166401>,  <28.407286, 35.014454, 53.749550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941931, 34.772198, 54.166401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.291435, 34.674793, 54.334801>,  <28.501139, 34.616352, 54.435841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.291435, 34.674793, 54.334801>,  <27.941931, 34.772198, 54.166401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291435, 34.674793, 54.334801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356041, 0.269436, 0.894784,
		-0.331319, -0.931723, 0.148725,
		0.873763, -0.243507, 0.421001,
		28.553564, 34.601742, 54.461102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854481, 34.199425, 54.656567>,  <27.941931, 34.772198, 54.166401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854481, 34.199425, 54.656567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.171577, 34.423470, 54.752758>,  <28.361835, 34.557896, 54.810471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.171577, 34.423470, 54.752758>,  <27.854481, 34.199425, 54.656567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171577, 34.423470, 54.752758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493387, 0.357949, 0.792743,
		0.357949, -0.747090, 0.560116,
		-0.792743, -0.560116, -0.240476,
		28.409401, 34.591503, 54.824902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955313, 34.009354, 55.398350>,  <27.854481, 34.199425, 54.656567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955313, 34.009354, 55.398350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.145830, 34.352375, 55.320641>,  <28.260141, 34.558189, 55.274017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.145830, 34.352375, 55.320641>,  <27.955313, 34.009354, 55.398350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145830, 34.352375, 55.320641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409161, 0.411720, 0.814294,
		0.778288, -0.308355, 0.546978,
		0.476293, 0.857557, -0.194270,
		28.288719, 34.609642, 55.262360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.246035, 34.110825, 56.045578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270546, 34.470600, 55.872486>,  <28.285254, 34.686466, 55.768631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270546, 34.470600, 55.872486>,  <28.246035, 34.110825, 56.045578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270546, 34.470600, 55.872486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168216, 0.436647, 0.883766,
		0.983844, 0.018636, 0.178057,
		0.061278, 0.899440, -0.432728,
		28.288929, 34.740433, 55.742668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589014, 34.501530, 56.554111>,  <28.246035, 34.110825, 56.045578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589014, 34.501530, 56.554111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437824, 34.774811, 56.304195>,  <28.347111, 34.938782, 56.154243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437824, 34.774811, 56.304195>,  <28.589014, 34.501530, 56.554111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437824, 34.774811, 56.304195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110357, 0.636796, 0.763094,
		0.919215, 0.357380, -0.165295,
		-0.377974, 0.683206, -0.624792,
		28.324432, 34.979774, 56.116756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988014, 35.137463, 56.560043>,  <28.589014, 34.501530, 56.554111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988014, 35.137463, 56.560043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622379, 35.244629, 56.438282>,  <28.402998, 35.308929, 56.365223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622379, 35.244629, 56.438282>,  <28.988014, 35.137463, 56.560043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622379, 35.244629, 56.438282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126098, 0.525652, 0.841302,
		0.385412, 0.807409, -0.446709,
		-0.914088, 0.267919, -0.304405,
		28.348152, 35.325005, 56.346962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908558, 35.847229, 56.508606>,  <28.988014, 35.137463, 56.560043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908558, 35.847229, 56.508606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527309, 35.738419, 56.561611>,  <28.298561, 35.673130, 56.593414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527309, 35.738419, 56.561611>,  <28.908558, 35.847229, 56.508606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527309, 35.738419, 56.561611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117692, 0.736731, 0.665865,
		-0.278762, 0.619054, -0.734210,
		-0.953121, -0.272028, 0.132515,
		28.241373, 35.656811, 56.601364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608219, 36.426567, 56.615620>,  <28.908558, 35.847229, 56.508606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608219, 36.426567, 56.615620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310595, 36.182064, 56.723495>,  <28.132019, 36.035362, 56.788219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310595, 36.182064, 56.723495>,  <28.608219, 36.426567, 56.615620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310595, 36.182064, 56.723495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326103, 0.684578, 0.651927,
		-0.583120, 0.397128, -0.708703,
		-0.744062, -0.611262, 0.269686,
		28.087376, 35.998684, 56.804401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034426, 36.813393, 56.650005>,  <28.608219, 36.426567, 56.615620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034426, 36.813393, 56.650005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914223, 36.514874, 56.887569>,  <27.842100, 36.335762, 57.030109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914223, 36.514874, 56.887569>,  <28.034426, 36.813393, 56.650005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914223, 36.514874, 56.887569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238125, 0.661682, 0.710967,
		-0.923576, 0.072225, -0.376552,
		-0.300507, -0.746298, 0.593915,
		27.824070, 36.290985, 57.065742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341150, 36.871323, 56.853500>,  <28.034426, 36.813393, 56.650005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341150, 36.871323, 56.853500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498907, 36.664696, 57.157505>,  <27.593561, 36.540722, 57.339909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498907, 36.664696, 57.157505>,  <27.341150, 36.871323, 56.853500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498907, 36.664696, 57.157505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409736, 0.641435, 0.648597,
		-0.822539, -0.567205, 0.041322,
		0.394393, -0.516566, 0.760010,
		27.617226, 36.509727, 57.385509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815647, 36.937340, 57.343365>,  <27.341150, 36.871323, 56.853500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815647, 36.937340, 57.343365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141134, 36.810848, 57.538448>,  <27.336426, 36.734951, 57.655499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141134, 36.810848, 57.538448>,  <26.815647, 36.937340, 57.343365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141134, 36.810848, 57.538448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247388, 0.570856, 0.782894,
		-0.525989, -0.757708, 0.386283,
		0.813716, -0.316232, 0.487712,
		27.385250, 36.715981, 57.684761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621563, 36.588108, 57.977066>,  <26.815647, 36.937340, 57.343365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621563, 36.588108, 57.977066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984579, 36.748329, 58.027546>,  <27.202389, 36.844463, 58.057835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984579, 36.748329, 58.027546>,  <26.621563, 36.588108, 57.977066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984579, 36.748329, 58.027546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396379, 0.717689, 0.572544,
		0.138762, -0.569630, 0.810103,
		0.907540, 0.400555, 0.126201,
		27.256842, 36.868496, 58.065407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575863, 36.951164, 58.678799>,  <26.621563, 36.588108, 57.977066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575863, 36.951164, 58.678799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915258, 37.095814, 58.524246>,  <27.118896, 37.182606, 58.431515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915258, 37.095814, 58.524246>,  <26.575863, 36.951164, 58.678799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915258, 37.095814, 58.524246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158366, 0.870156, 0.466636,
		0.504960, -0.334746, 0.795588,
		0.848491, 0.361627, -0.386381,
		27.169806, 37.204300, 58.408333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935125, 37.286091, 59.222309>,  <26.575863, 36.951164, 58.678799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935125, 37.286091, 59.222309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106354, 37.445236, 58.897728>,  <27.209091, 37.540722, 58.702980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106354, 37.445236, 58.897728>,  <26.935125, 37.286091, 59.222309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106354, 37.445236, 58.897728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120266, 0.914973, 0.385176,
		0.895706, -0.067294, 0.439526,
		0.428074, 0.397864, -0.811453,
		27.234776, 37.564594, 58.654293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520805, 37.597927, 59.511539>,  <26.935125, 37.286091, 59.222309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520805, 37.597927, 59.511539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403498, 37.747608, 59.159637>,  <27.333113, 37.837418, 58.948498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403498, 37.747608, 59.159637>,  <27.520805, 37.597927, 59.511539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403498, 37.747608, 59.159637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096308, 0.903973, 0.416604,
		0.951167, 0.206905, -0.229069,
		-0.293269, 0.374199, -0.879755,
		27.315517, 37.859867, 58.895710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844025, 38.270508, 59.602482>,  <27.520805, 37.597927, 59.511539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844025, 38.270508, 59.602482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589811, 38.315079, 59.296886>,  <27.437284, 38.341820, 59.113529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589811, 38.315079, 59.296886>,  <27.844025, 38.270508, 59.602482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589811, 38.315079, 59.296886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092219, 0.971493, 0.218397,
		0.766548, 0.209253, -0.607139,
		-0.635531, 0.111423, -0.763993,
		27.399153, 38.348507, 59.067688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990557, 38.934307, 59.380558>,  <27.844025, 38.270508, 59.602482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990557, 38.934307, 59.380558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637486, 38.824883, 59.227692>,  <27.425644, 38.759228, 59.135971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637486, 38.824883, 59.227692>,  <27.990557, 38.934307, 59.380558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637486, 38.824883, 59.227692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306171, 0.951622, 0.025971,
		0.356571, 0.139931, -0.923730,
		-0.882676, -0.273558, -0.382163,
		27.372683, 38.742813, 59.113041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825117, 39.469627, 58.838562>,  <27.990557, 38.934307, 59.380558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825117, 39.469627, 58.838562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470184, 39.293278, 58.892639>,  <27.257225, 39.187469, 58.925087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470184, 39.293278, 58.892639>,  <27.825117, 39.469627, 58.838562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470184, 39.293278, 58.892639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453809, 0.886910, -0.086298,
		-0.081859, -0.137928, -0.987054,
		-0.887331, -0.440870, 0.135195,
		27.203985, 39.161018, 58.933197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305290, 39.786461, 58.314613>,  <27.825117, 39.469627, 58.838562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305290, 39.786461, 58.314613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064629, 39.638298, 58.597687>,  <26.920233, 39.549400, 58.767532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064629, 39.638298, 58.597687>,  <27.305290, 39.786461, 58.314613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064629, 39.638298, 58.597687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430182, 0.896773, 0.103647,
		-0.673022, -0.242073, -0.698886,
		-0.601652, -0.370404, 0.707683,
		26.884132, 39.527176, 58.809990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537609, 40.079060, 58.380619>,  <27.305290, 39.786461, 58.314613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537609, 40.079060, 58.380619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573595, 39.939816, 58.753872>,  <26.595186, 39.856270, 58.977821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573595, 39.939816, 58.753872>,  <26.537609, 40.079060, 58.380619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573595, 39.939816, 58.753872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372605, 0.857123, 0.355677,
		-0.923619, -0.379686, -0.052595,
		0.089965, -0.348107, 0.933128,
		26.600584, 39.835384, 59.033810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891888, 40.000092, 58.712696>,  <26.537609, 40.079060, 58.380619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891888, 40.000092, 58.712696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133511, 40.015388, 59.031105>,  <26.278484, 40.024567, 59.222149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133511, 40.015388, 59.031105>,  <25.891888, 40.000092, 58.712696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133511, 40.015388, 59.031105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645373, 0.609488, 0.460454,
		-0.467556, -0.791872, 0.392848,
		0.604057, 0.038245, 0.796023,
		26.314728, 40.026863, 59.269913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457041, 39.781368, 59.326530>,  <25.891888, 40.000092, 58.712696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457041, 39.781368, 59.326530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781315, 39.999298, 59.412285>,  <25.975880, 40.130054, 59.463737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781315, 39.999298, 59.412285>,  <25.457041, 39.781368, 59.326530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781315, 39.999298, 59.412285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555139, 0.598932, 0.577149,
		0.186043, -0.586898, 0.787997,
		0.810684, 0.544822, 0.214383,
		26.024521, 40.162746, 59.476601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419592, 39.851032, 60.085712>,  <25.457041, 39.781368, 59.326530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419592, 39.851032, 60.085712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662964, 40.141403, 59.957436>,  <25.808987, 40.315624, 59.880470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662964, 40.141403, 59.957436>,  <25.419592, 39.851032, 60.085712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662964, 40.141403, 59.957436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470208, 0.655280, 0.591196,
		0.639303, -0.208916, 0.740031,
		0.608437, 0.725922, -0.320688,
		25.845491, 40.359180, 59.861225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672411, 40.245232, 60.683189>,  <25.419592, 39.851032, 60.085712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672411, 40.245232, 60.683189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754702, 40.511295, 60.396069>,  <25.804075, 40.670937, 60.223797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754702, 40.511295, 60.396069>,  <25.672411, 40.245232, 60.683189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754702, 40.511295, 60.396069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542886, 0.687846, 0.481813,
		0.814219, 0.290561, 0.502615,
		0.205726, 0.665164, -0.717798,
		25.816420, 40.710846, 60.180729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990492, 40.940342, 60.908089>,  <25.672411, 40.245232, 60.683189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990492, 40.940342, 60.908089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803581, 41.033581, 60.566956>,  <25.691435, 41.089523, 60.362278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803581, 41.033581, 60.566956>,  <25.990492, 40.940342, 60.908089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803581, 41.033581, 60.566956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398828, 0.805318, 0.438633,
		0.789044, 0.545095, -0.283339,
		-0.467275, 0.233097, -0.852830,
		25.663399, 41.103512, 60.311108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203094, 41.614857, 60.547737>,  <25.990492, 40.940342, 60.908089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203094, 41.614857, 60.547737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828825, 41.543171, 60.426151>,  <25.604263, 41.500160, 60.353199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828825, 41.543171, 60.426151>,  <26.203094, 41.614857, 60.547737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828825, 41.543171, 60.426151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274012, 0.911778, 0.305907,
		0.222325, 0.369520, -0.902235,
		-0.935676, -0.179213, -0.303964,
		25.548122, 41.489407, 60.334961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672163, 41.182785, 60.955284>,  <26.203094, 41.614857, 60.547737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672163, 41.182785, 60.955284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804134, 41.326530, 61.304455>,  <26.883318, 41.412777, 61.513958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804134, 41.326530, 61.304455>,  <26.672163, 41.182785, 60.955284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804134, 41.326530, 61.304455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869105, -0.476614, -0.132270,
		0.368516, 0.802306, -0.469576,
		0.329928, 0.359367, 0.872928,
		26.903112, 41.434341, 61.566334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328550, 41.702362, 60.846863>,  <26.672163, 41.182785, 60.955284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328550, 41.702362, 60.846863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319309, 41.507263, 61.195934>,  <27.313765, 41.390205, 61.405376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319309, 41.507263, 61.195934>,  <27.328550, 41.702362, 60.846863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319309, 41.507263, 61.195934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916513, -0.359013, -0.176390,
		0.399337, 0.795748, 0.455318,
		-0.023103, -0.487744, 0.872681,
		27.312378, 41.360939, 61.457737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999010, 41.697578, 61.026352>,  <27.328550, 41.702362, 60.846863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999010, 41.697578, 61.026352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871361, 41.396904, 61.257225>,  <27.794771, 41.216499, 61.395748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871361, 41.396904, 61.257225>,  <27.999010, 41.697578, 61.026352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871361, 41.396904, 61.257225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892927, -0.442550, -0.082651,
		0.317558, 0.489003, 0.812424,
		-0.319122, -0.751682, 0.577179,
		27.775623, 41.171398, 61.430378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598682, 41.622105, 61.491806>,  <27.999010, 41.697578, 61.026352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598682, 41.622105, 61.491806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378048, 41.290009, 61.523949>,  <28.245667, 41.090752, 61.543236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378048, 41.290009, 61.523949>,  <28.598682, 41.622105, 61.491806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378048, 41.290009, 61.523949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829501, -0.535864, 0.157410,
		-0.087628, 0.153482, 0.984258,
		-0.551588, -0.830237, 0.080357,
		28.212572, 41.040939, 61.548058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763037, 41.322163, 62.074032>,  <28.598682, 41.622105, 61.491806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763037, 41.322163, 62.074032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580002, 41.014805, 61.895061>,  <28.470181, 40.830391, 61.787682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580002, 41.014805, 61.895061>,  <28.763037, 41.322163, 62.074032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580002, 41.014805, 61.895061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702657, -0.620844, 0.347600,
		-0.544872, -0.155326, 0.824008,
		-0.457589, -0.768392, -0.447421,
		28.442724, 40.784286, 61.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704449, 40.766670, 62.592388>,  <28.763037, 41.322163, 62.074032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704449, 40.766670, 62.592388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662182, 40.589329, 62.236347>,  <28.636822, 40.482925, 62.022724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662182, 40.589329, 62.236347>,  <28.704449, 40.766670, 62.592388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662182, 40.589329, 62.236347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589154, -0.749004, 0.303133,
		-0.801082, -0.492375, 0.340346,
		-0.105666, -0.443351, -0.890098,
		28.630482, 40.456322, 61.969318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515532, 40.048893, 62.756351>,  <28.704449, 40.766670, 62.592388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515532, 40.048893, 62.756351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659945, 40.053932, 62.383366>,  <28.746593, 40.056957, 62.159573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659945, 40.053932, 62.383366>,  <28.515532, 40.048893, 62.756351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659945, 40.053932, 62.383366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591712, -0.775941, 0.218615,
		-0.720784, -0.630680, -0.287598,
		0.361035, 0.012601, -0.932467,
		28.768255, 40.057713, 62.103626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426872, 39.444107, 62.593857>,  <28.515532, 40.048893, 62.756351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426872, 39.444107, 62.593857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720827, 39.565121, 62.351067>,  <28.897200, 39.637730, 62.205395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720827, 39.565121, 62.351067>,  <28.426872, 39.444107, 62.593857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720827, 39.565121, 62.351067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458723, -0.880935, 0.116306,
		-0.499515, -0.363903, -0.786167,
		0.734886, 0.302536, -0.606971,
		28.941294, 39.655880, 62.168976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512018, 38.871834, 62.282619>,  <28.426872, 39.444107, 62.593857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512018, 38.871834, 62.282619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843721, 39.067783, 62.175022>,  <29.042744, 39.185352, 62.110466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843721, 39.067783, 62.175022>,  <28.512018, 38.871834, 62.282619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843721, 39.067783, 62.175022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481832, -0.870542, -0.099974,
		-0.283142, -0.046704, -0.957940,
		0.829258, 0.489873, -0.268990,
		29.092499, 39.214745, 62.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774145, 38.475548, 61.674763>,  <28.512018, 38.871834, 62.282619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774145, 38.475548, 61.674763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082211, 38.670811, 61.838982>,  <29.267050, 38.787968, 61.937511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082211, 38.670811, 61.838982>,  <28.774145, 38.475548, 61.674763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082211, 38.670811, 61.838982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528254, -0.848887, 0.018386,
		0.357482, 0.202712, -0.911655,
		0.770165, 0.488158, 0.410545,
		29.313259, 38.817257, 61.962147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317652, 37.880959, 61.408043>,  <28.774145, 38.475548, 61.674763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317652, 37.880959, 61.408043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687895, 37.997059, 61.310879>,  <28.910042, 38.066719, 61.252579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687895, 37.997059, 61.310879>,  <28.317652, 37.880959, 61.408043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687895, 37.997059, 61.310879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057546, -0.526412, -0.848280,
		-0.374082, 0.799154, -0.470549,
		0.925609, 0.290248, -0.242909,
		28.965578, 38.084133, 61.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348158, 38.133301, 60.727688>,  <28.317652, 37.880959, 61.408043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348158, 38.133301, 60.727688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708567, 37.997887, 60.836174>,  <28.924812, 37.916637, 60.901268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708567, 37.997887, 60.836174>,  <28.348158, 38.133301, 60.727688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708567, 37.997887, 60.836174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040723, -0.556472, -0.829868,
		0.431861, 0.758773, -0.487606,
		0.901020, -0.338531, 0.271218,
		28.978872, 37.896328, 60.917538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768875, 38.286263, 60.101364>,  <28.348158, 38.133301, 60.727688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768875, 38.286263, 60.101364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979626, 38.025600, 60.319630>,  <29.106075, 37.869202, 60.450588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979626, 38.025600, 60.319630>,  <28.768875, 38.286263, 60.101364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979626, 38.025600, 60.319630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269574, -0.480731, -0.834403,
		0.806059, 0.586723, -0.077616,
		0.526876, -0.651655, 0.545663,
		29.137688, 37.830105, 60.483330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353668, 38.213406, 59.653969>,  <28.768875, 38.286263, 60.101364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353668, 38.213406, 59.653969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331635, 37.893986, 59.893730>,  <29.318415, 37.702335, 60.037586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331635, 37.893986, 59.893730>,  <29.353668, 38.213406, 59.653969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331635, 37.893986, 59.893730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292613, -0.586870, -0.754958,
		0.954643, 0.133806, 0.265993,
		-0.055085, -0.798548, 0.599405,
		29.315109, 37.654423, 60.073551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974035, 37.878292, 59.609531>,  <29.353668, 38.213406, 59.653969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974035, 37.878292, 59.609531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730598, 37.589497, 59.741199>,  <29.584536, 37.416222, 59.820198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730598, 37.589497, 59.741199>,  <29.974035, 37.878292, 59.609531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730598, 37.589497, 59.741199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364122, -0.622693, -0.692581,
		0.705004, -0.301642, 0.641857,
		-0.608592, -0.721987, 0.329167,
		29.548021, 37.372902, 59.839951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391092, 37.310162, 59.712860>,  <29.974035, 37.878292, 59.609531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391092, 37.310162, 59.712860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020727, 37.168732, 59.659687>,  <29.798508, 37.083874, 59.627785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020727, 37.168732, 59.659687>,  <30.391092, 37.310162, 59.712860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020727, 37.168732, 59.659687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351679, -0.678452, -0.645000,
		0.137867, -0.643963, 0.752532,
		-0.925913, -0.353574, -0.132932,
		29.742954, 37.062660, 59.619808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627495, 36.638866, 59.771950>,  <30.391092, 37.310162, 59.712860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627495, 36.638866, 59.771950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259644, 36.671303, 59.618217>,  <30.038933, 36.690765, 59.525978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259644, 36.671303, 59.618217>,  <30.627495, 36.638866, 59.771950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259644, 36.671303, 59.618217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172656, -0.795411, -0.580958,
		-0.352807, -0.600622, 0.717482,
		-0.919629, 0.081088, -0.384327,
		29.983755, 36.695629, 59.502918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583401, 35.914043, 59.738640>,  <30.627495, 36.638866, 59.771950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583401, 35.914043, 59.738640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268930, 36.043972, 59.528336>,  <30.080248, 36.121929, 59.402153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268930, 36.043972, 59.528336>,  <30.583401, 35.914043, 59.738640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268930, 36.043972, 59.528336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306951, -0.533154, -0.788371,
		-0.536472, -0.781144, 0.319392,
		-0.786116, 0.324902, -0.525795,
		30.033077, 36.141418, 59.370609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084753, 35.342079, 59.372585>,  <30.583401, 35.914043, 59.738640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084753, 35.342079, 59.372585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040766, 35.676254, 59.157196>,  <30.014374, 35.876759, 59.027962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040766, 35.676254, 59.157196>,  <30.084753, 35.342079, 59.372585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040766, 35.676254, 59.157196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150234, -0.521566, -0.839880,
		-0.982515, -0.173258, -0.068155,
		-0.109969, 0.835434, -0.538476,
		30.007774, 35.926884, 58.995655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571289, 35.186008, 58.812366>,  <30.084753, 35.342079, 59.372585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571289, 35.186008, 58.812366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794590, 35.498039, 58.699345>,  <29.928570, 35.685257, 58.631531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794590, 35.498039, 58.699345>,  <29.571289, 35.186008, 58.812366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794590, 35.498039, 58.699345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138382, -0.423334, -0.895343,
		-0.818049, 0.460728, -0.344275,
		0.558253, 0.780076, -0.282552,
		29.962067, 35.732063, 58.614578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468107, 35.302498, 58.078434>,  <29.571289, 35.186008, 58.812366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468107, 35.302498, 58.078434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821711, 35.477757, 58.143623>,  <30.033873, 35.582912, 58.182735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821711, 35.477757, 58.143623>,  <29.468107, 35.302498, 58.078434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821711, 35.477757, 58.143623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328040, -0.333048, -0.884007,
		-0.333048, 0.834929, -0.438146,
		0.884007, 0.438146, 0.162969,
		30.086912, 35.609200, 58.192513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.790752, 36.051754, 50.834286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.797733, 35.778122, 51.125965>,  <47.801922, 35.613941, 51.300972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.797733, 35.778122, 51.125965>,  <47.790752, 36.051754, 50.834286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.797733, 35.778122, 51.125965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865354, -0.375671, -0.331713,
		0.500857, -0.625223, -0.598530,
		0.017456, -0.684081, 0.729197,
		47.802971, 35.572899, 51.344723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487385, 35.378864, 50.537819>,  <47.790752, 36.051754, 50.834286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487385, 35.378864, 50.537819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.455723, 35.365860, 50.936352>,  <47.436726, 35.358055, 51.175472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.455723, 35.365860, 50.936352>,  <47.487385, 35.378864, 50.537819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455723, 35.365860, 50.936352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942112, -0.324235, -0.085426,
		0.325823, -0.945418, -0.004966,
		-0.079153, -0.032512, 0.996332,
		47.431976, 35.356106, 51.235252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930416, 34.845112, 50.648972>,  <47.487385, 35.378864, 50.537819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930416, 34.845112, 50.648972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.980774, 34.994602, 51.016552>,  <47.010990, 35.084297, 51.237103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.980774, 34.994602, 51.016552>,  <46.930416, 34.845112, 50.648972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980774, 34.994602, 51.016552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986486, -0.050755, 0.155788,
		0.104864, -0.926148, 0.362290,
		0.125895, 0.373730, 0.918954,
		47.018543, 35.106720, 51.292236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577724, 34.426155, 51.083755>,  <46.930416, 34.845112, 50.648972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577724, 34.426155, 51.083755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.592751, 34.796024, 51.235313>,  <46.601765, 35.017948, 51.326248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.592751, 34.796024, 51.235313>,  <46.577724, 34.426155, 51.083755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592751, 34.796024, 51.235313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997889, 0.014611, 0.063273,
		0.052970, -0.380474, 0.923273,
		0.037564, 0.924676, 0.378897,
		46.604019, 35.073429, 51.348984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114944, 34.409920, 51.622074>,  <46.577724, 34.426155, 51.083755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114944, 34.409920, 51.622074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.168636, 34.802444, 51.566921>,  <46.200851, 35.037960, 51.533829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.168636, 34.802444, 51.566921>,  <46.114944, 34.409920, 51.622074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168636, 34.802444, 51.566921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990908, 0.131630, -0.027827,
		-0.009158, 0.140362, 0.990058,
		0.134227, 0.981311, -0.137881,
		46.208904, 35.096836, 51.525558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593006, 34.706871, 52.015053>,  <46.114944, 34.409920, 51.622074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593006, 34.706871, 52.015053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.692127, 34.998089, 51.759380>,  <45.751598, 35.172821, 51.605976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.692127, 34.998089, 51.759380>,  <45.593006, 34.706871, 52.015053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692127, 34.998089, 51.759380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967549, 0.219636, -0.124933,
		0.049430, 0.649394, 0.758844,
		0.247800, 0.728043, -0.639177,
		45.766468, 35.216503, 51.567627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291183, 35.226704, 52.260910>,  <45.593006, 34.706871, 52.015053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291183, 35.226704, 52.260910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.355152, 35.327698, 51.879192>,  <45.393532, 35.388294, 51.650162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.355152, 35.327698, 51.879192>,  <45.291183, 35.226704, 52.260910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355152, 35.327698, 51.879192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949148, 0.304916, -0.078383,
		0.271189, 0.918302, 0.288405,
		0.159919, 0.252482, -0.954295,
		45.403130, 35.403442, 51.592903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131504, 35.941551, 52.169254>,  <45.291183, 35.226704, 52.260910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131504, 35.941551, 52.169254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.101551, 35.777439, 51.805702>,  <45.083580, 35.678970, 51.587570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.101551, 35.777439, 51.805702>,  <45.131504, 35.941551, 52.169254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101551, 35.777439, 51.805702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945745, 0.318193, -0.065719,
		0.316162, 0.854647, -0.411851,
		-0.074882, -0.410284, -0.908879,
		45.079086, 35.654354, 51.533039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707970, 36.459900, 51.786648>,  <45.131504, 35.941551, 52.169254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707970, 36.459900, 51.786648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.658180, 36.135948, 51.557354>,  <44.628307, 35.941578, 51.419777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.658180, 36.135948, 51.557354>,  <44.707970, 36.459900, 51.786648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658180, 36.135948, 51.557354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932429, 0.293004, -0.211483,
		0.339237, 0.508179, -0.791626,
		-0.124478, -0.809878, -0.573239,
		44.620838, 35.892986, 51.385384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377621, 36.649296, 51.225559>,  <44.707970, 36.459900, 51.786648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377621, 36.649296, 51.225559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.315548, 36.254192, 51.219318>,  <44.278305, 36.017128, 51.215576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.315548, 36.254192, 51.219318>,  <44.377621, 36.649296, 51.225559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315548, 36.254192, 51.219318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984123, 0.155947, -0.084750,
		0.086145, 0.002200, -0.996280,
		-0.155180, -0.987763, -0.015600,
		44.268993, 35.957863, 51.214638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713707, 36.710781, 51.105621>,  <44.377621, 36.649296, 51.225559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713707, 36.710781, 51.105621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.753315, 36.313225, 51.125122>,  <43.777081, 36.074692, 51.136822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.753315, 36.313225, 51.125122>,  <43.713707, 36.710781, 51.105621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753315, 36.313225, 51.125122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994946, -0.098072, 0.021530,
		-0.016618, -0.050633, -0.998579,
		0.099023, -0.993890, 0.048747,
		43.783020, 36.015057, 51.139748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259102, 36.509380, 50.619015>,  <43.713707, 36.710781, 51.105621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259102, 36.509380, 50.619015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.321445, 36.210075, 50.876949>,  <43.358852, 36.030495, 51.031712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.321445, 36.210075, 50.876949>,  <43.259102, 36.509380, 50.619015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321445, 36.210075, 50.876949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955686, -0.279285, -0.093085,
		0.249746, -0.601754, -0.758630,
		0.155859, -0.748259, 0.644838,
		43.368202, 35.985596, 51.070400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186066, 35.795761, 50.318153>,  <43.259102, 36.509380, 50.619015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186066, 35.795761, 50.318153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.114304, 35.751118, 50.709122>,  <43.071247, 35.724331, 50.943703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.114304, 35.751118, 50.709122>,  <43.186066, 35.795761, 50.318153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114304, 35.751118, 50.709122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920269, -0.332149, -0.206839,
		0.347735, -0.936601, -0.043120,
		-0.179403, -0.111608, 0.977424,
		43.060482, 35.717636, 51.002350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753563, 35.325878, 50.281132>,  <43.186066, 35.795761, 50.318153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753563, 35.325878, 50.281132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.719700, 35.478943, 50.649132>,  <42.699383, 35.570782, 50.869934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.719700, 35.478943, 50.649132>,  <42.753563, 35.325878, 50.281132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719700, 35.478943, 50.649132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984627, -0.173705, -0.018353,
		0.152786, -0.907414, 0.391480,
		-0.084656, 0.382658, 0.920003,
		42.694302, 35.593739, 50.925133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171066, 34.837574, 50.594734>,  <42.753563, 35.325878, 50.281132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171066, 34.837574, 50.594734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.187241, 35.173954, 50.810574>,  <42.196945, 35.375782, 50.940079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.187241, 35.173954, 50.810574>,  <42.171066, 34.837574, 50.594734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187241, 35.173954, 50.810574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989134, -0.042701, 0.140679,
		0.141346, -0.539424, 0.830086,
		0.040440, 0.840951, 0.539598,
		42.199371, 35.426239, 50.972454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769081, 34.771164, 51.217091>,  <42.171066, 34.837574, 50.594734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769081, 34.771164, 51.217091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798752, 35.166054, 51.160686>,  <41.816555, 35.402988, 51.126842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798752, 35.166054, 51.160686>,  <41.769081, 34.771164, 51.217091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798752, 35.166054, 51.160686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995460, 0.081757, 0.048744,
		0.059650, 0.136756, 0.988807,
		0.074175, 0.987225, -0.141012,
		41.821003, 35.462223, 51.118382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113823, 35.034241, 51.469551>,  <41.769081, 34.771164, 51.217091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113823, 35.034241, 51.469551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229977, 35.369465, 51.284801>,  <41.299671, 35.570599, 51.173950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229977, 35.369465, 51.284801>,  <41.113823, 35.034241, 51.469551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229977, 35.369465, 51.284801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947454, 0.319495, -0.015964,
		0.134187, 0.442239, 0.886802,
		0.290389, 0.838062, -0.461873,
		41.317093, 35.620884, 51.146240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866329, 35.562595, 51.910374>,  <41.113823, 35.034241, 51.469551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866329, 35.562595, 51.910374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.901974, 35.692368, 51.533691>,  <40.923359, 35.770229, 51.307682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.901974, 35.692368, 51.533691>,  <40.866329, 35.562595, 51.910374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901974, 35.692368, 51.533691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944522, 0.327608, 0.023487,
		0.316129, 0.887366, 0.335623,
		0.089111, 0.324428, -0.941704,
		40.928707, 35.789696, 51.251179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590706, 36.215424, 51.802284>,  <40.866329, 35.562595, 51.910374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590706, 36.215424, 51.802284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.573872, 36.077847, 51.427067>,  <40.563770, 35.995300, 51.201935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.573872, 36.077847, 51.427067>,  <40.590706, 36.215424, 51.802284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573872, 36.077847, 51.427067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930466, 0.355505, -0.088601,
		0.363954, 0.869092, -0.334988,
		-0.042087, -0.343941, -0.938047,
		40.561245, 35.974663, 51.145653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984856, 36.558613, 51.575108>,  <40.590706, 36.215424, 51.802284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984856, 36.558613, 51.575108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055634, 36.298119, 51.279922>,  <40.098099, 36.141823, 51.102814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055634, 36.298119, 51.279922>,  <39.984856, 36.558613, 51.575108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055634, 36.298119, 51.279922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919989, 0.156992, -0.359129,
		0.349731, 0.742460, -0.571350,
		0.176941, -0.651235, -0.737960,
		40.108715, 36.102749, 51.058533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902489, 36.827061, 50.953163>,  <39.984856, 36.558613, 51.575108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902489, 36.827061, 50.953163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842773, 36.433815, 50.910843>,  <39.806946, 36.197868, 50.885452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842773, 36.433815, 50.910843>,  <39.902489, 36.827061, 50.953163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842773, 36.433815, 50.910843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931175, 0.175773, -0.319402,
		0.332606, 0.050838, -0.941694,
		-0.149287, -0.983117, -0.105802,
		39.797989, 36.138882, 50.879101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553318, 36.514317, 50.257687>,  <39.902489, 36.827061, 50.953163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553318, 36.514317, 50.257687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450157, 36.270535, 50.557568>,  <39.388260, 36.124268, 50.737495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450157, 36.270535, 50.557568>,  <39.553318, 36.514317, 50.257687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450157, 36.270535, 50.557568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965268, 0.196075, -0.172665,
		-0.041767, -0.768193, -0.638854,
		-0.257903, -0.609453, 0.749702,
		39.372787, 36.087700, 50.782478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110214, 35.952705, 50.106850>,  <39.553318, 36.514317, 50.257687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110214, 35.952705, 50.106850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036060, 36.046730, 50.488506>,  <38.991570, 36.103146, 50.717499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036060, 36.046730, 50.488506>,  <39.110214, 35.952705, 50.106850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036060, 36.046730, 50.488506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969171, 0.116626, -0.217039,
		-0.162296, -0.964957, 0.206197,
		-0.185385, 0.235065, 0.954137,
		38.980446, 36.117249, 50.774746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478844, 35.696697, 49.950233>,  <39.110214, 35.952705, 50.106850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478844, 35.696697, 49.950233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454582, 36.011780, 50.195457>,  <38.440025, 36.200829, 50.342594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454582, 36.011780, 50.195457>,  <38.478844, 35.696697, 49.950233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454582, 36.011780, 50.195457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995337, -0.001575, -0.096448,
		-0.075007, -0.616054, 0.784125,
		-0.060653, 0.787702, 0.613063,
		38.436386, 36.248089, 50.379375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002716, 35.510296, 50.468849>,  <38.478844, 35.696697, 49.950233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002716, 35.510296, 50.468849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011398, 35.906143, 50.412010>,  <38.016609, 36.143650, 50.377907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011398, 35.906143, 50.412010>,  <38.002716, 35.510296, 50.468849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011398, 35.906143, 50.412010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992295, 0.003981, -0.123836,
		-0.121984, 0.143695, 0.982075,
		0.021704, 0.989614, -0.142102,
		38.017910, 36.203026, 50.369381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111572, 34.817493, 50.140259>,  <38.002716, 35.510296, 50.468849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111572, 34.817493, 50.140259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228504, 34.512161, 49.909824>,  <38.298664, 34.328960, 49.771564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228504, 34.512161, 49.909824>,  <38.111572, 34.817493, 50.140259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228504, 34.512161, 49.909824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933834, -0.357706, 0.000102,
		-0.206146, 0.537936, -0.817392,
		0.292331, -0.763329, -0.576082,
		38.316204, 34.283161, 49.737000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503193, 34.633026, 49.810326>,  <38.111572, 34.817493, 50.140259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503193, 34.633026, 49.810326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732624, 34.317417, 49.722271>,  <37.870281, 34.128052, 49.669437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732624, 34.317417, 49.722271>,  <37.503193, 34.633026, 49.810326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732624, 34.317417, 49.722271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799365, -0.597841, 0.060008,
		-0.178953, 0.141548, -0.973622,
		0.573577, -0.789019, -0.220134,
		37.904697, 34.080711, 49.656231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149796, 34.282810, 49.360229>,  <37.503193, 34.633026, 49.810326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149796, 34.282810, 49.360229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394993, 34.005581, 49.511963>,  <37.542110, 33.839241, 49.603001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394993, 34.005581, 49.511963>,  <37.149796, 34.282810, 49.360229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394993, 34.005581, 49.511963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760813, -0.647281, 0.046810,
		0.213090, -0.317292, -0.924077,
		0.612990, -0.693075, 0.379329,
		37.578888, 33.797657, 49.625763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110664, 33.768967, 48.943821>,  <37.149796, 34.282810, 49.360229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110664, 33.768967, 48.943821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199654, 33.638191, 49.311214>,  <37.253048, 33.559727, 49.531651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199654, 33.638191, 49.311214>,  <37.110664, 33.768967, 48.943821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199654, 33.638191, 49.311214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798704, -0.601371, -0.020605,
		0.559087, -0.729015, -0.394916,
		0.222469, -0.326941, 0.918486,
		37.266396, 33.540108, 49.586761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883930, 33.034859, 48.992950>,  <37.110664, 33.768967, 48.943821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883930, 33.034859, 48.992950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928513, 33.126720, 49.379696>,  <36.955261, 33.181839, 49.611744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928513, 33.126720, 49.379696>,  <36.883930, 33.034859, 48.992950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928513, 33.126720, 49.379696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802004, -0.553735, 0.223981,
		0.586828, -0.800397, 0.122468,
		0.111459, 0.229658, 0.966868,
		36.961948, 33.195618, 49.669758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742081, 32.378979, 49.270756>,  <36.883930, 33.034859, 48.992950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742081, 32.378979, 49.270756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710537, 32.639034, 49.573040>,  <36.691608, 32.795067, 49.754410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710537, 32.639034, 49.573040>,  <36.742081, 32.378979, 49.270756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710537, 32.639034, 49.573040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734524, -0.550421, 0.396876,
		0.673985, -0.523789, 0.520951,
		-0.078863, 0.650140, 0.755711,
		36.686878, 32.834076, 49.799755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676819, 32.010006, 49.830284>,  <36.742081, 32.378979, 49.270756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676819, 32.010006, 49.830284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.526867, 32.356663, 49.961979>,  <36.436893, 32.564655, 50.040997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.526867, 32.356663, 49.961979>,  <36.676819, 32.010006, 49.830284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526867, 32.356663, 49.961979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819487, -0.475831, 0.319415,
		0.433477, -0.150059, 0.888583,
		-0.374884, 0.866641, 0.329233,
		36.414402, 32.616653, 50.060749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303860, 31.861168, 50.496960>,  <36.676819, 32.010006, 49.830284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303860, 31.861168, 50.496960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.160324, 32.207584, 50.357704>,  <36.074203, 32.415436, 50.274151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.160324, 32.207584, 50.357704>,  <36.303860, 31.861168, 50.496960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160324, 32.207584, 50.357704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926912, -0.286741, 0.242104,
		0.109847, 0.409571, 0.905641,
		-0.358843, 0.866043, -0.348139,
		36.052670, 32.467396, 50.253262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010895, 32.187675, 51.114082>,  <36.303860, 31.861168, 50.496960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010895, 32.187675, 51.114082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840557, 32.283981, 50.765213>,  <35.738354, 32.341763, 50.555889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840557, 32.283981, 50.765213>,  <36.010895, 32.187675, 51.114082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840557, 32.283981, 50.765213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903044, -0.173066, 0.393142,
		-0.056290, 0.955030, 0.291119,
		-0.425845, 0.240763, -0.872175,
		35.712803, 32.356209, 50.503559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410564, 32.548004, 51.331020>,  <36.010895, 32.187675, 51.114082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410564, 32.548004, 51.331020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361164, 32.428875, 50.952381>,  <35.331524, 32.357399, 50.725197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361164, 32.428875, 50.952381>,  <35.410564, 32.548004, 51.331020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361164, 32.428875, 50.952381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933471, -0.288810, 0.212652,
		-0.336719, 0.909886, -0.242339,
		-0.123499, -0.297821, -0.946600,
		35.324116, 32.339527, 50.668400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.404354, 33.371235, 53.214546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.763733, 33.545086, 53.239502>,  <28.979361, 33.649399, 53.254475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.763733, 33.545086, 53.239502>,  <28.404354, 33.371235, 53.214546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763733, 33.545086, 53.239502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290255, -0.481281, -0.827116,
		-0.329464, 0.761227, -0.558558,
		0.898446, 0.434629, 0.062385,
		29.033266, 33.675476, 53.258217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610968, 33.563629, 52.611294>,  <28.404354, 33.371235, 53.214546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610968, 33.563629, 52.611294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.976482, 33.557877, 52.773670>,  <29.195791, 33.554424, 52.871098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.976482, 33.557877, 52.773670>,  <28.610968, 33.563629, 52.611294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976482, 33.557877, 52.773670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387688, -0.267358, -0.882167,
		0.121219, 0.963490, -0.238732,
		0.913786, -0.014382, 0.405943,
		29.250618, 33.553562, 52.895454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041405, 33.820736, 52.128353>,  <28.610968, 33.563629, 52.611294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041405, 33.820736, 52.128353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301729, 33.649323, 52.379051>,  <29.457924, 33.546474, 52.529469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301729, 33.649323, 52.379051>,  <29.041405, 33.820736, 52.128353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301729, 33.649323, 52.379051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648795, -0.114860, -0.752245,
		0.394348, 0.896196, 0.203277,
		0.650811, -0.428532, 0.626742,
		29.496973, 33.520763, 52.567074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746691, 34.066227, 51.953964>,  <29.041405, 33.820736, 52.128353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746691, 34.066227, 51.953964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812904, 33.728607, 52.157997>,  <29.852633, 33.526035, 52.280418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812904, 33.728607, 52.157997>,  <29.746691, 34.066227, 51.953964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812904, 33.728607, 52.157997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781122, -0.203531, -0.590275,
		0.602037, 0.496149, 0.625611,
		0.165533, -0.844045, 0.510085,
		29.862564, 33.475395, 52.311024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469988, 33.931179, 51.917412>,  <29.746691, 34.066227, 51.953964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469988, 33.931179, 51.917412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.362753, 33.565857, 52.040047>,  <30.298412, 33.346664, 52.113628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.362753, 33.565857, 52.040047>,  <30.469988, 33.931179, 51.917412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362753, 33.565857, 52.040047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784078, -0.391754, -0.481406,
		0.559779, 0.111329, 0.821130,
		-0.268086, -0.913310, 0.306586,
		30.282328, 33.291862, 52.132023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102516, 33.587669, 52.161419>,  <30.469988, 33.931179, 51.917412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102516, 33.587669, 52.161419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838125, 33.291565, 52.112221>,  <30.679491, 33.113903, 52.082703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838125, 33.291565, 52.112221>,  <31.102516, 33.587669, 52.161419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838125, 33.291565, 52.112221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686457, -0.530261, -0.497594,
		0.303131, -0.413326, 0.858646,
		-0.660975, -0.740260, -0.122992,
		30.639833, 33.069489, 52.075325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554552, 33.070240, 52.269447>,  <31.102516, 33.587669, 52.161419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554552, 33.070240, 52.269447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.222822, 32.961586, 52.074127>,  <31.023785, 32.896393, 51.956936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.222822, 32.961586, 52.074127>,  <31.554552, 33.070240, 52.269447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222822, 32.961586, 52.074127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555307, -0.497750, -0.666243,
		-0.062074, -0.823686, 0.563638,
		-0.829326, -0.271635, -0.488296,
		30.974024, 32.880096, 51.927639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590242, 32.232151, 52.173248>,  <31.554552, 33.070240, 52.269447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590242, 32.232151, 52.173248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355091, 32.399174, 51.896107>,  <31.214001, 32.499386, 51.729820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355091, 32.399174, 51.896107>,  <31.590242, 32.232151, 52.173248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355091, 32.399174, 51.896107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487724, -0.500363, -0.715376,
		-0.645387, -0.758476, 0.090501,
		-0.587878, 0.417555, -0.692854,
		31.178728, 32.524441, 51.688251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452942, 31.680740, 51.744419>,  <31.590242, 32.232151, 52.173248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452942, 31.680740, 51.744419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.359612, 32.006214, 51.531448>,  <31.303614, 32.201500, 51.403667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.359612, 32.006214, 51.531448>,  <31.452942, 31.680740, 51.744419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359612, 32.006214, 51.531448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387058, -0.424579, -0.818485,
		-0.892045, -0.397054, -0.215877,
		-0.233326, 0.813683, -0.532427,
		31.289614, 32.250320, 51.371719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133991, 31.457787, 51.183872>,  <31.452942, 31.680740, 51.744419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133991, 31.457787, 51.183872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249535, 31.824163, 51.072437>,  <31.318861, 32.043991, 51.005577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.249535, 31.824163, 51.072437>,  <31.133991, 31.457787, 51.183872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249535, 31.824163, 51.072437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334609, -0.369231, -0.867010,
		-0.896994, 0.157223, -0.413137,
		0.288857, 0.915942, -0.278590,
		31.336191, 32.098946, 50.988861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953602, 31.462761, 50.504742>,  <31.133991, 31.457787, 51.183872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953602, 31.462761, 50.504742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240654, 31.737751, 50.549259>,  <31.412886, 31.902744, 50.575970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240654, 31.737751, 50.549259>,  <30.953602, 31.462761, 50.504742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240654, 31.737751, 50.549259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487341, -0.381561, -0.785436,
		-0.497501, 0.617891, -0.608854,
		0.717629, 0.687475, 0.111297,
		31.455942, 31.943995, 50.582649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961233, 31.779848, 49.831635>,  <30.953602, 31.462761, 50.504742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961233, 31.779848, 49.831635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308020, 31.866480, 50.011173>,  <31.516092, 31.918459, 50.118896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308020, 31.866480, 50.011173>,  <30.961233, 31.779848, 49.831635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308020, 31.866480, 50.011173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481223, -0.129598, -0.866966,
		-0.129598, 0.967625, -0.216580,
		0.866966, 0.216580, 0.448847,
		31.568110, 31.931454, 50.145828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267967, 32.395512, 49.430885>,  <30.961233, 31.779848, 49.831635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267967, 32.395512, 49.430885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.459080, 32.074287, 49.573338>,  <31.573748, 31.881554, 49.658810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.459080, 32.074287, 49.573338>,  <31.267967, 32.395512, 49.430885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459080, 32.074287, 49.573338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173014, -0.311430, -0.934386,
		0.861274, 0.508045, -0.009854,
		0.477779, -0.803058, 0.356126,
		31.602413, 31.833370, 49.680176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177141, 32.906776, 48.856499>,  <31.267967, 32.395512, 49.430885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177141, 32.906776, 48.856499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179394, 33.071720, 48.492096>,  <31.180746, 33.170689, 48.273457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.179394, 33.071720, 48.492096>,  <31.177141, 32.906776, 48.856499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179394, 33.071720, 48.492096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229739, 0.887182, 0.400160,
		0.973236, 0.207039, 0.099733,
		0.005633, 0.412363, -0.911003,
		31.181084, 33.195431, 48.218796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694843, 33.435429, 48.842754>,  <31.177141, 32.906776, 48.856499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694843, 33.435429, 48.842754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438328, 33.524410, 48.549015>,  <31.284418, 33.577801, 48.372772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438328, 33.524410, 48.549015>,  <31.694843, 33.435429, 48.842754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438328, 33.524410, 48.549015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134603, 0.909595, 0.393089,
		0.755402, 0.350928, -0.553369,
		-0.641288, 0.222455, -0.734346,
		31.245941, 33.591148, 48.328712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739902, 34.170738, 48.895599>,  <31.694843, 33.435429, 48.842754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739902, 34.170738, 48.895599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421759, 34.111450, 48.660507>,  <31.230873, 34.075878, 48.519451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421759, 34.111450, 48.660507>,  <31.739902, 34.170738, 48.895599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421759, 34.111450, 48.660507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299968, 0.938830, 0.169165,
		0.526709, 0.310849, -0.791170,
		-0.795360, -0.148225, -0.587735,
		31.183151, 34.066982, 48.484188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717751, 34.720898, 48.391567>,  <31.739902, 34.170738, 48.895599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717751, 34.720898, 48.391567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337879, 34.600586, 48.426533>,  <31.109955, 34.528400, 48.447510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337879, 34.600586, 48.426533>,  <31.717751, 34.720898, 48.391567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337879, 34.600586, 48.426533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287407, 0.947736, 0.138544,
		-0.124514, 0.106450, -0.986491,
		-0.949681, -0.300775, 0.087412,
		31.052975, 34.510353, 48.452755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399050, 35.253338, 48.083328>,  <31.717751, 34.720898, 48.391567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399050, 35.253338, 48.083328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.107428, 35.063293, 48.280407>,  <30.932455, 34.949265, 48.398655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.107428, 35.063293, 48.280407>,  <31.399050, 35.253338, 48.083328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107428, 35.063293, 48.280407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453680, 0.874428, 0.171901,
		-0.512497, -0.098200, -0.853055,
		-0.729055, -0.475113, 0.492693,
		30.888712, 34.920761, 48.428215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768641, 35.462765, 47.828354>,  <31.399050, 35.253338, 48.083328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768641, 35.462765, 47.828354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700258, 35.345627, 48.204655>,  <30.659229, 35.275345, 48.430435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700258, 35.345627, 48.204655>,  <30.768641, 35.462765, 47.828354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700258, 35.345627, 48.204655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403326, 0.891945, 0.204359,
		-0.898945, -0.344495, -0.270593,
		-0.170954, -0.292845, 0.940754,
		30.648972, 35.257774, 48.486881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137339, 35.971298, 48.023300>,  <30.768641, 35.462765, 47.828354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137339, 35.971298, 48.023300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263407, 35.789635, 48.356625>,  <30.339048, 35.680637, 48.556618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263407, 35.789635, 48.356625>,  <30.137339, 35.971298, 48.023300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263407, 35.789635, 48.356625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370938, 0.749263, 0.548644,
		-0.873540, -0.482023, 0.067681,
		0.315170, -0.454158, 0.833312,
		30.357958, 35.653389, 48.606617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497915, 35.966434, 48.581913>,  <30.137339, 35.971298, 48.023300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497915, 35.966434, 48.581913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.856510, 35.960232, 48.759033>,  <30.071667, 35.956509, 48.865303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.856510, 35.960232, 48.759033>,  <29.497915, 35.966434, 48.581913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856510, 35.960232, 48.759033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359311, 0.559296, 0.747050,
		-0.259239, -0.828823, 0.495830,
		0.896488, -0.015507, 0.442797,
		30.125456, 35.955582, 48.891872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390787, 35.825237, 49.329372>,  <29.497915, 35.966434, 48.581913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390787, 35.825237, 49.329372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.742674, 36.011028, 49.288647>,  <29.953806, 36.122501, 49.264214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.742674, 36.011028, 49.288647>,  <29.390787, 35.825237, 49.329372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742674, 36.011028, 49.288647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246768, 0.628976, 0.737221,
		0.406455, -0.623421, 0.667937,
		0.879716, 0.464473, -0.101810,
		30.006588, 36.150372, 49.258102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490889, 36.145664, 49.975414>,  <29.390787, 35.825237, 49.329372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490889, 36.145664, 49.975414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.807018, 36.310822, 49.794350>,  <29.996696, 36.409916, 49.685711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.807018, 36.310822, 49.794350>,  <29.490889, 36.145664, 49.975414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807018, 36.310822, 49.794350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007416, 0.732317, 0.680924,
		0.612644, -0.541508, 0.575706,
		0.790324, 0.412895, -0.452665,
		30.044115, 36.434689, 49.658550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002882, 36.074600, 50.501556>,  <29.490889, 36.145664, 49.975414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002882, 36.074600, 50.501556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072683, 36.368092, 50.238895>,  <30.114563, 36.544186, 50.081299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072683, 36.368092, 50.238895>,  <30.002882, 36.074600, 50.501556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072683, 36.368092, 50.238895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145299, 0.678776, 0.719827,
		0.973878, -0.030199, 0.225056,
		0.174501, 0.733724, -0.656657,
		30.125034, 36.588207, 50.041897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298712, 36.618511, 50.851292>,  <30.002882, 36.074600, 50.501556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298712, 36.618511, 50.851292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.183538, 36.809124, 50.519024>,  <30.114435, 36.923492, 50.319664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.183538, 36.809124, 50.519024>,  <30.298712, 36.618511, 50.851292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183538, 36.809124, 50.519024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183775, 0.823788, 0.536283,
		0.939852, 0.307069, -0.149620,
		-0.287931, 0.476530, -0.830671,
		30.097158, 36.952084, 50.269821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559406, 37.297646, 51.043636>,  <30.298712, 36.618511, 50.851292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559406, 37.297646, 51.043636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306694, 37.348564, 50.737789>,  <30.155066, 37.379116, 50.554279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306694, 37.348564, 50.737789>,  <30.559406, 37.297646, 51.043636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306694, 37.348564, 50.737789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393880, 0.796865, 0.458110,
		0.667614, 0.590596, -0.453308,
		-0.631783, 0.127292, -0.764622,
		30.117159, 37.386753, 50.508404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620853, 37.999104, 50.855160>,  <30.559406, 37.297646, 51.043636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620853, 37.999104, 50.855160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269524, 37.880337, 50.705288>,  <30.058725, 37.809074, 50.615364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269524, 37.880337, 50.705288>,  <30.620853, 37.999104, 50.855160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269524, 37.880337, 50.705288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443561, 0.798494, 0.407014,
		0.178331, 0.523685, -0.833038,
		-0.878323, -0.296920, -0.374682,
		30.006027, 37.791260, 50.592884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273664, 38.620853, 50.440731>,  <30.620853, 37.999104, 50.855160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273664, 38.620853, 50.440731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995735, 38.378551, 50.595791>,  <29.828978, 38.233170, 50.688828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.995735, 38.378551, 50.595791>,  <30.273664, 38.620853, 50.440731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995735, 38.378551, 50.595791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302858, 0.735353, 0.606246,
		-0.652301, 0.303830, -0.694400,
		-0.694824, -0.605759, 0.387654,
		29.787289, 38.196823, 50.712086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307110, 39.393223, 50.220348>,  <30.273664, 38.620853, 50.440731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307110, 39.393223, 50.220348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628706, 39.521732, 50.420502>,  <30.821665, 39.598839, 50.540592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628706, 39.521732, 50.420502>,  <30.307110, 39.393223, 50.220348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628706, 39.521732, 50.420502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594381, -0.409311, -0.692225,
		-0.017579, 0.853961, -0.520040,
		0.803991, 0.321270, 0.500383,
		30.869904, 39.618114, 50.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781319, 39.728535, 49.811108>,  <30.307110, 39.393223, 50.220348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781319, 39.728535, 49.811108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.011278, 39.612480, 50.117130>,  <31.149254, 39.542847, 50.300743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.011278, 39.612480, 50.117130>,  <30.781319, 39.728535, 49.811108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011278, 39.612480, 50.117130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616151, -0.461715, -0.638105,
		0.538375, 0.838236, -0.086672,
		0.574900, -0.290137, 0.765056,
		31.183748, 39.525440, 50.346645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431189, 39.895359, 49.603512>,  <30.781319, 39.728535, 49.811108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431189, 39.895359, 49.603512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535946, 39.649338, 49.901001>,  <31.598801, 39.501724, 50.079494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535946, 39.649338, 49.901001>,  <31.431189, 39.895359, 49.603512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535946, 39.649338, 49.901001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812566, -0.275262, -0.513778,
		0.520719, 0.738878, 0.427681,
		0.261895, -0.615053, 0.743721,
		31.614515, 39.464821, 50.124119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108234, 40.025455, 49.728992>,  <31.431189, 39.895359, 49.603512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108234, 40.025455, 49.728992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.042545, 39.648232, 49.844700>,  <32.003132, 39.421898, 49.914124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.042545, 39.648232, 49.844700>,  <32.108234, 40.025455, 49.728992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042545, 39.648232, 49.844700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808413, -0.296707, -0.508364,
		0.565243, 0.150361, 0.811105,
		-0.164223, -0.943057, 0.289265,
		31.993279, 39.365314, 49.931480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824303, 39.730652, 49.724380>,  <32.108234, 40.025455, 49.728992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824303, 39.730652, 49.724380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.585369, 39.410889, 49.750099>,  <32.442009, 39.219028, 49.765530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.585369, 39.410889, 49.750099>,  <32.824303, 39.730652, 49.724380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585369, 39.410889, 49.750099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562408, -0.474692, -0.677026,
		0.571742, -0.368252, 0.733145,
		-0.597334, -0.799411, 0.064293,
		32.406170, 39.171066, 49.769386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272587, 39.215595, 49.837875>,  <32.824303, 39.730652, 49.724380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272587, 39.215595, 49.837875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.931095, 39.061062, 49.698223>,  <32.726200, 38.968342, 49.614433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.931095, 39.061062, 49.698223>,  <33.272587, 39.215595, 49.837875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931095, 39.061062, 49.698223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502429, -0.435050, -0.747192,
		0.136775, -0.813314, 0.565520,
		-0.853731, -0.386331, -0.349129,
		32.674976, 38.945164, 49.593483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348030, 38.506310, 49.859940>,  <33.272587, 39.215595, 49.837875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348030, 38.506310, 49.859940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069786, 38.593555, 49.586136>,  <32.902840, 38.645901, 49.421856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069786, 38.593555, 49.586136>,  <33.348030, 38.506310, 49.859940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069786, 38.593555, 49.586136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524701, -0.496580, -0.691446,
		-0.490734, -0.840137, 0.230975,
		-0.695607, 0.218124, -0.684509,
		32.861103, 38.658989, 49.380783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288391, 37.830544, 49.554451>,  <33.348030, 38.506310, 49.859940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288391, 37.830544, 49.554451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142483, 38.099651, 49.296978>,  <33.054939, 38.261116, 49.142494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142483, 38.099651, 49.296978>,  <33.288391, 37.830544, 49.554451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142483, 38.099651, 49.296978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386343, -0.519633, -0.762051,
		-0.847162, -0.526653, -0.070375,
		-0.364767, 0.672769, -0.643682,
		33.033054, 38.301483, 49.103874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099976, 37.444496, 49.039459>,  <33.288391, 37.830544, 49.554451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099976, 37.444496, 49.039459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137836, 37.815563, 48.894974>,  <33.160553, 38.038204, 48.808281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.137836, 37.815563, 48.894974>,  <33.099976, 37.444496, 49.039459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137836, 37.815563, 48.894974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538229, -0.352926, -0.765345,
		-0.837467, -0.121972, -0.532703,
		0.094654, 0.927667, -0.361213,
		33.166233, 38.093864, 48.786610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984875, 37.322422, 48.357441>,  <33.099976, 37.444496, 49.039459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984875, 37.322422, 48.357441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163525, 37.679398, 48.382954>,  <33.270714, 37.893585, 48.398262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163525, 37.679398, 48.382954>,  <32.984875, 37.322422, 48.357441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163525, 37.679398, 48.382954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677943, -0.291039, -0.675048,
		-0.583880, 0.344733, -0.735012,
		0.446629, 0.892443, 0.063777,
		33.297512, 37.947132, 48.402088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131725, 37.562401, 47.636478>,  <32.984875, 37.322422, 48.357441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131725, 37.562401, 47.636478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392193, 37.771858, 47.856216>,  <33.548473, 37.897533, 47.988060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392193, 37.771858, 47.856216>,  <33.131725, 37.562401, 47.636478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392193, 37.771858, 47.856216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710784, -0.167058, -0.683285,
		-0.266024, 0.835399, -0.480979,
		0.651166, 0.523642, 0.549347,
		33.587543, 37.928951, 48.021019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379738, 38.254684, 47.309708>,  <33.131725, 37.562401, 47.636478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379738, 38.254684, 47.309708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616371, 38.047615, 47.556950>,  <33.758350, 37.923374, 47.705296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616371, 38.047615, 47.556950>,  <33.379738, 38.254684, 47.309708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616371, 38.047615, 47.556950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630465, -0.180831, -0.754861,
		0.502540, 0.836253, 0.219396,
		0.591581, -0.517669, 0.618103,
		33.793846, 37.892315, 47.742382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.519558, 41.329079, 55.675663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261765, 41.582142, 55.503902>,  <29.107088, 41.733982, 55.400845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261765, 41.582142, 55.503902>,  <29.519558, 41.329079, 55.675663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261765, 41.582142, 55.503902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274310, -0.332895, -0.902183,
		-0.713721, -0.699229, 0.040999,
		-0.644482, 0.632660, -0.429400,
		29.068420, 41.771938, 55.375084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058468, 40.934933, 55.181229>,  <29.519558, 41.329079, 55.675663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058468, 40.934933, 55.181229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028736, 41.309910, 55.045189>,  <29.010897, 41.534897, 54.963566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028736, 41.309910, 55.045189>,  <29.058468, 40.934933, 55.181229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028736, 41.309910, 55.045189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187553, -0.321818, -0.928039,
		-0.979438, -0.132767, -0.151901,
		-0.074328, 0.937447, -0.340102,
		29.006437, 41.591145, 54.943157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635546, 40.924458, 54.491631>,  <29.058468, 40.934933, 55.181229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635546, 40.924458, 54.491631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833685, 41.271469, 54.473621>,  <28.952568, 41.479675, 54.462814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833685, 41.271469, 54.473621>,  <28.635546, 40.924458, 54.491631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833685, 41.271469, 54.473621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179373, -0.152856, -0.971834,
		-0.849974, 0.473320, -0.231328,
		0.495348, 0.867527, -0.045023,
		28.982288, 41.531727, 54.460114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560234, 41.023617, 53.856682>,  <28.635546, 40.924458, 54.491631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560234, 41.023617, 53.856682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825630, 41.294086, 53.984783>,  <28.984867, 41.456367, 54.061646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.825630, 41.294086, 53.984783>,  <28.560234, 41.023617, 53.856682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825630, 41.294086, 53.984783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403432, 0.037154, -0.914255,
		-0.630099, 0.735800, -0.248141,
		0.663489, 0.676179, 0.320256,
		29.024677, 41.496941, 54.080860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530745, 41.586773, 53.361938>,  <28.560234, 41.023617, 53.856682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530745, 41.586773, 53.361938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894817, 41.549335, 53.523338>,  <29.113260, 41.526875, 53.620178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894817, 41.549335, 53.523338>,  <28.530745, 41.586773, 53.361938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894817, 41.549335, 53.523338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391579, -0.123177, -0.911862,
		0.135045, 0.987961, -0.075465,
		0.910181, -0.093592, 0.403500,
		29.167871, 41.521259, 53.644390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044184, 41.802132, 52.840370>,  <28.530745, 41.586773, 53.361938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044184, 41.802132, 52.840370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287418, 41.604630, 53.089027>,  <29.433359, 41.486130, 53.238220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287418, 41.604630, 53.089027>,  <29.044184, 41.802132, 52.840370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287418, 41.604630, 53.089027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560899, -0.286933, -0.776571,
		0.561805, 0.820899, 0.102467,
		0.608085, -0.493755, 0.621641,
		29.469845, 41.456505, 53.275520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755466, 41.949650, 52.530670>,  <29.044184, 41.802132, 52.840370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755466, 41.949650, 52.530670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779062, 41.653419, 52.798420>,  <29.793221, 41.475681, 52.959072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779062, 41.653419, 52.798420>,  <29.755466, 41.949650, 52.530670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779062, 41.653419, 52.798420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534520, -0.542887, -0.647736,
		0.843094, 0.396006, 0.363829,
		0.058989, -0.740577, 0.669378,
		29.796759, 41.431248, 52.999233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490204, 41.861141, 52.730980>,  <29.755466, 41.949650, 52.530670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490204, 41.861141, 52.730980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284132, 41.520809, 52.772297>,  <30.160488, 41.316608, 52.797085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284132, 41.520809, 52.772297>,  <30.490204, 41.861141, 52.730980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284132, 41.520809, 52.772297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589204, -0.439102, -0.678254,
		0.622437, -0.288565, 0.727532,
		-0.515181, -0.850835, 0.103289,
		30.129578, 41.265560, 52.803284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021866, 41.342907, 52.587227>,  <30.490204, 41.861141, 52.730980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021866, 41.342907, 52.587227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668030, 41.158581, 52.558533>,  <30.455729, 41.047985, 52.541317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668030, 41.158581, 52.558533>,  <31.021866, 41.342907, 52.587227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668030, 41.158581, 52.558533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367078, -0.593094, -0.716584,
		0.287671, -0.660215, 0.693802,
		-0.884590, -0.460820, -0.071735,
		30.402653, 41.020336, 52.537014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165773, 40.701359, 52.556511>,  <31.021866, 41.342907, 52.587227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165773, 40.701359, 52.556511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.784092, 40.659164, 52.444530>,  <30.555084, 40.633846, 52.377342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.784092, 40.659164, 52.444530>,  <31.165773, 40.701359, 52.556511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784092, 40.659164, 52.444530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277682, -0.660499, -0.697591,
		-0.111320, -0.743380, 0.659541,
		-0.954201, -0.105487, -0.279950,
		30.497831, 40.627518, 52.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973986, 40.014130, 52.560680>,  <31.165773, 40.701359, 52.556511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973986, 40.014130, 52.560680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746199, 40.193020, 52.284798>,  <30.609526, 40.300354, 52.119267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746199, 40.193020, 52.284798>,  <30.973986, 40.014130, 52.560680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746199, 40.193020, 52.284798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273984, -0.687802, -0.672206,
		-0.775010, -0.571768, 0.269147,
		-0.569467, 0.447224, -0.689709,
		30.575357, 40.327187, 52.077885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666958, 39.429985, 52.201382>,  <30.973986, 40.014130, 52.560680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666958, 39.429985, 52.201382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591080, 39.744778, 51.966549>,  <30.545553, 39.933655, 51.825649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591080, 39.744778, 51.966549>,  <30.666958, 39.429985, 52.201382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591080, 39.744778, 51.966549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364283, -0.498851, -0.786413,
		-0.911764, -0.363045, -0.192055,
		-0.189697, 0.786985, -0.587085,
		30.534170, 39.980873, 51.790424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351912, 39.234806, 51.671329>,  <30.666958, 39.429985, 52.201382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351912, 39.234806, 51.671329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.509287, 39.567623, 51.514912>,  <30.603712, 39.767311, 51.421062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.509287, 39.567623, 51.514912>,  <30.351912, 39.234806, 51.671329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509287, 39.567623, 51.514912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314774, -0.521554, -0.793032,
		-0.863785, 0.188919, -0.467104,
		0.393438, 0.832041, -0.391044,
		30.627317, 39.817234, 51.397598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035772, 39.425339, 50.896709>,  <30.351912, 39.234806, 51.671329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035772, 39.425339, 50.896709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376991, 39.631920, 50.926598>,  <30.581722, 39.755871, 50.944530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376991, 39.631920, 50.926598>,  <30.035772, 39.425339, 50.896709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376991, 39.631920, 50.926598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332131, -0.426903, -0.841096,
		-0.402490, 0.742313, -0.535699,
		0.853048, 0.516455, 0.074721,
		30.632906, 39.786858, 50.949013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594246, 39.033150, 50.450043>,  <30.035772, 39.425339, 50.896709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594246, 39.033150, 50.450043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530966, 38.730289, 50.703564>,  <29.492998, 38.548573, 50.855675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530966, 38.730289, 50.703564>,  <29.594246, 39.033150, 50.450043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530966, 38.730289, 50.703564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406054, 0.634981, 0.657205,
		-0.900051, -0.153387, -0.407897,
		-0.158200, -0.757147, 0.633799,
		29.483505, 38.503147, 50.893703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847055, 39.145733, 50.669613>,  <29.594246, 39.033150, 50.450043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847055, 39.145733, 50.669613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968588, 38.882153, 50.944851>,  <29.041508, 38.724007, 51.109993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968588, 38.882153, 50.944851>,  <28.847055, 39.145733, 50.669613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968588, 38.882153, 50.944851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655145, 0.379865, 0.653060,
		-0.691716, -0.649222, -0.316291,
		0.303833, -0.658949, 0.688093,
		29.059738, 38.684467, 51.151279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301353, 38.704056, 50.785172>,  <28.847055, 39.145733, 50.669613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301353, 38.704056, 50.785172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536509, 38.686214, 51.108257>,  <28.677603, 38.675510, 51.302109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536509, 38.686214, 51.108257>,  <28.301353, 38.704056, 50.785172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536509, 38.686214, 51.108257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761478, 0.306474, 0.571161,
		-0.273017, -0.950834, 0.146209,
		0.587889, -0.044602, 0.807711,
		28.712875, 38.672832, 51.350571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841394, 38.377766, 51.362919>,  <28.301353, 38.704056, 50.785172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841394, 38.377766, 51.362919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159155, 38.554901, 51.529209>,  <28.349812, 38.661182, 51.628983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159155, 38.554901, 51.529209>,  <27.841394, 38.377766, 51.362919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159155, 38.554901, 51.529209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581543, 0.356974, 0.731012,
		0.175314, -0.822477, 0.541107,
		0.794401, 0.442833, 0.415723,
		28.397474, 38.687752, 51.653927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896370, 38.076389, 51.941658>,  <27.841394, 38.377766, 51.362919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896370, 38.076389, 51.941658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073036, 38.427841, 52.014252>,  <28.179035, 38.638714, 52.057808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073036, 38.427841, 52.014252>,  <27.896370, 38.076389, 51.941658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073036, 38.427841, 52.014252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658773, 0.180277, 0.730424,
		0.609057, -0.442159, 0.658442,
		0.441665, 0.878633, 0.181484,
		28.205536, 38.691429, 52.068695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927385, 38.109386, 52.762127>,  <27.896370, 38.076389, 51.941658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927385, 38.109386, 52.762127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965883, 38.476883, 52.608944>,  <27.988981, 38.697380, 52.517033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965883, 38.476883, 52.608944>,  <27.927385, 38.109386, 52.762127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965883, 38.476883, 52.608944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523783, 0.373914, 0.765402,
		0.846397, 0.126922, 0.517207,
		0.096244, 0.918738, -0.382959,
		27.994757, 38.752502, 52.494057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150578, 38.436913, 53.294441>,  <27.927385, 38.109386, 52.762127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150578, 38.436913, 53.294441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970182, 38.695717, 53.048519>,  <27.861946, 38.851002, 52.900967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970182, 38.695717, 53.048519>,  <28.150578, 38.436913, 53.294441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970182, 38.695717, 53.048519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555735, 0.335446, 0.760680,
		0.698404, 0.684725, 0.208286,
		-0.450988, 0.647014, -0.614803,
		27.834887, 38.889820, 52.864079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036545, 39.012188, 53.774632>,  <28.150578, 38.436913, 53.294441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036545, 39.012188, 53.774632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.816753, 39.081890, 53.447777>,  <27.684879, 39.123711, 53.251663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.816753, 39.081890, 53.447777>,  <28.036545, 39.012188, 53.774632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816753, 39.081890, 53.447777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573659, 0.632366, 0.520604,
		0.607446, 0.754817, -0.247509,
		-0.549477, 0.174252, -0.817136,
		27.651911, 39.134167, 53.202637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081308, 39.657410, 53.644447>,  <28.036545, 39.012188, 53.774632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081308, 39.657410, 53.644447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735567, 39.563671, 53.466469>,  <27.528122, 39.507427, 53.359684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735567, 39.563671, 53.466469>,  <28.081308, 39.657410, 53.644447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735567, 39.563671, 53.466469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462570, 0.717600, 0.520652,
		0.197279, 0.655845, -0.728662,
		-0.864355, -0.234343, -0.444942,
		27.476261, 39.493370, 53.332985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569695, 40.215958, 53.710590>,  <28.081308, 39.657410, 53.644447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569695, 40.215958, 53.710590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274250, 39.979145, 53.581623>,  <27.096983, 39.837059, 53.504242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274250, 39.979145, 53.581623>,  <27.569695, 40.215958, 53.710590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274250, 39.979145, 53.581623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672526, 0.614102, 0.413023,
		-0.046526, 0.521896, -0.851739,
		-0.738610, -0.592033, -0.322417,
		27.052668, 39.801537, 53.484898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145876, 40.693508, 53.379047>,  <27.569695, 40.215958, 53.710590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145876, 40.693508, 53.379047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933506, 40.367218, 53.470879>,  <26.806084, 40.171444, 53.525978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933506, 40.367218, 53.470879>,  <27.145876, 40.693508, 53.379047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933506, 40.367218, 53.470879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695593, 0.574243, 0.431735,
		-0.484012, 0.069527, -0.872295,
		-0.530926, -0.815727, 0.229578,
		26.774229, 40.122501, 53.539753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435387, 40.864037, 53.247952>,  <27.145876, 40.693508, 53.379047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435387, 40.864037, 53.247952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375727, 40.561970, 53.503288>,  <26.339930, 40.380730, 53.656490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375727, 40.561970, 53.503288>,  <26.435387, 40.864037, 53.247952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375727, 40.561970, 53.503288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560384, 0.596436, 0.574660,
		-0.814692, -0.272002, -0.512143,
		-0.149152, -0.755168, 0.638338,
		26.330980, 40.335419, 53.694790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653854, 40.701538, 53.463562>,  <26.435387, 40.864037, 53.247952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653854, 40.701538, 53.463562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.890158, 40.553268, 53.750229>,  <26.031940, 40.464306, 53.922230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.890158, 40.553268, 53.750229>,  <25.653854, 40.701538, 53.463562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890158, 40.553268, 53.750229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483314, 0.548665, 0.682183,
		-0.646075, -0.749379, 0.144978,
		0.590758, -0.370671, 0.716664,
		26.067385, 40.442066, 53.965229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197279, 40.576801, 54.053139>,  <25.653854, 40.701538, 53.463562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197279, 40.576801, 54.053139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.563099, 40.560570, 54.214111>,  <25.782591, 40.550831, 54.310696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.563099, 40.560570, 54.214111>,  <25.197279, 40.576801, 54.053139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563099, 40.560570, 54.214111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321595, 0.530455, 0.784343,
		-0.245302, -0.846741, 0.472077,
		0.914551, -0.040583, 0.402429,
		25.837463, 40.548393, 54.334839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.884830, 38.125484, 59.679386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556961, 38.153553, 59.451981>,  <32.360237, 38.170395, 59.315536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556961, 38.153553, 59.451981>,  <32.884830, 38.125484, 59.679386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556961, 38.153553, 59.451981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386398, -0.664939, -0.639181,
		-0.422875, -0.743594, 0.517923,
		-0.819679, 0.070169, -0.568510,
		32.311058, 38.174603, 59.281429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660931, 37.432552, 59.566006>,  <32.884830, 38.125484, 59.679386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660931, 37.432552, 59.566006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503597, 37.647312, 59.267467>,  <32.409199, 37.776169, 59.088345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503597, 37.647312, 59.267467>,  <32.660931, 37.432552, 59.566006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503597, 37.647312, 59.267467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246870, -0.720292, -0.648255,
		-0.885633, -0.439230, 0.150770,
		-0.393331, 0.536895, -0.746347,
		32.385597, 37.808380, 59.043564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368561, 36.931694, 59.105812>,  <32.660931, 37.432552, 59.566006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368561, 36.931694, 59.105812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402058, 37.259907, 58.879639>,  <32.422157, 37.456833, 58.743935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402058, 37.259907, 58.879639>,  <32.368561, 36.931694, 59.105812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402058, 37.259907, 58.879639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347182, -0.555902, -0.755273,
		-0.934051, -0.133062, -0.331426,
		0.083742, 0.820529, -0.565437,
		32.427181, 37.506065, 58.710007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978474, 36.799042, 58.543457>,  <32.368561, 36.931694, 59.105812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978474, 36.799042, 58.543457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220482, 37.091885, 58.418255>,  <32.365685, 37.267590, 58.343136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220482, 37.091885, 58.418255>,  <31.978474, 36.799042, 58.543457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220482, 37.091885, 58.418255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291027, -0.569252, -0.768931,
		-0.741118, 0.374125, -0.557471,
		0.605018, 0.732108, -0.313002,
		32.401989, 37.311516, 58.324352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844362, 36.878227, 57.850368>,  <31.978474, 36.799042, 58.543457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844362, 36.878227, 57.850368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199848, 37.056431, 57.893658>,  <32.413139, 37.163353, 57.919632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.199848, 37.056431, 57.893658>,  <31.844362, 36.878227, 57.850368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199848, 37.056431, 57.893658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341632, -0.486117, -0.804349,
		-0.305734, 0.751809, -0.584218,
		0.888715, 0.445504, 0.108220,
		32.466461, 37.190083, 57.926125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208942, 36.940742, 57.145084>,  <31.844362, 36.878227, 57.850368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208942, 36.940742, 57.145084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532066, 37.001823, 57.372814>,  <32.725941, 37.038471, 57.509453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532066, 37.001823, 57.372814>,  <32.208942, 36.940742, 57.145084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532066, 37.001823, 57.372814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577041, -0.401986, -0.710936,
		0.120297, 0.902822, -0.412844,
		0.807807, 0.152704, 0.569324,
		32.774410, 37.047634, 57.543610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710972, 37.377552, 56.794102>,  <32.208942, 36.940742, 57.145084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710972, 37.377552, 56.794102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898582, 37.143925, 57.059093>,  <33.011147, 37.003750, 57.218090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898582, 37.143925, 57.059093>,  <32.710972, 37.377552, 56.794102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898582, 37.143925, 57.059093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628173, -0.306660, -0.715093,
		0.620819, 0.751549, 0.223064,
		0.469023, -0.584066, 0.662483,
		33.039288, 36.968704, 57.257839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474308, 37.448425, 56.653530>,  <32.710972, 37.377552, 56.794102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474308, 37.448425, 56.653530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433147, 37.121746, 56.880661>,  <33.408451, 36.925739, 57.016937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433147, 37.121746, 56.880661>,  <33.474308, 37.448425, 56.653530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433147, 37.121746, 56.880661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636239, -0.492844, -0.593552,
		0.764598, 0.300194, 0.570327,
		-0.102901, -0.816693, 0.567823,
		33.402279, 36.876740, 57.051006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173763, 37.161034, 56.805645>,  <33.474308, 37.448425, 56.653530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173763, 37.161034, 56.805645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.899094, 36.879356, 56.877861>,  <33.734291, 36.710350, 56.921188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.899094, 36.879356, 56.877861>,  <34.173763, 37.161034, 56.805645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899094, 36.879356, 56.877861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517192, -0.647740, -0.559415,
		0.510878, -0.290762, 0.808988,
		-0.686671, -0.704194, 0.180536,
		33.693092, 36.668098, 56.932022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482090, 36.548298, 57.097340>,  <34.173763, 37.161034, 56.805645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482090, 36.548298, 57.097340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140945, 36.430855, 56.924633>,  <33.936260, 36.360390, 56.821011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140945, 36.430855, 56.924633>,  <34.482090, 36.548298, 57.097340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140945, 36.430855, 56.924633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506984, -0.663437, -0.550289,
		-0.124881, -0.688219, 0.714674,
		-0.852861, -0.293608, -0.431767,
		33.885086, 36.342773, 56.795101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746353, 35.939606, 56.942905>,  <34.482090, 36.548298, 57.097340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746353, 35.939606, 56.942905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382133, 35.948524, 56.777790>,  <34.163601, 35.953876, 56.678722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.382133, 35.948524, 56.777790>,  <34.746353, 35.939606, 56.942905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382133, 35.948524, 56.777790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301539, -0.647237, -0.700113,
		-0.282783, -0.761963, 0.582621,
		-0.910554, 0.022297, -0.412789,
		34.108967, 35.955215, 56.653954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460136, 35.225395, 57.022141>,  <34.746353, 35.939606, 56.942905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460136, 35.225395, 57.022141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293030, 35.402832, 56.704979>,  <34.192768, 35.509293, 56.514683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293030, 35.402832, 56.704979>,  <34.460136, 35.225395, 57.022141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293030, 35.402832, 56.704979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389923, -0.700719, -0.597456,
		-0.820631, -0.558767, 0.119766,
		-0.417761, 0.443592, -0.792908,
		34.167702, 35.535908, 56.467106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167210, 34.734261, 56.545544>,  <34.460136, 35.225395, 57.022141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167210, 34.734261, 56.545544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236488, 35.053547, 56.314770>,  <34.278057, 35.245121, 56.176308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236488, 35.053547, 56.314770>,  <34.167210, 34.734261, 56.545544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236488, 35.053547, 56.314770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288222, -0.601218, -0.745296,
		-0.941770, -0.037202, -0.334193,
		0.173196, 0.798219, -0.576931,
		34.288448, 35.293015, 56.141689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868607, 34.584064, 55.847755>,  <34.167210, 34.734261, 56.545544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868607, 34.584064, 55.847755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141209, 34.872936, 55.800407>,  <34.304768, 35.046261, 55.771999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141209, 34.872936, 55.800407>,  <33.868607, 34.584064, 55.847755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141209, 34.872936, 55.800407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396986, -0.500705, -0.769218,
		-0.614781, 0.477234, -0.627927,
		0.681503, 0.722179, -0.118369,
		34.345661, 35.089588, 55.764896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296555, 34.661961, 55.455006>,  <33.868607, 34.584064, 55.847755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296555, 34.661961, 55.455006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941483, 34.507465, 55.354721>,  <32.728439, 34.414768, 55.294552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941483, 34.507465, 55.354721>,  <33.296555, 34.661961, 55.455006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941483, 34.507465, 55.354721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401477, 0.382551, 0.832148,
		-0.225496, 0.839331, -0.494645,
		-0.887676, -0.386235, -0.250708,
		32.675179, 34.391594, 55.279510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737595, 35.276386, 55.489861>,  <33.296555, 34.661961, 55.455006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737595, 35.276386, 55.489861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534584, 34.932606, 55.514393>,  <32.412777, 34.726337, 55.529114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534584, 34.932606, 55.514393>,  <32.737595, 35.276386, 55.489861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534584, 34.932606, 55.514393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586347, 0.396659, 0.706300,
		-0.631358, 0.322503, -0.705251,
		-0.507528, -0.859450, 0.061335,
		32.382324, 34.674770, 55.532795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977392, 35.509357, 55.373482>,  <32.737595, 35.276386, 55.489861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977392, 35.509357, 55.373482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.007786, 35.161007, 55.567722>,  <32.026024, 34.951996, 55.684265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.007786, 35.161007, 55.567722>,  <31.977392, 35.509357, 55.373482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007786, 35.161007, 55.567722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667467, 0.317372, 0.673619,
		-0.740752, -0.375305, -0.557164,
		0.075984, -0.870874, 0.485597,
		32.030582, 34.899746, 55.713402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311655, 35.341358, 55.460636>,  <31.977392, 35.509357, 55.373482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311655, 35.341358, 55.460636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497971, 35.101398, 55.720840>,  <31.609760, 34.957424, 55.876965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497971, 35.101398, 55.720840>,  <31.311655, 35.341358, 55.460636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497971, 35.101398, 55.720840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666491, 0.245739, 0.703848,
		-0.582093, -0.761403, -0.285364,
		0.465787, -0.599898, 0.650511,
		31.637707, 34.921429, 55.915993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746502, 34.985512, 55.781498>,  <31.311655, 35.341358, 55.460636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746502, 34.985512, 55.781498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060787, 34.940159, 56.024742>,  <31.249357, 34.912949, 56.170689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060787, 34.940159, 56.024742>,  <30.746502, 34.985512, 55.781498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060787, 34.940159, 56.024742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569481, 0.251300, 0.782649,
		-0.241555, -0.961246, 0.132882,
		0.785712, -0.113379, 0.608114,
		31.296501, 34.906147, 56.207176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544704, 34.524029, 56.224133>,  <30.746502, 34.985512, 55.781498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544704, 34.524029, 56.224133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848925, 34.725742, 56.387718>,  <31.031458, 34.846771, 56.485870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848925, 34.725742, 56.387718>,  <30.544704, 34.524029, 56.224133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848925, 34.725742, 56.387718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538331, 0.137631, 0.831419,
		0.362988, -0.852497, 0.376149,
		0.760552, 0.504288, 0.408967,
		31.077089, 34.877029, 56.510410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648951, 34.375423, 56.913712>,  <30.544704, 34.524029, 56.224133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648951, 34.375423, 56.913712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860500, 34.714676, 56.926102>,  <30.987431, 34.918228, 56.933537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860500, 34.714676, 56.926102>,  <30.648951, 34.375423, 56.913712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860500, 34.714676, 56.926102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359348, 0.190714, 0.913508,
		0.768870, -0.494263, 0.405639,
		0.528874, 0.848135, 0.030978,
		31.019163, 34.969116, 56.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866550, 34.452160, 57.568356>,  <30.648951, 34.375423, 56.913712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866550, 34.452160, 57.568356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901525, 34.829205, 57.439465>,  <30.922510, 35.055431, 57.362129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901525, 34.829205, 57.439465>,  <30.866550, 34.452160, 57.568356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901525, 34.829205, 57.439465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363140, 0.331369, 0.870818,
		0.927623, 0.040873, 0.371275,
		0.087436, 0.942616, -0.322228,
		30.927757, 35.111988, 57.342796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224579, 34.813370, 58.052895>,  <30.866550, 34.452160, 57.568356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224579, 34.813370, 58.052895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017611, 35.097267, 57.861671>,  <30.893429, 35.267605, 57.746937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017611, 35.097267, 57.861671>,  <31.224579, 34.813370, 58.052895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017611, 35.097267, 57.861671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317760, 0.359356, 0.877435,
		0.794546, 0.605911, 0.039590,
		-0.517421, 0.709743, -0.478059,
		30.862385, 35.310188, 57.718254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417524, 35.454315, 58.411743>,  <31.224579, 34.813370, 58.052895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417524, 35.454315, 58.411743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.083685, 35.510670, 58.198727>,  <30.883381, 35.544483, 58.070919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.083685, 35.510670, 58.198727>,  <31.417524, 35.454315, 58.411743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083685, 35.510670, 58.198727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385983, 0.540166, 0.747822,
		0.393015, 0.829682, -0.396443,
		-0.834599, 0.140885, -0.532537,
		30.833305, 35.552937, 58.038967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202892, 36.187851, 58.282551>,  <31.417524, 35.454315, 58.411743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202892, 36.187851, 58.282551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855637, 35.989365, 58.278423>,  <30.647284, 35.870274, 58.275948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855637, 35.989365, 58.278423>,  <31.202892, 36.187851, 58.282551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855637, 35.989365, 58.278423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383500, 0.657444, 0.648610,
		-0.315064, 0.567041, -0.761051,
		-0.868137, -0.496217, -0.010323,
		30.595196, 35.840500, 58.275326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591537, 36.753689, 58.201984>,  <31.202892, 36.187851, 58.282551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591537, 36.753689, 58.201984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.415707, 36.422119, 58.340351>,  <30.310209, 36.223179, 58.423370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.415707, 36.422119, 58.340351>,  <30.591537, 36.753689, 58.201984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415707, 36.422119, 58.340351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500147, 0.545776, 0.672296,
		-0.746074, 0.122518, -0.654495,
		-0.439576, -0.828926, 0.345913,
		30.283834, 36.173443, 58.444126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804539, 36.926590, 58.253273>,  <30.591537, 36.753689, 58.201984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804539, 36.926590, 58.253273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870312, 36.608250, 58.486370>,  <29.909775, 36.417248, 58.626228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870312, 36.608250, 58.486370>,  <29.804539, 36.926590, 58.253273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870312, 36.608250, 58.486370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472192, 0.455186, 0.754878,
		-0.866024, -0.399293, -0.300945,
		0.164432, -0.795846, 0.582745,
		29.919641, 36.369495, 58.661194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156603, 36.722244, 58.523869>,  <29.804539, 36.926590, 58.253273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156603, 36.722244, 58.523869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416485, 36.551460, 58.775452>,  <29.572414, 36.448990, 58.926403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416485, 36.551460, 58.775452>,  <29.156603, 36.722244, 58.523869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416485, 36.551460, 58.775452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420657, 0.487232, 0.765280,
		-0.633192, -0.761782, 0.136954,
		0.649705, -0.426959, 0.628960,
		29.611397, 36.423374, 58.964138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462097, 36.263165, 58.300365>,  <29.156603, 36.722244, 58.523869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462097, 36.263165, 58.300365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.146858, 36.407436, 58.100838>,  <27.957716, 36.493999, 57.981121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.146858, 36.407436, 58.100838>,  <28.462097, 36.263165, 58.300365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146858, 36.407436, 58.100838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054157, -0.847840, -0.527479,
		-0.613165, -0.388690, 0.687713,
		-0.788097, 0.360676, -0.498815,
		27.910429, 36.515640, 57.951195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078995, 35.663361, 58.251774>,  <28.462097, 36.263165, 58.300365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078995, 35.663361, 58.251774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.937647, 35.930172, 57.989414>,  <27.852839, 36.090260, 57.831997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.937647, 35.930172, 57.989414>,  <28.078995, 35.663361, 58.251774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937647, 35.930172, 57.989414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163051, -0.734322, -0.658928,
		-0.921165, -0.125899, 0.368246,
		-0.353370, 0.667024, -0.655903,
		27.831636, 36.130280, 57.792645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415298, 35.356297, 57.877995>,  <28.078995, 35.663361, 58.251774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415298, 35.356297, 57.877995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.565207, 35.625942, 57.623398>,  <27.655151, 35.787731, 57.470642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.565207, 35.625942, 57.623398>,  <27.415298, 35.356297, 57.877995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565207, 35.625942, 57.623398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088417, -0.657408, -0.748330,
		-0.922891, 0.336729, -0.186776,
		0.374772, 0.674113, -0.636488,
		27.677639, 35.828175, 57.432449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186502, 35.173653, 57.212936>,  <27.415298, 35.356297, 57.877995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186502, 35.173653, 57.212936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.449806, 35.443340, 57.078995>,  <27.607788, 35.605152, 56.998631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.449806, 35.443340, 57.078995>,  <27.186502, 35.173653, 57.212936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449806, 35.443340, 57.078995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111223, -0.527039, -0.842532,
		-0.744530, 0.517361, -0.421917,
		0.658259, 0.674217, -0.334853,
		27.647284, 35.645607, 56.978539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010569, 35.360218, 56.498268>,  <27.186502, 35.173653, 57.212936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010569, 35.360218, 56.498268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.391939, 35.477673, 56.525845>,  <27.620762, 35.548145, 56.542393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.391939, 35.477673, 56.525845>,  <27.010569, 35.360218, 56.498268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391939, 35.477673, 56.525845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181712, -0.376749, -0.908318,
		-0.240741, 0.878543, -0.412560,
		0.953428, 0.293637, 0.068943,
		27.677967, 35.565765, 56.546528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169197, 35.567303, 55.901993>,  <27.010569, 35.360218, 56.498268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169197, 35.567303, 55.901993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.524693, 35.482376, 56.064507>,  <27.737989, 35.431419, 56.162014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.524693, 35.482376, 56.064507>,  <27.169197, 35.567303, 55.901993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524693, 35.482376, 56.064507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246188, -0.526561, -0.813710,
		0.386695, 0.823198, -0.415706,
		0.888740, -0.212316, 0.406281,
		27.791315, 35.418682, 56.186390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737970, 35.832775, 55.377625>,  <27.169197, 35.567303, 55.901993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737970, 35.832775, 55.377625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.884291, 35.537502, 55.604347>,  <27.972082, 35.360336, 55.740383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.884291, 35.537502, 55.604347>,  <27.737970, 35.832775, 55.377625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884291, 35.537502, 55.604347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503262, -0.355413, -0.787660,
		0.782890, 0.573380, 0.241490,
		0.365800, -0.738184, 0.566810,
		27.994030, 35.316048, 55.774391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424389, 35.910191, 55.203175>,  <27.737970, 35.832775, 55.377625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424389, 35.910191, 55.203175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.349846, 35.551353, 55.363419>,  <28.305120, 35.336052, 55.459564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.349846, 35.551353, 55.363419>,  <28.424389, 35.910191, 55.203175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349846, 35.551353, 55.363419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575763, -0.430122, -0.695336,
		0.796095, 0.101076, 0.596671,
		-0.186359, -0.897094, 0.400614,
		28.293938, 35.282227, 55.483604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095739, 35.688969, 55.298534>,  <28.424389, 35.910191, 55.203175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095739, 35.688969, 55.298534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.848482, 35.374706, 55.288425>,  <28.700129, 35.186150, 55.282360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.848482, 35.374706, 55.288425>,  <29.095739, 35.688969, 55.298534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848482, 35.374706, 55.288425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565658, -0.422262, -0.708326,
		0.545831, -0.452143, 0.705432,
		-0.618142, -0.785660, -0.025275,
		28.663040, 35.139008, 55.280842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562021, 35.082489, 55.277103>,  <29.095739, 35.688969, 55.298534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562021, 35.082489, 55.277103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.210186, 34.951305, 55.139252>,  <28.999084, 34.872597, 55.056541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.210186, 34.951305, 55.139252>,  <29.562021, 35.082489, 55.277103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210186, 34.951305, 55.139252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474660, -0.653665, -0.589423,
		-0.031965, -0.682030, 0.730625,
		-0.879589, -0.327958, -0.344627,
		28.946310, 34.852917, 55.035862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607111, 34.382385, 55.175613>,  <29.562021, 35.082489, 55.277103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607111, 34.382385, 55.175613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.288027, 34.459282, 54.946983>,  <29.096577, 34.505421, 54.809807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.288027, 34.459282, 54.946983>,  <29.607111, 34.382385, 55.175613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288027, 34.459282, 54.946983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348450, -0.626637, -0.697071,
		-0.492176, -0.755228, 0.432890,
		-0.797712, 0.192241, -0.571575,
		29.048714, 34.516953, 54.775513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435011, 33.754749, 54.885479>,  <29.607111, 34.382385, 55.175613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435011, 33.754749, 54.885479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237650, 33.988335, 54.627628>,  <29.119234, 34.128487, 54.472919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237650, 33.988335, 54.627628>,  <29.435011, 33.754749, 54.885479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237650, 33.988335, 54.627628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232507, -0.625602, -0.744690,
		-0.838149, -0.517312, 0.172899,
		-0.493403, 0.583961, -0.644627,
		29.089628, 34.163525, 54.434242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922220, 33.370937, 54.586430>,  <29.435011, 33.754749, 54.885479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922220, 33.370937, 54.586430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968636, 33.669312, 54.324097>,  <28.996485, 33.848335, 54.166698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968636, 33.669312, 54.324097>,  <28.922220, 33.370937, 54.586430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968636, 33.669312, 54.324097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053033, -0.664001, -0.745849,
		-0.991828, 0.051765, -0.116608,
		0.116037, 0.745938, -0.655829,
		29.003447, 33.893093, 54.127346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505295, 33.194271, 53.968342>,  <28.922220, 33.370937, 54.586430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505295, 33.194271, 53.968342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.771902, 33.470318, 53.855564>,  <28.931866, 33.635944, 53.787899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.771902, 33.470318, 53.855564>,  <28.505295, 33.194271, 53.968342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771902, 33.470318, 53.855564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083133, -0.444645, -0.891840,
		-0.740840, 0.570988, -0.353735,
		0.666517, 0.690118, -0.281943,
		28.971857, 33.677353, 53.770981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<24.997417, 40.234627, 54.713619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.357914, 40.404625, 54.747429>,  <25.574211, 40.506626, 54.767715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.357914, 40.404625, 54.747429>,  <24.997417, 40.234627, 54.713619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357914, 40.404625, 54.747429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305103, 0.483866, 0.820235,
		0.307700, -0.765017, 0.565747,
		0.901240, 0.424998, 0.084523,
		25.628286, 40.532124, 54.772785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393530, 40.072746, 55.339897>,  <24.997417, 40.234627, 54.713619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393530, 40.072746, 55.339897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.521391, 40.440899, 55.249809>,  <25.598108, 40.661789, 55.195755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.521391, 40.440899, 55.249809>,  <25.393530, 40.072746, 55.339897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521391, 40.440899, 55.249809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293121, 0.322086, 0.900189,
		0.901055, -0.221732, 0.372739,
		0.319654, 0.920378, -0.225223,
		25.617287, 40.717010, 55.182243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646933, 40.367687, 55.978882>,  <25.393530, 40.072746, 55.339897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646933, 40.367687, 55.978882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.646030, 40.700806, 55.757454>,  <25.645489, 40.900677, 55.624596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.646030, 40.700806, 55.757454>,  <25.646933, 40.367687, 55.978882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646030, 40.700806, 55.757454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191066, 0.543013, 0.817698,
		0.981574, 0.107615, 0.157894,
		-0.002258, 0.832800, -0.553569,
		25.645353, 40.950645, 55.591385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080339, 40.824455, 56.383389>,  <25.646933, 40.367687, 55.978882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080339, 40.824455, 56.383389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.835709, 41.043995, 56.155445>,  <25.688931, 41.175716, 56.018677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.835709, 41.043995, 56.155445>,  <26.080339, 40.824455, 56.383389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835709, 41.043995, 56.155445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312749, 0.493900, 0.811327,
		0.726747, 0.674413, -0.130407,
		-0.611577, 0.548845, -0.569862,
		25.652235, 41.208649, 55.984486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269648, 41.488483, 56.522095>,  <26.080339, 40.824455, 56.383389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269648, 41.488483, 56.522095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.904902, 41.512886, 56.359722>,  <25.686054, 41.527527, 56.262299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.904902, 41.512886, 56.359722>,  <26.269648, 41.488483, 56.522095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904902, 41.512886, 56.359722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335175, 0.460245, 0.822090,
		0.236976, 0.885694, -0.399235,
		-0.911866, 0.061002, -0.405929,
		25.631342, 41.531185, 56.237942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048193, 42.123093, 56.574787>,  <26.269648, 41.488483, 56.522095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048193, 42.123093, 56.574787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.701942, 41.926159, 56.538334>,  <25.494192, 41.807999, 56.516460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.701942, 41.926159, 56.538334>,  <26.048193, 42.123093, 56.574787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701942, 41.926159, 56.538334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354680, 0.474470, 0.805655,
		-0.353407, 0.729719, -0.585332,
		-0.865624, -0.492330, -0.091136,
		25.442255, 41.778461, 56.510994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647285, 42.670204, 56.632236>,  <26.048193, 42.123093, 56.574787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647285, 42.670204, 56.632236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.460779, 42.337837, 56.753681>,  <25.348875, 42.138416, 56.826546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.460779, 42.337837, 56.753681>,  <25.647285, 42.670204, 56.632236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460779, 42.337837, 56.753681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282525, 0.465089, 0.838970,
		-0.838318, 0.305405, -0.451609,
		-0.466264, -0.830915, 0.303608,
		25.320900, 42.088562, 56.844765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031231, 42.950954, 56.979347>,  <25.647285, 42.670204, 56.632236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031231, 42.950954, 56.979347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.009098, 42.564682, 57.080853>,  <24.995819, 42.332920, 57.141758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.009098, 42.564682, 57.080853>,  <25.031231, 42.950954, 56.979347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009098, 42.564682, 57.080853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265195, 0.259242, 0.928690,
		-0.962606, -0.015910, -0.270438,
		-0.055333, -0.965681, 0.253767,
		24.992498, 42.274979, 57.156982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456348, 42.946465, 57.304436>,  <25.031231, 42.950954, 56.979347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456348, 42.946465, 57.304436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.646404, 42.611523, 57.412575>,  <24.760437, 42.410557, 57.477459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.646404, 42.611523, 57.412575>,  <24.456348, 42.946465, 57.304436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646404, 42.611523, 57.412575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213275, 0.188491, 0.958637,
		-0.853673, -0.513144, -0.089026,
		0.475138, -0.837350, 0.270350,
		24.788946, 42.360317, 57.493679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.004883, 42.673035, 57.735050>,  <24.456348, 42.946465, 57.304436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.004883, 42.673035, 57.735050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.365843, 42.514790, 57.803364>,  <24.582418, 42.419842, 57.844353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.365843, 42.514790, 57.803364>,  <24.004883, 42.673035, 57.735050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.365843, 42.514790, 57.803364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128889, 0.130369, 0.983052,
		-0.411171, -0.909118, 0.066655,
		0.902400, -0.395611, 0.170779,
		24.636562, 42.396107, 57.854599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850851, 42.142010, 58.168449>,  <24.004883, 42.673035, 57.735050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850851, 42.142010, 58.168449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.235445, 42.243069, 58.211735>,  <24.466202, 42.303703, 58.237705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.235445, 42.243069, 58.211735>,  <23.850851, 42.142010, 58.168449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.235445, 42.243069, 58.211735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151449, 0.158447, 0.975683,
		0.229364, -0.954495, 0.190609,
		0.961486, 0.252654, 0.108216,
		24.523891, 42.318863, 58.244198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027960, 41.684925, 58.761780>,  <23.850851, 42.142010, 58.168449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027960, 41.684925, 58.761780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.290955, 41.983334, 58.719528>,  <24.448751, 42.162380, 58.694176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.290955, 41.983334, 58.719528>,  <24.027960, 41.684925, 58.761780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290955, 41.983334, 58.719528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031588, 0.167361, 0.985390,
		0.752803, -0.644545, 0.133603,
		0.657488, 0.746024, -0.105630,
		24.488201, 42.207142, 58.687840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.500141, 41.624557, 59.270302>,  <24.027960, 41.684925, 58.761780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.500141, 41.624557, 59.270302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.529947, 42.014194, 59.184883>,  <24.547831, 42.247974, 59.133633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.529947, 42.014194, 59.184883>,  <24.500141, 41.624557, 59.270302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529947, 42.014194, 59.184883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066946, 0.208769, 0.975671,
		0.994970, -0.086997, -0.049655,
		0.074514, 0.974088, -0.213543,
		24.552301, 42.306419, 59.120819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849760, 40.957035, 59.556320>,  <24.500141, 41.624557, 59.270302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849760, 40.957035, 59.556320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.051577, 41.225834, 59.773159>,  <25.172667, 41.387112, 59.903263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.051577, 41.225834, 59.773159>,  <24.849760, 40.957035, 59.556320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051577, 41.225834, 59.773159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812595, -0.157414, -0.561169,
		-0.291769, 0.723634, -0.625480,
		0.504540, 0.671993, 0.542092,
		25.202938, 41.427433, 59.935787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346977, 41.377552, 59.113506>,  <24.849760, 40.957035, 59.556320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346977, 41.377552, 59.113506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.456581, 41.307846, 59.491829>,  <25.522343, 41.266022, 59.718822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.456581, 41.307846, 59.491829>,  <25.346977, 41.377552, 59.113506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456581, 41.307846, 59.491829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713406, -0.622692, -0.321412,
		0.644958, 0.762814, -0.046299,
		0.274008, -0.174267, 0.945807,
		25.538784, 41.255566, 59.775570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056625, 41.426777, 59.146912>,  <25.346977, 41.377552, 59.113506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056625, 41.426777, 59.146912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.979759, 41.210381, 59.474426>,  <25.933640, 41.080544, 59.670933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.979759, 41.210381, 59.474426>,  <26.056625, 41.426777, 59.146912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979759, 41.210381, 59.474426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738835, -0.628890, -0.242116,
		0.645906, 0.558419, 0.520552,
		-0.192167, -0.540986, 0.818783,
		25.922110, 41.048084, 59.720062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699471, 41.307076, 59.470032>,  <26.056625, 41.426777, 59.146912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699471, 41.307076, 59.470032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.461050, 41.019493, 59.613037>,  <26.317997, 40.846943, 59.698841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.461050, 41.019493, 59.613037>,  <26.699471, 41.307076, 59.470032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461050, 41.019493, 59.613037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690171, -0.686297, -0.229479,
		0.410348, 0.109965, 0.905275,
		-0.596052, -0.718960, 0.357516,
		26.282234, 40.803806, 59.720291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964312, 40.923130, 60.004353>,  <26.699471, 41.307076, 59.470032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964312, 40.923130, 60.004353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.696838, 40.683773, 59.827816>,  <26.536354, 40.540157, 59.721893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.696838, 40.683773, 59.827816>,  <26.964312, 40.923130, 60.004353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696838, 40.683773, 59.827816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715308, -0.679734, -0.162158,
		-0.202963, -0.424131, 0.882564,
		-0.668685, -0.598393, -0.441345,
		26.496233, 40.504253, 59.695412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146799, 40.163662, 60.231812>,  <26.964312, 40.923130, 60.004353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146799, 40.163662, 60.231812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.880400, 40.119579, 59.936703>,  <26.720560, 40.093128, 59.759640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.880400, 40.119579, 59.936703>,  <27.146799, 40.163662, 60.231812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880400, 40.119579, 59.936703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476505, -0.823795, -0.307090,
		-0.573927, -0.556071, 0.601159,
		-0.665996, -0.110208, -0.737769,
		26.680601, 40.086517, 59.715370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957697, 39.448364, 60.219666>,  <27.146799, 40.163662, 60.231812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957697, 39.448364, 60.219666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.840183, 39.580296, 59.860802>,  <26.769674, 39.659454, 59.645481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.840183, 39.580296, 59.860802>,  <26.957697, 39.448364, 60.219666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840183, 39.580296, 59.860802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193422, -0.898653, -0.393714,
		-0.936097, -0.289198, 0.200215,
		-0.293785, 0.329829, -0.897164,
		26.752048, 39.679245, 59.591652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533001, 39.031422, 59.905205>,  <26.957697, 39.448364, 60.219666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533001, 39.031422, 59.905205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.619797, 39.182476, 59.545135>,  <26.671875, 39.273109, 59.329094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.619797, 39.182476, 59.545135>,  <26.533001, 39.031422, 59.905205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619797, 39.182476, 59.545135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278484, -0.907769, -0.313690,
		-0.935607, -0.182616, -0.302142,
		0.216990, 0.377632, -0.900172,
		26.684895, 39.295765, 59.275085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082718, 38.639454, 59.351562>,  <26.533001, 39.031422, 59.905205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082718, 38.639454, 59.351562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.410160, 38.808823, 59.196335>,  <26.606625, 38.910442, 59.103199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.410160, 38.808823, 59.196335>,  <26.082718, 38.639454, 59.351562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410160, 38.808823, 59.196335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276100, -0.882579, -0.380555,
		-0.503640, 0.204378, -0.839391,
		0.818606, 0.423419, -0.388073,
		26.655743, 38.935848, 59.079914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154753, 38.577679, 58.623150>,  <26.082718, 38.639454, 59.351562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154753, 38.577679, 58.623150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.536505, 38.620365, 58.734695>,  <26.765556, 38.645977, 58.801624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.536505, 38.620365, 58.734695>,  <26.154753, 38.577679, 58.623150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536505, 38.620365, 58.734695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218255, -0.886679, -0.407634,
		0.203764, 0.449902, -0.869522,
		0.954382, 0.106717, 0.278867,
		26.822819, 38.652382, 58.818356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508030, 38.309536, 58.035912>,  <26.154753, 38.577679, 58.623150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508030, 38.309536, 58.035912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.772346, 38.324173, 58.335785>,  <26.930937, 38.332954, 58.515709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.772346, 38.324173, 58.335785>,  <26.508030, 38.309536, 58.035912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772346, 38.324173, 58.335785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427493, -0.839321, -0.335842,
		0.616933, 0.542403, -0.570256,
		0.660790, 0.036589, 0.749679,
		26.970583, 38.335148, 58.560688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152229, 38.426407, 57.744244>,  <26.508030, 38.309536, 58.035912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152229, 38.426407, 57.744244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.206274, 38.248493, 58.098400>,  <27.238701, 38.141747, 58.310894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.206274, 38.248493, 58.098400>,  <27.152229, 38.426407, 57.744244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206274, 38.248493, 58.098400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465356, -0.760410, -0.453013,
		0.874751, 0.473227, 0.104243,
		0.135111, -0.444783, 0.885389,
		27.246807, 38.115059, 58.364017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774837, 38.137150, 57.651321>,  <27.152229, 38.426407, 57.744244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774837, 38.137150, 57.651321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.603020, 37.951641, 57.961266>,  <27.499929, 37.840336, 58.147232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.603020, 37.951641, 57.961266>,  <27.774837, 38.137150, 57.651321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603020, 37.951641, 57.961266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393720, -0.868383, -0.301490,
		0.812696, 0.175573, 0.555607,
		-0.429546, -0.463773, 0.774858,
		27.474155, 37.812508, 58.193722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347092, 37.767460, 58.032791>,  <27.774837, 38.137150, 57.651321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347092, 37.767460, 58.032791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.005013, 37.587162, 58.135132>,  <27.799765, 37.478981, 58.196537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.005013, 37.587162, 58.135132>,  <28.347092, 37.767460, 58.032791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005013, 37.587162, 58.135132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390222, -0.884839, -0.254534,
		0.341120, -0.117837, 0.932605,
		-0.855198, -0.450749, 0.255854,
		27.748453, 37.451939, 58.211887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512081, 37.054863, 58.391586>,  <28.347092, 37.767460, 58.032791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512081, 37.054863, 58.391586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.134996, 37.003086, 58.268600>,  <27.908745, 36.972019, 58.194809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.134996, 37.003086, 58.268600>,  <28.512081, 37.054863, 58.391586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134996, 37.003086, 58.268600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226197, -0.925456, -0.303917,
		-0.245208, -0.356055, 0.901720,
		-0.942713, -0.129443, -0.307468,
		27.852182, 36.964252, 58.176361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676870, 36.614002, 59.047771>,  <28.512081, 37.054863, 58.391586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676870, 36.614002, 59.047771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.047115, 36.606892, 59.198990>,  <29.269262, 36.602627, 59.289722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.047115, 36.606892, 59.198990>,  <28.676870, 36.614002, 59.047771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047115, 36.606892, 59.198990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336057, 0.420845, 0.842589,
		-0.174079, -0.906959, 0.383566,
		0.925614, -0.017777, 0.378050,
		29.324800, 36.601559, 59.312405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582645, 36.506531, 59.687954>,  <28.676870, 36.614002, 59.047771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582645, 36.506531, 59.687954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.954565, 36.653263, 59.675846>,  <29.177717, 36.741302, 59.668583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.954565, 36.653263, 59.675846>,  <28.582645, 36.506531, 59.687954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954565, 36.653263, 59.675846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196969, 0.565346, 0.800991,
		0.310936, -0.738798, 0.597911,
		0.929797, 0.366827, -0.030266,
		29.233503, 36.763309, 59.666767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859858, 36.370853, 60.255280>,  <28.582645, 36.506531, 59.687954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859858, 36.370853, 60.255280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.059132, 36.690575, 60.120865>,  <29.178696, 36.882408, 60.040218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.059132, 36.690575, 60.120865>,  <28.859858, 36.370853, 60.255280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059132, 36.690575, 60.120865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144753, 0.458781, 0.876680,
		0.854902, -0.388107, 0.344260,
		0.498186, 0.799308, -0.336033,
		29.208588, 36.930367, 60.020054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332161, 36.590435, 60.803570>,  <28.859858, 36.370853, 60.255280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332161, 36.590435, 60.803570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.339279, 36.928719, 60.590229>,  <29.343550, 37.131687, 60.462223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.339279, 36.928719, 60.590229>,  <29.332161, 36.590435, 60.803570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339279, 36.928719, 60.590229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081687, 0.530424, 0.843788,
		0.996499, -0.058583, -0.059644,
		0.017795, 0.845706, -0.533352,
		29.344618, 37.182430, 60.430222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792158, 36.946907, 61.149551>,  <29.332161, 36.590435, 60.803570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792158, 36.946907, 61.149551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.597658, 37.225868, 60.938957>,  <29.480957, 37.393246, 60.812599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.597658, 37.225868, 60.938957>,  <29.792158, 36.946907, 61.149551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597658, 37.225868, 60.938957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032897, 0.616695, 0.786514,
		0.873199, 0.365124, -0.322812,
		-0.486252, 0.697403, -0.526486,
		29.451782, 37.435089, 60.781010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219805, 37.588840, 61.114216>,  <29.792158, 36.946907, 61.149551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219805, 37.588840, 61.114216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.841166, 37.704262, 61.056686>,  <29.613981, 37.773514, 61.022167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.841166, 37.704262, 61.056686>,  <30.219805, 37.588840, 61.114216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841166, 37.704262, 61.056686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133502, 0.756862, 0.639795,
		0.293472, 0.586428, -0.754968,
		-0.946600, 0.288551, -0.143828,
		29.557186, 37.790829, 61.013538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247639, 38.298954, 61.003841>,  <30.219805, 37.588840, 61.114216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247639, 38.298954, 61.003841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.864218, 38.232872, 61.096691>,  <29.634165, 38.193222, 61.152401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.864218, 38.232872, 61.096691>,  <30.247639, 38.298954, 61.003841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864218, 38.232872, 61.096691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012160, 0.837697, 0.546000,
		-0.284652, 0.520548, -0.804986,
		-0.958554, -0.165209, 0.232123,
		29.576653, 38.183308, 61.166328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004408, 39.028072, 61.085587>,  <30.247639, 38.298954, 61.003841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004408, 39.028072, 61.085587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.804760, 38.741501, 61.280567>,  <29.684971, 38.569557, 61.397556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.804760, 38.741501, 61.280567>,  <30.004408, 39.028072, 61.085587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804760, 38.741501, 61.280567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296443, 0.387416, 0.872944,
		-0.814248, 0.580206, 0.019013,
		-0.499121, -0.716429, 0.487451,
		29.655024, 38.526573, 61.426804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625017, 39.616199, 60.851948>,  <30.004408, 39.028072, 61.085587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625017, 39.616199, 60.851948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.012074, 39.716602, 60.841606>,  <31.244307, 39.776844, 60.835403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.012074, 39.716602, 60.841606>,  <30.625017, 39.616199, 60.851948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012074, 39.716602, 60.841606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119533, -0.546203, -0.829080,
		-0.222223, 0.799162, -0.558531,
		0.967641, 0.251004, -0.025852,
		31.302366, 39.791904, 60.833851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794935, 39.707115, 60.168941>,  <30.625017, 39.616199, 60.851948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794935, 39.707115, 60.168941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162783, 39.689384, 60.325062>,  <31.383492, 39.678745, 60.418732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162783, 39.689384, 60.325062>,  <30.794935, 39.707115, 60.168941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162783, 39.689384, 60.325062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320841, -0.488481, -0.811448,
		0.226625, 0.871448, -0.434994,
		0.919621, -0.044331, 0.390298,
		31.438669, 39.676086, 60.442150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278061, 39.999958, 59.670101>,  <30.794935, 39.707115, 60.168941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278061, 39.999958, 59.670101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466192, 39.744450, 59.913662>,  <31.579071, 39.591145, 60.059799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466192, 39.744450, 59.913662>,  <31.278061, 39.999958, 59.670101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466192, 39.744450, 59.913662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259441, -0.559410, -0.787242,
		0.843493, 0.528238, -0.097384,
		0.470329, -0.638768, 0.608906,
		31.607290, 39.552818, 60.096333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998493, 39.899155, 59.415787>,  <31.278061, 39.999958, 59.670101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998493, 39.899155, 59.415787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.900419, 39.571968, 59.623947>,  <31.841576, 39.375656, 59.748844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.900419, 39.571968, 59.623947>,  <31.998493, 39.899155, 59.415787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900419, 39.571968, 59.623947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232032, -0.570699, -0.787696,
		0.941300, -0.072379, 0.329719,
		-0.245183, -0.817963, 0.520404,
		31.826864, 39.326580, 59.780067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561733, 39.437725, 59.265026>,  <31.998493, 39.899155, 59.415787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561733, 39.437725, 59.265026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311417, 39.168201, 59.422184>,  <32.161224, 39.006489, 59.516479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.311417, 39.168201, 59.422184>,  <32.561733, 39.437725, 59.265026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311417, 39.168201, 59.422184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286810, -0.667214, -0.687434,
		0.725343, -0.317506, 0.610793,
		-0.625794, -0.673807, 0.392895,
		32.123680, 38.966061, 59.540054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913742, 38.859722, 59.481682>,  <32.561733, 39.437725, 59.265026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913742, 38.859722, 59.481682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.538734, 38.742180, 59.407162>,  <32.313728, 38.671654, 59.362450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.538734, 38.742180, 59.407162>,  <32.913742, 38.859722, 59.481682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538734, 38.742180, 59.407162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346139, -0.842083, -0.413623,
		-0.035338, -0.452266, 0.891182,
		-0.937518, -0.293856, -0.186305,
		32.257481, 38.654022, 59.351269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.347462, 41.872307, 59.648914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720400, 41.862408, 59.504627>,  <28.944162, 41.856468, 59.418056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720400, 41.862408, 59.504627>,  <28.347462, 41.872307, 59.648914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720400, 41.862408, 59.504627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356787, -0.224612, -0.906781,
		-0.058578, 0.974134, -0.218247,
		0.932347, -0.024750, -0.360716,
		29.000105, 41.854984, 59.396412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091438, 42.515175, 59.487362>,  <28.347462, 41.872307, 59.648914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091438, 42.515175, 59.487362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713375, 42.568016, 59.367882>,  <27.486538, 42.599720, 59.296192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713375, 42.568016, 59.367882>,  <28.091438, 42.515175, 59.487362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713375, 42.568016, 59.367882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230586, -0.377804, -0.896713,
		-0.231310, -0.916413, 0.326624,
		-0.945159, 0.132103, -0.298702,
		27.429827, 42.607647, 59.278271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762730, 41.880215, 59.036583>,  <28.091438, 42.515175, 59.487362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762730, 41.880215, 59.036583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579290, 42.221210, 58.936230>,  <27.469227, 42.425808, 58.876019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579290, 42.221210, 58.936230>,  <27.762730, 41.880215, 59.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579290, 42.221210, 58.936230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079992, -0.241576, -0.967079,
		-0.885036, -0.463570, 0.042595,
		-0.458599, 0.852492, -0.250886,
		27.441711, 42.476959, 58.860966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319626, 41.733856, 58.460861>,  <27.762730, 41.880215, 59.036583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319626, 41.733856, 58.460861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370163, 42.130207, 58.442066>,  <27.400486, 42.368015, 58.430790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370163, 42.130207, 58.442066>,  <27.319626, 41.733856, 58.460861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370163, 42.130207, 58.442066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136566, -0.064291, -0.988543,
		-0.982541, 0.118480, -0.143442,
		0.126345, 0.990873, -0.046988,
		27.408066, 42.427467, 58.427971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743998, 42.082581, 57.996426>,  <27.319626, 41.733856, 58.460861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743998, 42.082581, 57.996426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059404, 42.324577, 58.040649>,  <27.248648, 42.469776, 58.067184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059404, 42.324577, 58.040649>,  <26.743998, 42.082581, 57.996426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059404, 42.324577, 58.040649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280953, -0.194430, -0.939820,
		-0.547088, 0.772127, -0.323286,
		0.788517, 0.604993, 0.110562,
		27.295959, 42.506077, 58.073818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700132, 42.587837, 57.465893>,  <26.743998, 42.082581, 57.996426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700132, 42.587837, 57.465893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087704, 42.580006, 57.564518>,  <27.320246, 42.575306, 57.623692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087704, 42.580006, 57.564518>,  <26.700132, 42.587837, 57.465893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087704, 42.580006, 57.564518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237555, -0.203942, -0.949724,
		0.068882, 0.978787, -0.192953,
		0.968929, -0.019582, 0.246564,
		27.378382, 42.574131, 57.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053448, 42.548054, 56.836758>,  <26.700132, 42.587837, 57.465893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053448, 42.548054, 56.836758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360399, 42.477795, 57.083424>,  <27.544569, 42.435638, 57.231422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360399, 42.477795, 57.083424>,  <27.053448, 42.548054, 56.836758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360399, 42.477795, 57.083424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613023, -0.080973, -0.785905,
		0.187978, 0.981117, 0.045541,
		0.767377, -0.175651, 0.616668,
		27.590612, 42.425098, 57.268425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487202, 42.954861, 56.640930>,  <27.053448, 42.548054, 56.836758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487202, 42.954861, 56.640930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714739, 42.688713, 56.834297>,  <27.851261, 42.529022, 56.950317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714739, 42.688713, 56.834297>,  <27.487202, 42.954861, 56.640930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714739, 42.688713, 56.834297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616332, -0.044319, -0.786238,
		0.544567, 0.745194, 0.384880,
		0.568842, -0.665373, 0.483422,
		27.885391, 42.489101, 56.979324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169628, 43.147694, 56.682995>,  <27.487202, 42.954861, 56.640930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169628, 43.147694, 56.682995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205124, 42.751335, 56.723473>,  <28.226421, 42.513519, 56.747761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205124, 42.751335, 56.723473>,  <28.169628, 43.147694, 56.682995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205124, 42.751335, 56.723473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501875, -0.043279, -0.863857,
		0.860376, 0.127447, 0.493468,
		0.088739, -0.990901, 0.101199,
		28.231745, 42.454063, 56.753834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797369, 43.065632, 56.595562>,  <28.169628, 43.147694, 56.682995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797369, 43.065632, 56.595562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640175, 42.706715, 56.515125>,  <28.545858, 42.491364, 56.466866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640175, 42.706715, 56.515125>,  <28.797369, 43.065632, 56.595562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640175, 42.706715, 56.515125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509141, -0.030222, -0.860152,
		0.765728, -0.440408, 0.468723,
		-0.392984, -0.897289, -0.201088,
		28.522280, 42.437527, 56.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388502, 42.747135, 56.336143>,  <28.797369, 43.065632, 56.595562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388502, 42.747135, 56.336143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091730, 42.495064, 56.244564>,  <28.913668, 42.343822, 56.189617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091730, 42.495064, 56.244564>,  <29.388502, 42.747135, 56.336143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091730, 42.495064, 56.244564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519228, -0.323990, -0.790843,
		0.424197, -0.705624, 0.567585,
		-0.741930, -0.630179, -0.228944,
		28.869152, 42.306011, 56.175880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696619, 42.045368, 56.153683>,  <29.388502, 42.747135, 56.336143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696619, 42.045368, 56.153683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343540, 42.048405, 55.965729>,  <29.131693, 42.050228, 55.852955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343540, 42.048405, 55.965729>,  <29.696619, 42.045368, 56.153683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343540, 42.048405, 55.965729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438557, -0.345980, -0.829437,
		-0.168864, -0.938211, 0.302067,
		-0.882696, 0.007588, -0.469883,
		29.078732, 42.050682, 55.824764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340593, 42.151363, 56.492531>,  <29.696619, 42.045368, 56.153683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340593, 42.151363, 56.492531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629257, 41.906284, 56.621407>,  <30.802456, 41.759235, 56.698734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629257, 41.906284, 56.621407>,  <30.340593, 42.151363, 56.492531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629257, 41.906284, 56.621407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209856, 0.249894, 0.945258,
		-0.659673, -0.749768, 0.051760,
		0.721659, -0.612699, 0.322191,
		30.845755, 41.722473, 56.718063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074169, 41.649075, 56.994453>,  <30.340593, 42.151363, 56.492531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074169, 41.649075, 56.994453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458307, 41.685062, 57.100010>,  <30.688791, 41.706657, 57.163345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458307, 41.685062, 57.100010>,  <30.074169, 41.649075, 56.994453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458307, 41.685062, 57.100010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275121, 0.152402, 0.949253,
		0.045185, -0.984215, 0.171111,
		0.960347, 0.089968, 0.263892,
		30.746412, 41.712055, 57.179176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108213, 41.487473, 57.739498>,  <30.074169, 41.649075, 56.994453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108213, 41.487473, 57.739498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483713, 41.617775, 57.694542>,  <30.709013, 41.695957, 57.667568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483713, 41.617775, 57.694542>,  <30.108213, 41.487473, 57.739498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483713, 41.617775, 57.694542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015109, 0.286928, 0.957833,
		0.344266, -0.900864, 0.264433,
		0.938750, 0.325754, -0.112391,
		30.765339, 41.715500, 57.660824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448360, 41.292515, 58.345043>,  <30.108213, 41.487473, 57.739498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448360, 41.292515, 58.345043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650251, 41.605049, 58.198200>,  <30.771385, 41.792568, 58.110092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650251, 41.605049, 58.198200>,  <30.448360, 41.292515, 58.345043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650251, 41.605049, 58.198200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120536, 0.357302, 0.926178,
		0.854823, -0.511716, 0.086161,
		0.504726, 0.781333, -0.367110,
		30.801670, 41.839451, 58.088066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914278, 41.424442, 58.839344>,  <30.448360, 41.292515, 58.345043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914278, 41.424442, 58.839344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955173, 41.768288, 58.639095>,  <30.979710, 41.974594, 58.518948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955173, 41.768288, 58.639095>,  <30.914278, 41.424442, 58.839344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955173, 41.768288, 58.639095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343182, 0.441880, 0.828835,
		0.933688, -0.256541, -0.249826,
		0.102237, 0.859610, -0.500618,
		30.985846, 42.026169, 58.488911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603594, 41.508842, 58.935883>,  <30.914278, 41.424442, 58.839344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603594, 41.508842, 58.935883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433422, 41.857437, 58.838295>,  <31.331320, 42.066593, 58.779743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433422, 41.857437, 58.838295>,  <31.603594, 41.508842, 58.935883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433422, 41.857437, 58.838295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433857, 0.432981, 0.790124,
		0.794216, 0.230294, -0.562303,
		-0.425427, 0.871489, -0.243965,
		31.305794, 42.118885, 58.765106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155159, 42.157772, 58.956814>,  <31.603594, 41.508842, 58.935883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155159, 42.157772, 58.956814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787121, 42.306667, 59.005581>,  <31.566298, 42.396004, 59.034840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787121, 42.306667, 59.005581>,  <32.155159, 42.157772, 58.956814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787121, 42.306667, 59.005581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296058, 0.457097, 0.838696,
		0.256469, 0.807774, -0.530777,
		-0.920094, 0.372240, 0.121916,
		31.511093, 42.418339, 59.042156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273014, 42.608109, 59.531071>,  <32.155159, 42.157772, 58.956814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273014, 42.608109, 59.531071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875750, 42.651978, 59.515068>,  <31.637390, 42.678299, 59.505466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875750, 42.651978, 59.515068>,  <32.273014, 42.608109, 59.531071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875750, 42.651978, 59.515068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020953, 0.504611, 0.863092,
		0.114849, 0.856352, -0.503459,
		-0.993162, 0.109675, -0.040011,
		31.577801, 42.684879, 59.503063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199520, 43.310383, 59.643703>,  <32.273014, 42.608109, 59.531071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199520, 43.310383, 59.643703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875921, 43.095604, 59.739380>,  <31.681763, 42.966736, 59.796787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875921, 43.095604, 59.739380>,  <32.199520, 43.310383, 59.643703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875921, 43.095604, 59.739380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038527, 0.454473, 0.889927,
		-0.586553, 0.710730, -0.388353,
		-0.808994, -0.536951, 0.239191,
		31.633223, 42.934517, 59.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783068, 43.771015, 59.798374>,  <32.199520, 43.310383, 59.643703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783068, 43.771015, 59.798374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681553, 43.427624, 59.976639>,  <31.620644, 43.221588, 60.083599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681553, 43.427624, 59.976639>,  <31.783068, 43.771015, 59.798374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681553, 43.427624, 59.976639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110854, 0.431895, 0.895085,
		-0.960887, 0.276564, -0.014444,
		-0.253787, -0.858475, 0.445660,
		31.605417, 43.170082, 60.110336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421581, 44.003696, 60.377377>,  <31.783068, 43.771015, 59.798374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421581, 44.003696, 60.377377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514496, 43.623020, 60.457706>,  <31.570244, 43.394615, 60.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514496, 43.623020, 60.457706>,  <31.421581, 44.003696, 60.377377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514496, 43.623020, 60.457706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102954, 0.229369, 0.967879,
		-0.967183, -0.204150, 0.151260,
		0.232286, -0.951690, 0.200823,
		31.584181, 43.337513, 60.517952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973980, 43.862465, 60.869362>,  <31.421581, 44.003696, 60.377377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973980, 43.862465, 60.869362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263226, 43.586800, 60.887924>,  <31.436773, 43.421398, 60.899063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263226, 43.586800, 60.887924>,  <30.973980, 43.862465, 60.869362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263226, 43.586800, 60.887924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186778, 0.259775, 0.947434,
		-0.664997, -0.676435, 0.316568,
		0.723114, -0.689168, 0.046406,
		31.480160, 43.380051, 60.901848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876762, 43.599602, 61.521271>,  <30.973980, 43.862465, 60.869362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876762, 43.599602, 61.521271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257938, 43.511292, 61.438171>,  <31.486645, 43.458305, 61.388313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257938, 43.511292, 61.438171>,  <30.876762, 43.599602, 61.521271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257938, 43.511292, 61.438171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280845, 0.384916, 0.879185,
		-0.114142, -0.896156, 0.428808,
		0.952942, -0.220780, -0.207746,
		31.543821, 43.445057, 61.375847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083103, 43.221798, 62.033791>,  <30.876762, 43.599602, 61.521271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083103, 43.221798, 62.033791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420885, 43.359688, 61.869812>,  <31.623554, 43.442421, 61.771423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420885, 43.359688, 61.869812>,  <31.083103, 43.221798, 62.033791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420885, 43.359688, 61.869812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322956, 0.282900, 0.903143,
		0.427309, -0.895061, 0.127567,
		0.844456, 0.344723, -0.409951,
		31.674223, 43.463104, 61.746826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322157, 42.673637, 62.403042>,  <31.083103, 43.221798, 62.033791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322157, 42.673637, 62.403042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516319, 42.468700, 62.686417>,  <31.632816, 42.345737, 62.856441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516319, 42.468700, 62.686417>,  <31.322157, 42.673637, 62.403042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516319, 42.468700, 62.686417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030878, -0.819843, -0.571755,
		0.873743, 0.255659, -0.413778,
		0.485407, -0.512343, 0.708438,
		31.661942, 42.314999, 62.898949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012630, 42.298500, 62.091095>,  <31.322157, 42.673637, 62.403042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012630, 42.298500, 62.091095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840155, 42.106312, 62.396568>,  <31.736668, 41.990997, 62.579853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840155, 42.106312, 62.396568>,  <32.012630, 42.298500, 62.091095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840155, 42.106312, 62.396568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018063, -0.841648, -0.539724,
		0.902079, -0.246519, 0.354233,
		-0.431192, -0.480475, 0.763687,
		31.710796, 41.962170, 62.625675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349342, 41.632706, 61.989548>,  <32.012630, 42.298500, 62.091095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349342, 41.632706, 61.989548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054161, 41.563015, 62.250340>,  <31.877052, 41.521202, 62.406815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054161, 41.563015, 62.250340>,  <32.349342, 41.632706, 61.989548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054161, 41.563015, 62.250340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194930, -0.869892, -0.453091,
		0.646087, -0.461449, 0.607977,
		-0.737952, -0.174223, 0.651976,
		31.832775, 41.510750, 62.445930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548866, 41.065052, 62.328140>,  <32.349342, 41.632706, 61.989548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548866, 41.065052, 62.328140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149940, 41.094204, 62.331055>,  <31.910585, 41.111694, 62.332806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149940, 41.094204, 62.331055>,  <32.548866, 41.065052, 62.328140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149940, 41.094204, 62.331055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068591, -0.894356, -0.442066,
		-0.025699, -0.441379, 0.896953,
		-0.997314, 0.072883, 0.007290,
		31.850746, 41.116070, 62.333241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364475, 40.433212, 62.509033>,  <32.548866, 41.065052, 62.328140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364475, 40.433212, 62.509033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026207, 40.589664, 62.363781>,  <31.823246, 40.683537, 62.276630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026207, 40.589664, 62.363781>,  <32.364475, 40.433212, 62.509033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026207, 40.589664, 62.363781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162119, -0.836494, -0.523445,
		-0.508491, -0.383791, 0.770806,
		-0.845668, 0.391129, -0.363130,
		31.772507, 40.707005, 62.254841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788567, 39.926422, 62.563423>,  <32.364475, 40.433212, 62.509033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788567, 39.926422, 62.563423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708162, 40.170727, 62.257076>,  <31.659920, 40.317310, 62.073269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708162, 40.170727, 62.257076>,  <31.788567, 39.926422, 62.563423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708162, 40.170727, 62.257076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248969, -0.788010, -0.563076,
		-0.947422, 0.077493, 0.310461,
		-0.201012, 0.610766, -0.765871,
		31.647860, 40.353958, 62.027313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156126, 39.644062, 62.229435>,  <31.788567, 39.926422, 62.563423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156126, 39.644062, 62.229435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352757, 39.890671, 61.983429>,  <31.470736, 40.038635, 61.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352757, 39.890671, 61.983429>,  <31.156126, 39.644062, 62.229435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352757, 39.890671, 61.983429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164570, -0.627746, -0.760823,
		-0.855143, 0.475217, -0.207124,
		0.491577, 0.616526, -0.615019,
		31.500229, 40.075630, 61.798923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336634, 39.510674, 62.446373>,  <31.156126, 39.644062, 62.229435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336634, 39.510674, 62.446373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016792, 39.312286, 62.310928>,  <29.824888, 39.193256, 62.229664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016792, 39.312286, 62.310928>,  <30.336634, 39.510674, 62.446373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016792, 39.312286, 62.310928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380810, 0.854745, -0.352695,
		0.464348, -0.153070, -0.872324,
		-0.799602, -0.495964, -0.338609,
		29.776911, 39.163498, 62.209347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184481, 39.782925, 61.789986>,  <30.336634, 39.510674, 62.446373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184481, 39.782925, 61.789986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847363, 39.611935, 61.920803>,  <29.645092, 39.509342, 61.999294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847363, 39.611935, 61.920803>,  <30.184481, 39.782925, 61.789986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847363, 39.611935, 61.920803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486813, 0.864601, -0.124417,
		-0.229578, -0.264068, -0.936783,
		-0.842797, -0.427474, 0.327045,
		29.594522, 39.483692, 62.018917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843613, 40.104038, 61.292591>,  <30.184481, 39.782925, 61.789986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843613, 40.104038, 61.292591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575045, 39.960857, 61.552151>,  <29.413904, 39.874947, 61.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575045, 39.960857, 61.552151>,  <29.843613, 40.104038, 61.292591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575045, 39.960857, 61.552151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691026, 0.618738, -0.373692,
		-0.267731, -0.699308, -0.662789,
		-0.671418, -0.357955, 0.648896,
		29.373619, 39.853470, 61.746819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302999, 39.978149, 60.950603>,  <29.843613, 40.104038, 61.292591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302999, 39.978149, 60.950603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109539, 39.982246, 61.300682>,  <28.993462, 39.984703, 61.510731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109539, 39.982246, 61.300682>,  <29.302999, 39.978149, 60.950603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109539, 39.982246, 61.300682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634391, 0.684807, -0.358590,
		-0.603015, -0.728652, -0.324713,
		-0.483653, 0.010240, 0.875200,
		28.964443, 39.985317, 61.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578993, 39.887547, 60.787113>,  <29.302999, 39.978149, 60.950603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578993, 39.887547, 60.787113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607042, 40.077114, 61.138222>,  <28.623873, 40.190853, 61.348888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607042, 40.077114, 61.138222>,  <28.578993, 39.887547, 60.787113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607042, 40.077114, 61.138222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713062, 0.639162, -0.288125,
		-0.697586, -0.605701, 0.382753,
		0.070124, 0.473918, 0.877772,
		28.628080, 40.219288, 61.401554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928295, 39.833279, 61.072018>,  <28.578993, 39.887547, 60.787113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928295, 39.833279, 61.072018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111984, 40.126560, 61.272629>,  <28.222197, 40.302528, 61.392994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111984, 40.126560, 61.272629>,  <27.928295, 39.833279, 61.072018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111984, 40.126560, 61.272629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871970, 0.479883, 0.096854,
		-0.169659, -0.481792, 0.859705,
		0.459221, 0.733204, 0.501525,
		28.249750, 40.346523, 61.423088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432865, 39.997074, 61.534798>,  <27.928295, 39.833279, 61.072018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432865, 39.997074, 61.534798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695951, 40.298256, 61.543442>,  <27.853804, 40.478966, 61.548630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695951, 40.298256, 61.543442>,  <27.432865, 39.997074, 61.534798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695951, 40.298256, 61.543442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732249, 0.632369, 0.252825,
		0.176702, -0.182109, 0.967271,
		0.657714, 0.752958, 0.021609,
		27.893265, 40.524143, 61.549923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433458, 40.243412, 62.208633>,  <27.432865, 39.997074, 61.534798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433458, 40.243412, 62.208633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536463, 40.548309, 61.971088>,  <27.598265, 40.731247, 61.828560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536463, 40.548309, 61.971088>,  <27.433458, 40.243412, 62.208633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536463, 40.548309, 61.971088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814432, 0.501948, 0.291116,
		0.519989, 0.408697, 0.750052,
		0.257509, 0.762244, -0.593863,
		27.613716, 40.776981, 61.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428934, 40.898796, 62.642822>,  <27.433458, 40.243412, 62.208633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428934, 40.898796, 62.642822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359978, 41.012150, 62.265469>,  <27.318604, 41.080162, 62.039055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359978, 41.012150, 62.265469>,  <27.428934, 40.898796, 62.642822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359978, 41.012150, 62.265469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728988, 0.607395, 0.315671,
		0.662463, 0.742135, 0.101875,
		-0.172393, 0.283386, -0.943384,
		27.308260, 41.097164, 61.982452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.151211, 33.354351, 47.838013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472126, 33.583557, 47.904922>,  <36.664677, 33.721081, 47.945068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472126, 33.583557, 47.904922>,  <36.151211, 33.354351, 47.838013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472126, 33.583557, 47.904922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570686, 0.654107, 0.496449,
		0.175053, -0.493761, 0.851796,
		0.802293, 0.573013, 0.167279,
		36.712814, 33.755463, 47.955105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339375, 33.286396, 48.497543>,  <36.151211, 33.354351, 47.838013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339375, 33.286396, 48.497543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545315, 33.623608, 48.435276>,  <36.668877, 33.825935, 48.397915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545315, 33.623608, 48.435276>,  <36.339375, 33.286396, 48.497543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545315, 33.623608, 48.435276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682866, 0.513060, 0.520062,
		0.518292, -0.161457, 0.839825,
		0.514848, 0.843031, -0.155661,
		36.699768, 33.876518, 48.388577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340858, 33.737320, 49.181705>,  <36.339375, 33.286396, 48.497543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340858, 33.737320, 49.181705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397285, 33.980389, 48.869080>,  <36.431141, 34.126228, 48.681503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397285, 33.980389, 48.869080>,  <36.340858, 33.737320, 49.181705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397285, 33.980389, 48.869080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759821, 0.572540, 0.308008,
		0.634642, 0.550397, 0.542487,
		0.141069, 0.607668, -0.781562,
		36.439606, 34.162689, 48.634613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313007, 34.499096, 49.472527>,  <36.340858, 33.737320, 49.181705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313007, 34.499096, 49.472527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221401, 34.476654, 49.083805>,  <36.166439, 34.463188, 48.850571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221401, 34.476654, 49.083805>,  <36.313007, 34.499096, 49.472527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221401, 34.476654, 49.083805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728542, 0.671988, 0.132889,
		0.645585, 0.738434, -0.194770,
		-0.229012, -0.056107, -0.971805,
		36.152699, 34.459824, 48.792263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259735, 35.247482, 49.236809>,  <36.313007, 34.499096, 49.472527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259735, 35.247482, 49.236809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052074, 35.022877, 48.979069>,  <35.927479, 34.888115, 48.824425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052074, 35.022877, 48.979069>,  <36.259735, 35.247482, 49.236809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052074, 35.022877, 48.979069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786271, 0.609318, 0.102516,
		0.335049, 0.559854, -0.757829,
		-0.519153, -0.561511, -0.644348,
		35.896328, 34.854424, 48.785763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844284, 35.720490, 48.992168>,  <36.259735, 35.247482, 49.236809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844284, 35.720490, 48.992168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640152, 35.394260, 48.883060>,  <35.517673, 35.198524, 48.817596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640152, 35.394260, 48.883060>,  <35.844284, 35.720490, 48.992168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640152, 35.394260, 48.883060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858062, 0.461723, 0.224817,
		-0.057409, 0.348787, -0.935442,
		-0.510328, -0.815574, -0.272773,
		35.487053, 35.149590, 48.801228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212540, 35.970200, 48.604610>,  <35.844284, 35.720490, 48.992168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212540, 35.970200, 48.604610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143250, 35.590298, 48.708889>,  <35.101677, 35.362358, 48.771454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143250, 35.590298, 48.708889>,  <35.212540, 35.970200, 48.604610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143250, 35.590298, 48.708889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949675, 0.231215, 0.211320,
		-0.260979, -0.210969, -0.942010,
		-0.173225, -0.949753, 0.260694,
		35.091282, 35.305370, 48.787098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582184, 35.831890, 48.400043>,  <35.212540, 35.970200, 48.604610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582184, 35.831890, 48.400043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628174, 35.496876, 48.613705>,  <34.655769, 35.295868, 48.741901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628174, 35.496876, 48.613705>,  <34.582184, 35.831890, 48.400043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628174, 35.496876, 48.613705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952908, 0.058910, 0.297485,
		-0.280620, -0.543201, -0.791319,
		0.114978, -0.837533, 0.534152,
		34.662666, 35.245617, 48.773949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928062, 35.426563, 48.317760>,  <34.582184, 35.831890, 48.400043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928062, 35.426563, 48.317760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.103771, 35.298565, 48.653534>,  <34.209198, 35.221767, 48.854996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.103771, 35.298565, 48.653534>,  <33.928062, 35.426563, 48.317760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103771, 35.298565, 48.653534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877596, 0.046857, 0.477105,
		-0.192005, -0.946259, -0.260245,
		0.439271, -0.319997, 0.839431,
		34.235554, 35.202564, 48.905365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723118, 34.822983, 48.433678>,  <33.928062, 35.426563, 48.317760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723118, 34.822983, 48.433678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.820263, 34.957214, 48.797745>,  <33.878551, 35.037754, 49.016186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.820263, 34.957214, 48.797745>,  <33.723118, 34.822983, 48.433678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820263, 34.957214, 48.797745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947131, -0.120765, 0.297253,
		0.209669, -0.934238, 0.288511,
		0.242863, 0.335582, 0.910166,
		33.893124, 35.057888, 49.070793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245464, 34.367210, 48.904945>,  <33.723118, 34.822983, 48.433678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245464, 34.367210, 48.904945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380047, 34.668484, 49.131042>,  <33.460796, 34.849247, 49.266701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380047, 34.668484, 49.131042>,  <33.245464, 34.367210, 48.904945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380047, 34.668484, 49.131042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837405, -0.035261, 0.545444,
		0.430753, -0.656859, 0.618859,
		0.336458, 0.753188, 0.565246,
		33.480984, 34.894440, 49.300617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971527, 34.251118, 49.539200>,  <33.245464, 34.367210, 48.904945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971527, 34.251118, 49.539200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.052650, 34.641891, 49.512493>,  <33.101326, 34.876358, 49.496468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.052650, 34.641891, 49.512493>,  <32.971527, 34.251118, 49.539200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052650, 34.641891, 49.512493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880953, 0.211806, 0.423154,
		0.427537, -0.027003, 0.903595,
		0.202813, 0.976938, -0.066767,
		33.113495, 34.934975, 49.492462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917603, 34.552834, 50.187401>,  <32.971527, 34.251118, 49.539200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917603, 34.552834, 50.187401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830967, 34.845898, 49.929317>,  <32.778988, 35.021736, 49.774467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830967, 34.845898, 49.929317>,  <32.917603, 34.552834, 50.187401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830967, 34.845898, 49.929317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847487, 0.186968, 0.496798,
		0.484618, 0.654408, 0.580427,
		-0.216587, 0.732662, -0.645210,
		32.765991, 35.065697, 49.735756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730541, 35.129646, 50.593990>,  <32.917603, 34.552834, 50.187401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730541, 35.129646, 50.593990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.588268, 35.221127, 50.231514>,  <32.502903, 35.276016, 50.014027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.588268, 35.221127, 50.231514>,  <32.730541, 35.129646, 50.593990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588268, 35.221127, 50.231514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904325, 0.160596, 0.395480,
		0.235978, 0.960159, 0.149698,
		-0.355683, 0.228700, -0.906193,
		32.481564, 35.289738, 49.959656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461590, 35.770306, 50.715359>,  <32.730541, 35.129646, 50.593990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461590, 35.770306, 50.715359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298203, 35.623028, 50.381271>,  <32.200169, 35.534660, 50.180820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298203, 35.623028, 50.381271>,  <32.461590, 35.770306, 50.715359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298203, 35.623028, 50.381271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897033, -0.007263, 0.441904,
		-0.168774, 0.929719, -0.327318,
		-0.408469, -0.368197, -0.835215,
		32.175663, 35.512569, 50.130707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995852, 36.179901, 50.571201>,  <32.461590, 35.770306, 50.715359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995852, 36.179901, 50.571201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.881706, 35.843166, 50.387951>,  <31.813219, 35.641125, 50.278000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.881706, 35.843166, 50.387951>,  <31.995852, 36.179901, 50.571201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881706, 35.843166, 50.387951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938090, 0.147401, 0.313465,
		-0.196357, 0.519216, -0.831780,
		-0.285361, -0.841836, -0.458128,
		31.796099, 35.590614, 50.250511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426027, 36.404919, 50.309937>,  <31.995852, 36.179901, 50.571201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426027, 36.404919, 50.309937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384518, 36.008736, 50.273659>,  <31.359612, 35.771027, 50.251892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384518, 36.008736, 50.273659>,  <31.426027, 36.404919, 50.309937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384518, 36.008736, 50.273659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968070, 0.079667, 0.237683,
		-0.228190, 0.112461, -0.967100,
		-0.103776, -0.990457, -0.090691,
		31.353384, 35.711597, 50.246452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780907, 36.342052, 50.153378>,  <31.426027, 36.404919, 50.309937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780907, 36.342052, 50.153378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.829731, 35.957829, 50.253319>,  <30.859026, 35.727295, 50.313286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.829731, 35.957829, 50.253319>,  <30.780907, 36.342052, 50.153378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829731, 35.957829, 50.253319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937531, -0.028955, 0.346695,
		-0.325787, -0.276566, -0.904088,
		0.122062, -0.960559, 0.249856,
		30.866350, 35.669662, 50.328278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257498, 35.988354, 49.841816>,  <30.780907, 36.342052, 50.153378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257498, 35.988354, 49.841816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.367802, 35.761063, 50.151932>,  <30.433983, 35.624687, 50.338001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.367802, 35.761063, 50.151932>,  <30.257498, 35.988354, 49.841816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367802, 35.761063, 50.151932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923268, 0.067848, 0.378118,
		-0.267458, -0.820071, -0.505914,
		0.275758, -0.568225, 0.775292,
		30.450529, 35.590595, 50.384518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824450, 35.432793, 49.898170>,  <30.257498, 35.988354, 49.841816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824450, 35.432793, 49.898170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.970976, 35.453259, 50.269802>,  <30.058891, 35.465538, 50.492783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.970976, 35.453259, 50.269802>,  <29.824450, 35.432793, 49.898170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970976, 35.453259, 50.269802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923850, -0.099085, 0.369708,
		0.110973, -0.993763, 0.010970,
		0.366315, 0.051163, 0.929083,
		30.080870, 35.468609, 50.548527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438374, 34.943802, 50.218723>,  <29.824450, 35.432793, 49.898170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438374, 34.943802, 50.218723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.593527, 35.165623, 50.513214>,  <29.686619, 35.298714, 50.689907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.593527, 35.165623, 50.513214>,  <29.438374, 34.943802, 50.218723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593527, 35.165623, 50.513214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834905, -0.127007, 0.535539,
		0.390488, -0.822402, 0.413732,
		0.387882, 0.554549, 0.736222,
		29.709892, 35.331985, 50.734081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117912, 34.683548, 50.830894>,  <29.438374, 34.943802, 50.218723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117912, 34.683548, 50.830894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271938, 35.017879, 50.987415>,  <29.364353, 35.218479, 51.081329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271938, 35.017879, 50.987415>,  <29.117912, 34.683548, 50.830894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271938, 35.017879, 50.987415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754451, 0.040892, 0.655082,
		0.531535, -0.547466, 0.646337,
		0.385065, 0.835828, 0.391300,
		29.387459, 35.268627, 51.104805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186846, 34.546085, 51.550617>,  <29.117912, 34.683548, 50.830894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186846, 34.546085, 51.550617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.138191, 34.935604, 51.473751>,  <29.108999, 35.169315, 51.427631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.138191, 34.935604, 51.473751>,  <29.186846, 34.546085, 51.550617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138191, 34.935604, 51.473751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796767, 0.019662, 0.603966,
		0.591917, 0.226578, 0.773496,
		-0.121637, 0.973795, -0.192168,
		29.101700, 35.227741, 51.416100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103441, 34.926655, 52.221703>,  <29.186846, 34.546085, 51.550617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103441, 34.926655, 52.221703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.952539, 35.165340, 51.938404>,  <28.861998, 35.308552, 51.768425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.952539, 35.165340, 51.938404>,  <29.103441, 34.926655, 52.221703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952539, 35.165340, 51.938404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852884, 0.074186, 0.516803,
		0.360926, 0.799016, 0.480943,
		-0.377255, 0.596716, -0.708243,
		28.839363, 35.344357, 51.725929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601683, 35.294441, 52.596775>,  <29.103441, 34.926655, 52.221703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601683, 35.294441, 52.596775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.489759, 35.416309, 52.232601>,  <28.422606, 35.489429, 52.014099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.489759, 35.416309, 52.232601>,  <28.601683, 35.294441, 52.596775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489759, 35.416309, 52.232601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937449, 0.117876, 0.327559,
		0.207115, 0.945137, 0.252625,
		-0.279810, 0.304666, -0.910431,
		28.405817, 35.507710, 51.959473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072216, 35.864468, 52.687485>,  <28.601683, 35.294441, 52.596775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072216, 35.864468, 52.687485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.033497, 35.740379, 52.309196>,  <28.010265, 35.665928, 52.082222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.033497, 35.740379, 52.309196>,  <28.072216, 35.864468, 52.687485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033497, 35.740379, 52.309196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985420, 0.163447, 0.047246,
		0.139919, 0.936508, -0.321520,
		-0.096798, -0.310222, -0.945723,
		28.004457, 35.647312, 52.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500351, 36.355480, 52.398434>,  <28.072216, 35.864468, 52.687485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500351, 36.355480, 52.398434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509995, 36.010666, 52.195923>,  <27.515781, 35.803780, 52.074417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509995, 36.010666, 52.195923>,  <27.500351, 36.355480, 52.398434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509995, 36.010666, 52.195923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997416, -0.055028, 0.046194,
		-0.067680, 0.503859, -0.861130,
		0.024111, -0.862031, -0.506281,
		27.517227, 35.752056, 52.044037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860640, 36.407372, 51.922001>,  <27.500351, 36.355480, 52.398434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860640, 36.407372, 51.922001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.974625, 36.024300, 51.938190>,  <27.043015, 35.794456, 51.947903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.974625, 36.024300, 51.938190>,  <26.860640, 36.407372, 51.922001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974625, 36.024300, 51.938190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944972, -0.287756, -0.155640,
		0.160701, 0.006104, -0.986984,
		0.284961, -0.957684, 0.040475,
		27.060112, 35.736996, 51.950333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549118, 36.016529, 51.342602>,  <26.860640, 36.407372, 51.922001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549118, 36.016529, 51.342602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.643064, 35.725983, 51.600975>,  <26.699432, 35.551655, 51.756001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.643064, 35.725983, 51.600975>,  <26.549118, 36.016529, 51.342602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643064, 35.725983, 51.600975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904125, -0.407260, -0.129219,
		0.356924, -0.553659, -0.752374,
		0.234869, -0.726362, 0.645938,
		26.713526, 35.508076, 51.794758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126358, 35.461315, 51.154301>,  <26.549118, 36.016529, 51.342602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126358, 35.461315, 51.154301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.219904, 35.349346, 51.526741>,  <26.276031, 35.282166, 51.750206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.219904, 35.349346, 51.526741>,  <26.126358, 35.461315, 51.154301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219904, 35.349346, 51.526741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947938, -0.278551, 0.154349,
		0.216153, -0.918722, -0.330496,
		0.233864, -0.279927, 0.931101,
		26.290064, 35.265369, 51.806072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999746, 34.721352, 51.232452>,  <26.126358, 35.461315, 51.154301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999746, 34.721352, 51.232452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.000528, 34.865685, 51.605503>,  <26.000998, 34.952282, 51.829334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.000528, 34.865685, 51.605503>,  <25.999746, 34.721352, 51.232452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000528, 34.865685, 51.605503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926557, -0.350156, 0.137416,
		0.376149, -0.864404, 0.333644,
		0.001955, 0.360829, 0.932630,
		26.001116, 34.973934, 51.885292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688046, 34.230221, 51.543949>,  <25.999746, 34.721352, 51.232452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688046, 34.230221, 51.543949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.639584, 34.549313, 51.780235>,  <25.610506, 34.740768, 51.922005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.639584, 34.549313, 51.780235>,  <25.688046, 34.230221, 51.543949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639584, 34.549313, 51.780235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952242, -0.261436, 0.157757,
		0.280282, -0.543389, 0.791309,
		-0.121153, 0.797734, 0.590713,
		25.603237, 34.788631, 51.957451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374775, 33.922989, 52.024818>,  <25.688046, 34.230221, 51.543949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374775, 33.922989, 52.024818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.326792, 34.315952, 52.082077>,  <25.298002, 34.551731, 52.116432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.326792, 34.315952, 52.082077>,  <25.374775, 33.922989, 52.024818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326792, 34.315952, 52.082077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906047, -0.167272, 0.388714,
		0.405819, -0.083068, 0.910171,
		-0.119957, 0.982405, 0.143146,
		25.290804, 34.610672, 52.125019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082682, 33.990978, 52.712589>,  <25.374775, 33.922989, 52.024818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082682, 33.990978, 52.712589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.997267, 34.333519, 52.524521>,  <24.946018, 34.539043, 52.411678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.997267, 34.333519, 52.524521>,  <25.082682, 33.990978, 52.712589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997267, 34.333519, 52.524521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938474, -0.046099, 0.342260,
		0.271421, 0.514327, 0.813510,
		-0.213536, 0.856354, -0.470170,
		24.933207, 34.590424, 52.383469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.777666, 34.471836, 53.200760>,  <25.082682, 33.990978, 52.712589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.777666, 34.471836, 53.200760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.630346, 34.557907, 52.838974>,  <24.541954, 34.609550, 52.621902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.630346, 34.557907, 52.838974>,  <24.777666, 34.471836, 53.200760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.630346, 34.557907, 52.838974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927360, -0.015945, 0.373830,
		0.066017, 0.976445, 0.205416,
		-0.368300, 0.215174, -0.904464,
		24.519855, 34.622459, 52.567635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.358315, 30.803123, 52.369633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099358, 30.992052, 52.130367>,  <33.943985, 31.105410, 51.986809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099358, 30.992052, 52.130367>,  <34.358315, 30.803123, 52.369633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099358, 30.992052, 52.130367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088822, 0.826233, 0.556283,
		0.756965, 0.307002, -0.576848,
		-0.647390, 0.472323, -0.598161,
		33.905140, 31.133749, 51.950920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686470, 31.432123, 52.114819>,  <34.358315, 30.803123, 52.369633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686470, 31.432123, 52.114819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288055, 31.467613, 52.112522>,  <34.049007, 31.488907, 52.111145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288055, 31.467613, 52.112522>,  <34.686470, 31.432123, 52.114819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288055, 31.467613, 52.112522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073604, 0.859087, 0.506509,
		0.049876, 0.504080, -0.862216,
		-0.996039, 0.088726, -0.005746,
		33.989243, 31.494230, 52.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604523, 32.133648, 52.059158>,  <34.686470, 31.432123, 52.114819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604523, 32.133648, 52.059158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235607, 32.032028, 52.175667>,  <34.014256, 31.971058, 52.245571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235607, 32.032028, 52.175667>,  <34.604523, 32.133648, 52.059158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235607, 32.032028, 52.175667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033941, 0.803944, 0.593735,
		-0.384999, 0.537712, -0.750095,
		-0.922293, -0.254047, 0.291267,
		33.958920, 31.955814, 52.263046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193436, 32.719090, 52.005386>,  <34.604523, 32.133648, 52.059158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193436, 32.719090, 52.005386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967758, 32.498070, 52.250786>,  <33.832352, 32.365459, 52.398026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967758, 32.498070, 52.250786>,  <34.193436, 32.719090, 52.005386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967758, 32.498070, 52.250786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188925, 0.809738, 0.555546,
		-0.803738, 0.197529, -0.561238,
		-0.564192, -0.552545, 0.613499,
		33.798500, 32.332306, 52.434837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575787, 33.110439, 52.138481>,  <34.193436, 32.719090, 52.005386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575787, 33.110439, 52.138481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579304, 32.850227, 52.442253>,  <33.581413, 32.694099, 52.624516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579304, 32.850227, 52.442253>,  <33.575787, 33.110439, 52.138481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579304, 32.850227, 52.442253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413932, 0.688966, 0.594967,
		-0.910265, -0.319581, -0.263222,
		0.008789, -0.650534, 0.759427,
		33.581940, 32.655067, 52.670082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902328, 33.193233, 52.512890>,  <33.575787, 33.110439, 52.138481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902328, 33.193233, 52.512890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141560, 33.005344, 52.772633>,  <33.285099, 32.892612, 52.928478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141560, 33.005344, 52.772633>,  <32.902328, 33.193233, 52.512890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141560, 33.005344, 52.772633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406349, 0.520642, 0.750875,
		-0.690786, -0.712946, 0.120512,
		0.598076, -0.469724, 0.649356,
		33.320984, 32.864426, 52.967438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504799, 32.783550, 53.013630>,  <32.902328, 33.193233, 52.512890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504799, 32.783550, 53.013630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839153, 32.905727, 53.196056>,  <33.039768, 32.979034, 53.305511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839153, 32.905727, 53.196056>,  <32.504799, 32.783550, 53.013630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839153, 32.905727, 53.196056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548676, 0.488594, 0.678403,
		-0.015617, -0.817301, 0.575999,
		0.835890, 0.305443, 0.456063,
		33.089920, 32.997360, 53.332874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241108, 32.764160, 53.663456>,  <32.504799, 32.783550, 53.013630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241108, 32.764160, 53.663456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598927, 32.940765, 53.691288>,  <32.813618, 33.046730, 53.707989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598927, 32.940765, 53.691288>,  <32.241108, 32.764160, 53.663456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598927, 32.940765, 53.691288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189659, 0.233984, 0.953562,
		0.404734, -0.866206, 0.293048,
		0.894550, 0.441518, 0.069582,
		32.867290, 33.073219, 53.712162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466801, 32.572449, 54.228931>,  <32.241108, 32.764160, 53.663456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466801, 32.572449, 54.228931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653324, 32.911987, 54.129318>,  <32.765240, 33.115711, 54.069550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653324, 32.911987, 54.129318>,  <32.466801, 32.572449, 54.228931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653324, 32.911987, 54.129318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262935, 0.401787, 0.877173,
		0.844642, -0.343554, 0.410548,
		0.466309, 0.848845, -0.249034,
		32.793217, 33.166641, 54.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875145, 32.806038, 54.832939>,  <32.466801, 32.572449, 54.228931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875145, 32.806038, 54.832939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841557, 33.129623, 54.600204>,  <32.821404, 33.323772, 54.460564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841557, 33.129623, 54.600204>,  <32.875145, 32.806038, 54.832939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841557, 33.129623, 54.600204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276140, 0.542135, 0.793622,
		0.957442, 0.227312, 0.177861,
		-0.083976, 0.808962, -0.581833,
		32.816364, 33.372311, 54.425655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147511, 33.362022, 55.236290>,  <32.875145, 32.806038, 54.832939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147511, 33.362022, 55.236290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934406, 33.554867, 54.958084>,  <32.806545, 33.670574, 54.791161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934406, 33.554867, 54.958084>,  <33.147511, 33.362022, 55.236290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934406, 33.554867, 54.958084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278539, 0.676173, 0.682060,
		0.799116, 0.557100, -0.225949,
		-0.532756, 0.482110, -0.695515,
		32.774578, 33.699501, 54.749432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451153, 33.948566, 55.231312>,  <33.147511, 33.362022, 55.236290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451153, 33.948566, 55.231312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086540, 34.013977, 55.080383>,  <32.867775, 34.053223, 54.989826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086540, 34.013977, 55.080383>,  <33.451153, 33.948566, 55.231312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086540, 34.013977, 55.080383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259664, 0.482623, 0.836450,
		0.318888, 0.860426, -0.397463,
		-0.911529, 0.163527, -0.377325,
		32.813080, 34.063034, 54.967186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058693, 34.522949, 55.135479>,  <33.451153, 33.948566, 55.231312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058693, 34.522949, 55.135479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.337208, 34.746407, 55.315750>,  <34.504314, 34.880482, 55.423912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.337208, 34.746407, 55.315750>,  <34.058693, 34.522949, 55.135479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337208, 34.746407, 55.315750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653338, -0.233271, -0.720232,
		-0.297219, 0.795932, -0.527403,
		0.696283, 0.558639, 0.450680,
		34.546093, 34.913998, 55.450954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209648, 35.041000, 54.595402>,  <34.058693, 34.522949, 55.135479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209648, 35.041000, 54.595402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507362, 34.986530, 54.856934>,  <34.685989, 34.953850, 55.013851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507362, 34.986530, 54.856934>,  <34.209648, 35.041000, 54.595402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507362, 34.986530, 54.856934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659331, -0.006142, -0.751828,
		0.106397, 0.990666, 0.085213,
		0.744287, -0.136176, 0.653830,
		34.730648, 34.945679, 55.053082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678093, 35.349022, 54.268597>,  <34.209648, 35.041000, 54.595402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678093, 35.349022, 54.268597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874371, 35.150185, 54.554848>,  <34.992138, 35.030884, 54.726597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874371, 35.150185, 54.554848>,  <34.678093, 35.349022, 54.268597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874371, 35.150185, 54.554848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813301, -0.033422, -0.580883,
		0.312669, 0.867054, 0.387885,
		0.490693, -0.497091, 0.715626,
		35.021580, 35.001057, 54.769535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363949, 35.637905, 54.287338>,  <34.678093, 35.349022, 54.268597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363949, 35.637905, 54.287338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422932, 35.283348, 54.462868>,  <35.458321, 35.070614, 54.568184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.422932, 35.283348, 54.462868>,  <35.363949, 35.637905, 54.287338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422932, 35.283348, 54.462868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771655, -0.174440, -0.611653,
		0.618712, 0.428813, 0.658266,
		0.147457, -0.886392, 0.438824,
		35.467167, 35.017429, 54.594517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047424, 35.625103, 54.451851>,  <35.363949, 35.637905, 54.287338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047424, 35.625103, 54.451851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985844, 35.230179, 54.436272>,  <35.948895, 34.993225, 54.426922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985844, 35.230179, 54.436272>,  <36.047424, 35.625103, 54.451851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985844, 35.230179, 54.436272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761827, -0.093500, -0.640997,
		0.629221, -0.128355, 0.766554,
		-0.153948, -0.987311, -0.038952,
		35.939659, 34.933987, 54.424587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599945, 35.347485, 54.534214>,  <36.047424, 35.625103, 54.451851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599945, 35.347485, 54.534214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410145, 35.066620, 54.321869>,  <36.296265, 34.898102, 54.194462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410145, 35.066620, 54.321869>,  <36.599945, 35.347485, 54.534214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410145, 35.066620, 54.321869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807049, -0.106241, -0.580849,
		0.351453, -0.704043, 0.617094,
		-0.474503, -0.702166, -0.530858,
		36.267796, 34.855968, 54.162613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167938, 34.778435, 54.346439>,  <36.599945, 35.347485, 54.534214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167938, 34.778435, 54.346439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870060, 34.725887, 54.084702>,  <36.691334, 34.694359, 53.927658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870060, 34.725887, 54.084702>,  <37.167938, 34.778435, 54.346439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870060, 34.725887, 54.084702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666776, -0.189012, -0.720892,
		-0.028979, -0.973148, 0.228348,
		-0.744695, -0.131366, -0.654349,
		36.646652, 34.686478, 53.888397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332279, 34.207672, 54.027115>,  <37.167938, 34.778435, 54.346439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332279, 34.207672, 54.027115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094185, 34.394875, 53.765835>,  <36.951328, 34.507195, 53.609066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094185, 34.394875, 53.765835>,  <37.332279, 34.207672, 54.027115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094185, 34.394875, 53.765835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711242, -0.071439, -0.699308,
		-0.373942, -0.880835, -0.290341,
		-0.595233, 0.468003, -0.653200,
		36.915615, 34.535275, 53.569874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552143, 33.903400, 53.429668>,  <37.332279, 34.207672, 54.027115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552143, 33.903400, 53.429668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.315617, 34.197052, 53.296162>,  <37.173702, 34.373241, 53.216057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.315617, 34.197052, 53.296162>,  <37.552143, 33.903400, 53.429668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315617, 34.197052, 53.296162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509012, 0.018744, -0.860555,
		-0.625503, -0.678751, -0.384764,
		-0.591315, 0.734129, -0.333768,
		37.138222, 34.417290, 53.196030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120991, 33.715698, 52.812862>,  <37.552143, 33.903400, 53.429668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120991, 33.715698, 52.812862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177860, 34.111141, 52.793110>,  <37.211983, 34.348408, 52.781258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177860, 34.111141, 52.793110>,  <37.120991, 33.715698, 52.812862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177860, 34.111141, 52.793110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486385, -0.113221, -0.866378,
		-0.862100, 0.099160, -0.496942,
		0.142174, 0.988609, -0.049378,
		37.220512, 34.407722, 52.778297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967094, 33.876995, 52.081944>,  <37.120991, 33.715698, 52.812862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967094, 33.876995, 52.081944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189533, 34.171112, 52.236912>,  <37.322998, 34.347584, 52.329891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189533, 34.171112, 52.236912>,  <36.967094, 33.876995, 52.081944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189533, 34.171112, 52.236912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553054, 0.020572, -0.832891,
		-0.620392, 0.677433, -0.395219,
		0.556098, 0.735297, 0.387419,
		37.356361, 34.391701, 52.353138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096191, 34.306759, 51.511993>,  <36.967094, 33.876995, 52.081944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096191, 34.306759, 51.511993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376694, 34.401974, 51.780792>,  <37.544994, 34.459103, 51.942070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376694, 34.401974, 51.780792>,  <37.096191, 34.306759, 51.511993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376694, 34.401974, 51.780792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659314, 0.142019, -0.738333,
		-0.271185, 0.960817, -0.057347,
		0.701259, 0.238035, 0.671994,
		37.587070, 34.473385, 51.982391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479507, 34.915661, 51.327843>,  <37.096191, 34.306759, 51.511993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479507, 34.915661, 51.327843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735920, 34.700001, 51.546345>,  <37.889767, 34.570606, 51.677448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735920, 34.700001, 51.546345>,  <37.479507, 34.915661, 51.327843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735920, 34.700001, 51.546345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724484, 0.190091, -0.662562,
		0.253381, 0.820477, 0.512459,
		0.641031, -0.539150, 0.546258,
		37.928230, 34.538258, 51.710220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039093, 35.361923, 51.304058>,  <37.479507, 34.915661, 51.327843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039093, 35.361923, 51.304058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.177349, 34.999367, 51.401203>,  <38.260303, 34.781834, 51.459488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.177349, 34.999367, 51.401203>,  <38.039093, 35.361923, 51.304058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177349, 34.999367, 51.401203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755389, 0.115219, -0.645067,
		0.556703, 0.406418, 0.724504,
		0.345643, -0.906394, 0.242861,
		38.281044, 34.727448, 51.474060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539642, 35.932102, 51.342861>,  <38.039093, 35.361923, 51.304058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539642, 35.932102, 51.342861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.423306, 36.274513, 51.171921>,  <37.353504, 36.479961, 51.069359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.423306, 36.274513, 51.171921>,  <37.539642, 35.932102, 51.342861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423306, 36.274513, 51.171921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360040, -0.315903, -0.877825,
		-0.886444, -0.409171, -0.216326,
		-0.290842, 0.856028, -0.427348,
		37.336052, 36.531322, 51.043716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288940, 35.724861, 50.748970>,  <37.539642, 35.932102, 51.342861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288940, 35.724861, 50.748970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393757, 36.108112, 50.702797>,  <37.456646, 36.338062, 50.675091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393757, 36.108112, 50.702797>,  <37.288940, 35.724861, 50.748970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393757, 36.108112, 50.702797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433345, -0.223700, -0.873024,
		-0.862290, 0.178748, -0.473819,
		0.262045, 0.958127, -0.115435,
		37.472370, 36.395550, 50.668167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921822, 35.972713, 50.081589>,  <37.288940, 35.724861, 50.748970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921822, 35.972713, 50.081589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267746, 36.146721, 50.181885>,  <37.475300, 36.251125, 50.242062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267746, 36.146721, 50.181885>,  <36.921822, 35.972713, 50.081589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267746, 36.146721, 50.181885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437950, -0.409282, -0.800430,
		-0.245579, 0.802027, -0.544466,
		0.864807, 0.435017, 0.250736,
		37.527187, 36.277225, 50.257107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330551, 36.346539, 49.993233>,  <36.921822, 35.972713, 50.081589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330551, 36.346539, 49.993233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047794, 36.495003, 49.752384>,  <35.878139, 36.584084, 49.607876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047794, 36.495003, 49.752384>,  <36.330551, 36.346539, 49.993233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047794, 36.495003, 49.752384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270531, 0.644666, 0.714995,
		0.653545, 0.668314, -0.355296,
		-0.706889, 0.371163, -0.602118,
		35.835728, 36.606350, 49.571747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390697, 37.209171, 49.972553>,  <36.330551, 36.346539, 49.993233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390697, 37.209171, 49.972553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033527, 37.040234, 49.910187>,  <35.819225, 36.938869, 49.872768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033527, 37.040234, 49.910187>,  <36.390697, 37.209171, 49.972553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033527, 37.040234, 49.910187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377840, 0.514720, 0.769610,
		-0.244791, 0.746114, -0.619186,
		-0.892924, -0.422347, -0.155913,
		35.765652, 36.913528, 49.863415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928196, 37.833588, 49.876545>,  <36.390697, 37.209171, 49.972553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928196, 37.833588, 49.876545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691498, 37.532059, 49.990803>,  <35.549477, 37.351143, 50.059357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691498, 37.532059, 49.990803>,  <35.928196, 37.833588, 49.876545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691498, 37.532059, 49.990803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552784, 0.637360, 0.536845,
		-0.586742, 0.159778, -0.793855,
		-0.591747, -0.753819, 0.285643,
		35.513973, 37.305912, 50.076496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291645, 38.094433, 50.141582>,  <35.928196, 37.833588, 49.876545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291645, 38.094433, 50.141582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241203, 37.728844, 50.295856>,  <35.210938, 37.509491, 50.388420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241203, 37.728844, 50.295856>,  <35.291645, 38.094433, 50.141582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241203, 37.728844, 50.295856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564977, 0.385745, 0.729385,
		-0.815413, -0.125923, -0.565018,
		-0.126107, -0.913972, 0.385685,
		35.203373, 37.454651, 50.411560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579624, 37.964626, 50.316925>,  <35.291645, 38.094433, 50.141582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579624, 37.964626, 50.316925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779446, 37.703152, 50.544304>,  <34.899338, 37.546265, 50.680733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779446, 37.703152, 50.544304>,  <34.579624, 37.964626, 50.316925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779446, 37.703152, 50.544304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491493, 0.326488, 0.807366,
		-0.713359, -0.682712, -0.158186,
		0.499553, -0.653690, 0.568451,
		34.929310, 37.507046, 50.714840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072735, 37.638802, 50.806866>,  <34.579624, 37.964626, 50.316925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072735, 37.638802, 50.806866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433422, 37.562832, 50.962215>,  <34.649834, 37.517250, 51.055424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433422, 37.562832, 50.962215>,  <34.072735, 37.638802, 50.806866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433422, 37.562832, 50.962215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340883, 0.240179, 0.908907,
		-0.265900, -0.951968, 0.151833,
		0.901718, -0.189922, 0.388374,
		34.703938, 37.505856, 51.078728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931152, 37.440758, 51.397167>,  <34.072735, 37.638802, 50.806866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931152, 37.440758, 51.397167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322384, 37.462193, 51.477650>,  <34.557125, 37.475056, 51.525940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322384, 37.462193, 51.477650>,  <33.931152, 37.440758, 51.397167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322384, 37.462193, 51.477650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203948, 0.441247, 0.873903,
		-0.041947, -0.895784, 0.442506,
		0.978083, 0.053590, 0.201202,
		34.615810, 37.478271, 51.538010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130230, 36.869137, 51.830929>,  <33.931152, 37.440758, 51.397167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130230, 36.869137, 51.830929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397392, 37.162312, 51.882637>,  <34.557690, 37.338215, 51.913662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397392, 37.162312, 51.882637>,  <34.130230, 36.869137, 51.830929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397392, 37.162312, 51.882637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435798, 0.244343, 0.866243,
		0.603312, -0.634904, 0.482609,
		0.667903, 0.732935, 0.129275,
		34.597763, 37.382191, 51.921421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437782, 36.837551, 52.569359>,  <34.130230, 36.869137, 51.830929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437782, 36.837551, 52.569359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450935, 37.208580, 52.420483>,  <34.458828, 37.431198, 52.331158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450935, 37.208580, 52.420483>,  <34.437782, 36.837551, 52.569359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450935, 37.208580, 52.420483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499586, 0.337785, 0.797693,
		0.865640, 0.159710, 0.474511,
		0.032883, 0.927574, -0.372189,
		34.460800, 37.486851, 52.308826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512550, 37.338955, 53.183132>,  <34.437782, 36.837551, 52.569359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512550, 37.338955, 53.183132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393875, 37.589958, 52.895187>,  <34.322670, 37.740562, 52.722420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393875, 37.589958, 52.895187>,  <34.512550, 37.338955, 53.183132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393875, 37.589958, 52.895187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547818, 0.505609, 0.666525,
		0.782221, 0.592107, 0.193752,
		-0.296691, 0.627510, -0.719865,
		34.304867, 37.778210, 52.679230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574909, 38.007771, 53.491650>,  <34.512550, 37.338955, 53.183132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574909, 38.007771, 53.491650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328934, 38.116673, 53.195614>,  <34.181347, 38.182014, 53.017994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328934, 38.116673, 53.195614>,  <34.574909, 38.007771, 53.491650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328934, 38.116673, 53.195614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387659, 0.712908, 0.584366,
		0.686710, 0.646250, -0.332852,
		-0.614939, 0.272257, -0.740085,
		34.144451, 38.198349, 52.973587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625881, 38.733814, 53.439919>,  <34.574909, 38.007771, 53.491650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625881, 38.733814, 53.439919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277523, 38.623055, 53.277508>,  <34.068508, 38.556599, 53.180061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277523, 38.623055, 53.277508>,  <34.625881, 38.733814, 53.439919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277523, 38.623055, 53.277508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467339, 0.722267, 0.509828,
		0.152090, 0.633762, -0.758429,
		-0.870898, -0.276904, -0.406031,
		34.016254, 38.539982, 53.155697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299095, 39.359070, 53.219440>,  <34.625881, 38.733814, 53.439919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299095, 39.359070, 53.219440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986588, 39.109421, 53.223213>,  <33.799084, 38.959629, 53.225475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.986588, 39.109421, 53.223213>,  <34.299095, 39.359070, 53.219440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986588, 39.109421, 53.223213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602374, 0.757828, 0.250684,
		-0.163607, 0.190169, -0.968023,
		-0.781267, -0.624126, 0.009433,
		33.752209, 38.922184, 53.226044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881935, 39.785831, 52.829998>,  <34.299095, 39.359070, 53.219440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881935, 39.785831, 52.829998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682892, 39.520737, 53.053841>,  <33.563465, 39.361679, 53.188145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682892, 39.520737, 53.053841>,  <33.881935, 39.785831, 52.829998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682892, 39.520737, 53.053841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512452, 0.745145, 0.426792,
		-0.699841, -0.074395, -0.710415,
		-0.497611, -0.662740, 0.559607,
		33.533607, 39.321915, 53.221722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193928, 40.082462, 52.830246>,  <33.881935, 39.785831, 52.829998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193928, 40.082462, 52.830246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210522, 39.807808, 53.120571>,  <33.220478, 39.643017, 53.294765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210522, 39.807808, 53.120571>,  <33.193928, 40.082462, 52.830246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210522, 39.807808, 53.120571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687541, 0.507478, 0.519377,
		-0.724959, -0.520573, -0.451040,
		0.041481, -0.686637, 0.725817,
		33.222965, 39.601818, 53.338318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490871, 40.097534, 53.097538>,  <33.193928, 40.082462, 52.830246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490871, 40.097534, 53.097538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683228, 39.915497, 53.397305>,  <32.798641, 39.806274, 53.577164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683228, 39.915497, 53.397305>,  <32.490871, 40.097534, 53.097538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683228, 39.915497, 53.397305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630573, 0.414368, 0.656259,
		-0.609198, -0.788153, -0.087706,
		0.480890, -0.455096, 0.749421,
		32.827496, 39.778969, 53.622131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964302, 39.728317, 53.460232>,  <32.490871, 40.097534, 53.097538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964302, 39.728317, 53.460232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276928, 39.791588, 53.701607>,  <32.464504, 39.829548, 53.846432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276928, 39.791588, 53.701607>,  <31.964302, 39.728317, 53.460232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276928, 39.791588, 53.701607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598430, 0.463295, 0.653635,
		-0.176184, -0.871974, 0.456750,
		0.781563, 0.158172, 0.603441,
		32.511398, 39.839039, 53.882637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785847, 39.611156, 54.254570>,  <31.964302, 39.728317, 53.460232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785847, 39.611156, 54.254570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107067, 39.849339, 54.263916>,  <32.299801, 39.992249, 54.269524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107067, 39.849339, 54.263916>,  <31.785847, 39.611156, 54.254570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107067, 39.849339, 54.263916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342082, 0.428522, 0.836271,
		0.487950, -0.679559, 0.547819,
		0.803048, 0.595457, 0.023367,
		32.347980, 40.027973, 54.270927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928955, 39.545277, 54.953629>,  <31.785847, 39.611156, 54.254570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928955, 39.545277, 54.953629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104973, 39.869480, 54.799000>,  <32.210583, 40.064003, 54.706223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104973, 39.869480, 54.799000>,  <31.928955, 39.545277, 54.953629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104973, 39.869480, 54.799000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240827, 0.521241, 0.818725,
		0.865080, -0.267178, 0.424561,
		0.440044, 0.810508, -0.386571,
		32.236984, 40.112633, 54.683029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123379, 39.827179, 55.512337>,  <31.928955, 39.545277, 54.953629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123379, 39.827179, 55.512337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151226, 40.128666, 55.250935>,  <32.167934, 40.309559, 55.094093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151226, 40.128666, 55.250935>,  <32.123379, 39.827179, 55.512337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151226, 40.128666, 55.250935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345304, 0.632804, 0.693054,
		0.935905, 0.177406, 0.304318,
		0.069622, 0.753715, -0.653504,
		32.172112, 40.354782, 55.054882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537476, 40.309155, 55.860695>,  <32.123379, 39.827179, 55.512337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537476, 40.309155, 55.860695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305729, 40.482826, 55.584774>,  <32.166683, 40.587029, 55.419224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305729, 40.482826, 55.584774>,  <32.537476, 40.309155, 55.860695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305729, 40.482826, 55.584774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481386, 0.500660, 0.719449,
		0.657727, 0.748883, -0.081055,
		-0.579364, 0.434182, -0.689799,
		32.131920, 40.613079, 55.377834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487385, 40.960072, 56.154751>,  <32.537476, 40.309155, 55.860695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487385, 40.960072, 56.154751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205498, 40.952145, 55.871067>,  <32.036366, 40.947388, 55.700855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205498, 40.952145, 55.871067>,  <32.487385, 40.960072, 56.154751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205498, 40.952145, 55.871067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598661, 0.553067, 0.579416,
		0.380760, 0.832901, -0.401618,
		-0.704718, -0.019815, -0.709211,
		31.994081, 40.946201, 55.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305466, 41.713375, 55.930073>,  <32.487385, 40.960072, 56.154751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305466, 41.713375, 55.930073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005550, 41.450386, 55.900276>,  <31.825602, 41.292591, 55.882397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005550, 41.450386, 55.900276>,  <32.305466, 41.713375, 55.930073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005550, 41.450386, 55.900276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512715, 0.506119, 0.693518,
		-0.418267, 0.558184, -0.716578,
		-0.749784, -0.657475, -0.074496,
		31.780615, 41.253143, 55.877926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749138, 42.148537, 55.919518>,  <32.305466, 41.713375, 55.930073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749138, 42.148537, 55.919518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.572098, 41.798656, 55.998520>,  <31.465874, 41.588730, 56.045921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.572098, 41.798656, 55.998520>,  <31.749138, 42.148537, 55.919518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572098, 41.798656, 55.998520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476480, 0.415993, 0.774543,
		-0.759652, 0.248705, -0.600894,
		-0.442601, -0.874697, 0.197507,
		31.439318, 41.536247, 56.057774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012802, 42.281326, 56.098480>,  <31.749138, 42.148537, 55.919518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012802, 42.281326, 56.098480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115549, 41.923450, 56.244656>,  <31.177197, 41.708725, 56.332359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115549, 41.923450, 56.244656>,  <31.012802, 42.281326, 56.098480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115549, 41.923450, 56.244656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340863, 0.269958, 0.900519,
		-0.904341, -0.355878, -0.235624,
		0.256866, -0.894692, 0.365440,
		31.192610, 41.655045, 56.354286>
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
