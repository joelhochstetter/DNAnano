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
	<0.124003, 5.768723, 0.451094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.148727, 5.548752, 0.258141>,  <-0.312365, 5.416769, 0.142368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.148727, 5.548752, 0.258141>,  <0.124003, 5.768723, 0.451094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.148727, 5.548752, 0.258141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265399, -0.800465, 0.537419,
		-0.681673, 0.238401, 0.691727,
		-0.681825, -0.549928, -0.482384,
		-0.353275, 5.383774, 0.113425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.176930, 5.390417, 1.004437>,  <0.124003, 5.768723, 0.451094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.176930, 5.390417, 1.004437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.198673, 5.236694, 0.635796>,  <-0.211719, 5.144461, 0.414611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.198673, 5.236694, 0.635796>,  <-0.176930, 5.390417, 1.004437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.198673, 5.236694, 0.635796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274477, -0.893165, 0.356257,
		-0.960056, -0.233593, 0.154034,
		-0.054359, -0.384306, -0.921604,
		-0.214981, 5.121403, 0.359314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.694511, 4.841594, 0.925180>,  <-0.176930, 5.390417, 1.004437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.694511, 4.841594, 0.925180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.372410, 4.807053, 0.690536>,  <-0.179149, 4.786328, 0.549750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.372410, 4.807053, 0.690536>,  <-0.694511, 4.841594, 0.925180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.372410, 4.807053, 0.690536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210568, -0.883201, 0.419066,
		-0.554282, -0.460976, -0.693017,
		0.805253, -0.086354, -0.586609,
		-0.130834, 4.781147, 0.514554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.539916, 4.218637, 0.318709>,  <-0.694511, 4.841594, 0.925180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.539916, 4.218637, 0.318709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.203304, 4.352570, 0.488281>,  <-0.001337, 4.432929, 0.590024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.203304, 4.352570, 0.488281>,  <-0.539916, 4.218637, 0.318709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.203304, 4.352570, 0.488281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118165, -0.879836, 0.460355,
		0.527130, -0.337309, -0.779972,
		0.841529, 0.334832, 0.423930,
		0.049154, 4.453019, 0.615460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.050944, 3.671400, 0.391729>,  <-0.539916, 4.218637, 0.318709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.050944, 3.671400, 0.391729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.003586, 3.909790, 0.708267>,  <-0.036303, 4.052824, 0.898190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.003586, 3.909790, 0.708267>,  <0.050944, 3.671400, 0.391729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.003586, 3.909790, 0.708267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136093, -0.779964, 0.610848,
		0.981272, 0.190970, 0.025219,
		-0.136324, 0.595976, 0.791346,
		-0.044483, 4.088583, 0.945671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.671441, 3.674131, 0.742646>,  <0.050944, 3.671400, 0.391729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.671441, 3.674131, 0.742646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.385624, 3.774078, 1.004025>,  <0.214134, 3.834047, 1.160852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.385624, 3.774078, 1.004025>,  <0.671441, 3.674131, 0.742646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.385624, 3.774078, 1.004025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179379, -0.837379, 0.516352,
		0.676204, 0.486171, 0.553522,
		-0.714543, 0.249869, 0.653447,
		0.171261, 3.849039, 1.200059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.950402, 3.637440, 1.334467>,  <0.671441, 3.674131, 0.742646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.950402, 3.637440, 1.334467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.561958, 3.600952, 1.422672>,  <0.328892, 3.579059, 1.475595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.561958, 3.600952, 1.422672>,  <0.950402, 3.637440, 1.334467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.561958, 3.600952, 1.422672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202619, -0.803340, 0.559992,
		0.126064, 0.588493, 0.798613,
		-0.971109, -0.091220, 0.220512,
		0.270626, 3.573586, 1.488826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.926485, 3.552809, 2.084417>,  <0.950402, 3.637440, 1.334467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.926485, 3.552809, 2.084417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.592148, 3.391876, 1.935020>,  <0.391545, 3.295317, 1.845383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.592148, 3.391876, 1.935020>,  <0.926485, 3.552809, 2.084417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.592148, 3.391876, 1.935020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124137, -0.801249, 0.585311,
		-0.534748, 0.442865, 0.719664,
		-0.835844, -0.402331, -0.373490,
		0.341395, 3.271177, 1.822973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.329164, 1.489386, 2.379685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.974578, 1.503098, 2.195076>,  <4.761826, 1.511325, 2.084310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.974578, 1.503098, 2.195076>,  <5.329164, 1.489386, 2.379685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.974578, 1.503098, 2.195076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114620, 0.982446, -0.147183,
		0.448376, -0.183372, -0.874833,
		-0.886465, 0.034280, -0.461523,
		4.708638, 1.513381, 2.056619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.503952, 1.802277, 1.724791>,  <5.329164, 1.489386, 2.379685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.503952, 1.802277, 1.724791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.121336, 1.845337, 1.833191>,  <4.891766, 1.871173, 1.898231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.121336, 1.845337, 1.833191>,  <5.503952, 1.802277, 1.724791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.121336, 1.845337, 1.833191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023621, 0.954912, -0.295947,
		-0.290641, -0.276684, -0.915955,
		-0.956541, 0.107650, 0.271001,
		4.834374, 1.877632, 1.914491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.075150, 1.938433, 1.249737>,  <5.503952, 1.802277, 1.724791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.075150, 1.938433, 1.249737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.945634, 2.140915, 1.569466>,  <4.867924, 2.262404, 1.761303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.945634, 2.140915, 1.569466>,  <5.075150, 1.938433, 1.249737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.945634, 2.140915, 1.569466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032562, 0.838372, -0.544125,
		-0.945568, -0.202211, -0.254975,
		-0.323792, 0.506204, 0.799322,
		4.848496, 2.292776, 1.809262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.625760, 2.496916, 1.004300>,  <5.075150, 1.938433, 1.249737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.625760, 2.496916, 1.004300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738756, 2.596405, 1.374886>,  <4.806553, 2.656099, 1.597237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738756, 2.596405, 1.374886>,  <4.625760, 2.496916, 1.004300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.738756, 2.596405, 1.374886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052412, 0.968360, -0.243990,
		-0.957838, 0.020367, 0.286587,
		0.282489, 0.248724, 0.926464,
		4.823503, 2.671022, 1.652825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.135077, 2.942022, 1.380283>,  <4.625760, 2.496916, 1.004300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.135077, 2.942022, 1.380283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.503143, 3.037994, 1.504044>,  <4.723983, 3.095578, 1.578300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.503143, 3.037994, 1.504044>,  <4.135077, 2.942022, 1.380283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.503143, 3.037994, 1.504044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122522, 0.927002, -0.354478,
		-0.371865, 0.288270, 0.882393,
		0.920166, 0.239931, 0.309401,
		4.779193, 3.109974, 1.596864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038114, 3.531333, 1.737901>,  <4.135077, 2.942022, 1.380283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038114, 3.531333, 1.737901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.435908, 3.559341, 1.706680>,  <4.674585, 3.576146, 1.687948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.435908, 3.559341, 1.706680>,  <4.038114, 3.531333, 1.737901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.435908, 3.559341, 1.706680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090010, 0.951896, -0.292902,
		0.053788, 0.298313, 0.952951,
		0.994487, 0.070021, -0.078052,
		4.734254, 3.580348, 1.683265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.252167, 4.147059, 2.096074>,  <4.038114, 3.531333, 1.737901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.252167, 4.147059, 2.096074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.540370, 4.079987, 1.826927>,  <4.713293, 4.039743, 1.665439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.540370, 4.079987, 1.826927>,  <4.252167, 4.147059, 2.096074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.540370, 4.079987, 1.826927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038690, 0.959091, -0.280441,
		0.692365, 0.228094, 0.684547,
		0.720509, -0.167682, -0.672866,
		4.756523, 4.029682, 1.625067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.704615, 4.808861, 1.982742>,  <4.252167, 4.147059, 2.096074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.704615, 4.808861, 1.982742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.756503, 4.586090, 1.654594>,  <4.787635, 4.452428, 1.457706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.756503, 4.586090, 1.654594>,  <4.704615, 4.808861, 1.982742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.756503, 4.586090, 1.654594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124933, 0.811587, -0.570718,
		0.983649, 0.176524, 0.035700,
		0.129719, -0.556926, -0.820370,
		4.795418, 4.419012, 1.408484>
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
