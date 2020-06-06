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
	<24.184124, 34.814461, 34.526890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247049, 34.890305, 34.914558>,  <24.284803, 34.935810, 35.147160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247049, 34.890305, 34.914558>,  <24.184124, 34.814461, 34.526890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247049, 34.890305, 34.914558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839321, 0.491465, -0.232385,
		-0.520379, 0.850006, -0.081832,
		0.157311, 0.189612, 0.969175,
		24.294243, 34.947189, 35.205311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.439363, 35.446388, 34.559601>,  <24.184124, 34.814461, 34.526890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.439363, 35.446388, 34.559601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566179, 35.287491, 34.904087>,  <24.642269, 35.192154, 35.110779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566179, 35.287491, 34.904087>,  <24.439363, 35.446388, 34.559601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566179, 35.287491, 34.904087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928892, 0.313345, -0.197419,
		-0.191433, 0.862562, 0.468337,
		0.317038, -0.397242, 0.861212,
		24.661291, 35.168320, 35.162449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080153, 35.681038, 34.623413>,  <24.439363, 35.446388, 34.559601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080153, 35.681038, 34.623413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197498, 35.370102, 34.846004>,  <25.267906, 35.183540, 34.979561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197498, 35.370102, 34.846004>,  <25.080153, 35.681038, 34.623413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197498, 35.370102, 34.846004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940995, 0.132071, -0.311586,
		0.168714, 0.615055, 0.770222,
		0.293367, -0.777344, 0.556482,
		25.285509, 35.136898, 35.012951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685015, 35.833836, 35.125801>,  <25.080153, 35.681038, 34.623413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685015, 35.833836, 35.125801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726297, 35.467049, 34.971649>,  <25.751066, 35.246975, 34.879158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726297, 35.467049, 34.971649>,  <25.685015, 35.833836, 35.125801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726297, 35.467049, 34.971649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918076, 0.236905, -0.317824,
		0.382733, -0.321008, 0.866297,
		0.103206, -0.916968, -0.385381,
		25.757259, 35.191959, 34.856033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220175, 35.500229, 35.481613>,  <25.685015, 35.833836, 35.125801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220175, 35.500229, 35.481613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198181, 35.383511, 35.099655>,  <26.184986, 35.313480, 34.870480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198181, 35.383511, 35.099655>,  <26.220175, 35.500229, 35.481613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198181, 35.383511, 35.099655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952564, 0.271369, -0.137773,
		0.299332, -0.917177, 0.263035,
		-0.054983, -0.291797, -0.954899,
		26.181686, 35.295971, 34.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727650, 34.949135, 35.395306>,  <26.220175, 35.500229, 35.481613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727650, 34.949135, 35.395306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683371, 35.198162, 35.085426>,  <26.656803, 35.347580, 34.899498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683371, 35.198162, 35.085426>,  <26.727650, 34.949135, 35.395306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683371, 35.198162, 35.085426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966684, 0.248465, 0.061541,
		0.230798, -0.742072, -0.629334,
		-0.110700, 0.622571, -0.774694,
		26.650160, 35.384933, 34.853020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211641, 34.856155, 34.813210>,  <26.727650, 34.949135, 35.395306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211641, 34.856155, 34.813210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089891, 35.236542, 34.791222>,  <27.016842, 35.464775, 34.778030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089891, 35.236542, 34.791222>,  <27.211641, 34.856155, 34.813210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089891, 35.236542, 34.791222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939673, 0.290302, -0.180936,
		-0.156106, -0.106725, -0.981957,
		-0.304375, 0.950965, -0.054968,
		26.998579, 35.521832, 34.774731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842588, 34.844215, 35.256817>,  <27.211641, 34.856155, 34.813210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842588, 34.844215, 35.256817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213497, 34.901821, 35.395046>,  <28.436043, 34.936386, 35.477985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213497, 34.901821, 35.395046>,  <27.842588, 34.844215, 35.256817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213497, 34.901821, 35.395046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374174, -0.325494, -0.868359,
		-0.012575, 0.934512, -0.355710,
		0.927273, 0.144017, 0.345577,
		28.491678, 34.945026, 35.498718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130283, 35.251713, 34.734631>,  <27.842588, 34.844215, 35.256817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130283, 35.251713, 34.734631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420973, 35.074486, 34.944607>,  <28.595387, 34.968151, 35.070591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420973, 35.074486, 34.944607>,  <28.130283, 35.251713, 34.734631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420973, 35.074486, 34.944607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487936, -0.204945, -0.848478,
		0.483518, 0.872747, 0.067250,
		0.726725, -0.443068, 0.524940,
		28.638990, 34.941566, 35.102089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715599, 35.536366, 34.552456>,  <28.130283, 35.251713, 34.734631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715599, 35.536366, 34.552456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846937, 35.184418, 34.689873>,  <28.925741, 34.973251, 34.772324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846937, 35.184418, 34.689873>,  <28.715599, 35.536366, 34.552456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846937, 35.184418, 34.689873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411784, -0.193988, -0.890395,
		0.850072, 0.433824, 0.298620,
		0.328346, -0.879866, 0.343546,
		28.945440, 34.920456, 34.792938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396877, 35.484371, 34.326458>,  <28.715599, 35.536366, 34.552456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396877, 35.484371, 34.326458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298943, 35.108936, 34.423706>,  <29.240181, 34.883675, 34.482056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298943, 35.108936, 34.423706>,  <29.396877, 35.484371, 34.326458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298943, 35.108936, 34.423706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515184, -0.338362, -0.787462,
		0.821365, -0.067548, 0.566389,
		-0.244836, -0.938588, 0.243119,
		29.225492, 34.827358, 34.496643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001757, 35.098408, 34.208977>,  <29.396877, 35.484371, 34.326458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001757, 35.098408, 34.208977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712467, 34.822353, 34.219280>,  <29.538893, 34.656723, 34.225460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712467, 34.822353, 34.219280>,  <30.001757, 35.098408, 34.208977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712467, 34.822353, 34.219280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380306, -0.429117, -0.819283,
		0.576468, -0.582729, 0.572810,
		-0.723223, -0.690134, 0.025757,
		29.495501, 34.615314, 34.227009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322624, 34.348396, 34.089642>,  <30.001757, 35.098408, 34.208977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322624, 34.348396, 34.089642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931374, 34.285713, 34.034924>,  <29.696623, 34.248104, 34.002094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931374, 34.285713, 34.034924>,  <30.322624, 34.348396, 34.089642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931374, 34.285713, 34.034924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195584, -0.468964, -0.861290,
		0.070820, -0.869204, 0.489355,
		-0.978127, -0.156706, -0.136790,
		29.637936, 34.238701, 33.993885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371635, 33.690201, 33.965015>,  <30.322624, 34.348396, 34.089642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371635, 33.690201, 33.965015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013453, 33.813210, 33.836273>,  <29.798542, 33.887012, 33.759029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013453, 33.813210, 33.836273>,  <30.371635, 33.690201, 33.965015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013453, 33.813210, 33.836273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193060, -0.383199, -0.903264,
		-0.401111, -0.870969, 0.283767,
		-0.895454, 0.307525, -0.321855,
		29.744816, 33.905464, 33.739719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089647, 33.116608, 33.590549>,  <30.371635, 33.690201, 33.965015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089647, 33.116608, 33.590549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914875, 33.452862, 33.462532>,  <29.810011, 33.654613, 33.385723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914875, 33.452862, 33.462532>,  <30.089647, 33.116608, 33.590549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914875, 33.452862, 33.462532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181557, -0.266060, -0.946704,
		-0.880982, -0.471750, -0.036373,
		-0.436931, 0.840633, -0.320044,
		29.783796, 33.705051, 33.366520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736946, 32.889172, 33.002678>,  <30.089647, 33.116608, 33.590549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736946, 32.889172, 33.002678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786657, 33.282059, 32.946388>,  <29.816484, 33.517792, 32.912613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786657, 33.282059, 32.946388>,  <29.736946, 32.889172, 33.002678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786657, 33.282059, 32.946388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220155, -0.165584, -0.961309,
		-0.967516, 0.088486, -0.236818,
		0.124276, 0.982218, -0.140724,
		29.823940, 33.576725, 32.904171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544065, 32.968723, 32.330986>,  <29.736946, 32.889172, 33.002678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544065, 32.968723, 32.330986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752424, 33.299042, 32.417446>,  <29.877439, 33.497234, 32.469322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752424, 33.299042, 32.417446>,  <29.544065, 32.968723, 32.330986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752424, 33.299042, 32.417446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414165, -0.023087, -0.909909,
		-0.746413, 0.563490, -0.354043,
		0.520898, 0.825800, 0.216146,
		29.908693, 33.546783, 32.482288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346016, 33.404629, 31.797293>,  <29.544065, 32.968723, 32.330986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346016, 33.404629, 31.797293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703886, 33.513149, 31.939253>,  <29.918608, 33.578262, 32.024429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703886, 33.513149, 31.939253>,  <29.346016, 33.404629, 31.797293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703886, 33.513149, 31.939253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352803, 0.058215, -0.933885,
		-0.274026, 0.960732, -0.043633,
		0.894673, 0.271302, 0.354901,
		29.972288, 33.594540, 32.045723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529234, 33.948414, 31.413696>,  <29.346016, 33.404629, 31.797293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529234, 33.948414, 31.413696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877975, 33.835770, 31.573977>,  <30.087221, 33.768181, 31.670145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877975, 33.835770, 31.573977>,  <29.529234, 33.948414, 31.413696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877975, 33.835770, 31.573977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405312, -0.044407, -0.913099,
		0.274935, 0.958499, 0.075426,
		0.871856, -0.281614, 0.400701,
		30.139532, 33.751286, 31.694187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049540, 34.244930, 31.016445>,  <29.529234, 33.948414, 31.413696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049540, 34.244930, 31.016445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294756, 33.988853, 31.201628>,  <30.441885, 33.835205, 31.312737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294756, 33.988853, 31.201628>,  <30.049540, 34.244930, 31.016445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294756, 33.988853, 31.201628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530496, -0.100672, -0.841688,
		0.585453, 0.761586, 0.277906,
		0.613041, -0.640196, 0.462957,
		30.478668, 33.796795, 31.340515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846869, 34.473812, 30.888948>,  <30.049540, 34.244930, 31.016445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846869, 34.473812, 30.888948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840862, 34.081566, 30.967087>,  <30.837259, 33.846218, 31.013969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840862, 34.081566, 30.967087>,  <30.846869, 34.473812, 30.888948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840862, 34.081566, 30.967087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627975, -0.161278, -0.761339,
		0.778089, 0.111241, 0.618226,
		-0.015014, -0.980620, 0.195345,
		30.836359, 33.787380, 31.025690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580956, 34.251671, 30.972561>,  <30.846869, 34.473812, 30.888948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580956, 34.251671, 30.972561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356707, 33.927700, 30.903614>,  <31.222157, 33.733315, 30.862246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356707, 33.927700, 30.903614>,  <31.580956, 34.251671, 30.972561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356707, 33.927700, 30.903614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640609, -0.292310, -0.710053,
		0.524710, -0.508493, 0.682726,
		-0.560625, -0.809932, -0.172368,
		31.188519, 33.684719, 30.851904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900803, 33.695225, 31.224081>,  <31.580956, 34.251671, 30.972561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900803, 33.695225, 31.224081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661663, 33.625526, 30.911104>,  <31.518179, 33.583710, 30.723318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661663, 33.625526, 30.911104>,  <31.900803, 33.695225, 31.224081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661663, 33.625526, 30.911104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749215, -0.468552, -0.468120,
		-0.285048, -0.866082, 0.410669,
		-0.597850, -0.174242, -0.782441,
		31.482307, 33.573254, 30.676373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266228, 33.216637, 30.914143>,  <31.900803, 33.695225, 31.224081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266228, 33.216637, 30.914143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989809, 33.283859, 30.632942>,  <31.823957, 33.324192, 30.464222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989809, 33.283859, 30.632942>,  <32.266228, 33.216637, 30.914143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989809, 33.283859, 30.632942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649513, -0.282372, -0.705974,
		-0.317155, -0.944469, 0.085974,
		-0.691047, 0.168062, -0.703000,
		31.782495, 33.334278, 30.422043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159615, 32.491776, 30.467073>,  <32.266228, 33.216637, 30.914143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159615, 32.491776, 30.467073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112484, 32.854118, 30.304329>,  <32.084206, 33.071526, 30.206682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112484, 32.854118, 30.304329>,  <32.159615, 32.491776, 30.467073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112484, 32.854118, 30.304329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647511, -0.240554, -0.723093,
		-0.752892, -0.348646, -0.558211,
		-0.117824, 0.905859, -0.406863,
		32.077137, 33.125877, 30.182270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136883, 32.220909, 29.758364>,  <32.159615, 32.491776, 30.467073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136883, 32.220909, 29.758364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217339, 32.610886, 29.796375>,  <32.265614, 32.844872, 29.819181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217339, 32.610886, 29.796375>,  <32.136883, 32.220909, 29.758364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217339, 32.610886, 29.796375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506071, -0.020362, -0.862252,
		-0.838710, 0.221525, -0.497485,
		0.201140, 0.974942, 0.095029,
		32.277679, 32.903370, 29.824884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802126, 32.626564, 29.187002>,  <32.136883, 32.220909, 29.758364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802126, 32.626564, 29.187002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161030, 32.707047, 29.344200>,  <32.376373, 32.755337, 29.438519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161030, 32.707047, 29.344200>,  <31.802126, 32.626564, 29.187002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161030, 32.707047, 29.344200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424049, -0.144917, -0.893969,
		-0.122920, 0.968770, -0.215349,
		0.897259, 0.201205, 0.392993,
		32.430206, 32.767406, 29.462097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124439, 33.244438, 28.881449>,  <31.802126, 32.626564, 29.187002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124439, 33.244438, 28.881449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373890, 32.962875, 29.017447>,  <32.523560, 32.793938, 29.099045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373890, 32.962875, 29.017447>,  <32.124439, 33.244438, 28.881449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373890, 32.962875, 29.017447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458924, -0.022417, -0.888192,
		0.632829, 0.709936, 0.309061,
		0.623631, -0.703910, 0.339993,
		32.560978, 32.751701, 29.119444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854713, 33.396793, 28.756805>,  <32.124439, 33.244438, 28.881449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854713, 33.396793, 28.756805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700615, 33.029060, 28.724754>,  <32.608154, 32.808422, 28.705524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700615, 33.029060, 28.724754>,  <32.854713, 33.396793, 28.756805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700615, 33.029060, 28.724754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231288, -0.012134, -0.972809,
		0.893360, -0.393302, 0.217304,
		-0.385245, -0.919329, -0.080126,
		32.585041, 32.753262, 28.700716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353397, 32.966465, 28.356722>,  <32.854713, 33.396793, 28.756805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353397, 32.966465, 28.356722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974678, 32.846985, 28.308813>,  <32.747444, 32.775299, 28.280067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974678, 32.846985, 28.308813>,  <33.353397, 32.966465, 28.356722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974678, 32.846985, 28.308813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145833, -0.066465, -0.987074,
		0.286877, -0.952030, 0.106490,
		-0.946802, -0.298699, -0.119770,
		32.690636, 32.757374, 28.272882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367722, 32.475113, 27.818060>,  <33.353397, 32.966465, 28.356722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367722, 32.475113, 27.818060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004517, 32.634377, 27.870193>,  <32.786594, 32.729935, 27.901474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004517, 32.634377, 27.870193>,  <33.367722, 32.475113, 27.818060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004517, 32.634377, 27.870193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037676, 0.232235, -0.971930,
		-0.417252, -0.887432, -0.195871,
		-0.908010, 0.398160, 0.130335,
		32.732113, 32.753826, 27.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931511, 32.413540, 28.360992>,  <33.367722, 32.475113, 27.818060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931511, 32.413540, 28.360992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191338, 32.543671, 28.635870>,  <34.347233, 32.621750, 28.800797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191338, 32.543671, 28.635870>,  <33.931511, 32.413540, 28.360992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191338, 32.543671, 28.635870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527269, -0.843927, -0.098870,
		0.547774, 0.426557, -0.719717,
		0.649562, 0.325326, 0.687192,
		34.386208, 32.641270, 28.842028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750362, 32.458866, 28.109955>,  <33.931511, 32.413540, 28.360992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750362, 32.458866, 28.109955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630508, 32.317760, 28.464531>,  <34.558598, 32.233097, 28.677277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630508, 32.317760, 28.464531>,  <34.750362, 32.458866, 28.109955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630508, 32.317760, 28.464531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351750, -0.904523, -0.241061,
		0.886845, 0.239577, 0.395107,
		-0.299631, -0.352763, 0.886442,
		34.540619, 32.211933, 28.730463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383125, 32.449505, 28.650066>,  <34.750362, 32.458866, 28.109955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383125, 32.449505, 28.650066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602634, 32.132404, 28.543938>,  <35.734341, 31.942144, 28.480261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602634, 32.132404, 28.543938>,  <35.383125, 32.449505, 28.650066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602634, 32.132404, 28.543938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527792, -0.574679, 0.625444,
		-0.648298, -0.203189, -0.733774,
		0.548767, -0.792754, -0.265322,
		35.767265, 31.894579, 28.464342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984566, 31.838892, 28.539665>,  <35.383125, 32.449505, 28.650066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984566, 31.838892, 28.539665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353130, 31.749506, 28.666830>,  <35.574268, 31.695875, 28.743130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353130, 31.749506, 28.666830>,  <34.984566, 31.838892, 28.539665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353130, 31.749506, 28.666830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380717, -0.355227, 0.853738,
		-0.077847, -0.907677, -0.412385,
		0.921409, -0.223463, 0.317914,
		35.629555, 31.682467, 28.762205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875511, 31.181778, 28.903509>,  <34.984566, 31.838892, 28.539665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875511, 31.181778, 28.903509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199383, 31.368664, 29.045568>,  <35.393707, 31.480795, 29.130804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199383, 31.368664, 29.045568>,  <34.875511, 31.181778, 28.903509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199383, 31.368664, 29.045568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318551, -0.158371, 0.934582,
		0.492897, -0.869844, 0.020602,
		0.809677, 0.467215, 0.355150,
		35.442287, 31.508829, 29.152113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193222, 30.730371, 29.513903>,  <34.875511, 31.181778, 28.903509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193222, 30.730371, 29.513903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332554, 31.102156, 29.562517>,  <35.416153, 31.325226, 29.591686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332554, 31.102156, 29.562517>,  <35.193222, 30.730371, 29.513903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332554, 31.102156, 29.562517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363922, 0.014605, 0.931315,
		0.863844, -0.368636, 0.343338,
		0.348331, 0.929459, 0.121538,
		35.437054, 31.380993, 29.598978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703842, 30.754456, 30.095457>,  <35.193222, 30.730371, 29.513903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703842, 30.754456, 30.095457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539173, 31.114973, 30.041502>,  <35.440372, 31.331284, 30.009129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539173, 31.114973, 30.041502>,  <35.703842, 30.754456, 30.095457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539173, 31.114973, 30.041502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256931, 0.027223, 0.966046,
		0.874363, 0.432354, 0.220363,
		-0.411675, 0.901293, -0.134888,
		35.415672, 31.385361, 30.001036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805222, 31.062464, 30.789900>,  <35.703842, 30.754456, 30.095457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805222, 31.062464, 30.789900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545952, 31.292164, 30.589859>,  <35.390388, 31.429985, 30.469835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545952, 31.292164, 30.589859>,  <35.805222, 31.062464, 30.789900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545952, 31.292164, 30.589859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432629, 0.262750, 0.862435,
		0.626657, 0.775369, 0.078129,
		-0.648177, 0.574252, -0.500101,
		35.351498, 31.464439, 30.439829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822914, 31.743141, 31.113716>,  <35.805222, 31.062464, 30.789900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822914, 31.743141, 31.113716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465389, 31.735958, 30.934483>,  <35.250874, 31.731649, 30.826942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465389, 31.735958, 30.934483>,  <35.822914, 31.743141, 31.113716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465389, 31.735958, 30.934483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439470, 0.233956, 0.867254,
		0.089259, 0.972081, -0.217004,
		-0.893811, -0.017957, -0.448084,
		35.197247, 31.730572, 30.800058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369770, 32.279526, 31.389051>,  <35.822914, 31.743141, 31.113716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369770, 32.279526, 31.389051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077938, 32.061459, 31.223881>,  <34.902840, 31.930618, 31.124779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077938, 32.061459, 31.223881>,  <35.369770, 32.279526, 31.389051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077938, 32.061459, 31.223881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637250, 0.322734, 0.699825,
		-0.248258, 0.773713, -0.582868,
		-0.729575, -0.545170, -0.412928,
		34.859066, 31.897907, 31.100002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769218, 32.709946, 31.257128>,  <35.369770, 32.279526, 31.389051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769218, 32.709946, 31.257128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634842, 32.333408, 31.269833>,  <34.554214, 32.107487, 31.277456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634842, 32.333408, 31.269833>,  <34.769218, 32.709946, 31.257128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634842, 32.333408, 31.269833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786603, 0.298950, 0.540264,
		-0.518070, 0.156515, -0.840896,
		-0.335946, -0.941345, 0.031762,
		34.534058, 32.051006, 31.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065475, 32.823120, 31.294220>,  <34.769218, 32.709946, 31.257128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065475, 32.823120, 31.294220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140945, 32.451004, 31.420057>,  <34.186226, 32.227734, 31.495560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140945, 32.451004, 31.420057>,  <34.065475, 32.823120, 31.294220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140945, 32.451004, 31.420057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608587, 0.140655, 0.780921,
		-0.770730, -0.338794, -0.539624,
		0.188671, -0.930287, 0.314593,
		34.197548, 32.171917, 31.514435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433250, 32.676567, 31.577017>,  <34.065475, 32.823120, 31.294220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433250, 32.676567, 31.577017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674381, 32.396049, 31.729219>,  <33.819061, 32.227737, 31.820541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674381, 32.396049, 31.729219>,  <33.433250, 32.676567, 31.577017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674381, 32.396049, 31.729219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534952, -0.001427, 0.844882,
		-0.591967, -0.712872, -0.376018,
		0.602828, -0.701293, 0.380507,
		33.855228, 32.185661, 31.843372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018158, 32.150528, 31.808672>,  <33.433250, 32.676567, 31.577017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018158, 32.150528, 31.808672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350594, 32.107582, 32.026943>,  <33.550056, 32.081814, 32.157906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350594, 32.107582, 32.026943>,  <33.018158, 32.150528, 31.808672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350594, 32.107582, 32.026943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554440, -0.083267, 0.828048,
		-0.043465, -0.990727, -0.128729,
		0.831088, -0.107364, 0.545679,
		33.599918, 32.075371, 32.190647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858463, 31.626116, 32.310272>,  <33.018158, 32.150528, 31.808672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858463, 31.626116, 32.310272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170380, 31.835150, 32.448158>,  <33.357529, 31.960569, 32.530888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170380, 31.835150, 32.448158>,  <32.858463, 31.626116, 32.310272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170380, 31.835150, 32.448158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452188, 0.089370, 0.887434,
		0.432952, -0.847890, 0.305997,
		0.779794, 0.522585, 0.344713,
		33.404316, 31.991924, 32.551571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105225, 31.256731, 32.963566>,  <32.858463, 31.626116, 32.310272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105225, 31.256731, 32.963566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182121, 31.648891, 32.946327>,  <33.228260, 31.884188, 32.935986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182121, 31.648891, 32.946327>,  <33.105225, 31.256731, 32.963566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182121, 31.648891, 32.946327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418629, 0.121644, 0.899973,
		0.887577, -0.154972, 0.433809,
		0.192241, 0.980401, -0.043092,
		33.239792, 31.943012, 32.933399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174038, 31.469292, 33.620716>,  <33.105225, 31.256731, 32.963566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174038, 31.469292, 33.620716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143520, 31.837551, 33.467571>,  <33.125210, 32.058506, 33.375683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143520, 31.837551, 33.467571>,  <33.174038, 31.469292, 33.620716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143520, 31.837551, 33.467571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303198, 0.344377, 0.888524,
		0.949869, 0.183870, 0.252867,
		-0.076291, 0.920650, -0.382862,
		33.120632, 32.113747, 33.352711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159107, 31.884895, 34.191898>,  <33.174038, 31.469292, 33.620716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159107, 31.884895, 34.191898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030739, 32.158443, 33.929806>,  <32.953720, 32.322571, 33.772549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030739, 32.158443, 33.929806>,  <33.159107, 31.884895, 34.191898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030739, 32.158443, 33.929806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533230, 0.441298, 0.721750,
		0.782737, 0.581013, 0.223040,
		-0.320919, 0.683871, -0.655233,
		32.934464, 32.363605, 33.733234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377724, 32.627529, 34.483147>,  <33.159107, 31.884895, 34.191898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377724, 32.627529, 34.483147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087677, 32.672783, 34.211441>,  <32.913647, 32.699936, 34.048416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087677, 32.672783, 34.211441>,  <33.377724, 32.627529, 34.483147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087677, 32.672783, 34.211441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488209, 0.611206, 0.622960,
		0.485649, 0.783344, -0.387965,
		-0.725118, 0.113132, -0.679268,
		32.870140, 32.706722, 34.007660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221889, 33.383759, 34.505253>,  <33.377724, 32.627529, 34.483147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221889, 33.383759, 34.505253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904499, 33.212280, 34.332455>,  <32.714066, 33.109394, 34.228775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904499, 33.212280, 34.332455>,  <33.221889, 33.383759, 34.505253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904499, 33.212280, 34.332455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608503, 0.545772, 0.576071,
		-0.011192, 0.719965, -0.693920,
		-0.793473, -0.428700, -0.431992,
		32.666458, 33.083672, 34.202858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802216, 33.937878, 34.404732>,  <33.221889, 33.383759, 34.505253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802216, 33.937878, 34.404732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566910, 33.614964, 34.385834>,  <32.425724, 33.421215, 34.374496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566910, 33.614964, 34.385834>,  <32.802216, 33.937878, 34.404732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566910, 33.614964, 34.385834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693914, 0.473933, 0.542099,
		-0.415239, 0.351681, -0.838986,
		-0.588269, -0.807284, -0.047241,
		32.390430, 33.372780, 34.371662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198143, 34.154419, 34.331390>,  <32.802216, 33.937878, 34.404732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198143, 34.154419, 34.331390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126972, 33.787941, 34.475014>,  <32.084270, 33.568054, 34.561188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126972, 33.787941, 34.475014>,  <32.198143, 34.154419, 34.331390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126972, 33.787941, 34.475014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762619, 0.358982, 0.538094,
		-0.621896, -0.178083, -0.762582,
		-0.177928, -0.916198, 0.359059,
		32.073593, 33.513081, 34.582733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470570, 34.107872, 34.385185>,  <32.198143, 34.154419, 34.331390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470570, 34.107872, 34.385185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587790, 33.791382, 34.599876>,  <31.658121, 33.601486, 34.728691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587790, 33.791382, 34.599876>,  <31.470570, 34.107872, 34.385185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587790, 33.791382, 34.599876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681468, 0.220899, 0.697715,
		-0.670614, -0.570231, -0.474461,
		0.293051, -0.791227, 0.536732,
		31.675705, 33.554012, 34.760895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907200, 33.685989, 34.427006>,  <31.470570, 34.107872, 34.385185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907200, 33.685989, 34.427006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149567, 33.604008, 34.734474>,  <31.294987, 33.554817, 34.918957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149567, 33.604008, 34.734474>,  <30.907200, 33.685989, 34.427006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149567, 33.604008, 34.734474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711116, 0.293605, 0.638836,
		-0.356620, -0.933696, 0.032151,
		0.605918, -0.204959, 0.768671,
		31.331343, 33.542519, 34.965076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560196, 33.295792, 34.865726>,  <30.907200, 33.685989, 34.427006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560196, 33.295792, 34.865726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852001, 33.416908, 35.111046>,  <31.027084, 33.489578, 35.258236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852001, 33.416908, 35.111046>,  <30.560196, 33.295792, 34.865726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852001, 33.416908, 35.111046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672770, 0.156075, 0.723202,
		0.123259, -0.940190, 0.317567,
		0.729511, 0.302791, 0.613295,
		31.070854, 33.507744, 35.295033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472628, 32.869576, 35.397488>,  <30.560196, 33.295792, 34.865726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472628, 32.869576, 35.397488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692299, 33.175961, 35.531178>,  <30.824102, 33.359791, 35.611389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692299, 33.175961, 35.531178>,  <30.472628, 32.869576, 35.397488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692299, 33.175961, 35.531178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486517, -0.032139, 0.873080,
		0.679489, -0.642080, 0.355005,
		0.549178, 0.765964, 0.334221,
		30.857052, 33.405750, 35.631443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780876, 32.723022, 36.015728>,  <30.472628, 32.869576, 35.397488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780876, 32.723022, 36.015728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792864, 33.122162, 36.039043>,  <30.800056, 33.361645, 36.053032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792864, 33.122162, 36.039043>,  <30.780876, 32.723022, 36.015728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792864, 33.122162, 36.039043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568008, -0.030985, 0.822440,
		0.822477, -0.057755, 0.565858,
		0.029967, 0.997850, 0.058290,
		30.801853, 33.421516, 36.056530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040422, 32.935219, 36.659740>,  <30.780876, 32.723022, 36.015728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040422, 32.935219, 36.659740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813505, 33.238251, 36.530590>,  <30.677355, 33.420071, 36.453098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813505, 33.238251, 36.530590>,  <31.040422, 32.935219, 36.659740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813505, 33.238251, 36.530590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470743, 0.023382, 0.881960,
		0.675706, 0.652322, 0.343362,
		-0.567294, 0.757581, -0.322876,
		30.643316, 33.465527, 36.433727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605152, 32.769669, 37.075489>,  <31.040422, 32.935219, 36.659740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605152, 32.769669, 37.075489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545113, 32.989357, 37.404324>,  <31.509089, 33.121170, 37.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545113, 32.989357, 37.404324>,  <31.605152, 32.769669, 37.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545113, 32.989357, 37.404324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946381, -0.160774, 0.280204,
		0.286064, 0.820067, -0.495638,
		-0.150101, 0.549219, 0.822088,
		31.500082, 33.154121, 37.650951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208031, 33.062134, 37.157131>,  <31.605152, 32.769669, 37.075489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208031, 33.062134, 37.157131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027885, 33.073593, 37.514088>,  <31.919800, 33.080467, 37.728260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027885, 33.073593, 37.514088>,  <32.208031, 33.062134, 37.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027885, 33.073593, 37.514088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887607, -0.093763, 0.450958,
		0.096591, 0.995182, 0.016801,
		-0.450361, 0.028646, 0.892387,
		31.892776, 33.082188, 37.781803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487686, 33.616497, 37.492874>,  <32.208031, 33.062134, 37.157131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487686, 33.616497, 37.492874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361889, 33.330994, 37.743198>,  <32.286411, 33.159691, 37.893394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361889, 33.330994, 37.743198>,  <32.487686, 33.616497, 37.492874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361889, 33.330994, 37.743198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860687, 0.063666, 0.505138,
		-0.400389, 0.697492, 0.594301,
		-0.314493, -0.713759, 0.625814,
		32.267540, 33.116867, 37.930943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000477, 33.712429, 37.841499>,  <32.487686, 33.616497, 37.492874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000477, 33.712429, 37.841499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793240, 33.449574, 38.060493>,  <32.668896, 33.291859, 38.191891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793240, 33.449574, 38.060493>,  <33.000477, 33.712429, 37.841499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793240, 33.449574, 38.060493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586744, 0.192683, 0.786515,
		-0.622342, 0.728725, 0.285745,
		-0.518095, -0.657141, 0.547489,
		32.637810, 33.252430, 38.224739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438538, 34.024796, 38.333542>,  <33.000477, 33.712429, 37.841499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438538, 34.024796, 38.333542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595116, 33.674400, 38.446266>,  <32.689060, 33.464165, 38.513901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595116, 33.674400, 38.446266>,  <32.438538, 34.024796, 38.333542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595116, 33.674400, 38.446266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388600, 0.434964, 0.812279,
		-0.834124, -0.208448, 0.510672,
		0.391442, -0.875988, 0.281811,
		32.712547, 33.411602, 38.530811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189323, 33.966427, 38.985458>,  <32.438538, 34.024796, 38.333542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189323, 33.966427, 38.985458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476830, 33.688820, 38.968868>,  <32.649334, 33.522255, 38.958916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476830, 33.688820, 38.968868>,  <32.189323, 33.966427, 38.985458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476830, 33.688820, 38.968868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177715, 0.125722, 0.976018,
		-0.672157, -0.708898, 0.213701,
		0.718764, -0.694016, -0.041476,
		32.692459, 33.480614, 38.956425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119469, 33.581615, 39.478695>,  <32.189323, 33.966427, 38.985458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119469, 33.581615, 39.478695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507912, 33.532600, 39.396782>,  <32.740978, 33.503193, 39.347633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507912, 33.532600, 39.396782>,  <32.119469, 33.581615, 39.478695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507912, 33.532600, 39.396782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211742, 0.046586, 0.976215,
		-0.110080, -0.991370, 0.071186,
		0.971107, -0.122535, -0.204786,
		32.799244, 33.495842, 39.335346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319351, 33.214928, 40.052956>,  <32.119469, 33.581615, 39.478695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319351, 33.214928, 40.052956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645466, 33.401905, 39.916245>,  <32.841133, 33.514091, 39.834217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645466, 33.401905, 39.916245>,  <32.319351, 33.214928, 40.052956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645466, 33.401905, 39.916245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238901, 0.266133, 0.933863,
		0.527484, -0.843014, 0.105302,
		0.815283, 0.467441, -0.341778,
		32.890053, 33.542137, 39.813713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761917, 33.072552, 40.470806>,  <32.319351, 33.214928, 40.052956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761917, 33.072552, 40.470806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958752, 33.368683, 40.287605>,  <33.076855, 33.546360, 40.177685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958752, 33.368683, 40.287605>,  <32.761917, 33.072552, 40.470806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958752, 33.368683, 40.287605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328789, 0.329089, 0.885210,
		0.806068, -0.586188, -0.081470,
		0.492089, 0.740326, -0.458001,
		33.106377, 33.590782, 40.150204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448467, 33.179932, 40.838509>,  <32.761917, 33.072552, 40.470806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448467, 33.179932, 40.838509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389057, 33.527267, 40.649223>,  <33.353413, 33.735668, 40.535652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389057, 33.527267, 40.649223>,  <33.448467, 33.179932, 40.838509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389057, 33.527267, 40.649223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359285, 0.493205, 0.792252,
		0.921334, -0.052352, -0.385232,
		-0.148522, 0.868336, -0.473216,
		33.344501, 33.787769, 40.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001789, 33.570686, 40.949230>,  <33.448467, 33.179932, 40.838509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001789, 33.570686, 40.949230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723747, 33.846489, 40.867840>,  <33.556923, 34.011971, 40.819004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723747, 33.846489, 40.867840>,  <34.001789, 33.570686, 40.949230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723747, 33.846489, 40.867840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179261, 0.440338, 0.879754,
		0.696197, 0.575049, -0.429684,
		-0.695108, 0.689508, -0.203478,
		33.515213, 34.053341, 40.806797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270538, 34.171383, 41.172504>,  <34.001789, 33.570686, 40.949230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270538, 34.171383, 41.172504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898285, 34.310516, 41.127014>,  <33.674934, 34.393997, 41.099720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898285, 34.310516, 41.127014>,  <34.270538, 34.171383, 41.172504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898285, 34.310516, 41.127014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121087, 0.585942, 0.801255,
		0.345337, 0.731905, -0.587416,
		-0.930634, 0.347832, -0.113723,
		33.619095, 34.414867, 41.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406609, 34.847794, 41.249378>,  <34.270538, 34.171383, 41.172504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406609, 34.847794, 41.249378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020832, 34.767918, 41.318626>,  <33.789364, 34.719990, 41.360176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020832, 34.767918, 41.318626>,  <34.406609, 34.847794, 41.249378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020832, 34.767918, 41.318626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000443, 0.656261, 0.754533,
		-0.264284, 0.727629, -0.633016,
		-0.964445, -0.199692, 0.173117,
		33.731499, 34.708012, 41.370560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047466, 35.520805, 41.423588>,  <34.406609, 34.847794, 41.249378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047466, 35.520805, 41.423588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824863, 35.218395, 41.561413>,  <33.691299, 35.036949, 41.644108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824863, 35.218395, 41.561413>,  <34.047466, 35.520805, 41.423588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824863, 35.218395, 41.561413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082648, 0.463038, 0.882477,
		-0.826719, 0.462630, -0.320169,
		-0.556511, -0.756022, 0.344566,
		33.657909, 34.991589, 41.664783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458733, 35.816753, 41.785366>,  <34.047466, 35.520805, 41.423588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458733, 35.816753, 41.785366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506248, 35.437904, 41.904591>,  <33.534760, 35.210594, 41.976128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506248, 35.437904, 41.904591>,  <33.458733, 35.816753, 41.785366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506248, 35.437904, 41.904591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052933, 0.293722, 0.954424,
		-0.991508, -0.129152, -0.015243,
		0.118789, -0.947126, 0.298064,
		33.541885, 35.153767, 41.994011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833935, 35.598656, 42.216511>,  <33.458733, 35.816753, 41.785366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833935, 35.598656, 42.216511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161606, 35.381531, 42.290600>,  <33.358208, 35.251255, 42.335052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161606, 35.381531, 42.290600>,  <32.833935, 35.598656, 42.216511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161606, 35.381531, 42.290600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100431, 0.182194, 0.978120,
		-0.564681, -0.819854, 0.094734,
		0.819176, -0.542811, 0.185221,
		33.407360, 35.218689, 42.346165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657166, 35.343586, 42.871017>,  <32.833935, 35.598656, 42.216511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657166, 35.343586, 42.871017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049904, 35.273968, 42.840836>,  <33.285545, 35.232197, 42.822727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049904, 35.273968, 42.840836>,  <32.657166, 35.343586, 42.871017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049904, 35.273968, 42.840836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104672, 0.165314, 0.980671,
		-0.158210, -0.970762, 0.180530,
		0.981842, -0.174049, -0.075458,
		33.344456, 35.221752, 42.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849350, 34.968151, 43.471767>,  <32.657166, 35.343586, 42.871017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849350, 34.968151, 43.471767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200775, 35.110600, 43.344452>,  <33.411629, 35.196068, 43.268063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200775, 35.110600, 43.344452>,  <32.849350, 34.968151, 43.471767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200775, 35.110600, 43.344452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244720, 0.236640, 0.940273,
		0.410175, -0.903978, 0.120752,
		0.878560, 0.356126, -0.318286,
		33.464344, 35.217438, 43.248966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336128, 34.745140, 43.952263>,  <32.849350, 34.968151, 43.471767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336128, 34.745140, 43.952263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500519, 35.064236, 43.775757>,  <33.599152, 35.255692, 43.669853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500519, 35.064236, 43.775757>,  <33.336128, 34.745140, 43.952263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500519, 35.064236, 43.775757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328519, 0.321922, 0.887942,
		0.850397, -0.509887, -0.129770,
		0.410974, 0.797735, -0.441269,
		33.623810, 35.303555, 43.643375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977772, 34.823757, 44.160469>,  <33.336128, 34.745140, 43.952263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977772, 34.823757, 44.160469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927223, 35.194874, 44.020046>,  <33.896893, 35.417542, 43.935791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927223, 35.194874, 44.020046>,  <33.977772, 34.823757, 44.160469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927223, 35.194874, 44.020046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486303, 0.366395, 0.793262,
		0.864603, -0.070472, -0.497489,
		-0.126374, 0.927787, -0.351057,
		33.889313, 35.473209, 43.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620876, 35.149464, 44.225151>,  <33.977772, 34.823757, 44.160469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620876, 35.149464, 44.225151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314163, 35.406132, 44.218063>,  <34.130135, 35.560131, 44.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314163, 35.406132, 44.218063>,  <34.620876, 35.149464, 44.225151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314163, 35.406132, 44.218063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216176, 0.284124, 0.934099,
		0.604415, 0.712417, -0.356574,
		-0.766779, 0.641666, -0.017721,
		34.084129, 35.598633, 44.212746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795132, 35.682510, 44.689919>,  <34.620876, 35.149464, 44.225151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795132, 35.682510, 44.689919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402138, 35.749725, 44.657696>,  <34.166340, 35.790054, 44.638363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402138, 35.749725, 44.657696>,  <34.795132, 35.682510, 44.689919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402138, 35.749725, 44.657696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007752, 0.395074, 0.918617,
		0.186186, 0.903151, -0.386851,
		-0.982484, 0.168034, -0.080558,
		34.107391, 35.800137, 44.633530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720322, 36.282375, 44.977161>,  <34.795132, 35.682510, 44.689919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720322, 36.282375, 44.977161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337624, 36.166092, 44.972729>,  <34.108006, 36.096321, 44.970070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337624, 36.166092, 44.972729>,  <34.720322, 36.282375, 44.977161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337624, 36.166092, 44.972729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146467, 0.448422, 0.881740,
		-0.251359, 0.845226, -0.471606,
		-0.956748, -0.290708, -0.011083,
		34.050598, 36.078880, 44.969402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341316, 36.858944, 45.148212>,  <34.720322, 36.282375, 44.977161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341316, 36.858944, 45.148212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115849, 36.541679, 45.240452>,  <33.980568, 36.351322, 45.295795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115849, 36.541679, 45.240452>,  <34.341316, 36.858944, 45.148212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115849, 36.541679, 45.240452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163757, 0.380939, 0.909983,
		-0.809607, 0.475165, -0.344608,
		-0.563666, -0.793161, 0.230599,
		33.946747, 36.303730, 45.309631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735210, 37.181602, 45.434242>,  <34.341316, 36.858944, 45.148212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735210, 37.181602, 45.434242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747242, 36.794773, 45.535324>,  <33.754463, 36.562675, 45.595974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747242, 36.794773, 45.535324>,  <33.735210, 37.181602, 45.434242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747242, 36.794773, 45.535324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137503, 0.246408, 0.959362,
		-0.990045, -0.063606, -0.125563,
		0.030082, -0.967076, 0.252701,
		33.756268, 36.504650, 45.611134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181435, 37.024845, 45.827629>,  <33.735210, 37.181602, 45.434242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181435, 37.024845, 45.827629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448605, 36.739960, 45.914001>,  <33.608906, 36.569031, 45.965824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448605, 36.739960, 45.914001>,  <33.181435, 37.024845, 45.827629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448605, 36.739960, 45.914001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229289, 0.079103, 0.970139,
		-0.708025, -0.697494, -0.110467,
		0.667928, -0.712211, 0.215934,
		33.648983, 36.526295, 45.978783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845928, 36.646492, 46.348717>,  <33.181435, 37.024845, 45.827629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845928, 36.646492, 46.348717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237511, 36.569202, 46.374958>,  <33.472462, 36.522827, 46.390705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237511, 36.569202, 46.374958>,  <32.845928, 36.646492, 46.348717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237511, 36.569202, 46.374958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077819, -0.056310, 0.995376,
		-0.188637, -0.979537, -0.070162,
		0.978959, -0.193225, 0.065605,
		33.531197, 36.511234, 46.394638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888287, 36.170940, 46.892960>,  <32.845928, 36.646492, 46.348717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888287, 36.170940, 46.892960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265034, 36.301796, 46.862324>,  <33.491081, 36.380310, 46.843941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265034, 36.301796, 46.862324>,  <32.888287, 36.170940, 46.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265034, 36.301796, 46.862324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055663, 0.072886, 0.995786,
		0.331340, -0.942162, 0.050439,
		0.941868, 0.327136, -0.076594,
		33.547596, 36.399937, 46.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241112, 35.832939, 47.443291>,  <32.888287, 36.170940, 46.892960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241112, 35.832939, 47.443291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467785, 36.154354, 47.370411>,  <33.603786, 36.347202, 47.326683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467785, 36.154354, 47.370411>,  <33.241112, 35.832939, 47.443291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467785, 36.154354, 47.370411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130706, 0.130657, 0.982774,
		0.813505, -0.580733, -0.030988,
		0.566680, 0.803542, -0.182195,
		33.637791, 36.395416, 47.315754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698105, 35.779842, 47.984562>,  <33.241112, 35.832939, 47.443291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698105, 35.779842, 47.984562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766159, 36.152424, 47.855911>,  <33.806992, 36.375973, 47.778721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766159, 36.152424, 47.855911>,  <33.698105, 35.779842, 47.984562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766159, 36.152424, 47.855911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223798, 0.281333, 0.933149,
		0.959671, -0.230741, -0.160593,
		0.170136, 0.931456, -0.321627,
		33.817200, 36.431862, 47.759422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270306, 35.898365, 48.424488>,  <33.698105, 35.779842, 47.984562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270306, 35.898365, 48.424488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164734, 36.249184, 48.263927>,  <34.101391, 36.459675, 48.167591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164734, 36.249184, 48.263927>,  <34.270306, 35.898365, 48.424488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164734, 36.249184, 48.263927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293320, 0.469431, 0.832825,
		0.918860, 0.102071, -0.381154,
		-0.263933, 0.877050, -0.401402,
		34.085552, 36.512299, 48.143505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817513, 36.439175, 48.509262>,  <34.270306, 35.898365, 48.424488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817513, 36.439175, 48.509262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461033, 36.619976, 48.494053>,  <34.247143, 36.728458, 48.484928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461033, 36.619976, 48.494053>,  <34.817513, 36.439175, 48.509262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461033, 36.619976, 48.494053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130315, 0.335417, 0.933013,
		0.434482, 0.826550, -0.357828,
		-0.891203, 0.452008, -0.038021,
		34.193672, 36.755577, 48.482647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899559, 36.995998, 48.797894>,  <34.817513, 36.439175, 48.509262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899559, 36.995998, 48.797894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501545, 36.974388, 48.831329>,  <34.262737, 36.961422, 48.851391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501545, 36.974388, 48.831329>,  <34.899559, 36.995998, 48.797894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501545, 36.974388, 48.831329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062419, 0.315456, 0.946885,
		-0.077529, 0.947401, -0.310517,
		-0.995034, -0.054029, 0.083593,
		34.203033, 36.958179, 48.856407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688927, 37.647728, 49.043888>,  <34.899559, 36.995998, 48.797894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688927, 37.647728, 49.043888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405071, 37.384182, 49.143734>,  <34.234756, 37.226055, 49.203640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405071, 37.384182, 49.143734>,  <34.688927, 37.647728, 49.043888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405071, 37.384182, 49.143734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000130, 0.354155, 0.935187,
		-0.704563, 0.663679, -0.251238,
		-0.709641, -0.658866, 0.249611,
		34.192181, 37.186523, 49.218616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316940, 37.956142, 49.542252>,  <34.688927, 37.647728, 49.043888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316940, 37.956142, 49.542252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242611, 37.568436, 49.606739>,  <34.198013, 37.335812, 49.645432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242611, 37.568436, 49.606739>,  <34.316940, 37.956142, 49.542252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242611, 37.568436, 49.606739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088849, 0.146830, 0.985163,
		-0.978557, 0.197392, 0.058834,
		-0.185825, -0.969266, 0.161219,
		34.186863, 37.277657, 49.655106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799751, 37.974228, 50.044106>,  <34.316940, 37.956142, 49.542252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799751, 37.974228, 50.044106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999031, 37.627514, 50.052864>,  <34.118599, 37.419483, 50.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999031, 37.627514, 50.052864>,  <33.799751, 37.974228, 50.044106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999031, 37.627514, 50.052864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129751, 0.099500, 0.986542,
		-0.857302, -0.488649, 0.162037,
		0.498195, -0.866789, 0.021899,
		34.148491, 37.367477, 50.059433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504330, 37.818333, 50.601646>,  <33.799751, 37.974228, 50.044106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504330, 37.818333, 50.601646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796677, 37.545437, 50.593887>,  <33.972084, 37.381699, 50.589233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796677, 37.545437, 50.593887>,  <33.504330, 37.818333, 50.601646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796677, 37.545437, 50.593887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136490, 0.118255, 0.983558,
		-0.668729, -0.721501, 0.179548,
		0.730870, -0.682240, -0.019397,
		34.015938, 37.340763, 50.588070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446354, 37.518368, 51.218872>,  <33.504330, 37.818333, 50.601646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446354, 37.518368, 51.218872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815487, 37.409752, 51.109581>,  <34.036964, 37.344582, 51.044006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815487, 37.409752, 51.109581>,  <33.446354, 37.518368, 51.218872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815487, 37.409752, 51.109581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263354, -0.072901, 0.961941,
		-0.281126, -0.959661, 0.004236,
		0.922829, -0.271542, -0.273225,
		34.092335, 37.328289, 51.027615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755043, 36.962635, 51.683727>,  <33.446354, 37.518368, 51.218872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755043, 36.962635, 51.683727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073746, 37.143154, 51.522972>,  <34.264965, 37.251465, 51.426521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073746, 37.143154, 51.522972>,  <33.755043, 36.962635, 51.683727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073746, 37.143154, 51.522972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446951, 0.007506, 0.894527,
		0.406719, -0.892340, -0.195730,
		0.796753, 0.451303, -0.401885,
		34.312771, 37.278545, 51.402405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263096, 36.594810, 51.863705>,  <33.755043, 36.962635, 51.683727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263096, 36.594810, 51.863705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409416, 36.963158, 51.809757>,  <34.497208, 37.184166, 51.777390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409416, 36.963158, 51.809757>,  <34.263096, 36.594810, 51.863705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409416, 36.963158, 51.809757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370368, -0.011093, 0.928819,
		0.853825, -0.389713, -0.345119,
		0.365801, 0.920870, -0.134866,
		34.519157, 37.239418, 51.769299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973793, 36.511398, 51.997952>,  <34.263096, 36.594810, 51.863705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973793, 36.511398, 51.997952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871662, 36.895210, 52.045475>,  <34.810383, 37.125496, 52.073990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871662, 36.895210, 52.045475>,  <34.973793, 36.511398, 51.997952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871662, 36.895210, 52.045475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382185, -0.012711, 0.923998,
		0.888111, 0.281331, -0.363471,
		-0.255329, 0.959526, 0.118809,
		34.795063, 37.183067, 52.081120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605625, 36.915386, 52.089294>,  <34.973793, 36.511398, 51.997952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605625, 36.915386, 52.089294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306667, 37.122910, 52.255302>,  <35.127293, 37.247425, 52.354908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306667, 37.122910, 52.255302>,  <35.605625, 36.915386, 52.089294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306667, 37.122910, 52.255302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525002, 0.078369, 0.847485,
		0.407159, 0.851290, -0.330949,
		-0.747391, 0.518811, 0.415020,
		35.082451, 37.278553, 52.379810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848495, 37.591988, 52.288303>,  <35.605625, 36.915386, 52.089294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848495, 37.591988, 52.288303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534035, 37.539566, 52.529896>,  <35.345360, 37.508114, 52.674850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534035, 37.539566, 52.529896>,  <35.848495, 37.591988, 52.288303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534035, 37.539566, 52.529896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556473, 0.275089, 0.784005,
		-0.268899, 0.952444, -0.143330,
		-0.786150, -0.131059, 0.603980,
		35.298191, 37.500248, 52.711090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847294, 38.170086, 52.705704>,  <35.848495, 37.591988, 52.288303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847294, 38.170086, 52.705704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618000, 37.908577, 52.903282>,  <35.480423, 37.751671, 53.021828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618000, 37.908577, 52.903282>,  <35.847294, 38.170086, 52.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618000, 37.908577, 52.903282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501653, 0.196622, 0.842427,
		-0.647878, 0.730697, 0.215257,
		-0.573235, -0.653774, 0.493943,
		35.446030, 37.712444, 53.051464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765099, 38.515289, 53.363297>,  <35.847294, 38.170086, 52.705704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765099, 38.515289, 53.363297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640343, 38.142128, 53.435310>,  <35.565491, 37.918232, 53.478519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640343, 38.142128, 53.435310>,  <35.765099, 38.515289, 53.363297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640343, 38.142128, 53.435310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302435, 0.082156, 0.949623,
		-0.900700, 0.350624, 0.256520,
		-0.311886, -0.932906, 0.180039,
		35.546776, 37.862255, 53.489323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309006, 38.574184, 54.057125>,  <35.765099, 38.515289, 53.363297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309006, 38.574184, 54.057125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473347, 38.214268, 53.998383>,  <35.571953, 37.998318, 53.963135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473347, 38.214268, 53.998383>,  <35.309006, 38.574184, 54.057125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473347, 38.214268, 53.998383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432639, 0.050630, 0.900144,
		-0.802509, -0.433367, 0.410088,
		0.410856, -0.899794, -0.146861,
		35.596603, 37.944328, 53.954323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130814, 37.965656, 54.559425>,  <35.309006, 38.574184, 54.057125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130814, 37.965656, 54.559425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505970, 37.933983, 54.424313>,  <35.731064, 37.914978, 54.343246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505970, 37.933983, 54.424313>,  <35.130814, 37.965656, 54.559425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505970, 37.933983, 54.424313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340854, 0.028795, 0.939675,
		-0.064677, -0.996444, 0.053995,
		0.937889, -0.079180, -0.337779,
		35.787338, 37.910229, 54.322979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899632, 37.676834, 55.215199>,  <35.130814, 37.965656, 54.559425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899632, 37.676834, 55.215199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762596, 37.325001, 55.083153>,  <34.680374, 37.113903, 55.003925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762596, 37.325001, 55.083153>,  <34.899632, 37.676834, 55.215199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762596, 37.325001, 55.083153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747531, -0.468042, 0.471310,
		-0.569061, -0.085303, 0.817859,
		-0.342588, -0.879579, -0.330111,
		34.659821, 37.061127, 54.984119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911896, 37.249741, 55.828915>,  <34.899632, 37.676834, 55.215199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911896, 37.249741, 55.828915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944717, 37.061569, 55.477467>,  <34.964409, 36.948666, 55.266598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944717, 37.061569, 55.477467>,  <34.911896, 37.249741, 55.828915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944717, 37.061569, 55.477467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880194, -0.379302, 0.285287,
		-0.467467, -0.796761, 0.382944,
		0.082054, -0.470427, -0.878616,
		34.969334, 36.920441, 55.213882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221432, 36.641449, 55.899902>,  <34.911896, 37.249741, 55.828915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221432, 36.641449, 55.899902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302197, 36.803455, 55.543209>,  <35.350655, 36.900658, 55.329193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302197, 36.803455, 55.543209>,  <35.221432, 36.641449, 55.899902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302197, 36.803455, 55.543209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979263, -0.098886, 0.176820,
		-0.016565, -0.908947, -0.416582,
		0.201914, 0.405014, -0.891737,
		35.362770, 36.924961, 55.275688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879406, 36.328098, 55.846115>,  <35.221432, 36.641449, 55.899902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879406, 36.328098, 55.846115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853882, 36.593777, 55.548183>,  <35.838566, 36.753185, 55.369427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853882, 36.593777, 55.548183>,  <35.879406, 36.328098, 55.846115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853882, 36.593777, 55.548183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995913, -0.005414, -0.090152,
		-0.063911, -0.747537, -0.661139,
		-0.063813, 0.664199, -0.744828,
		35.834740, 36.793037, 55.324734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463104, 36.116825, 55.432259>,  <35.879406, 36.328098, 55.846115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463104, 36.116825, 55.432259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326405, 36.479637, 55.333866>,  <36.244385, 36.697323, 55.274830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326405, 36.479637, 55.333866>,  <36.463104, 36.116825, 55.432259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326405, 36.479637, 55.333866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938422, 0.315233, -0.141397,
		-0.050709, -0.279159, -0.958905,
		-0.341751, 0.907027, -0.245984,
		36.223881, 36.751747, 55.260071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153545, 35.524899, 55.404240>,  <36.463104, 36.116825, 55.432259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153545, 35.524899, 55.404240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513248, 35.385227, 55.509617>,  <36.729073, 35.301422, 55.572845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513248, 35.385227, 55.509617>,  <36.153545, 35.524899, 55.404240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513248, 35.385227, 55.509617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079930, -0.460962, -0.883813,
		0.430049, 0.815835, -0.386615,
		0.899260, -0.349180, 0.263446,
		36.783028, 35.280472, 55.588650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557766, 35.660275, 54.872784>,  <36.153545, 35.524899, 55.404240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557766, 35.660275, 54.872784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747356, 35.355350, 55.049072>,  <36.861111, 35.172398, 55.154846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747356, 35.355350, 55.049072>,  <36.557766, 35.660275, 54.872784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747356, 35.355350, 55.049072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163905, -0.415385, -0.894757,
		0.865149, 0.496329, -0.071936,
		0.473975, -0.762307, 0.440721,
		36.889549, 35.126659, 55.181290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275070, 35.615574, 54.559696>,  <36.557766, 35.660275, 54.872784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275070, 35.615574, 54.559696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093349, 35.280682, 54.681458>,  <36.984318, 35.079746, 54.754513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093349, 35.280682, 54.681458>,  <37.275070, 35.615574, 54.559696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093349, 35.280682, 54.681458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036878, -0.323729, -0.945431,
		0.890086, -0.440733, 0.116194,
		-0.454298, -0.837230, 0.304400,
		36.957062, 35.029514, 54.772778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574585, 34.884315, 54.371403>,  <37.275070, 35.615574, 54.559696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574585, 34.884315, 54.371403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179310, 34.932774, 54.408958>,  <36.942146, 34.961849, 54.431492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179310, 34.932774, 54.408958>,  <37.574585, 34.884315, 54.371403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179310, 34.932774, 54.408958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121383, -0.244591, -0.961999,
		-0.093579, -0.962029, 0.256406,
		-0.988185, 0.121146, 0.093885,
		36.882854, 34.969116, 54.437122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212914, 34.239841, 54.322285>,  <37.574585, 34.884315, 54.371403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212914, 34.239841, 54.322285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992954, 34.548622, 54.194721>,  <36.860977, 34.733891, 54.118183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992954, 34.548622, 54.194721>,  <37.212914, 34.239841, 54.322285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992954, 34.548622, 54.194721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041529, -0.406618, -0.912654,
		-0.834198, -0.488625, 0.255657,
		-0.549900, 0.771951, -0.318907,
		36.827984, 34.780209, 54.099049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509445, 34.020157, 53.966000>,  <37.212914, 34.239841, 54.322285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509445, 34.020157, 53.966000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606106, 34.384766, 53.832893>,  <36.664104, 34.603531, 53.753029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606106, 34.384766, 53.832893>,  <36.509445, 34.020157, 53.966000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606106, 34.384766, 53.832893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078128, -0.323537, -0.942984,
		-0.967212, 0.253874, -0.006969,
		0.241653, 0.911522, -0.332764,
		36.678600, 34.658222, 53.733063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077827, 34.173065, 53.437878>,  <36.509445, 34.020157, 53.966000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077827, 34.173065, 53.437878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375984, 34.422581, 53.343822>,  <36.554878, 34.572289, 53.287388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375984, 34.422581, 53.343822>,  <36.077827, 34.173065, 53.437878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375984, 34.422581, 53.343822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079960, -0.266524, -0.960506,
		-0.661819, 0.734751, -0.148785,
		0.745387, 0.623784, -0.235141,
		36.599602, 34.609715, 53.273281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815891, 34.468189, 52.933899>,  <36.077827, 34.173065, 53.437878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815891, 34.468189, 52.933899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207203, 34.540306, 52.892982>,  <36.441990, 34.583576, 52.868431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207203, 34.540306, 52.892982>,  <35.815891, 34.468189, 52.933899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207203, 34.540306, 52.892982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088590, -0.082514, -0.992645,
		-0.187408, 0.980146, -0.064749,
		0.978279, 0.180293, -0.102295,
		36.500687, 34.594395, 52.862293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874584, 34.706551, 52.228989>,  <35.815891, 34.468189, 52.933899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874584, 34.706551, 52.228989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263924, 34.647575, 52.299244>,  <36.497528, 34.612190, 52.341396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263924, 34.647575, 52.299244>,  <35.874584, 34.706551, 52.228989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263924, 34.647575, 52.299244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203987, 0.206735, -0.956896,
		0.104776, 0.967223, 0.231302,
		0.973351, -0.147443, 0.175640,
		36.555927, 34.603344, 52.351936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215446, 35.151314, 51.884457>,  <35.874584, 34.706551, 52.228989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215446, 35.151314, 51.884457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489140, 34.861599, 51.918484>,  <36.653355, 34.687771, 51.938900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489140, 34.861599, 51.918484>,  <36.215446, 35.151314, 51.884457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489140, 34.861599, 51.918484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068872, -0.051948, -0.996272,
		0.726008, 0.687536, 0.014339,
		0.684228, -0.724289, 0.085066,
		36.694408, 34.644314, 51.944004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779964, 35.292538, 51.440281>,  <36.215446, 35.151314, 51.884457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779964, 35.292538, 51.440281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776154, 34.897377, 51.502209>,  <36.773869, 34.660282, 51.539364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776154, 34.897377, 51.502209>,  <36.779964, 35.292538, 51.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776154, 34.897377, 51.502209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039902, -0.155075, -0.987096,
		0.999158, -0.003222, 0.040895,
		-0.009523, -0.987897, 0.154816,
		36.773296, 34.601009, 51.548653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806953, 35.072887, 50.828903>,  <36.779964, 35.292538, 51.440281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806953, 35.072887, 50.828903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765030, 34.716370, 51.005363>,  <36.739876, 34.502460, 51.111240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765030, 34.716370, 51.005363>,  <36.806953, 35.072887, 50.828903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765030, 34.716370, 51.005363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071126, -0.449176, -0.890608,
		0.991945, -0.061969, 0.110473,
		-0.104812, -0.891292, 0.441151,
		36.733585, 34.448982, 51.137711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357101, 34.640781, 50.640266>,  <36.806953, 35.072887, 50.828903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357101, 34.640781, 50.640266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068008, 34.392204, 50.761238>,  <36.894550, 34.243057, 50.833820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068008, 34.392204, 50.761238>,  <37.357101, 34.640781, 50.640266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068008, 34.392204, 50.761238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028075, -0.410827, -0.911281,
		0.690555, -0.667105, 0.279472,
		-0.722735, -0.621443, 0.302427,
		36.851189, 34.205772, 50.851967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671635, 33.876991, 50.508625>,  <37.357101, 34.640781, 50.640266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671635, 33.876991, 50.508625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273628, 33.841465, 50.526756>,  <37.034824, 33.820148, 50.537636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273628, 33.841465, 50.526756>,  <37.671635, 33.876991, 50.508625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273628, 33.841465, 50.526756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033360, -0.131874, -0.990705,
		0.093969, -0.987280, 0.128254,
		-0.995016, -0.088817, 0.045327,
		36.975124, 33.814819, 50.540356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572464, 33.324257, 50.193771>,  <37.671635, 33.876991, 50.508625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572464, 33.324257, 50.193771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217575, 33.508766, 50.197018>,  <37.004642, 33.619473, 50.198967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217575, 33.508766, 50.197018>,  <37.572464, 33.324257, 50.193771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217575, 33.508766, 50.197018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089052, -0.153969, -0.984055,
		-0.452670, -0.873796, 0.177682,
		-0.887220, 0.461274, 0.008116,
		36.951408, 33.647148, 50.199451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085545, 32.868694, 49.864784>,  <37.572464, 33.324257, 50.193771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085545, 32.868694, 49.864784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951061, 33.243500, 49.826881>,  <36.870373, 33.468384, 49.804138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951061, 33.243500, 49.826881>,  <37.085545, 32.868694, 49.864784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951061, 33.243500, 49.826881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310346, -0.205222, -0.928208,
		-0.889185, -0.282662, 0.359794,
		-0.336207, 0.937009, -0.094757,
		36.850201, 33.524601, 49.798454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603859, 32.845207, 49.418011>,  <37.085545, 32.868694, 49.864784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603859, 32.845207, 49.418011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626816, 33.244545, 49.416668>,  <36.640591, 33.484150, 49.415863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626816, 33.244545, 49.416668>,  <36.603859, 32.845207, 49.418011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626816, 33.244545, 49.416668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513209, 0.026617, -0.857851,
		-0.856343, 0.050955, 0.513888,
		0.057390, 0.998346, -0.003357,
		36.644032, 33.544048, 49.415661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023457, 33.025837, 49.060226>,  <36.603859, 32.845207, 49.418011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023457, 33.025837, 49.060226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229862, 33.367935, 49.041122>,  <36.353706, 33.573196, 49.029659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229862, 33.367935, 49.041122>,  <36.023457, 33.025837, 49.060226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229862, 33.367935, 49.041122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440099, 0.216877, -0.871365,
		-0.734875, 0.470656, 0.488305,
		0.516015, 0.855247, -0.047758,
		36.384666, 33.624508, 49.026794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505630, 33.622726, 49.042919>,  <36.023457, 33.025837, 49.060226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505630, 33.622726, 49.042919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862747, 33.706093, 48.883175>,  <36.077019, 33.756111, 48.787327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862747, 33.706093, 48.883175>,  <35.505630, 33.622726, 49.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862747, 33.706093, 48.883175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432122, 0.145778, -0.889955,
		-0.127262, 0.967115, 0.220210,
		0.892790, 0.208415, -0.399360,
		36.130585, 33.768616, 48.763367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422409, 34.172764, 48.467300>,  <35.505630, 33.622726, 49.042919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422409, 34.172764, 48.467300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778385, 34.009537, 48.385818>,  <35.991970, 33.911602, 48.336929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778385, 34.009537, 48.385818>,  <35.422409, 34.172764, 48.467300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778385, 34.009537, 48.385818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201538, 0.048823, -0.978263,
		0.409140, 0.911647, -0.038791,
		0.889936, -0.408065, -0.203707,
		36.045364, 33.887115, 48.324707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649403, 34.471207, 47.818432>,  <35.422409, 34.172764, 48.467300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649403, 34.471207, 47.818432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867680, 34.138340, 47.857857>,  <35.998646, 33.938618, 47.881512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867680, 34.138340, 47.857857>,  <35.649403, 34.471207, 47.818432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867680, 34.138340, 47.857857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209953, -0.249641, -0.945304,
		0.811260, 0.495148, -0.310943,
		0.545689, -0.832171, 0.098566,
		36.031387, 33.888687, 47.887428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181461, 34.557598, 47.383835>,  <35.649403, 34.471207, 47.818432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181461, 34.557598, 47.383835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129707, 34.164383, 47.435833>,  <36.098656, 33.928455, 47.467033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129707, 34.164383, 47.435833>,  <36.181461, 34.557598, 47.383835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129707, 34.164383, 47.435833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102007, -0.117210, -0.987854,
		0.986334, -0.141071, -0.085112,
		-0.129382, -0.983036, 0.129999,
		36.090893, 33.869473, 47.474834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557610, 34.249947, 46.926559>,  <36.181461, 34.557598, 47.383835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557610, 34.249947, 46.926559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306229, 33.949440, 47.007214>,  <36.155399, 33.769138, 47.055607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306229, 33.949440, 47.007214>,  <36.557610, 34.249947, 46.926559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306229, 33.949440, 47.007214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158566, -0.130045, -0.978747,
		0.761517, -0.647065, -0.037398,
		-0.628449, -0.751262, 0.201635,
		36.117695, 33.724060, 47.067703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904495, 33.667393, 46.552048>,  <36.557610, 34.249947, 46.926559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904495, 33.667393, 46.552048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513119, 33.606133, 46.607483>,  <36.278294, 33.569378, 46.640743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513119, 33.606133, 46.607483>,  <36.904495, 33.667393, 46.552048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513119, 33.606133, 46.607483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087108, -0.302422, -0.949186,
		0.187282, -0.940790, 0.282560,
		-0.978436, -0.153152, 0.138588,
		36.219589, 33.560188, 46.649059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790276, 33.078236, 46.272167>,  <36.904495, 33.667393, 46.552048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790276, 33.078236, 46.272167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409355, 33.195805, 46.304974>,  <36.180801, 33.266346, 46.324657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409355, 33.195805, 46.304974>,  <36.790276, 33.078236, 46.272167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409355, 33.195805, 46.304974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141330, -0.186618, -0.972214,
		-0.270444, -0.937436, 0.219257,
		-0.952305, 0.293917, 0.082018,
		36.123665, 33.283981, 46.329578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282646, 32.479069, 46.058857>,  <36.790276, 33.078236, 46.272167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282646, 32.479069, 46.058857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101101, 32.834122, 46.027550>,  <35.992172, 33.047153, 46.008766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101101, 32.834122, 46.027550>,  <36.282646, 32.479069, 46.058857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101101, 32.834122, 46.027550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323937, -0.246184, -0.913487,
		-0.830105, -0.389243, 0.399269,
		-0.453862, 0.887628, -0.078269,
		35.964943, 33.100410, 46.004070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630020, 32.276031, 45.652065>,  <36.282646, 32.479069, 46.058857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630020, 32.276031, 45.652065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671875, 32.672298, 45.617111>,  <35.696987, 32.910057, 45.596138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671875, 32.672298, 45.617111>,  <35.630020, 32.276031, 45.652065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671875, 32.672298, 45.617111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400635, -0.038436, -0.915431,
		-0.910243, 0.130801, 0.392873,
		0.104639, 0.990663, -0.087389,
		35.703266, 32.969498, 45.590893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995884, 32.526897, 45.459373>,  <35.630020, 32.276031, 45.652065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995884, 32.526897, 45.459373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251331, 32.821495, 45.370171>,  <35.404602, 32.998253, 45.316647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251331, 32.821495, 45.370171>,  <34.995884, 32.526897, 45.459373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251331, 32.821495, 45.370171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417472, 0.088137, -0.904405,
		-0.646437, 0.670674, 0.363753,
		0.638621, 0.736497, -0.223012,
		35.442917, 33.042446, 45.303268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566219, 32.985336, 45.106110>,  <34.995884, 32.526897, 45.459373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566219, 32.985336, 45.106110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928600, 33.123447, 45.008102>,  <35.146030, 33.206314, 44.949299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928600, 33.123447, 45.008102>,  <34.566219, 32.985336, 45.106110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928600, 33.123447, 45.008102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278689, 0.050664, -0.959044,
		-0.318720, 0.937133, 0.142124,
		0.905952, 0.345275, -0.245021,
		35.200386, 33.227032, 44.934597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497059, 33.560112, 44.626987>,  <34.566219, 32.985336, 45.106110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497059, 33.560112, 44.626987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865150, 33.417545, 44.562302>,  <35.086006, 33.332005, 44.523491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865150, 33.417545, 44.562302>,  <34.497059, 33.560112, 44.626987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865150, 33.417545, 44.562302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206170, -0.090217, -0.974348,
		0.332682, 0.929962, -0.156501,
		0.920226, -0.356414, -0.161717,
		35.141220, 33.310619, 44.513786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768723, 33.895020, 44.022266>,  <34.497059, 33.560112, 44.626987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768723, 33.895020, 44.022266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003860, 33.574661, 44.067886>,  <35.144943, 33.382446, 44.095257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003860, 33.574661, 44.067886>,  <34.768723, 33.895020, 44.022266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003860, 33.574661, 44.067886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050251, -0.176859, -0.982953,
		0.807413, 0.572090, -0.144211,
		0.587842, -0.800896, 0.114050,
		35.180214, 33.334393, 44.102100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176617, 33.989853, 43.524525>,  <34.768723, 33.895020, 44.022266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176617, 33.989853, 43.524525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217918, 33.606998, 43.632767>,  <35.242699, 33.377285, 43.697712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217918, 33.606998, 43.632767>,  <35.176617, 33.989853, 43.524525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217918, 33.606998, 43.632767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076391, -0.278882, -0.957282,
		0.991718, 0.078170, -0.101912,
		0.103252, -0.957139, 0.270601,
		35.248894, 33.319859, 43.713947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668667, 33.759544, 43.048920>,  <35.176617, 33.989853, 43.524525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668667, 33.759544, 43.048920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479374, 33.436901, 43.190582>,  <35.365799, 33.243313, 43.275581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479374, 33.436901, 43.190582>,  <35.668667, 33.759544, 43.048920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479374, 33.436901, 43.190582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145143, -0.325140, -0.934461,
		0.868897, -0.493624, 0.036794,
		-0.473235, -0.806610, 0.354159,
		35.337402, 33.194920, 43.296829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990250, 33.193207, 42.747505>,  <35.668667, 33.759544, 43.048920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990250, 33.193207, 42.747505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627636, 33.067482, 42.860222>,  <35.410069, 32.992046, 42.927853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627636, 33.067482, 42.860222>,  <35.990250, 33.193207, 42.747505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627636, 33.067482, 42.860222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154902, -0.373278, -0.914696,
		0.392686, -0.872852, 0.289701,
		-0.906534, -0.314313, 0.281788,
		35.355675, 32.973186, 42.944759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985981, 32.517883, 42.546970>,  <35.990250, 33.193207, 42.747505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985981, 32.517883, 42.546970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600616, 32.595894, 42.620502>,  <35.369396, 32.642700, 42.664623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600616, 32.595894, 42.620502>,  <35.985981, 32.517883, 42.546970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600616, 32.595894, 42.620502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255326, -0.459339, -0.850774,
		-0.081485, -0.866586, 0.492331,
		-0.963415, 0.195030, 0.183833,
		35.311592, 32.654404, 42.675652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495529, 31.843573, 42.480782>,  <35.985981, 32.517883, 42.546970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495529, 31.843573, 42.480782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280262, 32.173923, 42.413490>,  <35.151104, 32.372135, 42.373116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280262, 32.173923, 42.413490>,  <35.495529, 31.843573, 42.480782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280262, 32.173923, 42.413490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315548, -0.382510, -0.868398,
		-0.781542, -0.414258, 0.466458,
		-0.538165, 0.825879, -0.168229,
		35.118813, 32.421688, 42.363022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046574, 31.508549, 42.122284>,  <35.495529, 31.843573, 42.480782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046574, 31.508549, 42.122284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984840, 31.897768, 42.053745>,  <34.947800, 32.131298, 42.012623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984840, 31.897768, 42.053745>,  <35.046574, 31.508549, 42.122284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984840, 31.897768, 42.053745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373016, -0.217977, -0.901857,
		-0.914899, -0.075268, 0.396603,
		-0.154331, 0.973047, -0.171351,
		34.938541, 32.189682, 42.002338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267838, 31.627897, 41.977207>,  <35.046574, 31.508549, 42.122284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267838, 31.627897, 41.977207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503883, 31.903212, 41.808434>,  <34.645512, 32.068401, 41.707169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503883, 31.903212, 41.808434>,  <34.267838, 31.627897, 41.977207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503883, 31.903212, 41.808434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378278, -0.225972, -0.897687,
		-0.713210, 0.689347, 0.127013,
		0.590117, 0.688286, -0.421930,
		34.680920, 32.109695, 41.681854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814384, 31.979927, 41.581593>,  <34.267838, 31.627897, 41.977207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814384, 31.979927, 41.581593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177864, 32.062035, 41.436195>,  <34.395954, 32.111298, 41.348957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177864, 32.062035, 41.436195>,  <33.814384, 31.979927, 41.581593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177864, 32.062035, 41.436195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323226, -0.205055, -0.923838,
		-0.264172, 0.956983, -0.119985,
		0.908701, 0.205270, -0.363491,
		34.450474, 32.123615, 41.327148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680759, 32.324093, 40.922501>,  <33.814384, 31.979927, 41.581593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680759, 32.324093, 40.922501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070087, 32.242611, 40.880245>,  <34.303684, 32.193722, 40.854893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070087, 32.242611, 40.880245>,  <33.680759, 32.324093, 40.922501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070087, 32.242611, 40.880245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132837, -0.124813, -0.983248,
		0.187109, 0.971044, -0.148542,
		0.973316, -0.203706, -0.105637,
		34.362083, 32.181499, 40.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943634, 32.761192, 40.349861>,  <33.680759, 32.324093, 40.922501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943634, 32.761192, 40.349861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197899, 32.453503, 40.375835>,  <34.350460, 32.268887, 40.391422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197899, 32.453503, 40.375835>,  <33.943634, 32.761192, 40.349861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197899, 32.453503, 40.375835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078867, -0.148394, -0.985778,
		0.767924, 0.621505, -0.154995,
		0.635667, -0.769228, 0.064940,
		34.388599, 32.222733, 40.395317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331059, 32.882782, 39.729168>,  <33.943634, 32.761192, 40.349861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331059, 32.882782, 39.729168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390701, 32.498219, 39.821651>,  <34.426487, 32.267479, 39.877140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390701, 32.498219, 39.821651>,  <34.331059, 32.882782, 39.729168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390701, 32.498219, 39.821651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068865, -0.243350, -0.967491,
		0.986421, 0.128334, -0.102492,
		0.149104, -0.961411, 0.231208,
		34.435432, 32.209797, 39.891014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826664, 32.550442, 39.293808>,  <34.331059, 32.882782, 39.729168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826664, 32.550442, 39.293808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632965, 32.231609, 39.438122>,  <34.516747, 32.040310, 39.524712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632965, 32.231609, 39.438122>,  <34.826664, 32.550442, 39.293808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632965, 32.231609, 39.438122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206474, -0.296607, -0.932413,
		0.850222, -0.526008, -0.020947,
		-0.484243, -0.797082, 0.360788,
		34.487694, 31.992485, 39.546360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104168, 32.051140, 38.913853>,  <34.826664, 32.550442, 39.293808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104168, 32.051140, 38.913853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733303, 31.951157, 39.025497>,  <34.510784, 31.891167, 39.092484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733303, 31.951157, 39.025497>,  <35.104168, 32.051140, 38.913853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733303, 31.951157, 39.025497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177170, -0.363905, -0.914431,
		0.330136, -0.897271, 0.293113,
		-0.927158, -0.249956, 0.279108,
		34.455154, 31.876169, 39.109230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843594, 32.299515, 39.202702>,  <35.104168, 32.051140, 38.913853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843594, 32.299515, 39.202702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105228, 32.566620, 39.060562>,  <36.262207, 32.726883, 38.975281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105228, 32.566620, 39.060562>,  <35.843594, 32.299515, 39.202702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105228, 32.566620, 39.060562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386471, 0.108816, 0.915860,
		0.650241, -0.736381, -0.186894,
		0.654085, 0.667759, -0.355347,
		36.301453, 32.766949, 38.953957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509438, 32.058735, 39.127228>,  <35.843594, 32.299515, 39.202702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509438, 32.058735, 39.127228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567337, 32.452686, 39.165318>,  <36.602077, 32.689056, 39.188171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567337, 32.452686, 39.165318>,  <36.509438, 32.058735, 39.127228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567337, 32.452686, 39.165318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555068, -0.160493, 0.816175,
		0.819114, -0.065284, -0.569904,
		0.144749, 0.984876, 0.095224,
		36.610764, 32.748150, 39.193886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188194, 32.108852, 39.171856>,  <36.509438, 32.058735, 39.127228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188194, 32.108852, 39.171856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024155, 32.440521, 39.323799>,  <36.925732, 32.639523, 39.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024155, 32.440521, 39.323799>,  <37.188194, 32.108852, 39.171856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024155, 32.440521, 39.323799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724884, 0.043568, 0.687492,
		0.553502, 0.557287, -0.618923,
		-0.410096, 0.829176, 0.379854,
		36.901127, 32.689274, 39.437756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768776, 32.534012, 39.442062>,  <37.188194, 32.108852, 39.171856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768776, 32.534012, 39.442062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433502, 32.670628, 39.612148>,  <37.232338, 32.752598, 39.714199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433502, 32.670628, 39.612148>,  <37.768776, 32.534012, 39.442062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433502, 32.670628, 39.612148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504235, 0.188145, 0.842822,
		0.207852, 0.920845, -0.329913,
		-0.838180, 0.341536, 0.425216,
		37.182049, 32.773087, 39.739712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940624, 33.211693, 39.633404>,  <37.768776, 32.534012, 39.442062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940624, 33.211693, 39.633404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629112, 33.093647, 39.854820>,  <37.442204, 33.022820, 39.987671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629112, 33.093647, 39.854820>,  <37.940624, 33.211693, 39.633404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629112, 33.093647, 39.854820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454398, 0.342948, 0.822137,
		-0.432459, 0.891793, -0.132983,
		-0.778782, -0.295114, 0.553540,
		37.395477, 33.005112, 40.020882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070442, 33.605999, 40.245926>,  <37.940624, 33.211693, 39.633404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070442, 33.605999, 40.245926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771400, 33.389900, 40.400444>,  <37.591976, 33.260242, 40.493156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771400, 33.389900, 40.400444>,  <38.070442, 33.605999, 40.245926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771400, 33.389900, 40.400444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252527, 0.306725, 0.917687,
		-0.614261, 0.783618, -0.092883,
		-0.747605, -0.540244, 0.386294,
		37.547119, 33.227829, 40.516331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723022, 33.977901, 40.707268>,  <38.070442, 33.605999, 40.245926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723022, 33.977901, 40.707268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626160, 33.605171, 40.815392>,  <37.568043, 33.381535, 40.880268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626160, 33.605171, 40.815392>,  <37.723022, 33.977901, 40.707268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626160, 33.605171, 40.815392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317243, 0.187246, 0.929675,
		-0.916907, 0.310879, 0.250272,
		-0.242154, -0.931823, 0.270311,
		37.553513, 33.325623, 40.896484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274326, 33.982693, 41.350494>,  <37.723022, 33.977901, 40.707268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274326, 33.982693, 41.350494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435478, 33.616646, 41.344158>,  <37.532169, 33.397018, 41.340355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435478, 33.616646, 41.344158>,  <37.274326, 33.982693, 41.350494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435478, 33.616646, 41.344158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213554, 0.077159, 0.973880,
		-0.889991, -0.395738, 0.226512,
		0.402878, -0.915116, -0.015840,
		37.556343, 33.342110, 41.339405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183079, 33.741550, 42.075161>,  <37.274326, 33.982693, 41.350494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183079, 33.741550, 42.075161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432629, 33.465096, 41.929222>,  <37.582359, 33.299221, 41.841660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432629, 33.465096, 41.929222>,  <37.183079, 33.741550, 42.075161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432629, 33.465096, 41.929222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316755, -0.203163, 0.926494,
		-0.714457, -0.693581, 0.092174,
		0.623873, -0.691137, -0.364847,
		37.619789, 33.257755, 41.819767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101875, 33.131245, 42.438061>,  <37.183079, 33.741550, 42.075161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101875, 33.131245, 42.438061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471382, 33.127403, 42.284927>,  <37.693085, 33.125099, 42.193047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471382, 33.127403, 42.284927>,  <37.101875, 33.131245, 42.438061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471382, 33.127403, 42.284927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382935, 0.032794, 0.923193,
		0.003676, -0.999416, 0.033977,
		0.923768, -0.009617, -0.382832,
		37.748512, 33.124519, 42.170078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387028, 32.609520, 42.700199>,  <37.101875, 33.131245, 42.438061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387028, 32.609520, 42.700199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721752, 32.786964, 42.571854>,  <37.922588, 32.893433, 42.494846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721752, 32.786964, 42.571854>,  <37.387028, 32.609520, 42.700199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721752, 32.786964, 42.571854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458854, -0.248572, 0.853033,
		0.298659, -0.861057, -0.411562,
		0.836813, 0.443613, -0.320861,
		37.972797, 32.920048, 42.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889030, 32.115398, 42.896751>,  <37.387028, 32.609520, 42.700199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889030, 32.115398, 42.896751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066956, 32.471382, 42.856510>,  <38.173710, 32.684971, 42.832363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066956, 32.471382, 42.856510>,  <37.889030, 32.115398, 42.896751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066956, 32.471382, 42.856510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322294, -0.054250, 0.945084,
		0.835625, -0.452808, -0.310959,
		0.444812, 0.889956, -0.100605,
		38.200397, 32.738369, 42.826328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588093, 32.004833, 43.100826>,  <37.889030, 32.115398, 42.896751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588093, 32.004833, 43.100826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505505, 32.393509, 43.146763>,  <38.455952, 32.626713, 43.174324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505505, 32.393509, 43.146763>,  <38.588093, 32.004833, 43.100826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505505, 32.393509, 43.146763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202839, -0.072313, 0.976538,
		0.957196, 0.224925, -0.182165,
		-0.206475, 0.971689, 0.114842,
		38.443562, 32.685017, 43.181217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905235, 32.136276, 43.698105>,  <38.588093, 32.004833, 43.100826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905235, 32.136276, 43.698105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692646, 32.473324, 43.663387>,  <38.565094, 32.675552, 43.642555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692646, 32.473324, 43.663387>,  <38.905235, 32.136276, 43.698105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692646, 32.473324, 43.663387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083691, 0.154196, 0.984489,
		0.842933, 0.515961, -0.152471,
		-0.531469, 0.842619, -0.086796,
		38.533207, 32.726109, 43.637348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303650, 32.706608, 44.028618>,  <38.905235, 32.136276, 43.698105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303650, 32.706608, 44.028618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916256, 32.805847, 44.037457>,  <38.683819, 32.865391, 44.042759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916256, 32.805847, 44.037457>,  <39.303650, 32.706608, 44.028618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916256, 32.805847, 44.037457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091421, 0.271547, 0.958073,
		0.231696, 0.929897, -0.285670,
		-0.968483, 0.248098, 0.022095,
		38.625710, 32.880276, 44.044086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253391, 33.323971, 44.239067>,  <39.303650, 32.706608, 44.028618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253391, 33.323971, 44.239067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883736, 33.186279, 44.305359>,  <38.661942, 33.103664, 44.345135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883736, 33.186279, 44.305359>,  <39.253391, 33.323971, 44.239067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883736, 33.186279, 44.305359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051397, 0.541874, 0.838887,
		-0.378574, 0.766733, -0.518461,
		-0.924143, -0.344228, 0.165731,
		38.606491, 33.083012, 44.355080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909782, 33.896076, 44.574570>,  <39.253391, 33.323971, 44.239067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909782, 33.896076, 44.574570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685184, 33.573559, 44.648998>,  <38.550426, 33.380047, 44.693657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685184, 33.573559, 44.648998>,  <38.909782, 33.896076, 44.574570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685184, 33.573559, 44.648998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218185, 0.361163, 0.906618,
		-0.798200, 0.468460, -0.378711,
		-0.561490, -0.806292, 0.186070,
		38.516739, 33.331673, 44.704819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231834, 34.153934, 44.825249>,  <38.909782, 33.896076, 44.574570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231834, 34.153934, 44.825249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298836, 33.782391, 44.957413>,  <38.339039, 33.559464, 45.036709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298836, 33.782391, 44.957413>,  <38.231834, 34.153934, 44.825249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298836, 33.782391, 44.957413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094931, 0.318388, 0.943195,
		-0.981290, -0.189357, -0.034845,
		0.167507, -0.928856, 0.330407,
		38.349087, 33.503735, 45.056534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739151, 34.072350, 45.290203>,  <38.231834, 34.153934, 44.825249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739151, 34.072350, 45.290203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029743, 33.805630, 45.356655>,  <38.204098, 33.645596, 45.396526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029743, 33.805630, 45.356655>,  <37.739151, 34.072350, 45.290203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029743, 33.805630, 45.356655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005208, 0.236408, 0.971640,
		-0.687166, -0.706744, 0.168273,
		0.726482, -0.666801, 0.166132,
		38.247688, 33.605591, 45.406494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586777, 33.643585, 45.950222>,  <37.739151, 34.072350, 45.290203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586777, 33.643585, 45.950222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969040, 33.527973, 45.927666>,  <38.198399, 33.458607, 45.914131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969040, 33.527973, 45.927666>,  <37.586777, 33.643585, 45.950222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969040, 33.527973, 45.927666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148868, 0.308952, 0.939355,
		-0.254075, -0.906097, 0.338279,
		0.955659, -0.289026, -0.056392,
		38.255737, 33.441265, 45.910748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673622, 33.365982, 46.592777>,  <37.586777, 33.643585, 45.950222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673622, 33.365982, 46.592777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045086, 33.441803, 46.465237>,  <38.267963, 33.487297, 46.388714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045086, 33.441803, 46.465237>,  <37.673622, 33.365982, 46.592777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045086, 33.441803, 46.465237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164221, 0.560653, 0.811603,
		0.332604, -0.806063, 0.489527,
		0.928658, 0.189552, -0.318848,
		38.323685, 33.498669, 46.369583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053032, 33.263412, 47.104919>,  <37.673622, 33.365982, 46.592777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053032, 33.263412, 47.104919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313393, 33.474514, 46.886635>,  <38.469608, 33.601173, 46.755665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313393, 33.474514, 46.886635>,  <38.053032, 33.263412, 47.104919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313393, 33.474514, 46.886635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328928, 0.451801, 0.829266,
		0.684202, -0.719271, 0.120485,
		0.650903, 0.527754, -0.545712,
		38.508663, 33.632839, 46.722919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760120, 33.188263, 47.398842>,  <38.053032, 33.263412, 47.104919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760120, 33.188263, 47.398842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719761, 33.537418, 47.207890>,  <38.695545, 33.746910, 47.093319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719761, 33.537418, 47.207890>,  <38.760120, 33.188263, 47.398842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719761, 33.537418, 47.207890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235289, 0.487153, 0.841024,
		0.966674, -0.027462, -0.254534,
		-0.100901, 0.872885, -0.477380,
		38.689491, 33.799282, 47.064674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160114, 33.641655, 47.778179>,  <38.760120, 33.188263, 47.398842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160114, 33.641655, 47.778179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961071, 33.901245, 47.547974>,  <38.841644, 34.056999, 47.409851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961071, 33.901245, 47.547974>,  <39.160114, 33.641655, 47.778179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961071, 33.901245, 47.547974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115561, 0.607975, 0.785502,
		0.859671, 0.457377, -0.227535,
		-0.497606, 0.648979, -0.575513,
		38.811790, 34.095940, 47.375320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527332, 34.290684, 47.729462>,  <39.160114, 33.641655, 47.778179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527332, 34.290684, 47.729462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149593, 34.391651, 47.645096>,  <38.922951, 34.452232, 47.594475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149593, 34.391651, 47.645096>,  <39.527332, 34.290684, 47.729462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149593, 34.391651, 47.645096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022509, 0.689293, 0.724133,
		0.328168, 0.679089, -0.656616,
		-0.944351, 0.252417, -0.210919,
		38.866287, 34.467377, 47.581821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528694, 34.965256, 47.774681>,  <39.527332, 34.290684, 47.729462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528694, 34.965256, 47.774681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139271, 34.884800, 47.817982>,  <38.905617, 34.836525, 47.843960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139271, 34.884800, 47.817982>,  <39.528694, 34.965256, 47.774681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139271, 34.884800, 47.817982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071805, 0.719371, 0.690905,
		-0.216842, 0.664866, -0.714795,
		-0.973562, -0.201143, 0.108249,
		38.847202, 34.824455, 47.850456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170418, 35.601521, 47.726444>,  <39.528694, 34.965256, 47.774681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170418, 35.601521, 47.726444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967701, 35.341095, 47.952465>,  <38.846073, 35.184837, 48.088078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967701, 35.341095, 47.952465>,  <39.170418, 35.601521, 47.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967701, 35.341095, 47.952465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048274, 0.675859, 0.735448,
		-0.860718, 0.345439, -0.373947,
		-0.506788, -0.651066, 0.565048,
		38.815666, 35.145775, 48.121979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567516, 35.941902, 47.856232>,  <39.170418, 35.601521, 47.726444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567516, 35.941902, 47.856232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615383, 35.642979, 48.117676>,  <38.644104, 35.463623, 48.274540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615383, 35.642979, 48.117676>,  <38.567516, 35.941902, 47.856232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615383, 35.642979, 48.117676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064306, 0.662791, 0.746038,
		-0.990729, -0.047245, 0.127370,
		0.119667, -0.747313, 0.653608,
		38.651283, 35.418785, 48.313759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247246, 36.178520, 48.406822>,  <38.567516, 35.941902, 47.856232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247246, 36.178520, 48.406822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448029, 35.869381, 48.562122>,  <38.568501, 35.683899, 48.655304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448029, 35.869381, 48.562122>,  <38.247246, 36.178520, 48.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448029, 35.869381, 48.562122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059437, 0.478668, 0.875982,
		-0.862847, -0.416630, 0.286208,
		0.501959, -0.772849, 0.388254,
		38.598618, 35.637527, 48.678600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006474, 35.984203, 49.075191>,  <38.247246, 36.178520, 48.406822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006474, 35.984203, 49.075191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366684, 35.823704, 49.142193>,  <38.582809, 35.727406, 49.182396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366684, 35.823704, 49.142193>,  <38.006474, 35.984203, 49.075191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366684, 35.823704, 49.142193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008771, 0.368401, 0.929626,
		-0.434720, -0.838619, 0.328234,
		0.900523, -0.401248, 0.167507,
		38.636841, 35.703331, 49.192444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925419, 35.585442, 49.687893>,  <38.006474, 35.984203, 49.075191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925419, 35.585442, 49.687893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315907, 35.656361, 49.638008>,  <38.550201, 35.698914, 49.608078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315907, 35.656361, 49.638008>,  <37.925419, 35.585442, 49.687893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315907, 35.656361, 49.638008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056310, 0.348164, 0.935741,
		0.209323, -0.920515, 0.329902,
		0.976224, 0.177295, -0.124713,
		38.608772, 35.709549, 49.600594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230495, 35.136925, 50.238846>,  <37.925419, 35.585442, 49.687893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230495, 35.136925, 50.238846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506580, 35.408997, 50.140083>,  <38.672230, 35.572239, 50.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506580, 35.408997, 50.140083>,  <38.230495, 35.136925, 50.238846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506580, 35.408997, 50.140083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175417, 0.173761, 0.969039,
		0.702022, -0.712155, 0.000617,
		0.690213, 0.680178, -0.246908,
		38.713646, 35.613049, 50.066010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793491, 34.968117, 50.631756>,  <38.230495, 35.136925, 50.238846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793491, 34.968117, 50.631756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851349, 35.357578, 50.561253>,  <38.886063, 35.591255, 50.518951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851349, 35.357578, 50.561253>,  <38.793491, 34.968117, 50.631756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851349, 35.357578, 50.561253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152658, 0.154038, 0.976201,
		0.977636, -0.168112, -0.126355,
		0.144648, 0.973658, -0.176257,
		38.894745, 35.649677, 50.508377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351540, 35.289692, 51.179573>,  <38.793491, 34.968117, 50.631756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351540, 35.289692, 51.179573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187538, 35.612778, 51.010105>,  <39.089138, 35.806629, 50.908424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187538, 35.612778, 51.010105>,  <39.351540, 35.289692, 51.179573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187538, 35.612778, 51.010105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030346, 0.452173, 0.891414,
		0.911579, 0.378340, -0.160882,
		-0.410004, 0.807712, -0.423672,
		39.064537, 35.855091, 50.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705967, 35.843201, 51.309963>,  <39.351540, 35.289692, 51.179573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705967, 35.843201, 51.309963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356033, 36.022083, 51.235470>,  <39.146072, 36.129414, 51.190773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356033, 36.022083, 51.235470>,  <39.705967, 35.843201, 51.309963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356033, 36.022083, 51.235470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079400, 0.511600, 0.855547,
		0.477878, 0.733672, -0.483071,
		-0.874830, 0.447203, -0.186230,
		39.093586, 36.156242, 51.179600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827286, 36.471092, 51.667923>,  <39.705967, 35.843201, 51.309963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827286, 36.471092, 51.667923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431358, 36.431206, 51.627277>,  <39.193802, 36.407276, 51.602890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431358, 36.431206, 51.627277>,  <39.827286, 36.471092, 51.667923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431358, 36.431206, 51.627277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131746, 0.371093, 0.919203,
		-0.053949, 0.923227, -0.380449,
		-0.989814, -0.099713, -0.101611,
		39.134415, 36.401291, 51.596794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514957, 36.998386, 51.998901>,  <39.827286, 36.471092, 51.667923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514957, 36.998386, 51.998901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182674, 36.777657, 51.969479>,  <38.983303, 36.645218, 51.951824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182674, 36.777657, 51.969479>,  <39.514957, 36.998386, 51.998901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182674, 36.777657, 51.969479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256223, 0.261673, 0.930525,
		-0.494235, 0.791846, -0.358764,
		-0.830711, -0.551822, -0.073561,
		38.933460, 36.612110, 51.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878513, 37.450111, 52.269432>,  <39.514957, 36.998386, 51.998901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878513, 37.450111, 52.269432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832756, 37.053299, 52.290558>,  <38.805302, 36.815212, 52.303234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832756, 37.053299, 52.290558>,  <38.878513, 37.450111, 52.269432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832756, 37.053299, 52.290558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255861, 0.080791, 0.963331,
		-0.959921, 0.096686, -0.263064,
		-0.114394, -0.992030, 0.052815,
		38.798439, 36.755692, 52.306404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604755, 37.863308, 52.199352>,  <38.878513, 37.450111, 52.269432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604755, 37.863308, 52.199352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905937, 38.121166, 52.146465>,  <40.086647, 38.275883, 52.114731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905937, 38.121166, 52.146465>,  <39.604755, 37.863308, 52.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905937, 38.121166, 52.146465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052843, -0.141045, -0.988592,
		-0.655944, 0.751355, -0.072136,
		0.752957, 0.644649, -0.132221,
		40.131824, 38.314560, 52.106800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331879, 38.305790, 51.671005>,  <39.604755, 37.863308, 52.199352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331879, 38.305790, 51.671005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729191, 38.352013, 51.673244>,  <39.967579, 38.379745, 51.674587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729191, 38.352013, 51.673244>,  <39.331879, 38.305790, 51.671005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729191, 38.352013, 51.673244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013121, -0.064419, -0.997837,
		-0.114950, 0.991209, -0.065502,
		0.993285, 0.115561, 0.005601,
		40.027176, 38.386681, 51.674923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536701, 38.715054, 51.106884>,  <39.331879, 38.305790, 51.671005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536701, 38.715054, 51.106884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878323, 38.527187, 51.196327>,  <40.083298, 38.414467, 51.249992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878323, 38.527187, 51.196327>,  <39.536701, 38.715054, 51.106884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878323, 38.527187, 51.196327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147743, -0.193156, -0.969981,
		0.498759, 0.861455, -0.095577,
		0.854056, -0.469666, 0.223612,
		40.134541, 38.386288, 51.263412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976135, 38.971313, 50.550426>,  <39.536701, 38.715054, 51.106884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976135, 38.971313, 50.550426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153530, 38.651455, 50.712353>,  <40.259968, 38.459538, 50.809509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153530, 38.651455, 50.712353>,  <39.976135, 38.971313, 50.550426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153530, 38.651455, 50.712353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356392, -0.257084, -0.898272,
		0.822375, 0.542647, 0.170975,
		0.443490, -0.799651, 0.404815,
		40.286575, 38.411560, 50.833797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632343, 38.958317, 50.238605>,  <39.976135, 38.971313, 50.550426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632343, 38.958317, 50.238605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539314, 38.584679, 50.346962>,  <40.483498, 38.360497, 50.411976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539314, 38.584679, 50.346962>,  <40.632343, 38.958317, 50.238605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539314, 38.584679, 50.346962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447403, -0.350059, -0.822976,
		0.863563, -0.070202, 0.499329,
		-0.232569, -0.934093, 0.270890,
		40.469543, 38.304451, 50.428230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141235, 38.580605, 50.111237>,  <40.632343, 38.958317, 50.238605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141235, 38.580605, 50.111237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854179, 38.302521, 50.094833>,  <40.681946, 38.135670, 50.084991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854179, 38.302521, 50.094833>,  <41.141235, 38.580605, 50.111237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854179, 38.302521, 50.094833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347800, -0.306762, -0.885964,
		0.603351, -0.650063, 0.461937,
		-0.717637, -0.695209, -0.041007,
		40.638889, 38.093960, 50.082531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402672, 38.088917, 49.562897>,  <41.141235, 38.580605, 50.111237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402672, 38.088917, 49.562897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033661, 37.960934, 49.649216>,  <40.812252, 37.884144, 49.701008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033661, 37.960934, 49.649216>,  <41.402672, 38.088917, 49.562897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033661, 37.960934, 49.649216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014789, -0.588063, -0.808680,
		0.385642, -0.742840, 0.547237,
		-0.922530, -0.319954, 0.215796,
		40.756901, 37.864948, 49.713955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425533, 37.331795, 49.473244>,  <41.402672, 38.088917, 49.562897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425533, 37.331795, 49.473244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046482, 37.441685, 49.408081>,  <40.819054, 37.507618, 49.368984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046482, 37.441685, 49.408081>,  <41.425533, 37.331795, 49.473244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046482, 37.441685, 49.408081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018108, -0.555438, -0.831361,
		-0.318875, -0.784868, 0.531321,
		-0.947624, 0.274721, -0.162902,
		40.762196, 37.524101, 49.359211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223003, 36.815506, 49.195450>,  <41.425533, 37.331795, 49.473244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223003, 36.815506, 49.195450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946964, 37.084492, 49.088448>,  <40.781342, 37.245884, 49.024246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946964, 37.084492, 49.088448>,  <41.223003, 36.815506, 49.195450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946964, 37.084492, 49.088448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213706, -0.542492, -0.812424,
		-0.691449, -0.503479, 0.518080,
		-0.690093, 0.672466, -0.267509,
		40.739937, 37.286232, 49.008194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561543, 36.458839, 49.140350>,  <41.223003, 36.815506, 49.195450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561543, 36.458839, 49.140350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540180, 36.777615, 48.899673>,  <40.527363, 36.968880, 48.755268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540180, 36.777615, 48.899673>,  <40.561543, 36.458839, 49.140350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540180, 36.777615, 48.899673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086967, -0.603974, -0.792245,
		-0.994779, 0.010015, 0.101565,
		-0.053408, 0.796941, -0.601692,
		40.524158, 37.016697, 48.719166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052906, 36.393845, 48.623013>,  <40.561543, 36.458839, 49.140350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052906, 36.393845, 48.623013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282028, 36.678017, 48.459461>,  <40.419502, 36.848518, 48.361332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282028, 36.678017, 48.459461>,  <40.052906, 36.393845, 48.623013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282028, 36.678017, 48.459461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012583, -0.506379, -0.862219,
		-0.819593, 0.488741, -0.298997,
		0.572807, 0.710432, -0.408875,
		40.453869, 36.891148, 48.336800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702862, 36.702305, 47.962063>,  <40.052906, 36.393845, 48.623013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702862, 36.702305, 47.962063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092548, 36.788635, 47.935760>,  <40.326359, 36.840435, 47.919979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092548, 36.788635, 47.935760>,  <39.702862, 36.702305, 47.962063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092548, 36.788635, 47.935760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017292, -0.362013, -0.932013,
		-0.224957, 0.906844, -0.356411,
		0.974215, 0.215826, -0.065756,
		40.384811, 36.853382, 47.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815342, 36.996796, 47.299522>,  <39.702862, 36.702305, 47.962063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815342, 36.996796, 47.299522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194305, 36.908493, 47.392204>,  <40.421684, 36.855511, 47.447815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194305, 36.908493, 47.392204>,  <39.815342, 36.996796, 47.299522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194305, 36.908493, 47.392204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163169, -0.289648, -0.943122,
		0.275319, 0.931326, -0.238393,
		0.947405, -0.220761, 0.231709,
		40.478527, 36.842266, 47.461716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237717, 37.393951, 46.804474>,  <39.815342, 36.996796, 47.299522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237717, 37.393951, 46.804474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437214, 37.084305, 46.960419>,  <40.556911, 36.898518, 47.053986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437214, 37.084305, 46.960419>,  <40.237717, 37.393951, 46.804474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437214, 37.084305, 46.960419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289644, -0.275087, -0.916752,
		0.816920, 0.570148, 0.087020,
		0.498746, -0.774118, 0.389864,
		40.586838, 36.852070, 47.077377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841022, 37.310974, 46.493103>,  <40.237717, 37.393951, 46.804474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841022, 37.310974, 46.493103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801208, 36.943672, 46.646416>,  <40.777321, 36.723289, 46.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801208, 36.943672, 46.646416>,  <40.841022, 37.310974, 46.493103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801208, 36.943672, 46.646416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315038, -0.394458, -0.863223,
		0.943845, 0.034828, 0.328547,
		-0.099533, -0.918254, 0.383280,
		40.771347, 36.668198, 46.761398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212234, 36.969685, 46.005806>,  <40.841022, 37.310974, 46.493103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212234, 36.969685, 46.005806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999939, 36.704170, 46.216591>,  <40.872562, 36.544861, 46.343063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999939, 36.704170, 46.216591>,  <41.212234, 36.969685, 46.005806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999939, 36.704170, 46.216591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012783, -0.615425, -0.788091,
		0.847437, -0.425010, 0.318147,
		-0.530742, -0.663791, 0.526967,
		40.840717, 36.505032, 46.374680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505688, 36.251202, 45.930691>,  <41.212234, 36.969685, 46.005806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505688, 36.251202, 45.930691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124363, 36.197556, 46.038914>,  <40.895569, 36.165367, 46.103848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124363, 36.197556, 46.038914>,  <41.505688, 36.251202, 45.930691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124363, 36.197556, 46.038914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128987, -0.629270, -0.766409,
		0.273039, -0.765528, 0.582594,
		-0.953316, -0.134113, 0.270558,
		40.838367, 36.157322, 46.120083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469772, 35.513653, 45.898544>,  <41.505688, 36.251202, 45.930691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469772, 35.513653, 45.898544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115601, 35.699276, 45.888271>,  <40.903095, 35.810650, 45.882107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115601, 35.699276, 45.888271>,  <41.469772, 35.513653, 45.898544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115601, 35.699276, 45.888271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233118, -0.491242, -0.839248,
		-0.402072, -0.737113, 0.543142,
		-0.885435, 0.464054, -0.025680,
		40.849972, 35.838493, 45.880566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925106, 34.964108, 45.804726>,  <41.469772, 35.513653, 45.898544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925106, 34.964108, 45.804726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733738, 35.299629, 45.700787>,  <40.618916, 35.500942, 45.638424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733738, 35.299629, 45.700787>,  <40.925106, 34.964108, 45.804726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733738, 35.299629, 45.700787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428061, -0.481142, -0.765027,
		-0.766733, -0.254773, 0.589247,
		-0.478419, 0.838805, -0.259849,
		40.590214, 35.551270, 45.622833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149776, 34.732536, 45.672955>,  <40.925106, 34.964108, 45.804726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149776, 34.732536, 45.672955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249329, 35.074413, 45.490719>,  <40.309059, 35.279541, 45.381378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249329, 35.074413, 45.490719>,  <40.149776, 34.732536, 45.672955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249329, 35.074413, 45.490719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367547, -0.351854, -0.860876,
		-0.896084, 0.381705, 0.226570,
		0.248881, 0.854693, -0.455585,
		40.323994, 35.330822, 45.354042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667652, 34.749596, 45.200592>,  <40.149776, 34.732536, 45.672955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667652, 34.749596, 45.200592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924805, 35.018330, 45.053436>,  <40.079098, 35.179569, 44.965145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924805, 35.018330, 45.053436>,  <39.667652, 34.749596, 45.200592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924805, 35.018330, 45.053436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411918, -0.101687, -0.905529,
		-0.645777, 0.733686, 0.211369,
		0.642881, 0.671837, -0.367886,
		40.117668, 35.219879, 44.943069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282177, 35.187386, 44.847145>,  <39.667652, 34.749596, 45.200592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282177, 35.187386, 44.847145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635681, 35.272598, 44.680492>,  <39.847782, 35.323727, 44.580502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635681, 35.272598, 44.680492>,  <39.282177, 35.187386, 44.847145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635681, 35.272598, 44.680492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428536, 0.010841, -0.903460,
		-0.187945, 0.976986, 0.100870,
		0.883761, 0.213027, -0.416636,
		39.900810, 35.336506, 44.555500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188625, 35.772278, 44.369690>,  <39.282177, 35.187386, 44.847145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188625, 35.772278, 44.369690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515347, 35.574986, 44.249989>,  <39.711380, 35.456612, 44.178169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515347, 35.574986, 44.249989>,  <39.188625, 35.772278, 44.369690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515347, 35.574986, 44.249989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294226, 0.090029, -0.951486,
		0.496245, 0.865226, -0.071586,
		0.816806, -0.493232, -0.299249,
		39.760387, 35.427017, 44.160213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299217, 35.966972, 43.697197>,  <39.188625, 35.772278, 44.369690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299217, 35.966972, 43.697197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541649, 35.648811, 43.697865>,  <39.687107, 35.457916, 43.698265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541649, 35.648811, 43.697865>,  <39.299217, 35.966972, 43.697197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541649, 35.648811, 43.697865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074724, -0.059026, -0.995456,
		0.791885, 0.603203, -0.095211,
		0.606081, -0.795401, 0.001668,
		39.723473, 35.410191, 43.698364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816826, 36.057213, 43.085777>,  <39.299217, 35.966972, 43.697197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816826, 36.057213, 43.085777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784229, 35.674229, 43.196503>,  <39.764671, 35.444439, 43.262939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784229, 35.674229, 43.196503>,  <39.816826, 36.057213, 43.085777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784229, 35.674229, 43.196503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119947, -0.266297, -0.956399,
		0.989430, -0.111144, -0.093143,
		-0.081494, -0.957462, 0.276813,
		39.759781, 35.386990, 43.279545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276169, 35.676365, 42.691933>,  <39.816826, 36.057213, 43.085777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276169, 35.676365, 42.691933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037094, 35.387287, 42.830772>,  <39.893650, 35.213840, 42.914078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037094, 35.387287, 42.830772>,  <40.276169, 35.676365, 42.691933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037094, 35.387287, 42.830772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056163, -0.394131, -0.917336,
		0.799760, -0.567775, 0.194979,
		-0.597688, -0.722698, 0.347098,
		39.857788, 35.170479, 42.934902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607357, 35.028091, 42.529846>,  <40.276169, 35.676365, 42.691933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607357, 35.028091, 42.529846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214798, 34.954906, 42.553120>,  <39.979263, 34.910995, 42.567085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214798, 34.954906, 42.553120>,  <40.607357, 35.028091, 42.529846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214798, 34.954906, 42.553120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032193, -0.455580, -0.889613,
		0.189277, -0.871189, 0.452994,
		-0.981396, -0.182966, 0.058185,
		39.920380, 34.900017, 42.570576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601856, 34.408684, 42.217957>,  <40.607357, 35.028091, 42.529846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601856, 34.408684, 42.217957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224976, 34.542515, 42.225010>,  <39.998848, 34.622814, 42.229240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224976, 34.542515, 42.225010>,  <40.601856, 34.408684, 42.217957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224976, 34.542515, 42.225010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172069, -0.438050, -0.882329,
		-0.287487, -0.834366, 0.470303,
		-0.942202, 0.334582, 0.017635,
		39.942314, 34.642891, 42.230301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320488, 33.887115, 41.985886>,  <40.601856, 34.408684, 42.217957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320488, 33.887115, 41.985886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075302, 34.195240, 41.915577>,  <39.928192, 34.380116, 41.873390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075302, 34.195240, 41.915577>,  <40.320488, 33.887115, 41.985886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075302, 34.195240, 41.915577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231818, -0.388017, -0.892022,
		-0.755338, -0.506030, 0.416412,
		-0.612964, 0.770310, -0.175777,
		39.891411, 34.426334, 41.862843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749443, 33.587757, 41.602596>,  <40.320488, 33.887115, 41.985886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749443, 33.587757, 41.602596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738312, 33.981667, 41.533951>,  <39.731632, 34.218010, 41.492764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738312, 33.981667, 41.533951>,  <39.749443, 33.587757, 41.602596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738312, 33.981667, 41.533951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294342, -0.172140, -0.940070,
		-0.955295, 0.024349, 0.294650,
		-0.027831, 0.984771, -0.171611,
		39.729961, 34.277100, 41.482468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107796, 33.636948, 41.245438>,  <39.749443, 33.587757, 41.602596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107796, 33.636948, 41.245438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314587, 33.968449, 41.159737>,  <39.438663, 34.167347, 41.108318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314587, 33.968449, 41.159737>,  <39.107796, 33.636948, 41.245438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314587, 33.968449, 41.159737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254262, -0.090322, -0.962908,
		-0.817362, 0.552282, 0.164025,
		0.516982, 0.828750, -0.214250,
		39.469681, 34.217075, 41.095463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673523, 34.026707, 40.799957>,  <39.107796, 33.636948, 41.245438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673523, 34.026707, 40.799957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017647, 34.216946, 40.726555>,  <39.224121, 34.331089, 40.682514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017647, 34.216946, 40.726555>,  <38.673523, 34.026707, 40.799957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017647, 34.216946, 40.726555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305327, 0.192477, -0.932592,
		-0.408217, 0.858348, 0.310803,
		0.860310, 0.475597, -0.183504,
		39.275742, 34.359623, 40.671505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428886, 34.576218, 40.386646>,  <38.673523, 34.026707, 40.799957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428886, 34.576218, 40.386646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827271, 34.567707, 40.351757>,  <39.066299, 34.562599, 40.330826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827271, 34.567707, 40.351757>,  <38.428886, 34.576218, 40.386646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827271, 34.567707, 40.351757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071919, 0.392437, -0.916963,
		0.053738, 0.919533, 0.389322,
		0.995962, -0.021276, -0.087221,
		39.126060, 34.561325, 40.325592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701412, 35.184319, 40.118530>,  <38.428886, 34.576218, 40.386646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701412, 35.184319, 40.118530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967216, 34.908134, 40.004204>,  <39.126698, 34.742424, 39.935608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967216, 34.908134, 40.004204>,  <38.701412, 35.184319, 40.118530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967216, 34.908134, 40.004204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072573, 0.321034, -0.944283,
		0.743748, 0.648226, 0.163221,
		0.664509, -0.690463, -0.285812,
		39.166569, 34.700996, 39.918461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063622, 35.543388, 39.697807>,  <38.701412, 35.184319, 40.118530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063622, 35.543388, 39.697807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163044, 35.166386, 39.608452>,  <39.222698, 34.940186, 39.554836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163044, 35.166386, 39.608452>,  <39.063622, 35.543388, 39.697807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163044, 35.166386, 39.608452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068006, 0.247042, -0.966615,
		0.966228, 0.225063, 0.125499,
		0.248553, -0.942506, -0.223393,
		39.237610, 34.883633, 39.541435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577225, 35.689281, 39.283295>,  <39.063622, 35.543388, 39.697807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577225, 35.689281, 39.283295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501038, 35.299564, 39.235165>,  <39.455326, 35.065735, 39.206287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501038, 35.299564, 39.235165>,  <39.577225, 35.689281, 39.283295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501038, 35.299564, 39.235165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069556, 0.108870, -0.991620,
		0.979227, -0.197240, 0.047032,
		-0.190466, -0.974291, -0.120328,
		39.443897, 35.007278, 39.199066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076942, 35.476879, 38.837669>,  <39.577225, 35.689281, 39.283295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076942, 35.476879, 38.837669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769745, 35.223759, 38.798164>,  <39.585426, 35.071888, 38.774460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769745, 35.223759, 38.798164>,  <40.076942, 35.476879, 38.837669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769745, 35.223759, 38.798164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110378, 0.021122, -0.993665,
		0.630878, -0.774027, 0.053626,
		-0.767990, -0.632801, -0.098761,
		39.539349, 35.033920, 38.768536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384995, 34.902359, 38.444416>,  <40.076942, 35.476879, 38.837669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384995, 34.902359, 38.444416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987732, 34.900593, 38.397747>,  <39.749374, 34.899532, 38.369747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987732, 34.900593, 38.397747>,  <40.384995, 34.902359, 38.444416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987732, 34.900593, 38.397747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116065, -0.145915, -0.982465,
		-0.012680, -0.989287, 0.145431,
		-0.993160, -0.004421, -0.116672,
		39.689785, 34.899265, 38.362747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162579, 34.305061, 38.134872>,  <40.384995, 34.902359, 38.444416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162579, 34.305061, 38.134872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874557, 34.571293, 38.056355>,  <39.701744, 34.731030, 38.009243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874557, 34.571293, 38.056355>,  <40.162579, 34.305061, 38.134872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874557, 34.571293, 38.056355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106892, -0.173119, -0.979083,
		-0.685638, -0.725973, 0.053510,
		-0.720051, 0.665577, -0.196298,
		39.658543, 34.770966, 37.997467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791004, 33.943756, 37.606548>,  <40.162579, 34.305061, 38.134872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791004, 33.943756, 37.606548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690300, 34.330643, 37.593197>,  <39.629879, 34.562775, 37.585186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690300, 34.330643, 37.593197>,  <39.791004, 33.943756, 37.606548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690300, 34.330643, 37.593197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098730, -0.008646, -0.995077,
		-0.962741, -0.253815, -0.093316,
		-0.251759, 0.967214, -0.033383,
		39.614773, 34.620808, 37.583183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974499, 33.981339, 36.844296>,  <39.791004, 33.943756, 37.606548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974499, 33.981339, 36.844296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341499, 33.954067, 36.687557>,  <40.561699, 33.937706, 36.593513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341499, 33.954067, 36.687557>,  <39.974499, 33.981339, 36.844296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341499, 33.954067, 36.687557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168842, 0.958787, 0.228518,
		0.360118, -0.275826, 0.891199,
		0.917501, -0.068178, -0.391847,
		40.616749, 33.933613, 36.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513226, 34.247280, 37.275467>,  <39.974499, 33.981339, 36.844296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513226, 34.247280, 37.275467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645668, 34.285492, 36.899971>,  <40.725136, 34.308418, 36.674671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645668, 34.285492, 36.899971>,  <40.513226, 34.247280, 37.275467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645668, 34.285492, 36.899971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258058, 0.947766, 0.187470,
		0.907619, -0.304324, 0.289161,
		0.331109, 0.095531, -0.938744,
		40.745003, 34.314152, 36.618347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227978, 34.481987, 37.323029>,  <40.513226, 34.247280, 37.275467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227978, 34.481987, 37.323029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117039, 34.593559, 36.955273>,  <41.050476, 34.660503, 36.734619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117039, 34.593559, 36.955273>,  <41.227978, 34.481987, 37.323029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117039, 34.593559, 36.955273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468779, 0.874579, 0.123924,
		0.838644, -0.396620, -0.373322,
		-0.277349, 0.278933, -0.919388,
		41.033833, 34.677238, 36.679455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828644, 34.736267, 36.810566>,  <41.227978, 34.481987, 37.323029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828644, 34.736267, 36.810566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473129, 34.906799, 36.743267>,  <41.259819, 35.009117, 36.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473129, 34.906799, 36.743267>,  <41.828644, 34.736267, 36.810566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473129, 34.906799, 36.743267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404992, 0.902396, 0.147185,
		0.214575, 0.062677, -0.974694,
		-0.888785, 0.426326, -0.168248,
		41.206493, 35.034698, 36.692791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956142, 35.157173, 36.288452>,  <41.828644, 34.736267, 36.810566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956142, 35.157173, 36.288452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633221, 35.322590, 36.456852>,  <41.439468, 35.421841, 36.557892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633221, 35.322590, 36.456852>,  <41.956142, 35.157173, 36.288452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633221, 35.322590, 36.456852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560862, 0.759558, 0.329402,
		-0.183555, 0.502052, -0.845134,
		-0.807305, 0.413540, 0.421002,
		41.391029, 35.446651, 36.583153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472816, 35.154121, 35.770851>,  <41.956142, 35.157173, 36.288452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472816, 35.154121, 35.770851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481503, 35.544949, 35.686131>,  <42.486713, 35.779446, 35.635300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481503, 35.544949, 35.686131>,  <42.472816, 35.154121, 35.770851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481503, 35.544949, 35.686131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555026, -0.187990, -0.810312,
		-0.831549, -0.099958, -0.546383,
		0.021718, 0.977071, -0.211802,
		42.488018, 35.838070, 35.622589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379185, 34.966599, 35.025524>,  <42.472816, 35.154121, 35.770851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379185, 34.966599, 35.025524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565800, 35.304291, 35.131058>,  <42.677769, 35.506908, 35.194378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565800, 35.304291, 35.131058>,  <42.379185, 34.966599, 35.025524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565800, 35.304291, 35.131058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576535, -0.064041, -0.814559,
		-0.670781, 0.532136, -0.516608,
		0.466540, 0.844233, 0.263838,
		42.705761, 35.557560, 35.210209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129967, 34.924965, 34.991962>,  <42.379185, 34.966599, 35.025524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129967, 34.924965, 34.991962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496231, 34.974430, 34.838982>,  <43.715992, 35.004108, 34.747192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496231, 34.974430, 34.838982>,  <43.129967, 34.924965, 34.991962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496231, 34.974430, 34.838982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373181, 0.615027, -0.694607,
		0.149320, 0.778749, 0.609306,
		0.915664, 0.123663, -0.382450,
		43.770931, 35.011528, 34.724247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251575, 35.589859, 34.930000>,  <43.129967, 34.924965, 34.991962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251575, 35.589859, 34.930000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513645, 35.444176, 34.665245>,  <43.670887, 35.356766, 34.506393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513645, 35.444176, 34.665245>,  <43.251575, 35.589859, 34.930000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513645, 35.444176, 34.665245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251981, 0.720598, -0.645944,
		0.712213, 0.589991, 0.380346,
		0.655178, -0.364210, -0.661886,
		43.710197, 35.334911, 34.466679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628902, 36.210457, 34.608543>,  <43.251575, 35.589859, 34.930000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628902, 36.210457, 34.608543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654518, 35.898529, 34.359459>,  <43.669888, 35.711372, 34.210007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654518, 35.898529, 34.359459>,  <43.628902, 36.210457, 34.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654518, 35.898529, 34.359459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293338, 0.581719, -0.758654,
		0.953861, 0.231250, -0.191498,
		0.064041, -0.779824, -0.622714,
		43.673729, 35.664581, 34.172646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795471, 36.566750, 34.059578>,  <43.628902, 36.210457, 34.608543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795471, 36.566750, 34.059578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699684, 36.214478, 33.896084>,  <43.642212, 36.003117, 33.797989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699684, 36.214478, 33.896084>,  <43.795471, 36.566750, 34.059578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699684, 36.214478, 33.896084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147343, 0.449071, -0.881264,
		0.959660, -0.150808, -0.237299,
		-0.239465, -0.880677, -0.408735,
		43.627846, 35.950275, 33.773464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061176, 36.551834, 33.326263>,  <43.795471, 36.566750, 34.059578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061176, 36.551834, 33.326263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768936, 36.278713, 33.325592>,  <43.593594, 36.114841, 33.325188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768936, 36.278713, 33.325592>,  <44.061176, 36.551834, 33.326263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768936, 36.278713, 33.325592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265395, 0.286239, -0.920670,
		0.629118, -0.672195, -0.390339,
		-0.730600, -0.682804, -0.001681,
		43.549755, 36.073872, 33.325089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132442, 36.305344, 32.731350>,  <44.061176, 36.551834, 33.326263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132442, 36.305344, 32.731350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758060, 36.205761, 32.830952>,  <43.533432, 36.146011, 32.890713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758060, 36.205761, 32.830952>,  <44.132442, 36.305344, 32.731350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758060, 36.205761, 32.830952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301962, 0.203786, -0.931284,
		0.181093, -0.946836, -0.265907,
		-0.935962, -0.248943, 0.249005,
		43.477272, 36.131073, 32.905651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832390, 35.909649, 32.132622>,  <44.132442, 36.305344, 32.731350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832390, 35.909649, 32.132622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506714, 36.050209, 32.317493>,  <43.311310, 36.134544, 32.428417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506714, 36.050209, 32.317493>,  <43.832390, 35.909649, 32.132622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506714, 36.050209, 32.317493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453645, 0.111788, -0.884143,
		-0.362354, -0.929528, 0.068394,
		-0.814190, 0.351400, 0.462183,
		43.262455, 36.155628, 32.456150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278152, 35.461384, 31.914034>,  <43.832390, 35.909649, 32.132622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278152, 35.461384, 31.914034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145119, 35.815697, 32.043510>,  <43.065300, 36.028286, 32.121197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145119, 35.815697, 32.043510>,  <43.278152, 35.461384, 31.914034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145119, 35.815697, 32.043510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473818, 0.139818, -0.869452,
		-0.815404, -0.442537, 0.373199,
		-0.332585, 0.885783, 0.323690,
		43.045341, 36.081432, 32.140617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554466, 35.437931, 31.812304>,  <43.278152, 35.461384, 31.914034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554466, 35.437931, 31.812304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652077, 35.821804, 31.868103>,  <42.710644, 36.052128, 31.901583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652077, 35.821804, 31.868103>,  <42.554466, 35.437931, 31.812304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652077, 35.821804, 31.868103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547824, 0.255117, -0.796746,
		-0.800211, 0.118007, 0.587993,
		0.244029, 0.959682, 0.139500,
		42.725285, 36.109707, 31.909954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923321, 35.762398, 31.865854>,  <42.554466, 35.437931, 31.812304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923321, 35.762398, 31.865854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194698, 36.038826, 31.766142>,  <42.357525, 36.204681, 31.706314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194698, 36.038826, 31.766142>,  <41.923321, 35.762398, 31.865854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194698, 36.038826, 31.766142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405803, 0.069667, -0.911302,
		-0.612407, 0.719422, 0.327703,
		0.678440, 0.691071, -0.249279,
		42.398232, 36.246147, 31.691359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600643, 36.280201, 31.453602>,  <41.923321, 35.762398, 31.865854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600643, 36.280201, 31.453602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983799, 36.346016, 31.359474>,  <42.213692, 36.385506, 31.302998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983799, 36.346016, 31.359474>,  <41.600643, 36.280201, 31.453602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983799, 36.346016, 31.359474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252127, 0.089786, -0.963520,
		-0.137410, 0.982275, 0.127490,
		0.957889, 0.164540, -0.235321,
		42.271164, 36.395378, 31.288877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558281, 36.882698, 31.096930>,  <41.600643, 36.280201, 31.453602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558281, 36.882698, 31.096930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909058, 36.707432, 31.017944>,  <42.119522, 36.602272, 30.970552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909058, 36.707432, 31.017944>,  <41.558281, 36.882698, 31.096930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909058, 36.707432, 31.017944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138198, 0.163616, -0.976796,
		0.460302, 0.883880, 0.082929,
		0.876940, -0.438161, -0.197463,
		42.172138, 36.575985, 30.958706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938774, 37.499435, 30.715286>,  <41.558281, 36.882698, 31.096930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938774, 37.499435, 30.715286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108341, 37.149979, 30.619743>,  <42.210079, 36.940304, 30.562418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108341, 37.149979, 30.619743>,  <41.938774, 37.499435, 30.715286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108341, 37.149979, 30.619743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022110, 0.273630, -0.961581,
		0.905432, 0.402347, 0.135312,
		0.423915, -0.873638, -0.238857,
		42.235516, 36.887886, 30.548086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438614, 37.760593, 30.243261>,  <41.938774, 37.499435, 30.715286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438614, 37.760593, 30.243261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412788, 37.369553, 30.163126>,  <42.397293, 37.134930, 30.115046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412788, 37.369553, 30.163126>,  <42.438614, 37.760593, 30.243261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412788, 37.369553, 30.163126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174561, 0.208723, -0.962270,
		0.982527, -0.027155, -0.184126,
		-0.064562, -0.977597, -0.200336,
		42.393421, 37.076275, 30.103025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748119, 37.755424, 29.595381>,  <42.438614, 37.760593, 30.243261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748119, 37.755424, 29.595381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554775, 37.406837, 29.628626>,  <42.438770, 37.197685, 29.648573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554775, 37.406837, 29.628626>,  <42.748119, 37.755424, 29.595381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554775, 37.406837, 29.628626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164872, -0.002620, -0.986311,
		0.859755, -0.490448, -0.142414,
		-0.483361, -0.871466, 0.083114,
		42.409767, 37.145397, 29.653561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052258, 37.276566, 29.224480>,  <42.748119, 37.755424, 29.595381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052258, 37.276566, 29.224480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695450, 37.096416, 29.239786>,  <42.481365, 36.988327, 29.248970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695450, 37.096416, 29.239786>,  <43.052258, 37.276566, 29.224480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695450, 37.096416, 29.239786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073044, -0.227189, -0.971107,
		0.446051, -0.863454, 0.235554,
		-0.892022, -0.450370, 0.038267,
		42.427845, 36.961308, 29.251266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174988, 36.548611, 29.055241>,  <43.052258, 37.276566, 29.224480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174988, 36.548611, 29.055241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786053, 36.620438, 28.995481>,  <42.552692, 36.663532, 28.959627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786053, 36.620438, 28.995481>,  <43.174988, 36.548611, 29.055241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786053, 36.620438, 28.995481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078926, -0.349400, -0.933644,
		-0.219846, -0.919607, 0.325562,
		-0.972336, 0.179563, -0.149395,
		42.494350, 36.674305, 28.950663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960907, 36.079113, 28.574017>,  <43.174988, 36.548611, 29.055241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960907, 36.079113, 28.574017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645638, 36.322605, 28.537727>,  <42.456474, 36.468700, 28.515953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645638, 36.322605, 28.537727>,  <42.960907, 36.079113, 28.574017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645638, 36.322605, 28.537727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007445, -0.156830, -0.987598,
		-0.615406, -0.777724, 0.128142,
		-0.788176, 0.608728, -0.090724,
		42.409184, 36.505222, 28.510509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416115, 35.693104, 28.290432>,  <42.960907, 36.079113, 28.574017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416115, 35.693104, 28.290432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316586, 36.067917, 28.192408>,  <42.256866, 36.292805, 28.133593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316586, 36.067917, 28.192408>,  <42.416115, 35.693104, 28.290432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316586, 36.067917, 28.192408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134078, -0.283910, -0.949430,
		-0.959223, -0.203386, 0.196280,
		-0.248827, 0.937032, -0.245063,
		42.241936, 36.349026, 28.118889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746441, 35.659195, 27.910063>,  <42.416115, 35.693104, 28.290432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746441, 35.659195, 27.910063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910160, 36.013607, 27.822948>,  <42.008392, 36.226254, 27.770679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910160, 36.013607, 27.822948>,  <41.746441, 35.659195, 27.910063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910160, 36.013607, 27.822948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111911, -0.188139, -0.975746,
		-0.905510, 0.423745, 0.022150,
		0.409300, 0.886027, -0.217784,
		42.032951, 36.279415, 27.757614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296284, 36.018909, 27.318169>,  <41.746441, 35.659195, 27.910063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296284, 36.018909, 27.318169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671883, 36.156441, 27.314922>,  <41.897243, 36.238960, 27.312975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671883, 36.156441, 27.314922>,  <41.296284, 36.018909, 27.318169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671883, 36.156441, 27.314922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054078, -0.170906, -0.983802,
		-0.339642, 0.923350, -0.179074,
		0.938999, 0.343824, -0.008114,
		41.953583, 36.259586, 27.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307587, 36.461624, 26.731255>,  <41.296284, 36.018909, 27.318169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307587, 36.461624, 26.731255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690056, 36.387810, 26.822180>,  <41.919537, 36.343521, 26.876736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690056, 36.387810, 26.822180>,  <41.307587, 36.461624, 26.731255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690056, 36.387810, 26.822180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219029, -0.064381, -0.973592,
		0.194296, 0.980715, -0.021141,
		0.956178, -0.184534, 0.227314,
		41.976910, 36.332451, 26.890373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076664, 36.629055, 26.095877>,  <41.307587, 36.461624, 26.731255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076664, 36.629055, 26.095877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184929, 37.001995, 25.999989>,  <41.249886, 37.225758, 25.942455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184929, 37.001995, 25.999989>,  <41.076664, 36.629055, 26.095877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184929, 37.001995, 25.999989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950282, -0.218930, 0.221434,
		0.153972, -0.287734, -0.945252,
		0.270658, 0.932351, -0.239719,
		41.266125, 37.281700, 25.928072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367714, 35.981228, 25.857672>,  <41.076664, 36.629055, 26.095877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367714, 35.981228, 25.857672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523113, 36.250431, 25.605915>,  <41.616352, 36.411953, 25.454861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523113, 36.250431, 25.605915>,  <41.367714, 35.981228, 25.857672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523113, 36.250431, 25.605915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744100, 0.632014, 0.216504,
		0.543493, 0.384219, 0.746319,
		0.388499, 0.673004, -0.629392,
		41.639664, 36.452332, 25.417097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033379, 36.064461, 26.241610>,  <41.367714, 35.981228, 25.857672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033379, 36.064461, 26.241610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374138, 36.055641, 26.032310>,  <42.578594, 36.050350, 25.906731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374138, 36.055641, 26.032310>,  <42.033379, 36.064461, 26.241610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374138, 36.055641, 26.032310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062437, -0.987711, 0.143277,
		-0.519975, -0.154727, -0.840051,
		0.851896, -0.022050, -0.523246,
		42.629707, 36.049026, 25.875338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065250, 35.777489, 25.553776>,  <42.033379, 36.064461, 26.241610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065250, 35.777489, 25.553776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374279, 35.705597, 25.797359>,  <42.559696, 35.662460, 25.943510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374279, 35.705597, 25.797359>,  <42.065250, 35.777489, 25.553776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374279, 35.705597, 25.797359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325286, -0.935711, 0.136508,
		0.545274, -0.303548, -0.781367,
		0.772570, -0.179734, 0.608959,
		42.606049, 35.651676, 25.980047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426689, 35.186176, 25.398298>,  <42.065250, 35.777489, 25.553776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426689, 35.186176, 25.398298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445126, 35.273438, 25.788229>,  <42.456188, 35.325794, 26.022188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445126, 35.273438, 25.788229>,  <42.426689, 35.186176, 25.398298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445126, 35.273438, 25.788229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490667, -0.845085, 0.212313,
		0.870127, -0.488100, 0.068092,
		0.046086, 0.218150, 0.974827,
		42.458950, 35.338882, 26.080677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578278, 34.525368, 25.742624>,  <42.426689, 35.186176, 25.398298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578278, 34.525368, 25.742624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408676, 34.768528, 26.011156>,  <42.306915, 34.914425, 26.172276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408676, 34.768528, 26.011156>,  <42.578278, 34.525368, 25.742624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408676, 34.768528, 26.011156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634856, -0.728147, 0.258381,
		0.645895, -0.316643, 0.694663,
		-0.424002, 0.607897, 0.671329,
		42.281475, 34.950897, 26.212555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453674, 33.897427, 26.159216>,  <42.578278, 34.525368, 25.742624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453674, 33.897427, 26.159216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684521, 33.731388, 25.877895>,  <42.823029, 33.631763, 25.709103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684521, 33.731388, 25.877895>,  <42.453674, 33.897427, 26.159216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684521, 33.731388, 25.877895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723101, -0.140521, 0.676298,
		-0.379559, -0.898858, 0.219061,
		0.577113, -0.415099, -0.703302,
		42.857655, 33.606857, 25.666904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567055, 33.148346, 26.288790>,  <42.453674, 33.897427, 26.159216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567055, 33.148346, 26.288790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853828, 33.371155, 26.121107>,  <43.025894, 33.504841, 26.020498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853828, 33.371155, 26.121107>,  <42.567055, 33.148346, 26.288790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853828, 33.371155, 26.121107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587257, -0.158503, 0.793729,
		0.375676, -0.815235, -0.440749,
		0.716936, 0.557018, -0.419207,
		43.068909, 33.538261, 25.995344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258213, 32.760288, 26.220953>,  <42.567055, 33.148346, 26.288790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258213, 32.760288, 26.220953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281315, 33.158031, 26.256554>,  <43.295177, 33.396675, 26.277914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281315, 33.158031, 26.256554>,  <43.258213, 32.760288, 26.220953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281315, 33.158031, 26.256554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328869, -0.103125, 0.938728,
		0.942608, -0.024945, -0.332969,
		0.057754, 0.994356, 0.089003,
		43.298641, 33.456337, 26.283255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928253, 33.100109, 26.488979>,  <43.258213, 32.760288, 26.220953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928253, 33.100109, 26.488979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629436, 33.347092, 26.587507>,  <43.450146, 33.495281, 26.646624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629436, 33.347092, 26.587507>,  <43.928253, 33.100109, 26.488979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629436, 33.347092, 26.587507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366527, 0.073445, 0.927504,
		0.554602, 0.783169, -0.281181,
		-0.747044, 0.617456, 0.246319,
		43.405323, 33.532330, 26.661404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277428, 33.743607, 26.709063>,  <43.928253, 33.100109, 26.488979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277428, 33.743607, 26.709063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902870, 33.741543, 26.849430>,  <43.678135, 33.740307, 26.933651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902870, 33.741543, 26.849430>,  <44.277428, 33.743607, 26.709063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902870, 33.741543, 26.849430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350529, 0.035715, 0.935871,
		-0.017359, 0.999349, -0.031636,
		-0.936391, -0.005157, 0.350920,
		43.621952, 33.739994, 26.954706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253433, 34.250229, 27.312382>,  <44.277428, 33.743607, 26.709063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253433, 34.250229, 27.312382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926125, 34.023628, 27.351398>,  <43.729740, 33.887669, 27.374809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926125, 34.023628, 27.351398>,  <44.253433, 34.250229, 27.312382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926125, 34.023628, 27.351398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143712, -0.037304, 0.988916,
		-0.556583, 0.823217, 0.111938,
		-0.818268, -0.566501, 0.097544,
		43.680645, 33.853680, 27.380661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805695, 34.587299, 27.804680>,  <44.253433, 34.250229, 27.312382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805695, 34.587299, 27.804680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665455, 34.212788, 27.796024>,  <43.581310, 33.988083, 27.790831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665455, 34.212788, 27.796024>,  <43.805695, 34.587299, 27.804680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665455, 34.212788, 27.796024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273505, -0.124459, 0.953784,
		-0.895698, 0.328479, 0.299712,
		-0.350600, -0.936275, -0.021637,
		43.560276, 33.931904, 27.789534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363270, 34.469322, 28.361752>,  <43.805695, 34.587299, 27.804680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363270, 34.469322, 28.361752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431828, 34.086014, 28.270239>,  <43.472961, 33.856030, 28.215330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431828, 34.086014, 28.270239>,  <43.363270, 34.469322, 28.361752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431828, 34.086014, 28.270239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196925, -0.194212, 0.960990,
		-0.965322, -0.209759, 0.155421,
		0.171391, -0.958271, -0.228784,
		43.483246, 33.798534, 28.201603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115040, 34.138000, 28.820795>,  <43.363270, 34.469322, 28.361752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115040, 34.138000, 28.820795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338005, 33.837669, 28.679064>,  <43.471783, 33.657471, 28.594025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338005, 33.837669, 28.679064>,  <43.115040, 34.138000, 28.820795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338005, 33.837669, 28.679064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283569, -0.228937, 0.931223,
		-0.780307, -0.619552, 0.085299,
		0.557414, -0.750828, -0.354327,
		43.505230, 33.612423, 28.572765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037266, 33.562145, 29.219463>,  <43.115040, 34.138000, 28.820795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037266, 33.562145, 29.219463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387859, 33.500893, 29.036894>,  <43.598217, 33.464142, 28.927353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387859, 33.500893, 29.036894>,  <43.037266, 33.562145, 29.219463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387859, 33.500893, 29.036894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430758, -0.173920, 0.885550,
		-0.214993, -0.972780, -0.086473,
		0.876485, -0.153138, -0.456425,
		43.650806, 33.454952, 28.899967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276707, 32.873554, 29.436100>,  <43.037266, 33.562145, 29.219463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276707, 32.873554, 29.436100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600540, 33.081295, 29.326662>,  <43.794838, 33.205940, 29.261000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600540, 33.081295, 29.326662>,  <43.276707, 32.873554, 29.436100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600540, 33.081295, 29.326662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407383, -0.161518, 0.898861,
		0.422632, -0.839159, -0.342336,
		0.809581, 0.519349, -0.273597,
		43.843414, 33.237099, 29.244583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782196, 32.396503, 29.521019>,  <43.276707, 32.873554, 29.436100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782196, 32.396503, 29.521019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958611, 32.755489, 29.523809>,  <44.064461, 32.970879, 29.525484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958611, 32.755489, 29.523809>,  <43.782196, 32.396503, 29.521019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958611, 32.755489, 29.523809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453574, -0.229594, 0.861137,
		0.774440, -0.376628, -0.508325,
		0.441037, 0.897462, 0.006979,
		44.090923, 33.024727, 29.525904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402428, 32.240280, 29.820120>,  <43.782196, 32.396503, 29.521019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402428, 32.240280, 29.820120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393616, 32.639179, 29.848412>,  <44.388329, 32.878521, 29.865387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393616, 32.639179, 29.848412>,  <44.402428, 32.240280, 29.820120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393616, 32.639179, 29.848412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427898, -0.054537, 0.902180,
		0.903559, 0.050139, -0.425521,
		-0.022028, 0.997252, 0.070731,
		44.387009, 32.938354, 29.869631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045677, 32.460468, 29.959837>,  <44.402428, 32.240280, 29.820120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045677, 32.460468, 29.959837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845570, 32.790424, 30.065125>,  <44.725506, 32.988400, 30.128298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845570, 32.790424, 30.065125>,  <45.045677, 32.460468, 29.959837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845570, 32.790424, 30.065125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575128, 0.089319, 0.813172,
		0.647267, 0.558193, -0.519101,
		-0.500273, 0.824890, 0.263219,
		44.695488, 33.037891, 30.144091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650043, 32.878044, 30.202164>,  <45.045677, 32.460468, 29.959837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650043, 32.878044, 30.202164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300388, 33.007896, 30.346659>,  <45.090595, 33.085808, 30.433355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300388, 33.007896, 30.346659>,  <45.650043, 32.878044, 30.202164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300388, 33.007896, 30.346659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424170, 0.148032, 0.893401,
		0.236553, 0.934184, -0.267101,
		-0.874141, 0.324633, 0.361235,
		45.038147, 33.105286, 30.455029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643158, 33.679996, 30.524151>,  <45.650043, 32.878044, 30.202164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643158, 33.679996, 30.524151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336716, 33.480652, 30.686493>,  <45.152851, 33.361046, 30.783897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336716, 33.480652, 30.686493>,  <45.643158, 33.679996, 30.524151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336716, 33.480652, 30.686493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293855, 0.290005, 0.910794,
		-0.571602, 0.817029, -0.075730,
		-0.766107, -0.498358, 0.405856,
		45.106884, 33.331146, 30.808250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404152, 34.127117, 30.942070>,  <45.643158, 33.679996, 30.524151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404152, 34.127117, 30.942070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228146, 33.790363, 31.067043>,  <45.122543, 33.588310, 31.142027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228146, 33.790363, 31.067043>,  <45.404152, 34.127117, 30.942070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228146, 33.790363, 31.067043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263775, 0.211399, 0.941134,
		-0.858375, 0.496527, 0.129049,
		-0.440017, -0.841886, 0.312431,
		45.096142, 33.537796, 31.160772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938587, 34.329544, 31.455111>,  <45.404152, 34.127117, 30.942070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938587, 34.329544, 31.455111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021000, 33.946133, 31.533880>,  <45.070446, 33.716087, 31.581142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021000, 33.946133, 31.533880>,  <44.938587, 34.329544, 31.455111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021000, 33.946133, 31.533880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158863, 0.231333, 0.959816,
		-0.965565, -0.166465, 0.199936,
		0.206027, -0.958527, 0.196922,
		45.082809, 33.658573, 31.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789906, 34.311260, 32.145432>,  <44.938587, 34.329544, 31.455111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789906, 34.311260, 32.145432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975899, 33.957481, 32.129704>,  <45.087494, 33.745216, 32.120266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975899, 33.957481, 32.129704>,  <44.789906, 34.311260, 32.145432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975899, 33.957481, 32.129704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332134, 0.133099, 0.933794,
		-0.820656, -0.447259, 0.355643,
		0.464984, -0.884445, -0.039321,
		45.115395, 33.692146, 32.117908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548588, 33.810909, 32.756310>,  <44.789906, 34.311260, 32.145432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548588, 33.810909, 32.756310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905689, 33.664757, 32.650871>,  <45.119949, 33.577065, 32.587608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905689, 33.664757, 32.650871>,  <44.548588, 33.810909, 32.756310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905689, 33.664757, 32.650871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339788, 0.161836, 0.926473,
		-0.295861, -0.916680, 0.268634,
		0.892754, -0.365386, -0.263596,
		45.173515, 33.555141, 32.571793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757542, 33.294964, 33.250790>,  <44.548588, 33.810909, 32.756310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757542, 33.294964, 33.250790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098408, 33.420414, 33.083244>,  <45.302929, 33.495686, 32.982716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098408, 33.420414, 33.083244>,  <44.757542, 33.294964, 33.250790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098408, 33.420414, 33.083244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316994, 0.327467, 0.890101,
		0.416327, -0.891292, 0.179638,
		0.852166, 0.313629, -0.418868,
		45.354057, 33.514503, 32.957584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401943, 32.993080, 33.634277>,  <44.757542, 33.294964, 33.250790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401943, 32.993080, 33.634277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519466, 33.314133, 33.426640>,  <45.589981, 33.506763, 33.302055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519466, 33.314133, 33.426640>,  <45.401943, 32.993080, 33.634277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519466, 33.314133, 33.426640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523846, 0.319047, 0.789806,
		0.799538, -0.503982, -0.326713,
		0.293812, 0.802627, -0.519099,
		45.607609, 33.554920, 33.270908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181442, 32.943615, 33.728115>,  <45.401943, 32.993080, 33.634277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181442, 32.943615, 33.728115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101170, 33.323803, 33.633179>,  <46.053005, 33.551918, 33.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101170, 33.323803, 33.633179>,  <46.181442, 32.943615, 33.728115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101170, 33.323803, 33.633179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609170, 0.310804, 0.729598,
		0.767228, 0.001838, -0.641372,
		-0.200682, 0.950472, -0.237338,
		46.040966, 33.608944, 33.561977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903637, 33.292580, 33.718975>,  <46.181442, 32.943615, 33.728115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903637, 33.292580, 33.718975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601753, 33.553753, 33.744537>,  <46.420624, 33.710457, 33.759876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601753, 33.553753, 33.744537>,  <46.903637, 33.292580, 33.718975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601753, 33.553753, 33.744537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456822, 0.453105, 0.765512,
		0.470874, 0.606936, -0.640240,
		-0.754713, 0.652936, 0.063906,
		46.375340, 33.749634, 33.763710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350037, 33.757145, 33.972652>,  <46.903637, 33.292580, 33.718975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350037, 33.757145, 33.972652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979797, 33.902355, 34.015522>,  <46.757656, 33.989483, 34.041245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979797, 33.902355, 34.015522>,  <47.350037, 33.757145, 33.972652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979797, 33.902355, 34.015522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281078, 0.469555, 0.836967,
		0.253516, 0.804817, -0.536656,
		-0.925594, 0.363027, 0.107177,
		46.702118, 34.011265, 34.047676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251915, 34.478504, 34.028042>,  <47.350037, 33.757145, 33.972652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251915, 34.478504, 34.028042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941456, 34.323006, 34.226627>,  <46.755180, 34.229706, 34.345779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941456, 34.323006, 34.226627>,  <47.251915, 34.478504, 34.028042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941456, 34.323006, 34.226627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206455, 0.587270, 0.782618,
		-0.595796, 0.709923, -0.375549,
		-0.776147, -0.388746, 0.496460,
		46.708611, 34.206383, 34.375565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809113, 34.818954, 34.417362>,  <47.251915, 34.478504, 34.028042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809113, 34.818954, 34.417362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729668, 34.501251, 34.647041>,  <46.681999, 34.310631, 34.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729668, 34.501251, 34.647041>,  <46.809113, 34.818954, 34.417362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729668, 34.501251, 34.647041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451501, 0.445850, 0.772894,
		-0.869884, 0.412761, 0.270055,
		-0.198616, -0.794258, 0.574200,
		46.670082, 34.262974, 34.819302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.489899, 34.598927, 34.710857>,  <46.809113, 34.818954, 34.417362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.489899, 34.598927, 34.710857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664234, 34.931515, 34.573040>,  <47.768833, 35.131065, 34.490349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664234, 34.931515, 34.573040>,  <47.489899, 34.598927, 34.710857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.664234, 34.931515, 34.573040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740897, 0.114104, -0.661855,
		-0.510998, 0.543728, 0.665764,
		0.435835, 0.831469, -0.344540,
		47.794983, 35.180954, 34.469677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.455574, 38.982269, 46.094025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075844, 38.858215, 46.114384>,  <35.848003, 38.783783, 46.126598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075844, 38.858215, 46.114384>,  <36.455574, 38.982269, 46.094025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075844, 38.858215, 46.114384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074767, -0.380165, -0.921892,
		0.305265, -0.871372, 0.384090,
		-0.949328, -0.310139, 0.050901,
		35.791046, 38.765175, 46.129654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438854, 38.233521, 46.023075>,  <36.455574, 38.982269, 46.094025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438854, 38.233521, 46.023075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076595, 38.367870, 45.919544>,  <35.859238, 38.448479, 45.857426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076595, 38.367870, 45.919544>,  <36.438854, 38.233521, 46.023075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076595, 38.367870, 45.919544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029959, -0.659548, -0.751065,
		-0.422968, -0.672448, 0.607381,
		-0.905649, 0.335873, -0.258822,
		35.804901, 38.468632, 45.841896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082027, 37.715519, 45.766430>,  <36.438854, 38.233521, 46.023075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082027, 37.715519, 45.766430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844799, 37.995914, 45.607994>,  <35.702461, 38.164150, 45.512932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844799, 37.995914, 45.607994>,  <36.082027, 37.715519, 45.766430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844799, 37.995914, 45.607994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175847, -0.592838, -0.785889,
		-0.785716, -0.396434, 0.474859,
		-0.593067, 0.700988, -0.396090,
		35.666878, 38.206211, 45.489166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433826, 37.346195, 45.508099>,  <36.082027, 37.715519, 45.766430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433826, 37.346195, 45.508099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435364, 37.699329, 45.320229>,  <35.436287, 37.911209, 45.207508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435364, 37.699329, 45.320229>,  <35.433826, 37.346195, 45.508099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435364, 37.699329, 45.320229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306712, -0.445996, -0.840842,
		-0.951794, 0.147285, 0.269062,
		0.003843, 0.882833, -0.469670,
		35.436516, 37.964180, 45.179329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960930, 37.243137, 45.147732>,  <35.433826, 37.346195, 45.508099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960930, 37.243137, 45.147732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140087, 37.552074, 44.967564>,  <35.247581, 37.737434, 44.859463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140087, 37.552074, 44.967564>,  <34.960930, 37.243137, 45.147732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140087, 37.552074, 44.967564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212210, -0.397555, -0.892702,
		-0.868538, 0.495420, -0.014164,
		0.447893, 0.772340, -0.450425,
		35.274456, 37.783775, 44.832436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531513, 37.298454, 44.614746>,  <34.960930, 37.243137, 45.147732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531513, 37.298454, 44.614746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838905, 37.521744, 44.489639>,  <35.023342, 37.655716, 44.414577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838905, 37.521744, 44.489639>,  <34.531513, 37.298454, 44.614746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838905, 37.521744, 44.489639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128657, -0.344012, -0.930109,
		-0.626802, 0.755012, -0.192549,
		0.768483, 0.558222, -0.312765,
		35.069450, 37.689209, 44.395809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361427, 37.704716, 43.925381>,  <34.531513, 37.298454, 44.614746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361427, 37.704716, 43.925381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755783, 37.644169, 43.953987>,  <34.992397, 37.607841, 43.971149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755783, 37.644169, 43.953987>,  <34.361427, 37.704716, 43.925381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755783, 37.644169, 43.953987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014915, -0.346059, -0.938094,
		0.166746, 0.925921, -0.338917,
		0.985887, -0.151368, 0.071514,
		35.051548, 37.598759, 43.975441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562874, 37.877880, 43.255814>,  <34.361427, 37.704716, 43.925381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562874, 37.877880, 43.255814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854801, 37.657768, 43.418079>,  <35.029957, 37.525703, 43.515438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854801, 37.657768, 43.418079>,  <34.562874, 37.877880, 43.255814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854801, 37.657768, 43.418079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212145, -0.381806, -0.899566,
		0.649896, 0.742577, -0.161909,
		0.729815, -0.550276, 0.405669,
		35.073746, 37.492687, 43.539780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140255, 38.061508, 42.906132>,  <34.562874, 37.877880, 43.255814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140255, 38.061508, 42.906132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246536, 37.705669, 43.054737>,  <35.310303, 37.492165, 43.143898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246536, 37.705669, 43.054737>,  <35.140255, 38.061508, 42.906132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246536, 37.705669, 43.054737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256150, -0.306366, -0.916803,
		0.929403, 0.338757, 0.146469,
		0.265700, -0.889598, 0.371510,
		35.326244, 37.438789, 43.166191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778427, 37.987644, 42.693542>,  <35.140255, 38.061508, 42.906132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778427, 37.987644, 42.693542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672913, 37.610844, 42.776531>,  <35.609604, 37.384762, 42.826324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672913, 37.610844, 42.776531>,  <35.778427, 37.987644, 42.693542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672913, 37.610844, 42.776531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478609, -0.314568, -0.819744,
		0.837467, -0.116936, 0.533830,
		-0.263784, -0.942005, 0.207474,
		35.593777, 37.328243, 42.838772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433857, 37.593681, 42.589993>,  <35.778427, 37.987644, 42.693542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433857, 37.593681, 42.589993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107140, 37.366169, 42.551350>,  <35.911110, 37.229660, 42.528164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107140, 37.366169, 42.551350>,  <36.433857, 37.593681, 42.589993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107140, 37.366169, 42.551350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444237, -0.513219, -0.734343,
		0.368103, -0.642722, 0.671869,
		-0.816795, -0.568783, -0.096603,
		35.862103, 37.195534, 42.522369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631908, 36.908695, 42.499184>,  <36.433857, 37.593681, 42.589993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631908, 36.908695, 42.499184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263664, 36.910431, 42.343002>,  <36.042717, 36.911472, 42.249294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263664, 36.910431, 42.343002>,  <36.631908, 36.908695, 42.499184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263664, 36.910431, 42.343002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362578, -0.361693, -0.858903,
		-0.144950, -0.932287, 0.331406,
		-0.920612, 0.004338, -0.390455,
		35.987480, 36.911732, 42.225864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594418, 36.300297, 42.086395>,  <36.631908, 36.908695, 42.499184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594418, 36.300297, 42.086395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300232, 36.538292, 41.956730>,  <36.123722, 36.681087, 41.878929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300232, 36.538292, 41.956730>,  <36.594418, 36.300297, 42.086395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300232, 36.538292, 41.956730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134868, -0.340304, -0.930593,
		-0.664007, -0.728136, 0.170037,
		-0.735463, 0.594988, -0.324167,
		36.079594, 36.716789, 41.859482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242954, 35.898632, 41.704071>,  <36.594418, 36.300297, 42.086395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242954, 35.898632, 41.704071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.150158, 36.256954, 41.552437>,  <36.094479, 36.471947, 41.461456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.150158, 36.256954, 41.552437>,  <36.242954, 35.898632, 41.704071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150158, 36.256954, 41.552437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072285, -0.372765, -0.925106,
		-0.970028, -0.242018, 0.021724,
		-0.231991, 0.895809, -0.379087,
		36.080559, 36.525696, 41.438709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929295, 35.667408, 41.119930>,  <36.242954, 35.898632, 41.704071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929295, 35.667408, 41.119930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.990215, 36.058144, 41.059799>,  <36.026768, 36.292583, 41.023720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.990215, 36.058144, 41.059799>,  <35.929295, 35.667408, 41.119930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990215, 36.058144, 41.059799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001505, -0.152332, -0.988328,
		-0.988333, 0.150298, -0.024671,
		0.152302, 0.976834, -0.150329,
		36.035908, 36.351192, 41.014702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536694, 35.858025, 40.505890>,  <35.929295, 35.667408, 41.119930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536694, 35.858025, 40.505890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790211, 36.164223, 40.550312>,  <35.942322, 36.347942, 40.576965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790211, 36.164223, 40.550312>,  <35.536694, 35.858025, 40.505890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790211, 36.164223, 40.550312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036612, 0.113724, -0.992838,
		-0.772637, 0.633317, 0.044052,
		0.633791, 0.765491, 0.111054,
		35.980347, 36.393871, 40.583630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242348, 36.443604, 40.094131>,  <35.536694, 35.858025, 40.505890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242348, 36.443604, 40.094131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634922, 36.517021, 40.116356>,  <35.870468, 36.561073, 40.129692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634922, 36.517021, 40.116356>,  <35.242348, 36.443604, 40.094131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634922, 36.517021, 40.116356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033223, 0.122605, -0.991899,
		-0.188871, 0.975335, 0.114232,
		0.981440, 0.183546, 0.055560,
		35.929356, 36.572086, 40.133022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404579, 37.116589, 39.766609>,  <35.242348, 36.443604, 40.094131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404579, 37.116589, 39.766609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734543, 36.890491, 39.764393>,  <35.932522, 36.754833, 39.763062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734543, 36.890491, 39.764393>,  <35.404579, 37.116589, 39.766609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734543, 36.890491, 39.764393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159191, 0.241700, -0.957204,
		0.542394, 0.788720, 0.289361,
		0.824905, -0.565245, -0.005540,
		35.982014, 36.720917, 39.762730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932514, 37.524338, 39.449692>,  <35.404579, 37.116589, 39.766609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932514, 37.524338, 39.449692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072674, 37.151352, 39.414516>,  <36.156769, 36.927559, 39.393414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072674, 37.151352, 39.414516>,  <35.932514, 37.524338, 39.449692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072674, 37.151352, 39.414516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296734, 0.199574, -0.933873,
		0.888353, 0.301133, 0.346624,
		0.350397, -0.932464, -0.087935,
		36.177792, 36.871613, 39.388134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545376, 37.611168, 39.052685>,  <35.932514, 37.524338, 39.449692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545376, 37.611168, 39.052685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458000, 37.222164, 39.020393>,  <36.405575, 36.988762, 39.001019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458000, 37.222164, 39.020393>,  <36.545376, 37.611168, 39.052685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458000, 37.222164, 39.020393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330680, 0.004065, -0.943734,
		0.918116, -0.232840, 0.320700,
		-0.218436, -0.972507, -0.080727,
		36.392471, 36.930412, 38.996174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188938, 37.209881, 38.807045>,  <36.545376, 37.611168, 39.052685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188938, 37.209881, 38.807045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873474, 36.977215, 38.727371>,  <36.684196, 36.837616, 38.679565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873474, 36.977215, 38.727371>,  <37.188938, 37.209881, 38.807045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873474, 36.977215, 38.727371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279265, -0.050279, -0.958897,
		0.547741, -0.811874, 0.202092,
		-0.788664, -0.581664, -0.199188,
		36.636875, 36.802715, 38.667614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447502, 36.744129, 38.357460>,  <37.188938, 37.209881, 38.807045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447502, 36.744129, 38.357460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053818, 36.712070, 38.294334>,  <36.817608, 36.692837, 38.256458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053818, 36.712070, 38.294334>,  <37.447502, 36.744129, 38.357460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053818, 36.712070, 38.294334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173431, -0.258619, -0.950283,
		0.035346, -0.962649, 0.268435,
		-0.984211, -0.080144, -0.157812,
		36.758553, 36.688026, 38.246990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238056, 36.975948, 38.389442>,  <37.447502, 36.744129, 38.357460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238056, 36.975948, 38.389442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550892, 37.189285, 38.260521>,  <38.738594, 37.317287, 38.183167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550892, 37.189285, 38.260521>,  <38.238056, 36.975948, 38.389442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550892, 37.189285, 38.260521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236942, 0.223859, 0.945381,
		0.576364, -0.815740, 0.048706,
		0.782089, 0.533343, -0.322308,
		38.785519, 37.349289, 38.163830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753647, 36.664631, 38.671085>,  <38.238056, 36.975948, 38.389442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753647, 36.664631, 38.671085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902481, 37.020435, 38.565014>,  <38.991783, 37.233917, 38.501373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902481, 37.020435, 38.565014>,  <38.753647, 36.664631, 38.671085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902481, 37.020435, 38.565014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253615, 0.177387, 0.950901,
		0.892878, -0.421069, -0.159591,
		0.372085, 0.889514, -0.265175,
		39.014107, 37.287289, 38.485462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473061, 36.709164, 38.948593>,  <38.753647, 36.664631, 38.671085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473061, 36.709164, 38.948593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380463, 37.090782, 38.872482>,  <39.324902, 37.319752, 38.826817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380463, 37.090782, 38.872482>,  <39.473061, 36.709164, 38.948593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380463, 37.090782, 38.872482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346129, 0.263569, 0.900403,
		0.909178, 0.142579, -0.391239,
		-0.231497, 0.954045, -0.190280,
		39.311012, 37.376995, 38.815399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070087, 37.140339, 39.112652>,  <39.473061, 36.709164, 38.948593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070087, 37.140339, 39.112652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774788, 37.410137, 39.109905>,  <39.597607, 37.572014, 39.108257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774788, 37.410137, 39.109905>,  <40.070087, 37.140339, 39.112652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774788, 37.410137, 39.109905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397903, 0.443690, 0.803002,
		0.544666, 0.590084, -0.595937,
		-0.738249, 0.674493, -0.006866,
		39.553314, 37.612484, 39.107845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419788, 37.784416, 39.210571>,  <40.070087, 37.140339, 39.112652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419788, 37.784416, 39.210571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039307, 37.842335, 39.319569>,  <39.811020, 37.877087, 39.384968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039307, 37.842335, 39.319569>,  <40.419788, 37.784416, 39.210571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039307, 37.842335, 39.319569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308253, 0.405648, 0.860482,
		0.014060, 0.902487, -0.430487,
		-0.951200, 0.144798, 0.272491,
		39.753948, 37.885773, 39.401318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440563, 38.421406, 39.509418>,  <40.419788, 37.784416, 39.210571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440563, 38.421406, 39.509418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090416, 38.266541, 39.625240>,  <39.880329, 38.173622, 39.694733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.090416, 38.266541, 39.625240>,  <40.440563, 38.421406, 39.509418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090416, 38.266541, 39.625240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185327, 0.284444, 0.940609,
		-0.446527, 0.877040, -0.177242,
		-0.875367, -0.387160, 0.289551,
		39.827805, 38.150394, 39.712105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181038, 38.859848, 39.936890>,  <40.440563, 38.421406, 39.509418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181038, 38.859848, 39.936890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975533, 38.538166, 40.056423>,  <39.852230, 38.345158, 40.128143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975533, 38.538166, 40.056423>,  <40.181038, 38.859848, 39.936890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975533, 38.538166, 40.056423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137147, 0.266849, 0.953930,
		-0.846901, 0.531075, -0.026802,
		-0.513760, -0.804208, 0.298830,
		39.821404, 38.296902, 40.146072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700428, 39.091896, 40.475121>,  <40.181038, 38.859848, 39.936890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700428, 39.091896, 40.475121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732227, 38.696682, 40.527981>,  <39.751308, 38.459553, 40.559696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732227, 38.696682, 40.527981>,  <39.700428, 39.091896, 40.475121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732227, 38.696682, 40.527981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124492, 0.121694, 0.984730,
		-0.989030, -0.094737, -0.113328,
		0.079499, -0.988036, 0.132153,
		39.756077, 38.400272, 40.567627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029694, 38.832893, 40.864750>,  <39.700428, 39.091896, 40.475121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029694, 38.832893, 40.864750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335918, 38.582489, 40.924122>,  <39.519653, 38.432247, 40.959743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335918, 38.582489, 40.924122>,  <39.029694, 38.832893, 40.864750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335918, 38.582489, 40.924122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161246, 0.036652, 0.986233,
		-0.622832, -0.778953, -0.072882,
		0.765558, -0.626010, 0.148431,
		39.565586, 38.394688, 40.968651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795059, 38.397572, 41.374001>,  <39.029694, 38.832893, 40.864750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795059, 38.397572, 41.374001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182831, 38.299961, 41.384251>,  <39.415493, 38.241394, 41.390400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182831, 38.299961, 41.384251>,  <38.795059, 38.397572, 41.374001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182831, 38.299961, 41.384251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042623, -0.064625, 0.996999,
		-0.241635, -0.967614, -0.073050,
		0.969431, -0.244024, 0.025627,
		39.473660, 38.226753, 41.391937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940365, 37.727222, 41.543789>,  <38.795059, 38.397572, 41.374001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940365, 37.727222, 41.543789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282112, 37.914604, 41.633778>,  <39.487160, 38.027031, 41.687771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282112, 37.914604, 41.633778>,  <38.940365, 37.727222, 41.543789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282112, 37.914604, 41.633778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126249, -0.232840, 0.964285,
		0.504102, -0.852255, -0.139789,
		0.854366, 0.468450, 0.224972,
		39.538422, 38.055138, 41.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169807, 37.320679, 42.065617>,  <38.940365, 37.727222, 41.543789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169807, 37.320679, 42.065617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394760, 37.650700, 42.087578>,  <39.529732, 37.848713, 42.100754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394760, 37.650700, 42.087578>,  <39.169807, 37.320679, 42.065617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394760, 37.650700, 42.087578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032805, -0.088610, 0.995526,
		0.826228, -0.558062, -0.076898,
		0.562380, 0.825054, 0.054904,
		39.563473, 37.898216, 42.104050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715508, 37.251911, 42.601601>,  <39.169807, 37.320679, 42.065617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715508, 37.251911, 42.601601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.677151, 37.648438, 42.565624>,  <39.654137, 37.886353, 42.544037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.677151, 37.648438, 42.565624>,  <39.715508, 37.251911, 42.601601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677151, 37.648438, 42.565624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054247, 0.095429, 0.993957,
		0.993913, 0.090431, -0.062927,
		-0.095889, 0.991320, -0.089942,
		39.648384, 37.945835, 42.538643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075752, 37.675896, 43.129333>,  <39.715508, 37.251911, 42.601601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075752, 37.675896, 43.129333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804127, 37.943909, 43.009384>,  <39.641151, 38.104717, 42.937416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804127, 37.943909, 43.009384>,  <40.075752, 37.675896, 43.129333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804127, 37.943909, 43.009384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219065, 0.204922, 0.953948,
		0.700629, 0.713485, 0.007626,
		-0.679065, 0.670034, -0.299874,
		39.600407, 38.144920, 42.919422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202881, 38.151188, 43.569290>,  <40.075752, 37.675896, 43.129333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202881, 38.151188, 43.569290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.845638, 38.264038, 43.429138>,  <39.631294, 38.331749, 43.345047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.845638, 38.264038, 43.429138>,  <40.202881, 38.151188, 43.569290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845638, 38.264038, 43.429138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301539, 0.202541, 0.931693,
		0.333821, 0.937754, -0.095819,
		-0.893106, 0.282125, -0.350382,
		39.577705, 38.348675, 43.324024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993713, 38.907520, 43.876354>,  <40.202881, 38.151188, 43.569290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993713, 38.907520, 43.876354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646297, 38.729919, 43.788273>,  <39.437847, 38.623360, 43.735424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646297, 38.729919, 43.788273>,  <39.993713, 38.907520, 43.876354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646297, 38.729919, 43.788273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307089, 0.133391, 0.942286,
		-0.389008, 0.886039, -0.252205,
		-0.868545, -0.444006, -0.220202,
		39.385735, 38.596718, 43.722214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371326, 39.334442, 44.022717>,  <39.993713, 38.907520, 43.876354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371326, 39.334442, 44.022717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244957, 38.955009, 44.030571>,  <39.169136, 38.727348, 44.035282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.244957, 38.955009, 44.030571>,  <39.371326, 39.334442, 44.022717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244957, 38.955009, 44.030571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252035, 0.103857, 0.962129,
		-0.914696, 0.299013, -0.271886,
		-0.315926, -0.948581, 0.019636,
		39.150181, 38.670437, 44.036461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727367, 39.364403, 44.377510>,  <39.371326, 39.334442, 44.022717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727367, 39.364403, 44.377510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799469, 38.971169, 44.390511>,  <38.842731, 38.735229, 44.398312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.799469, 38.971169, 44.390511>,  <38.727367, 39.364403, 44.377510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799469, 38.971169, 44.390511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384639, -0.040039, 0.922198,
		-0.905297, -0.178730, -0.385349,
		0.180253, -0.983083, 0.032499,
		38.853546, 38.676243, 44.400261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.035816, 39.073570, 44.582695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344547, 38.835941, 44.673351>,  <38.529785, 38.693363, 44.727745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344547, 38.835941, 44.673351>,  <38.035816, 39.073570, 44.582695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344547, 38.835941, 44.673351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261036, 0.028977, 0.964894,
		-0.579783, -0.803890, -0.132709,
		0.771824, -0.594071, 0.226645,
		38.576096, 38.657719, 44.741344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730743, 38.497643, 44.893337>,  <38.035816, 39.073570, 44.582695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730743, 38.497643, 44.893337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112301, 38.485451, 45.012772>,  <38.341236, 38.478138, 45.084431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112301, 38.485451, 45.012772>,  <37.730743, 38.497643, 44.893337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112301, 38.485451, 45.012772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297135, 0.044366, 0.953804,
		-0.042317, -0.998550, 0.033265,
		0.953897, -0.030478, 0.298582,
		38.398472, 38.476307, 45.102345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657181, 38.160809, 45.440670>,  <37.730743, 38.497643, 44.893337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657181, 38.160809, 45.440670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033047, 38.291595, 45.480904>,  <38.258568, 38.370068, 45.505043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033047, 38.291595, 45.480904>,  <37.657181, 38.160809, 45.440670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033047, 38.291595, 45.480904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136717, 0.089414, 0.986567,
		0.313587, -0.940794, 0.128722,
		0.939666, 0.326973, 0.100583,
		38.314945, 38.389687, 45.511078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850746, 37.889580, 46.136730>,  <37.657181, 38.160809, 45.440670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850746, 37.889580, 46.136730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088257, 38.194695, 46.034294>,  <38.230762, 38.377766, 45.972832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088257, 38.194695, 46.034294>,  <37.850746, 37.889580, 46.136730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088257, 38.194695, 46.034294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039256, 0.345350, 0.937653,
		0.803671, -0.546705, 0.235006,
		0.593778, 0.762789, -0.256086,
		38.266392, 38.423531, 45.957470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382038, 37.884529, 46.569870>,  <37.850746, 37.889580, 46.136730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382038, 37.884529, 46.569870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348171, 38.264183, 46.448566>,  <38.327850, 38.491978, 46.375786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348171, 38.264183, 46.448566>,  <38.382038, 37.884529, 46.569870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348171, 38.264183, 46.448566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011675, 0.303387, 0.952796,
		0.996341, 0.084212, -0.014607,
		-0.084669, 0.949139, -0.303260,
		38.322769, 38.548923, 46.357590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681339, 38.233341, 47.072300>,  <38.382038, 37.884529, 46.569870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681339, 38.233341, 47.072300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501633, 38.540539, 46.889717>,  <38.393810, 38.724857, 46.780167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501633, 38.540539, 46.889717>,  <38.681339, 38.233341, 47.072300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501633, 38.540539, 46.889717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138430, 0.444909, 0.884812,
		0.882610, 0.460700, -0.093568,
		-0.449262, 0.767992, -0.456456,
		38.366856, 38.770935, 46.752781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029705, 38.689335, 47.373573>,  <38.681339, 38.233341, 47.072300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029705, 38.689335, 47.373573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692627, 38.841923, 47.221600>,  <38.490379, 38.933475, 47.130417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692627, 38.841923, 47.221600>,  <39.029705, 38.689335, 47.373573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692627, 38.841923, 47.221600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114709, 0.562260, 0.818966,
		0.526036, 0.733717, -0.430053,
		-0.842691, 0.381474, -0.379933,
		38.439819, 38.956364, 47.107620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100460, 39.424416, 47.470184>,  <39.029705, 38.689335, 47.373573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100460, 39.424416, 47.470184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707924, 39.382446, 47.405735>,  <38.472401, 39.357265, 47.367065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707924, 39.382446, 47.405735>,  <39.100460, 39.424416, 47.470184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707924, 39.382446, 47.405735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191261, 0.446831, 0.873934,
		-0.019702, 0.888444, -0.458562,
		-0.981341, -0.104923, -0.161121,
		38.413521, 39.350971, 47.357399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917583, 40.058846, 47.524822>,  <39.100460, 39.424416, 47.470184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917583, 40.058846, 47.524822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602947, 39.818512, 47.581776>,  <38.414165, 39.674313, 47.615948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602947, 39.818512, 47.581776>,  <38.917583, 40.058846, 47.524822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602947, 39.818512, 47.581776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120557, 0.375590, 0.918911,
		-0.605593, 0.705641, -0.367870,
		-0.786590, -0.600836, 0.142385,
		38.366970, 39.638260, 47.624493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367588, 40.575966, 47.773899>,  <38.917583, 40.058846, 47.524822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367588, 40.575966, 47.773899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275322, 40.206566, 47.896503>,  <38.219963, 39.984928, 47.970066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275322, 40.206566, 47.896503>,  <38.367588, 40.575966, 47.773899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275322, 40.206566, 47.896503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042058, 0.324173, 0.945063,
		-0.972124, 0.205102, -0.113616,
		-0.230665, -0.923496, 0.306510,
		38.206123, 39.929516, 47.988457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767876, 40.643120, 48.205479>,  <38.367588, 40.575966, 47.773899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767876, 40.643120, 48.205479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922234, 40.281715, 48.280045>,  <38.014847, 40.064873, 48.324783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922234, 40.281715, 48.280045>,  <37.767876, 40.643120, 48.205479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922234, 40.281715, 48.280045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019581, 0.194002, 0.980806,
		-0.922337, -0.382134, 0.057172,
		0.385890, -0.903514, 0.186418,
		38.038002, 40.010662, 48.335972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332340, 40.336552, 48.640411>,  <37.767876, 40.643120, 48.205479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332340, 40.336552, 48.640411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687057, 40.161865, 48.700920>,  <37.899887, 40.057053, 48.737225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687057, 40.161865, 48.700920>,  <37.332340, 40.336552, 48.640411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687057, 40.161865, 48.700920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075954, 0.185150, 0.979771,
		-0.455889, -0.880340, 0.131019,
		0.886789, -0.436716, 0.151273,
		37.953094, 40.030849, 48.746304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292347, 40.039879, 49.350113>,  <37.332340, 40.336552, 48.640411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292347, 40.039879, 49.350113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676502, 39.974697, 49.259701>,  <37.906998, 39.935589, 49.205452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.676502, 39.974697, 49.259701>,  <37.292347, 40.039879, 49.350113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676502, 39.974697, 49.259701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223262, -0.035367, 0.974117,
		-0.166736, -0.985999, 0.002417,
		0.960392, -0.162959, -0.226033,
		37.964619, 39.925808, 49.191891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515507, 39.493275, 49.754547>,  <37.292347, 40.039879, 49.350113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515507, 39.493275, 49.754547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857166, 39.685627, 49.675358>,  <38.062160, 39.801037, 49.627842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857166, 39.685627, 49.675358>,  <37.515507, 39.493275, 49.754547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857166, 39.685627, 49.675358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264175, -0.073308, 0.961685,
		0.447939, -0.873718, -0.189651,
		0.854144, 0.480877, -0.197977,
		38.113411, 39.829891, 49.615963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025372, 39.161983, 50.076988>,  <37.515507, 39.493275, 49.754547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025372, 39.161983, 50.076988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184204, 39.519150, 49.992104>,  <38.279503, 39.733448, 49.941174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184204, 39.519150, 49.992104>,  <38.025372, 39.161983, 50.076988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184204, 39.519150, 49.992104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412233, 0.033062, 0.910478,
		0.819993, -0.449015, -0.354959,
		0.397083, 0.892912, -0.212210,
		38.303329, 39.787022, 49.928440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647564, 39.042992, 50.400314>,  <38.025372, 39.161983, 50.076988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647564, 39.042992, 50.400314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620861, 39.437180, 50.337845>,  <38.604839, 39.673695, 50.300365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620861, 39.437180, 50.337845>,  <38.647564, 39.042992, 50.400314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620861, 39.437180, 50.337845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466023, 0.169194, 0.868444,
		0.882250, -0.014801, -0.470548,
		-0.066760, 0.985472, -0.156169,
		38.600834, 39.732822, 50.290993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321796, 39.308083, 50.431129>,  <38.647564, 39.042992, 50.400314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321796, 39.308083, 50.431129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056545, 39.595364, 50.515469>,  <38.897396, 39.767731, 50.566071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056545, 39.595364, 50.515469>,  <39.321796, 39.308083, 50.431129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056545, 39.595364, 50.515469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403554, 0.105802, 0.908818,
		0.630405, 0.687746, -0.359993,
		-0.663124, 0.718200, 0.210845,
		38.857609, 39.810825, 50.578724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674717, 39.792717, 50.695232>,  <39.321796, 39.308083, 50.431129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674717, 39.792717, 50.695232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311943, 39.869915, 50.845016>,  <39.094280, 39.916233, 50.934887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311943, 39.869915, 50.845016>,  <39.674717, 39.792717, 50.695232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311943, 39.869915, 50.845016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412690, 0.228540, 0.881735,
		0.084594, 0.954212, -0.286920,
		-0.906935, 0.192998, 0.374461,
		39.039864, 39.927814, 50.957355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815804, 40.395084, 51.192059>,  <39.674717, 39.792717, 50.695232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815804, 40.395084, 51.192059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434952, 40.306068, 51.275883>,  <39.206440, 40.252659, 51.326180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434952, 40.306068, 51.275883>,  <39.815804, 40.395084, 51.192059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434952, 40.306068, 51.275883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125199, 0.341514, 0.931500,
		-0.278866, 0.913150, -0.297306,
		-0.952134, -0.222541, 0.209562,
		39.149311, 40.239307, 51.338753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632381, 40.907745, 51.720802>,  <39.815804, 40.395084, 51.192059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632381, 40.907745, 51.720802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360901, 40.618301, 51.771015>,  <39.198013, 40.444633, 51.801144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.360901, 40.618301, 51.771015>,  <39.632381, 40.907745, 51.720802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360901, 40.618301, 51.771015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038961, 0.135211, 0.990051,
		-0.733383, 0.676836, -0.063575,
		-0.678698, -0.723609, 0.125532,
		39.157291, 40.401218, 51.808674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023964, 41.156956, 52.165630>,  <39.632381, 40.907745, 51.720802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023964, 41.156956, 52.165630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037750, 40.757973, 52.190571>,  <39.046024, 40.518581, 52.205536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.037750, 40.757973, 52.190571>,  <39.023964, 41.156956, 52.165630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037750, 40.757973, 52.190571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139134, 0.066571, 0.988033,
		-0.989673, -0.025381, 0.141075,
		0.034469, -0.997459, 0.062352,
		39.048092, 40.458736, 52.209278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613010, 40.934269, 52.801128>,  <39.023964, 41.156956, 52.165630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613010, 40.934269, 52.801128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901932, 40.678253, 52.696342>,  <39.075283, 40.524643, 52.633472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901932, 40.678253, 52.696342>,  <38.613010, 40.934269, 52.801128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901932, 40.678253, 52.696342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351399, 0.013414, 0.936130,
		-0.595649, -0.768223, 0.234599,
		0.722303, -0.640042, -0.261962,
		39.118622, 40.486240, 52.617752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757565, 40.479156, 53.425388>,  <38.613010, 40.934269, 52.801128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757565, 40.479156, 53.425388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087433, 40.461361, 53.199844>,  <39.285355, 40.450684, 53.064518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087433, 40.461361, 53.199844>,  <38.757565, 40.479156, 53.425388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087433, 40.461361, 53.199844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562098, -0.046472, 0.825764,
		-0.062940, -0.997928, -0.013318,
		0.824672, -0.044488, -0.563858,
		39.334835, 40.448013, 53.030685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075634, 40.507412, 53.535339>,  <38.757565, 40.479156, 53.425388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075634, 40.507412, 53.535339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975861, 40.602573, 53.159855>,  <37.915997, 40.659672, 52.934563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975861, 40.602573, 53.159855>,  <38.075634, 40.507412, 53.535339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975861, 40.602573, 53.159855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117267, 0.969640, 0.214583,
		0.961266, -0.056557, -0.269757,
		-0.249431, 0.237905, -0.938715,
		37.901031, 40.673946, 52.878239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476799, 40.996967, 53.425045>,  <38.075634, 40.507412, 53.535339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476799, 40.996967, 53.425045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093254, 40.927063, 53.514526>,  <36.863129, 40.885120, 53.568214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093254, 40.927063, 53.514526>,  <37.476799, 40.996967, 53.425045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093254, 40.927063, 53.514526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013203, -0.759729, -0.650106,
		0.283567, -0.626315, 0.726168,
		-0.958861, -0.174761, 0.223703,
		36.805595, 40.874634, 53.581638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354752, 40.306328, 53.271454>,  <37.476799, 40.996967, 53.425045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354752, 40.306328, 53.271454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981655, 40.449532, 53.288532>,  <36.757797, 40.535454, 53.298779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981655, 40.449532, 53.288532>,  <37.354752, 40.306328, 53.271454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981655, 40.449532, 53.288532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313367, -0.746409, -0.587089,
		-0.178316, -0.560981, 0.808396,
		-0.932740, 0.358012, 0.042697,
		36.701832, 40.556934, 53.301342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955997, 39.663189, 53.327629>,  <37.354752, 40.306328, 53.271454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955997, 39.663189, 53.327629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748737, 39.972664, 53.181793>,  <36.624382, 40.158348, 53.094292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748737, 39.972664, 53.181793>,  <36.955997, 39.663189, 53.327629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748737, 39.972664, 53.181793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252969, -0.545833, -0.798795,
		-0.817022, -0.321668, 0.478544,
		-0.518152, 0.773689, -0.364586,
		36.593292, 40.204769, 53.072418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333961, 39.316723, 53.181023>,  <36.955997, 39.663189, 53.327629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333961, 39.316723, 53.181023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310822, 39.661880, 52.980194>,  <36.296940, 39.868973, 52.859695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310822, 39.661880, 52.980194>,  <36.333961, 39.316723, 53.181023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310822, 39.661880, 52.980194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376512, -0.484632, -0.789538,
		-0.924604, 0.143365, 0.352922,
		-0.057845, 0.862889, -0.502071,
		36.293468, 39.920746, 52.829571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694843, 39.335560, 52.830742>,  <36.333961, 39.316723, 53.181023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694843, 39.335560, 52.830742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912666, 39.582573, 52.603722>,  <36.043362, 39.730782, 52.467510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912666, 39.582573, 52.603722>,  <35.694843, 39.335560, 52.830742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912666, 39.582573, 52.603722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478320, -0.327198, -0.814955,
		-0.688960, 0.715261, 0.117198,
		0.544559, 0.617529, -0.567550,
		36.076035, 39.767834, 52.433456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190182, 39.680241, 52.406937>,  <35.694843, 39.335560, 52.830742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190182, 39.680241, 52.406937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548016, 39.731777, 52.235767>,  <35.762714, 39.762699, 52.133064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548016, 39.731777, 52.235767>,  <35.190182, 39.680241, 52.406937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548016, 39.731777, 52.235767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401048, -0.191027, -0.895918,
		-0.197175, 0.973092, -0.119219,
		0.894585, 0.128841, -0.427923,
		35.816391, 39.770428, 52.107391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042801, 40.073509, 51.744083>,  <35.190182, 39.680241, 52.406937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042801, 40.073509, 51.744083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402122, 39.903057, 51.701241>,  <35.617714, 39.800785, 51.675537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402122, 39.903057, 51.701241>,  <35.042801, 40.073509, 51.744083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402122, 39.903057, 51.701241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201021, -0.181833, -0.962563,
		0.390699, 0.886202, -0.249001,
		0.898301, -0.426127, -0.107104,
		35.671612, 39.775219, 51.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341209, 40.313717, 51.143715>,  <35.042801, 40.073509, 51.744083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341209, 40.313717, 51.143715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553905, 39.977711, 51.186840>,  <35.681522, 39.776108, 51.212715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553905, 39.977711, 51.186840>,  <35.341209, 40.313717, 51.143715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553905, 39.977711, 51.186840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071672, -0.171473, -0.982578,
		0.843870, 0.514748, -0.151385,
		0.531739, -0.840019, 0.107808,
		35.713428, 39.725704, 51.219181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718807, 40.314472, 50.584888>,  <35.341209, 40.313717, 51.143715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718807, 40.314472, 50.584888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774216, 39.938168, 50.708687>,  <35.807461, 39.712387, 50.782967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.774216, 39.938168, 50.708687>,  <35.718807, 40.314472, 50.584888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774216, 39.938168, 50.708687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046015, -0.306060, -0.950900,
		0.989290, 0.145958, 0.000894,
		0.138517, -0.940757, 0.309498,
		35.815769, 39.655941, 50.801537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327209, 39.951118, 50.184746>,  <35.718807, 40.314472, 50.584888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327209, 39.951118, 50.184746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071030, 39.672707, 50.314590>,  <35.917324, 39.505661, 50.392498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071030, 39.672707, 50.314590>,  <36.327209, 39.951118, 50.184746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071030, 39.672707, 50.314590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052580, -0.461417, -0.885624,
		0.766202, -0.550125, 0.332110,
		-0.640445, -0.696029, 0.324612,
		35.878895, 39.463898, 50.411976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676262, 39.326954, 49.993504>,  <36.327209, 39.951118, 50.184746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676262, 39.326954, 49.993504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281944, 39.269741, 50.028725>,  <36.045353, 39.235413, 50.049858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281944, 39.269741, 50.028725>,  <36.676262, 39.326954, 49.993504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281944, 39.269741, 50.028725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013330, -0.455958, -0.889902,
		0.167431, -0.878433, 0.447574,
		-0.985794, -0.143031, 0.088051,
		35.986206, 39.226833, 50.055141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586788, 38.632858, 49.844574>,  <36.676262, 39.326954, 49.993504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586788, 38.632858, 49.844574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243763, 38.817879, 49.754562>,  <36.037949, 38.928890, 49.700554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243763, 38.817879, 49.754562>,  <36.586788, 38.632858, 49.844574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243763, 38.817879, 49.754562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036853, -0.491598, -0.870042,
		-0.513067, -0.737818, 0.438620,
		-0.857557, 0.462554, -0.225031,
		35.986496, 38.956646, 49.687054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233040, 38.150948, 49.311848>,  <36.586788, 38.632858, 49.844574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233040, 38.150948, 49.311848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006992, 38.480152, 49.288879>,  <35.871365, 38.677673, 49.275101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006992, 38.480152, 49.288879>,  <36.233040, 38.150948, 49.311848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006992, 38.480152, 49.288879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313583, -0.278653, -0.907754,
		-0.763090, -0.494984, 0.415554,
		-0.565119, 0.823009, -0.057419,
		35.837456, 38.727055, 49.271652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673931, 37.868256, 48.941608>,  <36.233040, 38.150948, 49.311848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673931, 37.868256, 48.941608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659325, 38.264721, 48.890610>,  <35.650562, 38.502602, 48.860012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659325, 38.264721, 48.890610>,  <35.673931, 37.868256, 48.941608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659325, 38.264721, 48.890610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262230, -0.132610, -0.955851,
		-0.964315, -0.001470, 0.264756,
		-0.036515, 0.991167, -0.127492,
		35.648369, 38.562073, 48.852364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138821, 37.967613, 48.530060>,  <35.673931, 37.868256, 48.941608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138821, 37.967613, 48.530060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353405, 38.303631, 48.497749>,  <35.482155, 38.505241, 48.478363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353405, 38.303631, 48.497749>,  <35.138821, 37.967613, 48.530060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353405, 38.303631, 48.497749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189878, 0.026881, -0.981439,
		-0.822285, 0.541845, 0.173927,
		0.536464, 0.840048, -0.080780,
		35.514343, 38.555645, 48.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766418, 38.445992, 48.082623>,  <35.138821, 37.967613, 48.530060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766418, 38.445992, 48.082623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139816, 38.587410, 48.058636>,  <35.363853, 38.672260, 48.044243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139816, 38.587410, 48.058636>,  <34.766418, 38.445992, 48.082623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139816, 38.587410, 48.058636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093657, 0.078950, -0.992469,
		-0.346148, 0.932080, 0.106811,
		0.933493, 0.353545, -0.059967,
		35.419865, 38.693474, 48.040646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727879, 39.070366, 47.818226>,  <34.766418, 38.445992, 48.082623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727879, 39.070366, 47.818226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105682, 38.955143, 47.755066>,  <35.332363, 38.886009, 47.717171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105682, 38.955143, 47.755066>,  <34.727879, 39.070366, 47.818226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105682, 38.955143, 47.755066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078304, 0.269381, -0.959845,
		0.319026, 0.918943, 0.231876,
		0.944505, -0.288059, -0.157897,
		35.389034, 38.868725, 47.707699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935165, 39.574692, 47.442963>,  <34.727879, 39.070366, 47.818226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935165, 39.574692, 47.442963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173557, 39.260330, 47.377048>,  <35.316593, 39.071712, 47.337502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173557, 39.260330, 47.377048>,  <34.935165, 39.574692, 47.442963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173557, 39.260330, 47.377048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172718, 0.074943, -0.982116,
		0.784201, 0.613787, -0.091076,
		0.595984, -0.785907, -0.164782,
		35.352352, 39.024559, 47.327614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412853, 39.763706, 46.842831>,  <34.935165, 39.574692, 47.442963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412853, 39.763706, 46.842831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449986, 39.366821, 46.876049>,  <35.472267, 39.128689, 46.895981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449986, 39.366821, 46.876049>,  <35.412853, 39.763706, 46.842831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449986, 39.366821, 46.876049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026944, -0.080874, -0.996360,
		0.995317, 0.094732, 0.019226,
		0.092833, -0.992212, 0.083048,
		35.477837, 39.069157, 46.900963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009556, 39.607403, 46.504539>,  <35.412853, 39.763706, 46.842831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009556, 39.607403, 46.504539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779118, 39.280670, 46.516518>,  <35.640854, 39.084629, 46.523705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779118, 39.280670, 46.516518>,  <36.009556, 39.607403, 46.504539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779118, 39.280670, 46.516518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121970, -0.122137, -0.984990,
		0.808233, -0.563794, 0.169991,
		-0.576094, -0.816835, 0.029949,
		35.606289, 39.035618, 46.525501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.040447, 36.886829, 27.267954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683708, 36.707214, 27.289806>,  <42.469666, 36.599445, 27.302917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683708, 36.707214, 27.289806>,  <43.040447, 36.886829, 27.267954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683708, 36.707214, 27.289806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262930, 0.612877, 0.745151,
		-0.368080, 0.650193, -0.664655,
		-0.891843, -0.449033, 0.054632,
		42.416157, 36.572506, 27.306196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628620, 37.440750, 27.477310>,  <43.040447, 36.886829, 27.267954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628620, 37.440750, 27.477310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.429707, 37.104706, 27.563957>,  <42.310360, 36.903080, 27.615946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.429707, 37.104706, 27.563957>,  <42.628620, 37.440750, 27.477310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429707, 37.104706, 27.563957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307613, 0.404187, 0.861399,
		-0.811225, 0.361723, -0.459423,
		-0.497280, -0.840113, 0.216616,
		42.280521, 36.852673, 27.628942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947681, 37.583084, 27.829964>,  <42.628620, 37.440750, 27.477310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947681, 37.583084, 27.829964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033276, 37.204243, 27.925632>,  <42.084633, 36.976936, 27.983034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033276, 37.204243, 27.925632>,  <41.947681, 37.583084, 27.829964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033276, 37.204243, 27.925632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206847, 0.195361, 0.958670,
		-0.954686, -0.254611, -0.154102,
		0.213983, -0.947104, 0.239174,
		42.097469, 36.920113, 27.997385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502960, 37.399036, 28.413374>,  <41.947681, 37.583084, 27.829964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502960, 37.399036, 28.413374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781151, 37.114021, 28.450466>,  <41.948067, 36.943012, 28.472721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781151, 37.114021, 28.450466>,  <41.502960, 37.399036, 28.413374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781151, 37.114021, 28.450466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146286, -0.014056, 0.989142,
		-0.703499, -0.701491, -0.114011,
		0.695477, -0.712539, 0.092730,
		41.989796, 36.900261, 28.478285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246494, 36.860966, 28.735098>,  <41.502960, 37.399036, 28.413374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246494, 36.860966, 28.735098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.639088, 36.844124, 28.809847>,  <41.874641, 36.834019, 28.854696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.639088, 36.844124, 28.809847>,  <41.246494, 36.860966, 28.735098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639088, 36.844124, 28.809847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191077, -0.146166, 0.970631,
		-0.013549, -0.988364, -0.151504,
		0.981482, -0.042100, 0.186874,
		41.933533, 36.831493, 28.865910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186661, 36.518909, 29.340544>,  <41.246494, 36.860966, 28.735098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186661, 36.518909, 29.340544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560272, 36.658657, 29.310795>,  <41.784439, 36.742504, 29.292946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560272, 36.658657, 29.310795>,  <41.186661, 36.518909, 29.340544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560272, 36.658657, 29.310795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099111, -0.053450, 0.993640,
		0.343171, -0.935460, -0.084550,
		0.934029, 0.349368, -0.074372,
		41.840481, 36.763466, 29.288483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672749, 36.086735, 29.799740>,  <41.186661, 36.518909, 29.340544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672749, 36.086735, 29.799740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892979, 36.417049, 29.750845>,  <42.025116, 36.615238, 29.721508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892979, 36.417049, 29.750845>,  <41.672749, 36.086735, 29.799740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892979, 36.417049, 29.750845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246844, -0.021166, 0.968824,
		0.797457, -0.563582, -0.215494,
		0.550573, 0.825789, -0.122238,
		42.058151, 36.664787, 29.714174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314144, 35.802132, 29.868820>,  <41.672749, 36.086735, 29.799740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314144, 35.802132, 29.868820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288773, 36.192833, 29.950720>,  <42.273548, 36.427254, 29.999859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288773, 36.192833, 29.950720>,  <42.314144, 35.802132, 29.868820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288773, 36.192833, 29.950720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213553, -0.187126, 0.958842,
		0.974870, 0.104544, -0.196720,
		-0.063430, 0.976757, 0.204749,
		42.269745, 36.485859, 30.012144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893517, 35.753952, 30.279470>,  <42.314144, 35.802132, 29.868820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893517, 35.753952, 30.279470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698967, 36.096561, 30.348526>,  <42.582237, 36.302128, 30.389959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698967, 36.096561, 30.348526>,  <42.893517, 35.753952, 30.279470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698967, 36.096561, 30.348526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214522, -0.074476, 0.973875,
		0.847005, 0.510705, -0.147520,
		-0.486376, 0.856524, 0.172639,
		42.553055, 36.353519, 30.400318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377583, 36.282593, 30.563606>,  <42.893517, 35.753952, 30.279470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377583, 36.282593, 30.563606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002102, 36.355907, 30.680395>,  <42.776814, 36.399899, 30.750469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002102, 36.355907, 30.680395>,  <43.377583, 36.282593, 30.563606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002102, 36.355907, 30.680395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293812, -0.017670, 0.955700,
		0.180331, 0.982900, -0.037266,
		-0.938699, 0.183291, 0.291974,
		42.720493, 36.410896, 30.767988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515419, 36.599579, 31.104227>,  <43.377583, 36.282593, 30.563606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515419, 36.599579, 31.104227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118832, 36.573627, 31.149466>,  <42.880878, 36.558056, 31.176609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118832, 36.573627, 31.149466>,  <43.515419, 36.599579, 31.104227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118832, 36.573627, 31.149466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108565, 0.069570, 0.991652,
		-0.072202, 0.995465, -0.061933,
		-0.991464, -0.064875, 0.113096,
		42.821392, 36.554165, 31.183393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218220, 37.244404, 31.447474>,  <43.515419, 36.599579, 31.104227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218220, 37.244404, 31.447474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968864, 36.938354, 31.511940>,  <42.819252, 36.754723, 31.550621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968864, 36.938354, 31.511940>,  <43.218220, 37.244404, 31.447474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968864, 36.938354, 31.511940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184366, 0.056477, 0.981234,
		-0.759869, 0.641400, 0.105856,
		-0.623385, -0.765125, 0.161167,
		42.781849, 36.708817, 31.560289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920502, 37.420624, 32.017220>,  <43.218220, 37.244404, 31.447474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920502, 37.420624, 32.017220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846645, 37.028320, 31.991848>,  <42.802334, 36.792938, 31.976625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.846645, 37.028320, 31.991848>,  <42.920502, 37.420624, 32.017220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846645, 37.028320, 31.991848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182430, -0.097618, 0.978361,
		-0.965727, 0.169072, 0.196943,
		-0.184638, -0.980758, -0.063428,
		42.791252, 36.734093, 31.972820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513584, 37.188683, 32.648804>,  <42.920502, 37.420624, 32.017220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513584, 37.188683, 32.648804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.645870, 36.841114, 32.501503>,  <42.725243, 36.632572, 32.413124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.645870, 36.841114, 32.501503>,  <42.513584, 37.188683, 32.648804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645870, 36.841114, 32.501503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214453, -0.310805, 0.925964,
		-0.919043, -0.385200, 0.083555,
		0.330712, -0.868919, -0.368250,
		42.745083, 36.580437, 32.391029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188286, 36.574139, 33.001644>,  <42.513584, 37.188683, 32.648804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188286, 36.574139, 33.001644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.535622, 36.451256, 32.845901>,  <42.744022, 36.377525, 32.752457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.535622, 36.451256, 32.845901>,  <42.188286, 36.574139, 33.001644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535622, 36.451256, 32.845901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328294, -0.232421, 0.915534,
		-0.371756, -0.922823, -0.100967,
		0.868343, -0.307208, -0.389361,
		42.796124, 36.359093, 32.729092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237537, 35.860256, 33.196297>,  <42.188286, 36.574139, 33.001644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237537, 35.860256, 33.196297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621994, 35.945190, 33.125736>,  <42.852669, 35.996151, 33.083401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621994, 35.945190, 33.125736>,  <42.237537, 35.860256, 33.196297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621994, 35.945190, 33.125736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274200, -0.660408, 0.699054,
		0.031937, -0.720260, -0.692968,
		0.961142, 0.212337, -0.176404,
		42.910336, 36.008892, 33.072815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620014, 35.211624, 33.211834>,  <42.237537, 35.860256, 33.196297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620014, 35.211624, 33.211834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902443, 35.489979, 33.264309>,  <43.071899, 35.656990, 33.295792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902443, 35.489979, 33.264309>,  <42.620014, 35.211624, 33.211834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902443, 35.489979, 33.264309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503871, -0.623868, 0.597413,
		0.497573, -0.355715, -0.791131,
		0.706070, 0.695885, 0.131186,
		43.114265, 35.698746, 33.303665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153851, 34.849827, 33.284714>,  <42.620014, 35.211624, 33.211834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153851, 34.849827, 33.284714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326157, 35.180557, 33.429382>,  <43.429539, 35.378994, 33.516182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326157, 35.180557, 33.429382>,  <43.153851, 34.849827, 33.284714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326157, 35.180557, 33.429382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548593, -0.558120, 0.622534,
		0.716581, -0.069755, -0.694007,
		0.430764, 0.826823, 0.361671,
		43.455387, 35.428604, 33.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917053, 34.683662, 33.333569>,  <43.153851, 34.849827, 33.284714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917053, 34.683662, 33.333569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828854, 34.982586, 33.584301>,  <43.775936, 35.161942, 33.734741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.828854, 34.982586, 33.584301>,  <43.917053, 34.683662, 33.333569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828854, 34.982586, 33.584301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511578, -0.458554, 0.726647,
		0.830463, 0.480894, -0.281197,
		-0.220496, 0.747308, 0.626827,
		43.762707, 35.206779, 33.772350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552002, 34.880089, 33.591381>,  <43.917053, 34.683662, 33.333569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552002, 34.880089, 33.591381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280563, 35.001263, 33.859035>,  <44.117699, 35.073967, 34.019627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280563, 35.001263, 33.859035>,  <44.552002, 34.880089, 33.591381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280563, 35.001263, 33.859035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535675, -0.419193, 0.733028,
		0.502555, 0.855867, 0.122189,
		-0.678595, 0.302933, 0.669134,
		44.076984, 35.092144, 34.059776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969006, 35.037411, 34.091610>,  <44.552002, 34.880089, 33.591381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969006, 35.037411, 34.091610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.614201, 35.022457, 34.275700>,  <44.401318, 35.013485, 34.386154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.614201, 35.022457, 34.275700>,  <44.969006, 35.037411, 34.091610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614201, 35.022457, 34.275700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447583, -0.314551, 0.837095,
		0.113474, 0.948504, 0.295742,
		-0.887014, -0.037381, 0.460227,
		44.348095, 35.011242, 34.413769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654667, 34.666790, 33.775307>,  <44.969006, 35.037411, 34.091610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654667, 34.666790, 33.775307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951385, 34.402855, 33.727394>,  <46.129417, 34.244495, 33.698647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951385, 34.402855, 33.727394>,  <45.654667, 34.666790, 33.775307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951385, 34.402855, 33.727394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358958, -0.239797, -0.902024,
		0.566465, 0.712119, -0.414735,
		0.741800, -0.659837, -0.119784,
		46.173927, 34.204903, 33.691460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908150, 34.836952, 33.135616>,  <45.654667, 34.666790, 33.775307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908150, 34.836952, 33.135616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.965950, 34.457970, 33.249775>,  <46.000629, 34.230579, 33.318272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.965950, 34.457970, 33.249775>,  <45.908150, 34.836952, 33.135616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965950, 34.457970, 33.249775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413552, -0.319851, -0.852450,
		0.898941, 0.005153, -0.438040,
		0.144500, -0.947454, 0.285396,
		46.009300, 34.173733, 33.335392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077774, 34.489082, 32.515961>,  <45.908150, 34.836952, 33.135616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077774, 34.489082, 32.515961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963139, 34.190670, 32.756393>,  <45.894356, 34.011623, 32.900654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.963139, 34.190670, 32.756393>,  <46.077774, 34.489082, 32.515961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963139, 34.190670, 32.756393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387754, -0.483397, -0.784841,
		0.876078, -0.458000, -0.150741,
		-0.286590, -0.746032, 0.601085,
		45.877163, 33.966862, 32.936718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430668, 33.816090, 32.350842>,  <46.077774, 34.489082, 32.515961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430668, 33.816090, 32.350842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.086452, 33.737198, 32.538704>,  <45.879925, 33.689861, 32.651421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.086452, 33.737198, 32.538704>,  <46.430668, 33.816090, 32.350842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086452, 33.737198, 32.538704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360060, -0.416662, -0.834715,
		0.360320, -0.887407, 0.287538,
		-0.860539, -0.197233, 0.469652,
		45.828289, 33.678028, 32.679600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303787, 33.067699, 32.274895>,  <46.430668, 33.816090, 32.350842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303787, 33.067699, 32.274895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950859, 33.238873, 32.353260>,  <45.739101, 33.341576, 32.400280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950859, 33.238873, 32.353260>,  <46.303787, 33.067699, 32.274895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950859, 33.238873, 32.353260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366422, -0.363349, -0.856570,
		-0.295369, -0.827558, 0.477395,
		-0.882322, 0.427932, 0.195913,
		45.686161, 33.367252, 32.412033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857914, 32.639744, 31.935949>,  <46.303787, 33.067699, 32.274895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857914, 32.639744, 31.935949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646042, 32.975475, 31.984882>,  <45.518917, 33.176914, 32.014240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646042, 32.975475, 31.984882>,  <45.857914, 32.639744, 31.935949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646042, 32.975475, 31.984882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382629, -0.107730, -0.917600,
		-0.756989, -0.532842, 0.378214,
		-0.529681, 0.839329, 0.122331,
		45.487137, 33.227272, 32.021580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207829, 32.372868, 31.754930>,  <45.857914, 32.639744, 31.935949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207829, 32.372868, 31.754930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169632, 32.769661, 31.721834>,  <45.146713, 33.007736, 31.701977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169632, 32.769661, 31.721834>,  <45.207829, 32.372868, 31.754930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169632, 32.769661, 31.721834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415833, -0.115272, -0.902106,
		-0.904414, -0.051734, 0.423508,
		-0.095488, 0.991986, -0.082740,
		45.140987, 33.067257, 31.697012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573616, 32.480515, 31.667568>,  <45.207829, 32.372868, 31.754930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573616, 32.480515, 31.667568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737530, 32.811749, 31.514542>,  <44.835876, 33.010490, 31.422726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737530, 32.811749, 31.514542>,  <44.573616, 32.480515, 31.667568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737530, 32.811749, 31.514542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306726, -0.269888, -0.912732,
		-0.859069, 0.491362, 0.143400,
		0.409780, 0.828084, -0.382566,
		44.860462, 33.060173, 31.399773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107182, 32.929520, 31.423302>,  <44.573616, 32.480515, 31.667568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107182, 32.929520, 31.423302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.417492, 33.038773, 31.195768>,  <44.603680, 33.104324, 31.059248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.417492, 33.038773, 31.195768>,  <44.107182, 32.929520, 31.423302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417492, 33.038773, 31.195768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575601, -0.063074, -0.815294,
		-0.258562, 0.959906, 0.108284,
		0.775776, 0.273133, -0.568832,
		44.650227, 33.120712, 31.025118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899132, 33.457687, 31.027967>,  <44.107182, 32.929520, 31.423302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899132, 33.457687, 31.027967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232147, 33.322918, 30.852072>,  <44.431957, 33.242058, 30.746534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232147, 33.322918, 30.852072>,  <43.899132, 33.457687, 31.027967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232147, 33.322918, 30.852072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345454, 0.304793, -0.887560,
		0.433066, 0.890834, 0.137360,
		0.832535, -0.336920, -0.439738,
		44.481907, 33.221840, 30.720150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018009, 34.040623, 30.605492>,  <43.899132, 33.457687, 31.027967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018009, 34.040623, 30.605492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225754, 33.728985, 30.465054>,  <44.350403, 33.542000, 30.380791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225754, 33.728985, 30.465054>,  <44.018009, 34.040623, 30.605492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225754, 33.728985, 30.465054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223897, 0.272437, -0.935761,
		0.824699, 0.564611, -0.032943,
		0.519366, -0.779097, -0.351093,
		44.381565, 33.495255, 30.359726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233887, 34.230610, 29.951344>,  <44.018009, 34.040623, 30.605492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233887, 34.230610, 29.951344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329472, 33.843761, 29.916544>,  <44.386822, 33.611652, 29.895664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329472, 33.843761, 29.916544>,  <44.233887, 34.230610, 29.951344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329472, 33.843761, 29.916544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041159, 0.079428, -0.995991,
		0.970157, 0.241581, -0.020826,
		0.238958, -0.967125, -0.087001,
		44.401157, 33.553623, 29.890444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637535, 34.246075, 29.415995>,  <44.233887, 34.230610, 29.951344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637535, 34.246075, 29.415995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498241, 33.873310, 29.456533>,  <44.414665, 33.649651, 29.480856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498241, 33.873310, 29.456533>,  <44.637535, 34.246075, 29.415995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498241, 33.873310, 29.456533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177469, -0.040618, -0.983288,
		0.920457, -0.360397, -0.151241,
		-0.348230, -0.931915, 0.101347,
		44.393772, 33.593735, 29.486937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963654, 33.758438, 28.943426>,  <44.637535, 34.246075, 29.415995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963654, 33.758438, 28.943426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607750, 33.598373, 29.031246>,  <44.394207, 33.502335, 29.083939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607750, 33.598373, 29.031246>,  <44.963654, 33.758438, 28.943426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607750, 33.598373, 29.031246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156120, -0.185185, -0.970223,
		0.428904, -0.897539, 0.102296,
		-0.889757, -0.400162, 0.219551,
		44.340824, 33.478325, 29.097111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816212, 33.316467, 28.374920>,  <44.963654, 33.758438, 28.943426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816212, 33.316467, 28.374920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455769, 33.349007, 28.545279>,  <44.239502, 33.368530, 28.647493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455769, 33.349007, 28.545279>,  <44.816212, 33.316467, 28.374920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455769, 33.349007, 28.545279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430960, -0.059936, -0.900378,
		-0.047692, -0.994884, 0.089055,
		-0.901110, 0.081320, 0.425897,
		44.185436, 33.373409, 28.673046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432922, 32.781002, 28.084196>,  <44.816212, 33.316467, 28.374920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432922, 32.781002, 28.084196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141495, 33.018486, 28.220842>,  <43.966640, 33.160976, 28.302830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141495, 33.018486, 28.220842>,  <44.432922, 32.781002, 28.084196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141495, 33.018486, 28.220842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482260, -0.090435, -0.871348,
		-0.486431, -0.799583, 0.352209,
		-0.728567, 0.593707, 0.341617,
		43.922924, 33.196598, 28.323328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732349, 32.552559, 27.868591>,  <44.432922, 32.781002, 28.084196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732349, 32.552559, 27.868591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663975, 32.933201, 27.970751>,  <43.622952, 33.161587, 28.032045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663975, 32.933201, 27.970751>,  <43.732349, 32.552559, 27.868591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663975, 32.933201, 27.970751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628735, 0.094225, -0.771890,
		-0.758600, -0.292521, 0.582201,
		-0.170936, 0.951605, 0.255398,
		43.612694, 33.218681, 28.047371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061047, 32.657318, 27.656584>,  <43.732349, 32.552559, 27.868591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061047, 32.657318, 27.656584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.184292, 33.035385, 27.699900>,  <43.258240, 33.262226, 27.725889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.184292, 33.035385, 27.699900>,  <43.061047, 32.657318, 27.656584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184292, 33.035385, 27.699900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568269, 0.274135, -0.775835,
		-0.762979, 0.177507, 0.621574,
		0.308112, 0.945167, 0.108287,
		43.276726, 33.318935, 27.732386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538853, 33.103065, 27.457216>,  <43.061047, 32.657318, 27.656584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538853, 33.103065, 27.457216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872421, 33.321461, 27.425055>,  <43.072563, 33.452499, 27.405758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872421, 33.321461, 27.425055>,  <42.538853, 33.103065, 27.457216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872421, 33.321461, 27.425055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308410, 0.340233, -0.888327,
		-0.457664, 0.765594, 0.452117,
		0.833923, 0.545992, -0.080404,
		43.122597, 33.485260, 27.400932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378342, 33.798435, 27.362080>,  <42.538853, 33.103065, 27.457216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378342, 33.798435, 27.362080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751644, 33.770824, 27.221075>,  <42.975628, 33.754257, 27.136473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751644, 33.770824, 27.221075>,  <42.378342, 33.798435, 27.362080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751644, 33.770824, 27.221075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314636, 0.316375, -0.894936,
		0.173304, 0.946119, 0.273540,
		0.933258, -0.069031, -0.352512,
		43.031620, 33.750114, 27.115322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473709, 34.379093, 27.035015>,  <42.378342, 33.798435, 27.362080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473709, 34.379093, 27.035015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.759701, 34.134804, 26.898880>,  <42.931293, 33.988232, 26.817198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.759701, 34.134804, 26.898880>,  <42.473709, 34.379093, 27.035015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759701, 34.134804, 26.898880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211224, 0.275360, -0.937849,
		0.666480, 0.742427, 0.067877,
		0.714975, -0.610721, -0.340340,
		42.974194, 33.951588, 26.796778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.195286, 39.024540, 42.198498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993839, 38.680111, 42.170441>,  <39.872971, 38.473454, 42.153606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993839, 38.680111, 42.170441>,  <40.195286, 39.024540, 42.198498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993839, 38.680111, 42.170441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256597, -0.071559, -0.963866,
		0.824942, -0.503417, 0.256987,
		-0.503616, -0.861075, -0.070143,
		39.842754, 38.421787, 42.149399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698078, 38.529137, 41.933517>,  <40.195286, 39.024540, 42.198498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698078, 38.529137, 41.933517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334564, 38.369671, 41.884243>,  <40.116455, 38.273991, 41.854679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334564, 38.369671, 41.884243>,  <40.698078, 38.529137, 41.933517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334564, 38.369671, 41.884243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256355, -0.300505, -0.918683,
		0.329229, -0.866466, 0.375294,
		-0.908785, -0.398666, -0.123188,
		40.061928, 38.250072, 41.847286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744251, 38.015720, 41.489651>,  <40.698078, 38.529137, 41.933517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744251, 38.015720, 41.489651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350395, 38.077721, 41.457493>,  <40.114082, 38.114922, 41.438198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350395, 38.077721, 41.457493>,  <40.744251, 38.015720, 41.489651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350395, 38.077721, 41.457493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050975, -0.185206, -0.981377,
		-0.166993, -0.970400, 0.174460,
		-0.984640, 0.154990, -0.080394,
		40.055004, 38.124218, 41.433372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445747, 37.429634, 41.096378>,  <40.744251, 38.015720, 41.489651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445747, 37.429634, 41.096378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183578, 37.730717, 41.071545>,  <40.026279, 37.911366, 41.056644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183578, 37.730717, 41.071545>,  <40.445747, 37.429634, 41.096378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183578, 37.730717, 41.071545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143827, -0.205092, -0.968117,
		-0.741446, -0.625591, 0.242681,
		-0.655418, 0.752711, -0.062087,
		39.986954, 37.956532, 41.052917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865761, 37.120358, 40.777943>,  <40.445747, 37.429634, 41.096378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865761, 37.120358, 40.777943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860653, 37.515865, 40.718395>,  <39.857590, 37.753170, 40.682667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860653, 37.515865, 40.718395>,  <39.865761, 37.120358, 40.777943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860653, 37.515865, 40.718395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152616, -0.149066, -0.976979,
		-0.988203, 0.010244, 0.152806,
		-0.012770, 0.988774, -0.148871,
		39.856823, 37.812496, 40.673733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229279, 37.220573, 40.515770>,  <39.865761, 37.120358, 40.777943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229279, 37.220573, 40.515770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429619, 37.546387, 40.398682>,  <39.549824, 37.741875, 40.328426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429619, 37.546387, 40.398682>,  <39.229279, 37.220573, 40.515770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429619, 37.546387, 40.398682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445182, -0.047605, -0.894174,
		-0.742269, 0.578162, 0.338772,
		0.500850, 0.814532, -0.292723,
		39.579872, 37.790745, 40.310863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716438, 37.642159, 40.149960>,  <39.229279, 37.220573, 40.515770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716438, 37.642159, 40.149960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075340, 37.768658, 40.026730>,  <39.290684, 37.844559, 39.952789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075340, 37.768658, 40.026730>,  <38.716438, 37.642159, 40.149960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075340, 37.768658, 40.026730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353779, 0.097542, -0.930229,
		-0.264135, 0.943648, 0.199403,
		0.897259, 0.316251, -0.308078,
		39.344517, 37.863533, 39.934307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615517, 38.197186, 39.782547>,  <38.716438, 37.642159, 40.149960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615517, 38.197186, 39.782547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955551, 38.025700, 39.660198>,  <39.159573, 37.922810, 39.586788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955551, 38.025700, 39.660198>,  <38.615517, 38.197186, 39.782547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955551, 38.025700, 39.660198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349020, -0.023668, -0.936816,
		0.394384, 0.903132, -0.169748,
		0.850086, -0.428711, -0.305876,
		39.210575, 37.897087, 39.568436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513000, 38.326420, 39.100796>,  <38.615517, 38.197186, 39.782547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513000, 38.326420, 39.100796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861870, 38.130856, 39.107544>,  <39.071190, 38.013519, 39.111595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861870, 38.130856, 39.107544>,  <38.513000, 38.326420, 39.100796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861870, 38.130856, 39.107544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111593, -0.232419, -0.966193,
		0.476300, 0.840804, -0.257267,
		0.872173, -0.488907, 0.016874,
		39.123520, 37.984184, 39.112606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863785, 38.559772, 38.560425>,  <38.513000, 38.326420, 39.100796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863785, 38.559772, 38.560425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023521, 38.197571, 38.617817>,  <39.119362, 37.980251, 38.652252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023521, 38.197571, 38.617817>,  <38.863785, 38.559772, 38.560425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023521, 38.197571, 38.617817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102613, -0.199665, -0.974477,
		0.911042, 0.374424, -0.172651,
		0.399340, -0.905506, 0.143483,
		39.143322, 37.925919, 38.660862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501774, 38.436016, 38.115929>,  <38.863785, 38.559772, 38.560425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501774, 38.436016, 38.115929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352791, 38.081894, 38.227295>,  <39.263401, 37.869419, 38.294113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352791, 38.081894, 38.227295>,  <39.501774, 38.436016, 38.115929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352791, 38.081894, 38.227295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071158, -0.271872, -0.959699,
		0.925319, -0.377255, 0.038264,
		-0.372454, -0.885305, 0.278413,
		39.241055, 37.816303, 38.310818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876247, 37.862156, 37.749187>,  <39.501774, 38.436016, 38.115929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876247, 37.862156, 37.749187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511154, 37.738541, 37.856083>,  <39.292099, 37.664371, 37.920219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511154, 37.738541, 37.856083>,  <39.876247, 37.862156, 37.749187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511154, 37.738541, 37.856083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192144, -0.252560, -0.948311,
		0.360557, -0.916902, 0.171139,
		-0.912732, -0.309037, 0.267240,
		39.237335, 37.645828, 37.936256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765572, 37.113831, 37.547157>,  <39.876247, 37.862156, 37.749187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765572, 37.113831, 37.547157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435143, 37.335976, 37.585468>,  <39.236885, 37.469261, 37.608456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435143, 37.335976, 37.585468>,  <39.765572, 37.113831, 37.547157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435143, 37.335976, 37.585468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275237, -0.249277, -0.928497,
		-0.491774, -0.793371, 0.358777,
		-0.826077, 0.555359, 0.095777,
		39.187321, 37.502583, 37.614201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080864, 36.781075, 37.957226>,  <39.765572, 37.113831, 37.547157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080864, 36.781075, 37.957226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300381, 36.504108, 38.144581>,  <39.432091, 36.337929, 38.256992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300381, 36.504108, 38.144581>,  <39.080864, 36.781075, 37.957226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300381, 36.504108, 38.144581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832921, -0.500628, 0.235828,
		0.071196, -0.519550, -0.851469,
		0.548794, -0.692416, 0.468386,
		39.465019, 36.296383, 38.285095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249893, 35.961372, 37.833618>,  <39.080864, 36.781075, 37.957226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249893, 35.961372, 37.833618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304962, 35.587563, 37.702335>,  <39.338001, 35.363277, 37.623566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304962, 35.587563, 37.702335>,  <39.249893, 35.961372, 37.833618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304962, 35.587563, 37.702335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312221, -0.355413, 0.881022,
		-0.939981, -0.018818, -0.340707,
		0.137671, -0.934520, -0.328206,
		39.346264, 35.307205, 37.603874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587101, 35.504932, 37.889698>,  <39.249893, 35.961372, 37.833618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587101, 35.504932, 37.889698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924931, 35.291626, 37.908985>,  <39.127628, 35.163643, 37.920559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924931, 35.291626, 37.908985>,  <38.587101, 35.504932, 37.889698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924931, 35.291626, 37.908985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224833, -0.271466, 0.935818,
		-0.485948, -0.801208, -0.349169,
		0.844573, -0.533264, 0.048220,
		39.178303, 35.131645, 37.923450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382286, 34.935028, 38.160740>,  <38.587101, 35.504932, 37.889698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382286, 34.935028, 38.160740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775314, 34.957298, 38.231689>,  <39.011131, 34.970661, 38.274258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775314, 34.957298, 38.231689>,  <38.382286, 34.935028, 38.160740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775314, 34.957298, 38.231689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152623, -0.303170, 0.940635,
		0.106143, -0.951309, -0.289388,
		0.982568, 0.055675, 0.177371,
		39.070084, 34.973999, 38.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408516, 34.407051, 38.637596>,  <38.382286, 34.935028, 38.160740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408516, 34.407051, 38.637596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761322, 34.593342, 38.666286>,  <38.973007, 34.705116, 38.683502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761322, 34.593342, 38.666286>,  <38.408516, 34.407051, 38.637596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761322, 34.593342, 38.666286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108192, -0.348305, 0.931117,
		0.458628, -0.813501, -0.357599,
		0.882017, 0.465726, 0.071728,
		39.025928, 34.733059, 38.687805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834343, 33.912239, 38.929443>,  <38.408516, 34.407051, 38.637596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834343, 33.912239, 38.929443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008797, 34.266560, 38.992874>,  <39.113468, 34.479153, 39.030933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008797, 34.266560, 38.992874>,  <38.834343, 33.912239, 38.929443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008797, 34.266560, 38.992874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299617, -0.309104, 0.902598,
		0.848536, -0.346145, -0.400212,
		0.436138, 0.885798, 0.158575,
		39.139637, 34.532299, 39.040447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463070, 33.645760, 39.295078>,  <38.834343, 33.912239, 38.929443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463070, 33.645760, 39.295078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446449, 34.040325, 39.358658>,  <39.436478, 34.277065, 39.396805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446449, 34.040325, 39.358658>,  <39.463070, 33.645760, 39.295078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446449, 34.040325, 39.358658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375097, -0.132049, 0.917532,
		0.926054, 0.097747, -0.364513,
		-0.041552, 0.986412, 0.158949,
		39.433983, 34.336250, 39.406342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043362, 33.814823, 39.756832>,  <39.463070, 33.645760, 39.295078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043362, 33.814823, 39.756832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806095, 34.134830, 39.792896>,  <39.663734, 34.326836, 39.814537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806095, 34.134830, 39.792896>,  <40.043362, 33.814823, 39.756832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806095, 34.134830, 39.792896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282225, 0.101742, 0.953938,
		0.753990, 0.591292, -0.286134,
		-0.593167, 0.800014, 0.090165,
		39.628143, 34.374836, 39.819946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426765, 34.329514, 40.123539>,  <40.043362, 33.814823, 39.756832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426765, 34.329514, 40.123539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036655, 34.398769, 40.178482>,  <39.802589, 34.440323, 40.211449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036655, 34.398769, 40.178482>,  <40.426765, 34.329514, 40.123539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036655, 34.398769, 40.178482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115240, -0.131916, 0.984539,
		0.188583, 0.976023, 0.108701,
		-0.975272, 0.173141, 0.137354,
		39.744072, 34.450710, 40.219688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458668, 34.855225, 40.595982>,  <40.426765, 34.329514, 40.123539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458668, 34.855225, 40.595982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084129, 34.715122, 40.605591>,  <39.859406, 34.631062, 40.611359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084129, 34.715122, 40.605591>,  <40.458668, 34.855225, 40.595982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084129, 34.715122, 40.605591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011308, 0.038313, 0.999202,
		-0.350896, 0.935870, -0.031914,
		-0.936346, -0.350255, 0.024027,
		39.803226, 34.610046, 40.612801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137280, 35.311382, 40.918015>,  <40.458668, 34.855225, 40.595982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137280, 35.311382, 40.918015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943871, 34.967815, 40.985500>,  <39.827824, 34.761677, 41.025993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943871, 34.967815, 40.985500>,  <40.137280, 35.311382, 40.918015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943871, 34.967815, 40.985500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073656, 0.152136, 0.985611,
		-0.872225, 0.488997, -0.010298,
		-0.483527, -0.858916, 0.168714,
		39.798813, 34.710140, 41.036114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629047, 35.562016, 41.299320>,  <40.137280, 35.311382, 40.918015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629047, 35.562016, 41.299320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670113, 35.168442, 41.357735>,  <39.694752, 34.932297, 41.392784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670113, 35.168442, 41.357735>,  <39.629047, 35.562016, 41.299320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670113, 35.168442, 41.357735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090344, 0.136987, 0.986445,
		-0.990605, -0.114464, -0.074829,
		0.102661, -0.983937, 0.146041,
		39.700912, 34.873260, 41.401546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100224, 35.419205, 41.744633>,  <39.629047, 35.562016, 41.299320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100224, 35.419205, 41.744633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344173, 35.103008, 41.767178>,  <39.490543, 34.913292, 41.780704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344173, 35.103008, 41.767178>,  <39.100224, 35.419205, 41.744633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344173, 35.103008, 41.767178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199753, -0.084505, 0.976196,
		-0.766908, -0.606620, -0.209440,
		0.609879, -0.790488, 0.056367,
		39.527138, 34.865864, 41.784088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717777, 35.035236, 42.161503>,  <39.100224, 35.419205, 41.744633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717777, 35.035236, 42.161503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091202, 34.895809, 42.194889>,  <39.315258, 34.812153, 42.214920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091202, 34.895809, 42.194889>,  <38.717777, 35.035236, 42.161503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091202, 34.895809, 42.194889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046071, 0.114227, 0.992386,
		-0.355449, -0.930297, 0.090578,
		0.933559, -0.348569, 0.083462,
		39.371269, 34.791237, 42.219929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691742, 34.545620, 42.796539>,  <38.717777, 35.035236, 42.161503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691742, 34.545620, 42.796539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070976, 34.651211, 42.725601>,  <39.298515, 34.714565, 42.683037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070976, 34.651211, 42.725601>,  <38.691742, 34.545620, 42.796539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070976, 34.651211, 42.725601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110487, 0.249522, 0.962046,
		0.298212, -0.931694, 0.207401,
		0.948084, 0.263978, -0.177350,
		39.355400, 34.730404, 42.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903889, 33.883709, 42.716278>,  <38.691742, 34.545620, 42.796539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903889, 33.883709, 42.716278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695934, 33.543186, 42.744545>,  <38.571159, 33.338871, 42.761505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695934, 33.543186, 42.744545>,  <38.903889, 33.883709, 42.716278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695934, 33.543186, 42.744545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096143, -0.023883, -0.995081,
		0.848807, -0.524124, -0.069431,
		-0.519888, -0.851307, 0.070663,
		38.539967, 33.287796, 42.765743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916218, 33.627213, 42.036842>,  <38.903889, 33.883709, 42.716278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916218, 33.627213, 42.036842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632469, 33.387554, 42.185333>,  <38.462219, 33.243759, 42.274429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632469, 33.387554, 42.185333>,  <38.916218, 33.627213, 42.036842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632469, 33.387554, 42.185333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394507, -0.098950, -0.913550,
		0.584086, -0.794499, -0.166177,
		-0.709371, -0.599149, 0.371231,
		38.419659, 33.207809, 42.296703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982616, 33.047352, 41.641071>,  <38.916218, 33.627213, 42.036842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982616, 33.047352, 41.641071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622078, 33.094772, 41.807693>,  <38.405754, 33.123226, 41.907665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622078, 33.094772, 41.807693>,  <38.982616, 33.047352, 41.641071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622078, 33.094772, 41.807693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431584, -0.165589, -0.886744,
		-0.036145, -0.979044, 0.200417,
		-0.901348, 0.118548, 0.416555,
		38.351673, 33.130337, 41.932659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564255, 32.403294, 41.491749>,  <38.982616, 33.047352, 41.641071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564255, 32.403294, 41.491749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273991, 32.664993, 41.576954>,  <38.099831, 32.822014, 41.628075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273991, 32.664993, 41.576954>,  <38.564255, 32.403294, 41.491749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273991, 32.664993, 41.576954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433289, -0.194033, -0.880121,
		-0.534490, -0.730963, 0.424282,
		-0.725660, 0.654252, 0.213009,
		38.056293, 32.861267, 41.640858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979992, 32.091515, 41.231853>,  <38.564255, 32.403294, 41.491749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979992, 32.091515, 41.231853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881332, 32.477345, 41.269299>,  <37.822136, 32.708843, 41.291767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881332, 32.477345, 41.269299>,  <37.979992, 32.091515, 41.231853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881332, 32.477345, 41.269299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645685, -0.091532, -0.758097,
		-0.722671, -0.247431, 0.645387,
		-0.246650, 0.964572, 0.093615,
		37.807339, 32.766716, 41.297382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189365, 32.141674, 41.297134>,  <37.979992, 32.091515, 41.231853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189365, 32.141674, 41.297134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306969, 32.502350, 41.170322>,  <37.377533, 32.718758, 41.094234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306969, 32.502350, 41.170322>,  <37.189365, 32.141674, 41.297134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306969, 32.502350, 41.170322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422882, -0.174740, -0.889177,
		-0.857163, 0.395493, 0.329935,
		0.294010, 0.901693, -0.317028,
		37.395172, 32.772858, 41.075214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574135, 32.414215, 40.899082>,  <37.189365, 32.141674, 41.297134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574135, 32.414215, 40.899082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870319, 32.659122, 40.788204>,  <37.048031, 32.806068, 40.721680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870319, 32.659122, 40.788204>,  <36.574135, 32.414215, 40.899082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870319, 32.659122, 40.788204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493776, 0.215790, -0.842390,
		-0.455955, 0.760631, 0.462110,
		0.740466, 0.612271, -0.277191,
		37.092461, 32.842804, 40.705048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445385, 33.105537, 40.825832>,  <36.574135, 32.414215, 40.899082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445385, 33.105537, 40.825832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748421, 33.043629, 40.572186>,  <36.930244, 33.006481, 40.419998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748421, 33.043629, 40.572186>,  <36.445385, 33.105537, 40.825832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748421, 33.043629, 40.572186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612707, 0.166312, -0.772613,
		0.225042, 0.973851, 0.031164,
		0.757592, -0.154776, -0.634113,
		36.975697, 32.997196, 40.381950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210735, 33.401676, 40.290638>,  <36.445385, 33.105537, 40.825832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210735, 33.401676, 40.290638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529186, 33.231834, 40.118172>,  <36.720257, 33.129929, 40.014694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529186, 33.231834, 40.118172>,  <36.210735, 33.401676, 40.290638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529186, 33.231834, 40.118172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400286, 0.164841, -0.901443,
		0.453826, 0.890248, -0.038728,
		0.796124, -0.424600, -0.431163,
		36.768024, 33.104454, 39.988823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336697, 33.831924, 39.854183>,  <36.210735, 33.401676, 40.290638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336697, 33.831924, 39.854183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528908, 33.500462, 39.739342>,  <36.644234, 33.301586, 39.670437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528908, 33.500462, 39.739342>,  <36.336697, 33.831924, 39.854183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528908, 33.500462, 39.739342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345866, 0.121774, -0.930348,
		0.805899, 0.546354, -0.228088,
		0.480524, -0.828655, -0.287103,
		36.673065, 33.251865, 39.653210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829273, 34.021255, 39.320225>,  <36.336697, 33.831924, 39.854183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829273, 34.021255, 39.320225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745060, 33.633091, 39.272942>,  <36.694534, 33.400192, 39.244572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745060, 33.633091, 39.272942>,  <36.829273, 34.021255, 39.320225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745060, 33.633091, 39.272942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281839, 0.176039, -0.943174,
		0.936079, -0.165250, -0.310562,
		-0.210530, -0.970414, -0.118212,
		36.681900, 33.341969, 39.237476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871353, 33.917694, 38.591812>,  <36.829273, 34.021255, 39.320225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871353, 33.917694, 38.591812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712372, 33.569832, 38.708927>,  <36.616982, 33.361115, 38.779198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712372, 33.569832, 38.708927>,  <36.871353, 33.917694, 38.591812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712372, 33.569832, 38.708927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530182, -0.042786, -0.846803,
		0.748958, -0.491795, -0.444072,
		-0.397453, -0.869659, 0.292786,
		36.593136, 33.308933, 38.796764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.506702, 33.850430, 45.875603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144569, 33.741352, 46.005840>,  <38.927288, 33.675907, 46.083984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144569, 33.741352, 46.005840>,  <39.506702, 33.850430, 45.875603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144569, 33.741352, 46.005840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017008, -0.742751, -0.669352,
		0.424362, -0.611524, 0.667799,
		-0.905333, -0.272689, 0.325596,
		38.872971, 33.659546, 46.103519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529980, 33.214512, 45.746296>,  <39.506702, 33.850430, 45.875603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529980, 33.214512, 45.746296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139767, 33.287846, 45.794842>,  <38.905640, 33.331848, 45.823971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.139767, 33.287846, 45.794842>,  <39.529980, 33.214512, 45.746296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139767, 33.287846, 45.794842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198929, -0.500855, -0.842361,
		-0.093648, -0.845891, 0.525070,
		-0.975529, 0.183337, 0.121368,
		38.847107, 33.342846, 45.831253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173065, 32.548145, 45.597912>,  <39.529980, 33.214512, 45.746296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173065, 32.548145, 45.597912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910652, 32.846626, 45.552635>,  <38.753204, 33.025715, 45.525471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910652, 32.846626, 45.552635>,  <39.173065, 32.548145, 45.597912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910652, 32.846626, 45.552635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320380, -0.411124, -0.853425,
		-0.683361, -0.523607, 0.508777,
		-0.656030, 0.746199, -0.113192,
		38.713844, 33.070484, 45.518677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431694, 32.230782, 45.367977>,  <39.173065, 32.548145, 45.597912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431694, 32.230782, 45.367977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428436, 32.621754, 45.283539>,  <38.426483, 32.856339, 45.232876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428436, 32.621754, 45.283539>,  <38.431694, 32.230782, 45.367977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428436, 32.621754, 45.283539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140931, -0.210116, -0.967466,
		-0.989986, 0.021869, 0.139462,
		-0.008145, 0.977432, -0.211094,
		38.425991, 32.914982, 45.220211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752426, 32.347786, 45.032383>,  <38.431694, 32.230782, 45.367977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752426, 32.347786, 45.032383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991089, 32.650608, 44.925900>,  <38.134285, 32.832302, 44.862011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991089, 32.650608, 44.925900>,  <37.752426, 32.347786, 45.032383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991089, 32.650608, 44.925900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322567, -0.077501, -0.943369,
		-0.734814, 0.648737, 0.197960,
		0.596656, 0.757056, -0.266210,
		38.170086, 32.877724, 44.846035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391235, 32.724777, 44.510887>,  <37.752426, 32.347786, 45.032383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391235, 32.724777, 44.510887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769302, 32.851688, 44.479931>,  <37.996143, 32.927834, 44.461357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.769302, 32.851688, 44.479931>,  <37.391235, 32.724777, 44.510887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769302, 32.851688, 44.479931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095073, 0.040598, -0.994642,
		-0.312437, 0.947463, 0.068536,
		0.945169, 0.317279, -0.077394,
		38.052853, 32.946873, 44.456711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369965, 33.253578, 43.974773>,  <37.391235, 32.724777, 44.510887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369965, 33.253578, 43.974773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755852, 33.154510, 44.010498>,  <37.987385, 33.095070, 44.031933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.755852, 33.154510, 44.010498>,  <37.369965, 33.253578, 43.974773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755852, 33.154510, 44.010498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107993, 0.062883, -0.992161,
		0.240110, 0.966802, 0.087410,
		0.964720, -0.247668, 0.089309,
		38.045269, 33.080212, 44.037292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793312, 33.787872, 43.496155>,  <37.369965, 33.253578, 43.974773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793312, 33.787872, 43.496155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023727, 33.464928, 43.547302>,  <38.161976, 33.271160, 43.577991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023727, 33.464928, 43.547302>,  <37.793312, 33.787872, 43.496155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023727, 33.464928, 43.547302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229644, 0.009707, -0.973226,
		0.784502, 0.589980, 0.190997,
		0.576038, -0.807359, 0.127870,
		38.196537, 33.222721, 43.585663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463680, 34.017033, 43.354057>,  <37.793312, 33.787872, 43.496155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463680, 34.017033, 43.354057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466019, 33.621006, 43.297863>,  <38.467422, 33.383392, 43.264145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466019, 33.621006, 43.297863>,  <38.463680, 34.017033, 43.354057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466019, 33.621006, 43.297863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065361, 0.140571, -0.987911,
		0.997845, -0.003403, 0.065534,
		0.005850, -0.990065, -0.140490,
		38.467773, 33.323986, 43.255714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047421, 34.276627, 43.396664>,  <38.463680, 34.017033, 43.354057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047421, 34.276627, 43.396664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291405, 34.546650, 43.230659>,  <39.437798, 34.708664, 43.131058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291405, 34.546650, 43.230659>,  <39.047421, 34.276627, 43.396664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291405, 34.546650, 43.230659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338222, 0.251834, 0.906744,
		0.716623, -0.693447, -0.074711,
		0.609965, 0.675063, -0.415009,
		39.474396, 34.749168, 43.106155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726997, 34.210926, 43.737892>,  <39.047421, 34.276627, 43.396664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726997, 34.210926, 43.737892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792797, 34.562122, 43.558083>,  <39.832275, 34.772842, 43.450199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792797, 34.562122, 43.558083>,  <39.726997, 34.210926, 43.737892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792797, 34.562122, 43.558083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338987, 0.377650, 0.861666,
		0.926299, -0.294121, -0.235507,
		0.164495, 0.877994, -0.449520,
		39.842144, 34.825520, 43.423225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432064, 34.361576, 43.765247>,  <39.726997, 34.210926, 43.737892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432064, 34.361576, 43.765247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220219, 34.699879, 43.739304>,  <40.093113, 34.902859, 43.723736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220219, 34.699879, 43.739304>,  <40.432064, 34.361576, 43.765247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220219, 34.699879, 43.739304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504597, 0.375596, 0.777373,
		0.681828, 0.378980, -0.625687,
		-0.529614, 0.845755, -0.064860,
		40.061333, 34.953606, 43.719845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859776, 34.797657, 43.817646>,  <40.432064, 34.361576, 43.765247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859776, 34.797657, 43.817646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525642, 34.991207, 43.922020>,  <40.325161, 35.107338, 43.984642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525642, 34.991207, 43.922020>,  <40.859776, 34.797657, 43.817646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525642, 34.991207, 43.922020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401947, 0.213772, 0.890360,
		0.375040, 0.848629, -0.373061,
		-0.835335, 0.483871, 0.260930,
		40.275043, 35.136368, 44.000298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110870, 35.407101, 44.097645>,  <40.859776, 34.797657, 43.817646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110870, 35.407101, 44.097645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.729233, 35.414234, 44.217236>,  <40.500252, 35.418514, 44.288990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.729233, 35.414234, 44.217236>,  <41.110870, 35.407101, 44.097645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729233, 35.414234, 44.217236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299210, 0.101540, 0.948769,
		-0.013435, 0.994672, -0.102215,
		-0.954093, 0.017837, 0.298980,
		40.443005, 35.419586, 44.306931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992104, 36.069668, 44.475796>,  <41.110870, 35.407101, 44.097645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992104, 36.069668, 44.475796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726917, 35.802284, 44.610634>,  <40.567806, 35.641853, 44.691536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726917, 35.802284, 44.610634>,  <40.992104, 36.069668, 44.475796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726917, 35.802284, 44.610634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208946, 0.267160, 0.940727,
		-0.718898, 0.694106, -0.037446,
		-0.662968, -0.668463, 0.337092,
		40.528027, 35.601746, 44.711761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466980, 36.535904, 44.883732>,  <40.992104, 36.069668, 44.475796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466980, 36.535904, 44.883732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.450905, 36.153637, 45.000404>,  <40.441261, 35.924274, 45.070408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.450905, 36.153637, 45.000404>,  <40.466980, 36.535904, 44.883732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450905, 36.153637, 45.000404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076235, 0.288137, 0.954550,
		-0.996280, 0.060595, 0.061276,
		-0.040185, -0.955670, 0.291685,
		40.438850, 35.866936, 45.087910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028618, 36.647572, 45.404579>,  <40.466980, 36.535904, 44.883732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028618, 36.647572, 45.404579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227844, 36.304924, 45.458454>,  <40.347378, 36.099335, 45.490780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227844, 36.304924, 45.458454>,  <40.028618, 36.647572, 45.404579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227844, 36.304924, 45.458454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014838, 0.146885, 0.989042,
		-0.867015, -0.494602, 0.060448,
		0.498061, -0.856617, 0.134690,
		40.377262, 36.047939, 45.498859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595089, 36.204880, 45.824043>,  <40.028618, 36.647572, 45.404579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595089, 36.204880, 45.824043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978729, 36.093941, 45.846691>,  <40.208912, 36.027378, 45.860279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978729, 36.093941, 45.846691>,  <39.595089, 36.204880, 45.824043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978729, 36.093941, 45.846691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028851, 0.294738, 0.955142,
		-0.281598, -0.914442, 0.290685,
		0.959098, -0.277353, 0.056615,
		40.266460, 36.010735, 45.863674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633125, 35.978504, 46.450150>,  <39.595089, 36.204880, 45.824043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633125, 35.978504, 46.450150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010036, 36.044781, 46.333767>,  <40.236183, 36.084549, 46.263939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010036, 36.044781, 46.333767>,  <39.633125, 35.978504, 46.450150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010036, 36.044781, 46.333767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250489, 0.227766, 0.940945,
		0.222163, -0.959517, 0.173120,
		0.942284, 0.165678, -0.290949,
		40.292721, 36.094490, 46.246483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143448, 35.574368, 46.929890>,  <39.633125, 35.978504, 46.450150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143448, 35.574368, 46.929890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365757, 35.859024, 46.757988>,  <40.499142, 36.029816, 46.654846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365757, 35.859024, 46.757988>,  <40.143448, 35.574368, 46.929890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365757, 35.859024, 46.757988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320333, 0.293710, 0.900623,
		0.767140, -0.638207, -0.064725,
		0.555773, 0.711637, -0.429755,
		40.532490, 36.072514, 46.629063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761707, 35.412186, 47.256783>,  <40.143448, 35.574368, 46.929890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761707, 35.412186, 47.256783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749538, 35.785717, 47.114208>,  <40.742237, 36.009834, 47.028664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749538, 35.785717, 47.114208>,  <40.761707, 35.412186, 47.256783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749538, 35.785717, 47.114208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173224, 0.356127, 0.918241,
		0.984412, -0.033807, -0.172596,
		-0.030423, 0.933826, -0.356432,
		40.740410, 36.065865, 47.007278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334297, 35.836819, 47.611267>,  <40.761707, 35.412186, 47.256783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334297, 35.836819, 47.611267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.092205, 36.109226, 47.446388>,  <40.946949, 36.272671, 47.347462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.092205, 36.109226, 47.446388>,  <41.334297, 35.836819, 47.611267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092205, 36.109226, 47.446388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159588, 0.611089, 0.775307,
		0.779888, 0.403460, -0.478534,
		-0.605232, 0.681021, -0.412194,
		40.910637, 36.313534, 47.322731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630768, 36.488792, 47.879459>,  <41.334297, 35.836819, 47.611267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630768, 36.488792, 47.879459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.279095, 36.615166, 47.736782>,  <41.068092, 36.690990, 47.651176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.279095, 36.615166, 47.736782>,  <41.630768, 36.488792, 47.879459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279095, 36.615166, 47.736782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110866, 0.592406, 0.797975,
		0.463413, 0.741109, -0.485805,
		-0.879180, 0.315932, -0.356692,
		41.015339, 36.709946, 47.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.052044, 37.431118, 48.324001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398823, 37.238739, 48.376301>,  <33.606892, 37.123310, 48.407681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398823, 37.238739, 48.376301>,  <33.052044, 37.431118, 48.324001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398823, 37.238739, 48.376301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059461, -0.160646, -0.985219,
		0.494842, 0.861906, -0.110674,
		0.866946, -0.480947, 0.130744,
		33.658905, 37.094456, 48.415524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502045, 37.742268, 47.815849>,  <33.052044, 37.431118, 48.324001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502045, 37.742268, 47.815849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660210, 37.392967, 47.929749>,  <33.755108, 37.183388, 47.998089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660210, 37.392967, 47.929749>,  <33.502045, 37.742268, 47.815849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660210, 37.392967, 47.929749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071615, -0.279759, -0.957396,
		0.915707, 0.398960, -0.048083,
		0.395414, -0.873250, 0.284748,
		33.778835, 37.130993, 48.015175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907623, 37.609184, 47.245296>,  <33.502045, 37.742268, 47.815849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907623, 37.609184, 47.245296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.879429, 37.253635, 47.426376>,  <33.862511, 37.040306, 47.535023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.879429, 37.253635, 47.426376>,  <33.907623, 37.609184, 47.245296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879429, 37.253635, 47.426376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189161, -0.457501, -0.868856,
		0.979413, 0.024388, 0.200389,
		-0.070488, -0.888875, 0.452695,
		33.858284, 36.986973, 47.562183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480911, 37.336155, 47.113247>,  <33.907623, 37.609184, 47.245296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480911, 37.336155, 47.113247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217907, 37.037323, 47.152336>,  <34.060104, 36.858025, 47.175789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217907, 37.037323, 47.152336>,  <34.480911, 37.336155, 47.113247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217907, 37.037323, 47.152336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183498, -0.284574, -0.940929,
		0.730761, -0.600737, 0.324198,
		-0.657508, -0.747083, 0.097721,
		34.020653, 36.813198, 47.181652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801395, 36.686344, 46.903397>,  <34.480911, 37.336155, 47.113247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801395, 36.686344, 46.903397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407261, 36.628727, 46.866837>,  <34.170780, 36.594154, 46.844898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407261, 36.628727, 46.866837>,  <34.801395, 36.686344, 46.903397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407261, 36.628727, 46.866837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154312, -0.524112, -0.837553,
		0.072741, -0.839379, 0.538657,
		-0.985341, -0.144046, -0.091402,
		34.111660, 36.585514, 46.839417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799133, 36.212337, 46.504833>,  <34.801395, 36.686344, 46.903397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799133, 36.212337, 46.504833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410786, 36.302750, 46.473011>,  <34.177776, 36.356998, 46.453918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410786, 36.302750, 46.473011>,  <34.799133, 36.212337, 46.504833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410786, 36.302750, 46.473011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028055, -0.436926, -0.899060,
		-0.237975, -0.870635, 0.430538,
		-0.970866, 0.226032, -0.079552,
		34.119526, 36.370560, 46.449146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499771, 35.624096, 46.129700>,  <34.799133, 36.212337, 46.504833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499771, 35.624096, 46.129700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223595, 35.912617, 46.107754>,  <34.057888, 36.085728, 46.094585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223595, 35.912617, 46.107754>,  <34.499771, 35.624096, 46.129700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223595, 35.912617, 46.107754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212138, -0.274402, -0.937924,
		-0.691580, -0.635946, 0.342475,
		-0.690445, 0.721302, -0.054863,
		34.016460, 36.129005, 46.091293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822334, 35.268311, 45.944698>,  <34.499771, 35.624096, 46.129700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822334, 35.268311, 45.944698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811474, 35.655041, 45.843102>,  <33.804958, 35.887077, 45.782143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811474, 35.655041, 45.843102>,  <33.822334, 35.268311, 45.944698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811474, 35.655041, 45.843102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351430, -0.247097, -0.903017,
		-0.935820, 0.064746, 0.346480,
		-0.027147, 0.966825, -0.253992,
		33.803329, 35.945087, 45.766903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186993, 35.236618, 45.620644>,  <33.822334, 35.268311, 45.944698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186993, 35.236618, 45.620644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415813, 35.548054, 45.517448>,  <33.553104, 35.734913, 45.455532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415813, 35.548054, 45.517448>,  <33.186993, 35.236618, 45.620644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415813, 35.548054, 45.517448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154492, -0.206630, -0.966145,
		-0.805536, 0.592544, 0.002082,
		0.572053, 0.778586, -0.257991,
		33.587429, 35.781628, 45.440052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883938, 35.486805, 44.981449>,  <33.186993, 35.236618, 45.620644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883938, 35.486805, 44.981449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236149, 35.675892, 44.995380>,  <33.447475, 35.789345, 45.003738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236149, 35.675892, 44.995380>,  <32.883938, 35.486805, 44.981449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236149, 35.675892, 44.995380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006540, 0.061348, -0.998095,
		-0.473955, 0.879075, 0.050927,
		0.880525, 0.472719, 0.034825,
		33.500305, 35.817707, 45.005829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833885, 36.025070, 44.540508>,  <32.883938, 35.486805, 44.981449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833885, 36.025070, 44.540508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228905, 35.966610, 44.563789>,  <33.465916, 35.931534, 44.577759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228905, 35.966610, 44.563789>,  <32.833885, 36.025070, 44.540508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228905, 35.966610, 44.563789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069215, 0.071441, -0.995040,
		0.141265, 0.986680, 0.080667,
		0.987549, -0.146147, 0.058200,
		33.525169, 35.922768, 44.581249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145340, 36.445492, 44.139156>,  <32.833885, 36.025070, 44.540508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145340, 36.445492, 44.139156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415920, 36.152008, 44.164726>,  <33.578270, 35.975918, 44.180069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415920, 36.152008, 44.164726>,  <33.145340, 36.445492, 44.139156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415920, 36.152008, 44.164726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134523, 0.037756, -0.990191,
		0.724096, 0.678417, 0.124241,
		0.676453, -0.733706, 0.063924,
		33.618855, 35.931896, 44.183903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597534, 36.636913, 43.607388>,  <33.145340, 36.445492, 44.139156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597534, 36.636913, 43.607388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668446, 36.255531, 43.704948>,  <33.710995, 36.026703, 43.763485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668446, 36.255531, 43.704948>,  <33.597534, 36.636913, 43.607388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668446, 36.255531, 43.704948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113320, -0.226399, -0.967420,
		0.977614, 0.199144, 0.067910,
		0.177281, -0.953460, 0.243898,
		33.721630, 35.969494, 43.778118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228634, 36.363163, 43.243290>,  <33.597534, 36.636913, 43.607388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228634, 36.363163, 43.243290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030842, 36.031708, 43.348248>,  <33.912167, 35.832836, 43.411221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030842, 36.031708, 43.348248>,  <34.228634, 36.363163, 43.243290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030842, 36.031708, 43.348248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053120, -0.330126, -0.942441,
		0.867563, -0.452082, 0.207259,
		-0.494483, -0.828636, 0.262391,
		33.882496, 35.783115, 43.426964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910873, 36.333832, 43.180683>,  <34.228634, 36.363163, 43.243290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910873, 36.333832, 43.180683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.152477, 36.627762, 43.057262>,  <35.297440, 36.804119, 42.983208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.152477, 36.627762, 43.057262>,  <34.910873, 36.333832, 43.180683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152477, 36.627762, 43.057262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074992, 0.333035, 0.939928,
		0.793440, -0.590865, 0.146050,
		0.604010, 0.734824, -0.308554,
		35.333679, 36.848209, 42.964695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502693, 36.282825, 43.724461>,  <34.910873, 36.333832, 43.180683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502693, 36.282825, 43.724461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445282, 36.637596, 43.548843>,  <35.410835, 36.850460, 43.443474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445282, 36.637596, 43.548843>,  <35.502693, 36.282825, 43.724461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445282, 36.637596, 43.548843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030468, 0.447389, 0.893820,
		0.989177, 0.114911, -0.091236,
		-0.143528, 0.886926, -0.439046,
		35.402225, 36.903675, 43.417130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075504, 36.783329, 44.029526>,  <35.502693, 36.282825, 43.724461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075504, 36.783329, 44.029526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.780418, 37.007343, 43.878727>,  <35.603367, 37.141754, 43.788246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.780418, 37.007343, 43.878727>,  <36.075504, 36.783329, 44.029526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780418, 37.007343, 43.878727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057846, 0.503936, 0.861802,
		0.672627, 0.657574, -0.339366,
		-0.737718, 0.560040, -0.376999,
		35.559105, 37.175354, 43.765629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300011, 37.541069, 43.910378>,  <36.075504, 36.783329, 44.029526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300011, 37.541069, 43.910378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901783, 37.577297, 43.920517>,  <35.662846, 37.599033, 43.926601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.901783, 37.577297, 43.920517>,  <36.300011, 37.541069, 43.910378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901783, 37.577297, 43.920517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075791, 0.613093, 0.786367,
		0.055680, 0.784803, -0.617239,
		-0.995568, 0.090566, 0.025344,
		35.603111, 37.604465, 43.928120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200615, 38.205482, 43.972473>,  <36.300011, 37.541069, 43.910378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200615, 38.205482, 43.972473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851955, 38.053257, 44.096024>,  <35.642761, 37.961922, 44.170155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851955, 38.053257, 44.096024>,  <36.200615, 38.205482, 43.972473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851955, 38.053257, 44.096024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036759, 0.679163, 0.733067,
		-0.488757, 0.627620, -0.605978,
		-0.871645, -0.380567, 0.308875,
		35.590462, 37.939087, 44.188686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855061, 38.781647, 44.179905>,  <36.200615, 38.205482, 43.972473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855061, 38.781647, 44.179905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658691, 38.504665, 44.391376>,  <35.540871, 38.338478, 44.518257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658691, 38.504665, 44.391376>,  <35.855061, 38.781647, 44.179905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658691, 38.504665, 44.391376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025461, 0.595173, 0.803194,
		-0.870829, 0.407770, -0.274556,
		-0.490927, -0.692454, 0.528676,
		35.511414, 38.296928, 44.549980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504745, 39.156342, 44.572994>,  <35.855061, 38.781647, 44.179905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504745, 39.156342, 44.572994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490913, 38.802563, 44.759136>,  <35.482613, 38.590294, 44.870823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490913, 38.802563, 44.759136>,  <35.504745, 39.156342, 44.572994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490913, 38.802563, 44.759136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031523, 0.466370, 0.884028,
		-0.998905, 0.015903, -0.044009,
		-0.034583, -0.884447, 0.465358,
		35.480537, 38.537228, 44.898743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997314, 39.167999, 45.061703>,  <35.504745, 39.156342, 44.572994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997314, 39.167999, 45.061703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180305, 38.843567, 45.207504>,  <35.290100, 38.648907, 45.294983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.180305, 38.843567, 45.207504>,  <34.997314, 39.167999, 45.061703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180305, 38.843567, 45.207504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116412, 0.351755, 0.928826,
		-0.881569, -0.467347, 0.066500,
		0.457476, -0.811083, 0.364501,
		35.317547, 38.600243, 45.316853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555912, 38.780617, 45.696617>,  <34.997314, 39.167999, 45.061703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555912, 38.780617, 45.696617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952007, 38.725277, 45.703403>,  <35.189663, 38.692074, 45.707474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.952007, 38.725277, 45.703403>,  <34.555912, 38.780617, 45.696617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952007, 38.725277, 45.703403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000432, 0.124753, 0.992188,
		-0.139390, -0.982494, 0.123595,
		0.990238, -0.138355, 0.016965,
		35.249077, 38.683769, 45.708492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657490, 38.112534, 46.115540>,  <34.555912, 38.780617, 45.696617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657490, 38.112534, 46.115540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982162, 38.344139, 46.146336>,  <35.176964, 38.483101, 46.164814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982162, 38.344139, 46.146336>,  <34.657490, 38.112534, 46.115540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982162, 38.344139, 46.146336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094772, 0.000489, 0.995499,
		0.576366, -0.815320, 0.055271,
		0.811678, 0.579010, 0.076987,
		35.225666, 38.517841, 46.169434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899445, 37.997276, 46.810719>,  <34.657490, 38.112534, 46.115540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899445, 37.997276, 46.810719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128414, 38.307106, 46.703110>,  <35.265793, 38.493004, 46.638546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128414, 38.307106, 46.703110>,  <34.899445, 37.997276, 46.810719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128414, 38.307106, 46.703110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265959, 0.134961, 0.954490,
		0.775630, -0.617917, -0.128751,
		0.572419, 0.774574, -0.269021,
		35.300140, 38.539478, 46.622402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569065, 37.803440, 47.011868>,  <34.899445, 37.997276, 46.810719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569065, 37.803440, 47.011868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555286, 38.201019, 46.970158>,  <35.547020, 38.439568, 46.945133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555286, 38.201019, 46.970158>,  <35.569065, 37.803440, 47.011868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555286, 38.201019, 46.970158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211473, 0.109222, 0.971262,
		0.976777, 0.011406, -0.213957,
		-0.034447, 0.993952, -0.104273,
		35.544952, 38.499207, 46.938877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249077, 38.052967, 47.260796>,  <35.569065, 37.803440, 47.011868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249077, 38.052967, 47.260796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993828, 38.360584, 47.275578>,  <35.840679, 38.545155, 47.284447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993828, 38.360584, 47.275578>,  <36.249077, 38.052967, 47.260796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993828, 38.360584, 47.275578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249002, 0.160723, 0.955074,
		0.728557, 0.618657, -0.294055,
		-0.638125, 0.769046, 0.036951,
		35.802391, 38.591297, 47.286663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660847, 38.653694, 47.445889>,  <36.249077, 38.052967, 47.260796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660847, 38.653694, 47.445889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274090, 38.705048, 47.534103>,  <36.042034, 38.735859, 47.587032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274090, 38.705048, 47.534103>,  <36.660847, 38.653694, 47.445889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274090, 38.705048, 47.534103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243080, 0.200414, 0.949076,
		0.077649, 0.971263, -0.224987,
		-0.966893, 0.128385, 0.220533,
		35.984020, 38.743565, 47.600262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147507, 39.268604, 47.202950>,  <36.660847, 38.653694, 47.445889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147507, 39.268604, 47.202950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543533, 39.292622, 47.253815>,  <37.781147, 39.307034, 47.284332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543533, 39.292622, 47.253815>,  <37.147507, 39.268604, 47.202950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543533, 39.292622, 47.253815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138769, -0.270656, -0.952622,
		-0.022780, 0.960802, -0.276298,
		0.990063, 0.060042, 0.127164,
		37.840553, 39.310635, 47.291965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257202, 39.462524, 46.598248>,  <37.147507, 39.268604, 47.202950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257202, 39.462524, 46.598248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600586, 39.316929, 46.742779>,  <37.806618, 39.229572, 46.829498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600586, 39.316929, 46.742779>,  <37.257202, 39.462524, 46.598248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600586, 39.316929, 46.742779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318490, -0.173868, -0.931844,
		0.402006, 0.915030, -0.033331,
		0.858461, -0.363992, 0.361324,
		37.858124, 39.207733, 46.851177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708637, 39.694588, 46.148804>,  <37.257202, 39.462524, 46.598248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708637, 39.694588, 46.148804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927277, 39.427391, 46.350800>,  <38.058460, 39.267075, 46.471996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927277, 39.427391, 46.350800>,  <37.708637, 39.694588, 46.148804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927277, 39.427391, 46.350800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387002, -0.333280, -0.859740,
		0.742600, 0.665370, 0.076341,
		0.546603, -0.667987, 0.504993,
		38.091259, 39.226994, 46.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293285, 39.739559, 45.816174>,  <37.708637, 39.694588, 46.148804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293285, 39.739559, 45.816174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.320671, 39.383690, 45.996746>,  <38.337101, 39.170170, 46.105091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.320671, 39.383690, 45.996746>,  <38.293285, 39.739559, 45.816174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320671, 39.383690, 45.996746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391785, -0.392167, -0.832292,
		0.917506, 0.233848, 0.321711,
		0.068465, -0.889674, 0.451433,
		38.341209, 39.116787, 46.132175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973270, 39.464569, 45.636696>,  <38.293285, 39.739559, 45.816174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973270, 39.464569, 45.636696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.777760, 39.139362, 45.763248>,  <38.660454, 38.944237, 45.839180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.777760, 39.139362, 45.763248>,  <38.973270, 39.464569, 45.636696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777760, 39.139362, 45.763248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336994, -0.510453, -0.791121,
		0.804694, -0.280064, 0.523480,
		-0.488776, -0.813020, 0.316379,
		38.631126, 38.895454, 45.858162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473175, 38.931713, 45.695385>,  <38.973270, 39.464569, 45.636696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473175, 38.931713, 45.695385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120461, 38.749260, 45.647385>,  <38.908833, 38.639790, 45.618584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120461, 38.749260, 45.647385>,  <39.473175, 38.931713, 45.695385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120461, 38.749260, 45.647385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321921, -0.396097, -0.859927,
		0.344707, -0.796901, 0.496110,
		-0.881785, -0.456131, -0.120001,
		38.855927, 38.612419, 45.611385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661324, 38.412476, 45.330757>,  <39.473175, 38.931713, 45.695385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661324, 38.412476, 45.330757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265591, 38.426449, 45.274178>,  <39.028152, 38.434834, 45.240231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.265591, 38.426449, 45.274178>,  <39.661324, 38.412476, 45.330757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265591, 38.426449, 45.274178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124597, -0.300377, -0.945648,
		-0.075527, -0.953181, 0.292818,
		-0.989329, 0.034937, -0.141450,
		38.968792, 38.436932, 45.231743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479683, 37.724888, 45.108547>,  <39.661324, 38.412476, 45.330757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479683, 37.724888, 45.108547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.195496, 37.978325, 44.986046>,  <39.024982, 38.130386, 44.912544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.195496, 37.978325, 44.986046>,  <39.479683, 37.724888, 45.108547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195496, 37.978325, 44.986046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109315, -0.330542, -0.937439,
		-0.695188, -0.699498, 0.165578,
		-0.710467, 0.633597, -0.306254,
		38.982357, 38.168404, 44.894169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179115, 37.436367, 44.479950>,  <39.479683, 37.724888, 45.108547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179115, 37.436367, 44.479950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.046989, 37.813358, 44.459412>,  <38.967716, 38.039551, 44.447090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.046989, 37.813358, 44.459412>,  <39.179115, 37.436367, 44.479950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046989, 37.813358, 44.459412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113283, -0.014418, -0.993458,
		-0.937050, -0.333966, -0.102004,
		-0.330310, 0.942475, -0.051343,
		38.947895, 38.096100, 44.444008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646061, 37.521046, 43.898930>,  <39.179115, 37.436367, 44.479950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646061, 37.521046, 43.898930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756607, 37.899281, 43.967613>,  <38.822933, 38.126221, 44.008823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756607, 37.899281, 43.967613>,  <38.646061, 37.521046, 43.898930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756607, 37.899281, 43.967613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231158, 0.108017, -0.966901,
		-0.932840, 0.306906, -0.188729,
		0.276362, 0.945590, 0.171706,
		38.839516, 38.182957, 44.019127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274212, 37.983635, 43.446575>,  <38.646061, 37.521046, 43.898930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274212, 37.983635, 43.446575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617775, 38.172878, 43.525005>,  <38.823914, 38.286427, 43.572063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617775, 38.172878, 43.525005>,  <38.274212, 37.983635, 43.446575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617775, 38.172878, 43.525005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201790, 0.039243, -0.978642,
		-0.470702, 0.880128, -0.061764,
		0.858906, 0.473112, 0.196073,
		38.875446, 38.314812, 43.583828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303524, 38.605930, 43.004436>,  <38.274212, 37.983635, 43.446575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303524, 38.605930, 43.004436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690002, 38.533630, 43.077976>,  <38.921890, 38.490250, 43.122101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690002, 38.533630, 43.077976>,  <38.303524, 38.605930, 43.004436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690002, 38.533630, 43.077976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161851, -0.129858, -0.978234,
		0.200689, 0.974919, -0.096213,
		0.966192, -0.180749, 0.183853,
		38.979858, 38.479404, 43.133133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721851, 38.958611, 42.492954>,  <38.303524, 38.605930, 43.004436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721851, 38.958611, 42.492954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.971893, 38.677284, 42.628357>,  <39.121918, 38.508488, 42.709599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.971893, 38.677284, 42.628357>,  <38.721851, 38.958611, 42.492954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971893, 38.677284, 42.628357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270415, -0.211689, -0.939182,
		0.732205, 0.678623, 0.057861,
		0.625102, -0.703320, 0.338510,
		39.159424, 38.466290, 42.729908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471771, 39.178959, 42.291885>,  <38.721851, 38.958611, 42.492954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471771, 39.178959, 42.291885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478821, 38.784618, 42.358559>,  <39.483051, 38.548016, 42.398563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.478821, 38.784618, 42.358559>,  <39.471771, 39.178959, 42.291885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478821, 38.784618, 42.358559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428625, -0.143164, -0.892068,
		0.903311, 0.087169, 0.420037,
		0.017626, -0.985853, 0.166684,
		39.484108, 38.488861, 42.408566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.905161, 32.987453, 30.880732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572922, 33.154144, 30.732977>,  <29.373579, 33.254158, 30.644323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572922, 33.154144, 30.732977>,  <29.905161, 32.987453, 30.880732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572922, 33.154144, 30.732977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514936, 0.322219, -0.794365,
		-0.212009, -0.850009, -0.482222,
		-0.830598, 0.416726, -0.369387,
		29.323742, 33.279163, 30.622160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843094, 32.876823, 30.239325>,  <29.905161, 32.987453, 30.880732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843094, 32.876823, 30.239325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640139, 33.221432, 30.232006>,  <29.518366, 33.428196, 30.227615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640139, 33.221432, 30.232006>,  <29.843094, 32.876823, 30.239325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640139, 33.221432, 30.232006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573442, 0.321724, -0.753431,
		-0.643212, -0.392773, -0.657273,
		-0.507388, 0.861523, -0.018296,
		29.487923, 33.479889, 30.226517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582699, 32.871002, 30.091240>,  <29.843094, 32.876823, 30.239325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582699, 32.871002, 30.091240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906166, 32.968460, 30.305414>,  <31.100246, 33.026936, 30.433918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906166, 32.968460, 30.305414>,  <30.582699, 32.871002, 30.091240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906166, 32.968460, 30.305414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587393, 0.284931, 0.757485,
		0.031996, -0.927066, 0.373531,
		0.808669, 0.243646, 0.535435,
		31.148767, 33.041553, 30.466045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651628, 32.489395, 30.766943>,  <30.582699, 32.871002, 30.091240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651628, 32.489395, 30.766943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837645, 32.840145, 30.815645>,  <30.949253, 33.050594, 30.844866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837645, 32.840145, 30.815645>,  <30.651628, 32.489395, 30.766943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837645, 32.840145, 30.815645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669918, 0.258652, 0.695923,
		0.578748, -0.405196, 0.707720,
		0.465038, 0.876878, 0.121754,
		30.977156, 33.103210, 30.852171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715521, 32.582104, 31.498377>,  <30.651628, 32.489395, 30.766943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715521, 32.582104, 31.498377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.771910, 32.947910, 31.346699>,  <30.805744, 33.167393, 31.255692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.771910, 32.947910, 31.346699>,  <30.715521, 32.582104, 31.498377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771910, 32.947910, 31.346699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394440, 0.403189, 0.825746,
		0.908044, 0.033161, 0.417561,
		0.140974, 0.914516, -0.379193,
		30.814201, 33.222263, 31.232941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142773, 32.877228, 31.920282>,  <30.715521, 32.582104, 31.498377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142773, 32.877228, 31.920282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.953884, 33.181042, 31.741348>,  <30.840551, 33.363331, 31.633987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.953884, 33.181042, 31.741348>,  <31.142773, 32.877228, 31.920282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953884, 33.181042, 31.741348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316127, 0.327797, 0.890288,
		0.822843, 0.561827, 0.085318,
		-0.472222, 0.759539, -0.447334,
		30.812218, 33.408905, 31.607147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238289, 33.474632, 32.321690>,  <31.142773, 32.877228, 31.920282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238289, 33.474632, 32.321690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907988, 33.564663, 32.114819>,  <30.709806, 33.618683, 31.990696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907988, 33.564663, 32.114819>,  <31.238289, 33.474632, 32.321690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907988, 33.564663, 32.114819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387231, 0.440457, 0.809969,
		0.410102, 0.869101, -0.276551,
		-0.825753, 0.225081, -0.517175,
		30.660261, 33.632187, 31.959665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009039, 34.240433, 32.440266>,  <31.238289, 33.474632, 32.321690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009039, 34.240433, 32.440266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682070, 34.032040, 32.341969>,  <30.485888, 33.907001, 32.282990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682070, 34.032040, 32.341969>,  <31.009039, 34.240433, 32.440266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682070, 34.032040, 32.341969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467794, 0.351450, 0.810957,
		-0.336133, 0.777853, -0.530998,
		-0.817425, -0.520987, -0.245741,
		30.436842, 33.875744, 32.268246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586649, 34.619156, 32.846050>,  <31.009039, 34.240433, 32.440266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586649, 34.619156, 32.846050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.377098, 34.302773, 32.719601>,  <30.251368, 34.112942, 32.643730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.377098, 34.302773, 32.719601>,  <30.586649, 34.619156, 32.846050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377098, 34.302773, 32.719601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662862, 0.145487, 0.734470,
		-0.534945, 0.594318, -0.600516,
		-0.523876, -0.790961, -0.316123,
		30.219934, 34.065483, 32.624763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918303, 34.821362, 32.845890>,  <30.586649, 34.619156, 32.846050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918303, 34.821362, 32.845890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915037, 34.421837, 32.865124>,  <29.913078, 34.182121, 32.876663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915037, 34.421837, 32.865124>,  <29.918303, 34.821362, 32.845890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915037, 34.421837, 32.865124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641888, 0.042103, 0.765641,
		-0.766755, -0.024611, -0.641468,
		-0.008164, -0.998810, 0.048080,
		29.912588, 34.122192, 32.879547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218918, 34.790596, 32.947327>,  <29.918303, 34.821362, 32.845890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218918, 34.790596, 32.947327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389814, 34.451988, 33.074364>,  <29.492353, 34.248821, 33.150585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389814, 34.451988, 33.074364>,  <29.218918, 34.790596, 32.947327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389814, 34.451988, 33.074364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626725, -0.024103, 0.778867,
		-0.651673, -0.531807, -0.540835,
		0.427243, -0.846522, 0.317589,
		29.517988, 34.198032, 33.169640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665909, 34.279236, 33.098484>,  <29.218918, 34.790596, 32.947327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665909, 34.279236, 33.098484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001280, 34.192852, 33.298641>,  <29.202503, 34.141022, 33.418736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001280, 34.192852, 33.298641>,  <28.665909, 34.279236, 33.098484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001280, 34.192852, 33.298641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448830, 0.247238, 0.858735,
		-0.309172, -0.944581, 0.110361,
		0.838430, -0.215964, 0.500395,
		29.252810, 34.128063, 33.448761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396671, 34.200462, 33.657623>,  <28.665909, 34.279236, 33.098484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396671, 34.200462, 33.657623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779186, 34.225845, 33.771805>,  <29.008696, 34.241077, 33.840313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779186, 34.225845, 33.771805>,  <28.396671, 34.200462, 33.657623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779186, 34.225845, 33.771805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292411, 0.216325, 0.931504,
		-0.002638, -0.974257, 0.225425,
		0.956289, 0.063459, 0.285454,
		29.066072, 34.244884, 33.857441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486996, 33.726807, 34.217361>,  <28.396671, 34.200462, 33.657623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486996, 33.726807, 34.217361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789690, 33.988136, 34.226410>,  <28.971308, 34.144936, 34.231838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789690, 33.988136, 34.226410>,  <28.486996, 33.726807, 34.217361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789690, 33.988136, 34.226410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165326, 0.157785, 0.973535,
		0.632469, -0.740450, 0.227414,
		0.756737, 0.653328, 0.022621,
		29.016710, 34.184135, 34.233196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830244, 33.616520, 34.803059>,  <28.486996, 33.726807, 34.217361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830244, 33.616520, 34.803059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970406, 33.980919, 34.716072>,  <29.054502, 34.199558, 34.663879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970406, 33.980919, 34.716072>,  <28.830244, 33.616520, 34.803059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970406, 33.980919, 34.716072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074220, 0.258469, 0.963164,
		0.933653, -0.321357, 0.158183,
		0.350405, 0.911001, -0.217469,
		29.075527, 34.254219, 34.650833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271698, 33.778542, 35.411114>,  <28.830244, 33.616520, 34.803059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271698, 33.778542, 35.411114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206640, 34.128033, 35.227749>,  <29.167606, 34.337727, 35.117729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206640, 34.128033, 35.227749>,  <29.271698, 33.778542, 35.411114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206640, 34.128033, 35.227749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130327, 0.441501, 0.887745,
		0.978040, 0.204128, 0.042064,
		-0.162643, 0.873732, -0.458409,
		29.157848, 34.390152, 35.090225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581041, 34.331650, 35.794819>,  <29.271698, 33.778542, 35.411114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581041, 34.331650, 35.794819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292458, 34.516331, 35.588390>,  <29.119307, 34.627140, 35.464535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292458, 34.516331, 35.588390>,  <29.581041, 34.331650, 35.794819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292458, 34.516331, 35.588390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055113, 0.704622, 0.707439,
		0.690259, 0.538831, -0.482912,
		-0.721461, 0.461701, -0.516068,
		29.076019, 34.654842, 35.433571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728899, 35.042274, 35.850887>,  <29.581041, 34.331650, 35.794819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728899, 35.042274, 35.850887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343332, 35.026604, 35.745564>,  <29.111992, 35.017200, 35.682369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343332, 35.026604, 35.745564>,  <29.728899, 35.042274, 35.850887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343332, 35.026604, 35.745564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195017, 0.777182, 0.598295,
		0.181201, 0.628055, -0.756778,
		-0.963916, -0.039173, -0.263308,
		29.054157, 35.014851, 35.666573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240490, 34.560490, 36.113232>,  <29.728899, 35.042274, 35.850887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240490, 34.560490, 36.113232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469234, 34.273632, 36.272572>,  <30.606482, 34.101517, 36.368176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469234, 34.273632, 36.272572>,  <30.240490, 34.560490, 36.113232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469234, 34.273632, 36.272572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529716, -0.047971, -0.846818,
		0.626397, 0.695274, 0.352449,
		0.571863, -0.717142, 0.398346,
		30.640793, 34.058491, 36.392075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928885, 34.706936, 36.037613>,  <30.240490, 34.560490, 36.113232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928885, 34.706936, 36.037613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879650, 34.310738, 36.062176>,  <30.850109, 34.073017, 36.076916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879650, 34.310738, 36.062176>,  <30.928885, 34.706936, 36.037613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879650, 34.310738, 36.062176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633073, -0.126022, -0.763764,
		0.764243, -0.055130, 0.642567,
		-0.123084, -0.990494, 0.061411,
		30.842726, 34.013588, 36.080601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569353, 34.379471, 36.141338>,  <30.928885, 34.706936, 36.037613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569353, 34.379471, 36.141338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349731, 34.085190, 35.982700>,  <31.217958, 33.908623, 35.887520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349731, 34.085190, 35.982700>,  <31.569353, 34.379471, 36.141338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349731, 34.085190, 35.982700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766460, -0.253996, -0.589936,
		0.333284, -0.627878, 0.703343,
		-0.549054, -0.735700, -0.396591,
		31.185015, 33.864479, 35.863724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046452, 33.877865, 36.063446>,  <31.569353, 34.379471, 36.141338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046452, 33.877865, 36.063446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.744093, 33.773636, 35.823204>,  <31.562677, 33.711098, 35.679058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.744093, 33.773636, 35.823204>,  <32.046452, 33.877865, 36.063446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744093, 33.773636, 35.823204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654338, -0.330901, -0.679961,
		-0.021558, -0.906976, 0.420631,
		-0.755895, -0.260576, -0.600602,
		31.517324, 33.695465, 35.643024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115566, 33.231781, 35.913414>,  <32.046452, 33.877865, 36.063446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115566, 33.231781, 35.913414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.855005, 33.313530, 35.621136>,  <31.698669, 33.362579, 35.445770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.855005, 33.313530, 35.621136>,  <32.115566, 33.231781, 35.913414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855005, 33.313530, 35.621136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617535, -0.416726, -0.667076,
		-0.440832, -0.885760, 0.145247,
		-0.651397, 0.204373, -0.730694,
		31.659586, 33.374840, 35.401928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106251, 32.599014, 35.519737>,  <32.115566, 33.231781, 35.913414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106251, 32.599014, 35.519737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.967672, 32.898033, 35.293056>,  <31.884525, 33.077442, 35.157047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.967672, 32.898033, 35.293056>,  <32.106251, 32.599014, 35.519737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967672, 32.898033, 35.293056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582907, -0.301772, -0.754423,
		-0.734979, -0.591703, -0.331200,
		-0.346447, 0.747543, -0.566704,
		31.863739, 33.122295, 35.123047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858635, 32.287197, 34.885151>,  <32.106251, 32.599014, 35.519737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858635, 32.287197, 34.885151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.928993, 32.675423, 34.819351>,  <31.971209, 32.908360, 34.779873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.928993, 32.675423, 34.819351>,  <31.858635, 32.287197, 34.885151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928993, 32.675423, 34.819351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507410, -0.232582, -0.829723,
		-0.843561, 0.062479, -0.533386,
		0.175896, 0.970568, -0.164495,
		31.981762, 32.966595, 34.770004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562134, 32.368118, 34.292233>,  <31.858635, 32.287197, 34.885151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562134, 32.368118, 34.292233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.821413, 32.670235, 34.330959>,  <31.976980, 32.851505, 34.354195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.821413, 32.670235, 34.330959>,  <31.562134, 32.368118, 34.292233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821413, 32.670235, 34.330959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380294, -0.210938, -0.900490,
		-0.659707, 0.620518, -0.423962,
		0.648200, 0.755289, 0.096822,
		32.015873, 32.896820, 34.360004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572847, 32.576725, 33.699562>,  <31.562134, 32.368118, 34.292233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572847, 32.576725, 33.699562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.907629, 32.736118, 33.849609>,  <32.108498, 32.831757, 33.939636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.907629, 32.736118, 33.849609>,  <31.572847, 32.576725, 33.699562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907629, 32.736118, 33.849609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461119, -0.144322, -0.875523,
		-0.294746, 0.905748, -0.304541,
		0.836955, 0.398487, 0.375119,
		32.158714, 32.855663, 33.962147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896652, 32.887199, 33.088276>,  <31.572847, 32.576725, 33.699562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896652, 32.887199, 33.088276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.180180, 32.829800, 33.364532>,  <32.350296, 32.795361, 33.530285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.180180, 32.829800, 33.364532>,  <31.896652, 32.887199, 33.088276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180180, 32.829800, 33.364532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651118, -0.243511, -0.718852,
		0.271333, 0.959224, -0.079170,
		0.708819, -0.143499, 0.690640,
		32.392826, 32.786751, 33.571724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487221, 33.160889, 32.847248>,  <31.896652, 32.887199, 33.088276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487221, 33.160889, 32.847248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.630051, 32.915928, 33.129372>,  <32.715748, 32.768951, 33.298645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.630051, 32.915928, 33.129372>,  <32.487221, 33.160889, 32.847248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630051, 32.915928, 33.129372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752462, -0.258803, -0.605658,
		0.553441, 0.746986, 0.368395,
		0.357076, -0.612399, 0.705311,
		32.737175, 32.732208, 33.340965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149815, 33.303627, 32.944176>,  <32.487221, 33.160889, 32.847248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149815, 33.303627, 32.944176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123264, 32.922562, 33.062851>,  <33.107334, 32.693924, 33.134056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123264, 32.922562, 33.062851>,  <33.149815, 33.303627, 32.944176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123264, 32.922562, 33.062851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725301, -0.250262, -0.641332,
		0.685225, 0.172621, 0.707580,
		-0.066373, -0.952665, 0.296689,
		33.103352, 32.636761, 33.151859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837471, 33.154774, 32.923920>,  <33.149815, 33.303627, 32.944176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837471, 33.154774, 32.923920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.627514, 32.815426, 32.896317>,  <33.501541, 32.611816, 32.879753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.627514, 32.815426, 32.896317>,  <33.837471, 33.154774, 32.923920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627514, 32.815426, 32.896317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654657, -0.350563, -0.669724,
		0.543978, -0.396712, 0.739397,
		-0.524893, -0.848366, -0.069012,
		33.470047, 32.560917, 32.875614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396885, 32.786755, 32.802845>,  <33.837471, 33.154774, 32.923920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396885, 32.786755, 32.802845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.096004, 32.527050, 32.757839>,  <33.915478, 32.371227, 32.730835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.096004, 32.527050, 32.757839>,  <34.396885, 32.786755, 32.802845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096004, 32.527050, 32.757839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547224, -0.520385, -0.655550,
		0.367073, -0.554673, 0.746723,
		-0.752199, -0.649260, -0.112511,
		33.870346, 32.332272, 32.724087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780647, 32.146423, 32.721939>,  <34.396885, 32.786755, 32.802845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780647, 32.146423, 32.721939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.415359, 32.085495, 32.570766>,  <34.196186, 32.048939, 32.480061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.415359, 32.085495, 32.570766>,  <34.780647, 32.146423, 32.721939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415359, 32.085495, 32.570766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406550, -0.403103, -0.819894,
		-0.027457, -0.902389, 0.430047,
		-0.913216, -0.152324, -0.377934,
		34.141396, 32.039799, 32.457386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762016, 31.438255, 32.422253>,  <34.780647, 32.146423, 32.721939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762016, 31.438255, 32.422253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.483093, 31.664482, 32.246120>,  <34.315739, 31.800219, 32.140442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.483093, 31.664482, 32.246120>,  <34.762016, 31.438255, 32.422253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483093, 31.664482, 32.246120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372888, -0.238408, -0.896725,
		-0.612138, -0.789490, -0.044650,
		-0.697310, 0.565569, -0.440330,
		34.273899, 31.834152, 32.114021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426235, 31.005423, 31.987780>,  <34.762016, 31.438255, 32.422253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426235, 31.005423, 31.987780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.368378, 31.371288, 31.836802>,  <34.333664, 31.590809, 31.746216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.368378, 31.371288, 31.836802>,  <34.426235, 31.005423, 31.987780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368378, 31.371288, 31.836802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320960, -0.317459, -0.892303,
		-0.935982, -0.250212, -0.247652,
		-0.144646, 0.914666, -0.377444,
		34.324986, 31.645687, 31.723568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142738, 30.805748, 31.368986>,  <34.426235, 31.005423, 31.987780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142738, 30.805748, 31.368986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.268806, 31.184380, 31.341702>,  <34.344448, 31.411558, 31.325331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.268806, 31.184380, 31.341702>,  <34.142738, 30.805748, 31.368986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268806, 31.184380, 31.341702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273847, -0.159528, -0.948451,
		-0.908667, 0.280244, -0.309497,
		0.315171, 0.946580, -0.068213,
		34.363358, 31.468353, 31.321238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940231, 31.094242, 30.739681>,  <34.142738, 30.805748, 31.368986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940231, 31.094242, 30.739681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.235432, 31.342445, 30.845758>,  <34.412552, 31.491367, 30.909405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.235432, 31.342445, 30.845758>,  <33.940231, 31.094242, 30.739681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235432, 31.342445, 30.845758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367490, -0.039964, -0.929169,
		-0.565958, 0.783181, -0.257524,
		0.737999, 0.620508, 0.265193,
		34.456833, 31.528599, 30.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124218, 31.481226, 30.167463>,  <33.940231, 31.094242, 30.739681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124218, 31.481226, 30.167463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.449852, 31.587641, 30.373955>,  <34.645233, 31.651489, 30.497850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.449852, 31.587641, 30.373955>,  <34.124218, 31.481226, 30.167463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449852, 31.587641, 30.373955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508101, 0.104212, -0.854970,
		-0.281250, 0.958313, -0.050336,
		0.814084, 0.266036, 0.516229,
		34.694077, 31.667452, 30.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391220, 32.172256, 29.874163>,  <34.124218, 31.481226, 30.167463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391220, 32.172256, 29.874163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682903, 31.959551, 30.046434>,  <34.857914, 31.831928, 30.149797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682903, 31.959551, 30.046434>,  <34.391220, 32.172256, 29.874163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682903, 31.959551, 30.046434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570054, 0.123893, -0.812212,
		0.378547, 0.837781, 0.393478,
		0.729205, -0.531765, 0.430681,
		34.901665, 31.800022, 30.175638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958481, 32.561810, 29.792467>,  <34.391220, 32.172256, 29.874163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958481, 32.561810, 29.792467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.125107, 32.203140, 29.852402>,  <35.225082, 31.987940, 29.888363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.125107, 32.203140, 29.852402>,  <34.958481, 32.561810, 29.792467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125107, 32.203140, 29.852402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589494, 0.140954, -0.795380,
		0.692075, 0.419656, 0.587300,
		0.416568, -0.896672, 0.149834,
		35.250076, 31.934139, 29.897352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650871, 32.630856, 29.741009>,  <34.958481, 32.561810, 29.792467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650871, 32.630856, 29.741009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.575283, 32.242928, 29.679382>,  <35.529930, 32.010170, 29.642406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.575283, 32.242928, 29.679382>,  <35.650871, 32.630856, 29.741009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575283, 32.242928, 29.679382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627162, 0.001533, -0.778887,
		0.755619, -0.243807, 0.607946,
		-0.188966, -0.969822, -0.154065,
		35.518593, 31.951981, 29.633163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403858, 32.244675, 29.604109>,  <35.650871, 32.630856, 29.741009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403858, 32.244675, 29.604109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.103516, 32.021751, 29.462336>,  <35.923309, 31.887999, 29.377272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.103516, 32.021751, 29.462336>,  <36.403858, 32.244675, 29.604109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103516, 32.021751, 29.462336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381687, 0.071806, -0.921498,
		0.539006, -0.827197, 0.158800,
		-0.750858, -0.557305, -0.354434,
		35.878258, 31.854561, 29.356005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.617031, 37.301273, 47.741859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.254852, 37.143921, 47.805634>,  <41.037544, 37.049511, 47.843899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.254852, 37.143921, 47.805634>,  <41.617031, 37.301273, 47.741859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254852, 37.143921, 47.805634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156032, 0.657789, 0.736863,
		-0.394740, 0.642314, -0.656973,
		-0.905447, -0.393378, 0.159434,
		40.983219, 37.025906, 47.853462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183117, 37.867493, 47.824333>,  <41.617031, 37.301273, 47.741859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183117, 37.867493, 47.824333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967590, 37.563271, 47.969238>,  <40.838272, 37.380737, 48.056183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967590, 37.563271, 47.969238>,  <41.183117, 37.867493, 47.824333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967590, 37.563271, 47.969238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360147, 0.596712, 0.717098,
		-0.761556, 0.255919, -0.595431,
		-0.538819, -0.760553, 0.362261,
		40.805946, 37.335106, 48.077915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560432, 38.119823, 48.027298>,  <41.183117, 37.867493, 47.824333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560432, 38.119823, 48.027298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.556213, 37.775360, 48.230587>,  <40.553684, 37.568680, 48.352562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.556213, 37.775360, 48.230587>,  <40.560432, 38.119823, 48.027298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556213, 37.775360, 48.230587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166494, 0.502670, 0.848294,
		-0.985986, -0.075671, -0.148679,
		-0.010545, -0.861160, 0.508225,
		40.553051, 37.517014, 48.383053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008060, 38.239277, 48.505768>,  <40.560432, 38.119823, 48.027298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008060, 38.239277, 48.505768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239799, 37.956245, 48.667606>,  <40.378841, 37.786427, 48.764709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239799, 37.956245, 48.667606>,  <40.008060, 38.239277, 48.505768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239799, 37.956245, 48.667606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186700, 0.367986, 0.910895,
		-0.793411, -0.603262, 0.081088,
		0.579347, -0.707575, 0.404593,
		40.413605, 37.743973, 48.788982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588020, 37.849495, 49.041294>,  <40.008060, 38.239277, 48.505768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588020, 37.849495, 49.041294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955517, 37.745556, 49.160225>,  <40.176014, 37.683193, 49.231583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.955517, 37.745556, 49.160225>,  <39.588020, 37.849495, 49.041294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955517, 37.745556, 49.160225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245322, 0.214416, 0.945433,
		-0.309417, -0.941545, 0.133247,
		0.918737, -0.259845, 0.297325,
		40.231136, 37.667603, 49.249424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453842, 37.596340, 49.735058>,  <39.588020, 37.849495, 49.041294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453842, 37.596340, 49.735058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846676, 37.670921, 49.724144>,  <40.082375, 37.715672, 49.717594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846676, 37.670921, 49.724144>,  <39.453842, 37.596340, 49.735058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846676, 37.670921, 49.724144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053135, 0.412927, 0.909213,
		0.180792, -0.891474, 0.415437,
		0.982085, 0.186453, -0.027285,
		40.141300, 37.726856, 49.715958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763557, 37.135082, 50.256458>,  <39.453842, 37.596340, 49.735058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763557, 37.135082, 50.256458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.013027, 37.441532, 50.194393>,  <40.162708, 37.625404, 50.157154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.013027, 37.441532, 50.194393>,  <39.763557, 37.135082, 50.256458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013027, 37.441532, 50.194393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022312, 0.180971, 0.983235,
		0.781366, -0.616681, 0.095773,
		0.623674, 0.766129, -0.155164,
		40.200130, 37.671371, 50.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314632, 37.008163, 50.762527>,  <39.763557, 37.135082, 50.256458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314632, 37.008163, 50.762527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.359947, 37.395321, 50.672771>,  <40.387138, 37.627613, 50.618916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.359947, 37.395321, 50.672771>,  <40.314632, 37.008163, 50.762527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359947, 37.395321, 50.672771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234162, 0.193476, 0.952751,
		0.965574, -0.160483, -0.204724,
		0.113291, 0.967890, -0.224394,
		40.393936, 37.685688, 50.605453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803333, 37.224724, 51.301781>,  <40.314632, 37.008163, 50.762527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803333, 37.224724, 51.301781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.665791, 37.572735, 51.160465>,  <40.583263, 37.781540, 51.075676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.665791, 37.572735, 51.160465>,  <40.803333, 37.224724, 51.301781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665791, 37.572735, 51.160465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181833, 0.430807, 0.883936,
		0.921248, 0.239708, -0.306336,
		-0.343858, 0.870026, -0.353293,
		40.562634, 37.833744, 51.054478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251205, 37.805027, 51.604492>,  <40.803333, 37.224724, 51.301781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251205, 37.805027, 51.604492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903084, 37.971260, 51.498760>,  <40.694210, 38.070999, 51.435322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903084, 37.971260, 51.498760>,  <41.251205, 37.805027, 51.604492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903084, 37.971260, 51.498760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052615, 0.455166, 0.888850,
		0.489700, 0.787476, -0.374267,
		-0.870302, 0.415578, -0.264328,
		40.641994, 38.095932, 51.419460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379059, 38.419621, 51.763866>,  <41.251205, 37.805027, 51.604492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379059, 38.419621, 51.763866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.980255, 38.418388, 51.732964>,  <40.740974, 38.417648, 51.714420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.980255, 38.418388, 51.732964>,  <41.379059, 38.419621, 51.763866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980255, 38.418388, 51.732964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071011, 0.431884, 0.899129,
		0.030598, 0.901924, -0.430810,
		-0.997006, -0.003080, -0.077261,
		40.681152, 38.417465, 51.709785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173931, 39.103386, 52.009460>,  <41.379059, 38.419621, 51.763866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173931, 39.103386, 52.009460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.860821, 38.858040, 52.051510>,  <40.672955, 38.710831, 52.076740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.860821, 38.858040, 52.051510>,  <41.173931, 39.103386, 52.009460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860821, 38.858040, 52.051510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052671, 0.233624, 0.970899,
		-0.620075, 0.754457, -0.215181,
		-0.782773, -0.613364, 0.105127,
		40.625988, 38.674030, 52.083046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604904, 39.344513, 52.441277>,  <41.173931, 39.103386, 52.009460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604904, 39.344513, 52.441277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542149, 38.950718, 52.472694>,  <40.504494, 38.714439, 52.491543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542149, 38.950718, 52.472694>,  <40.604904, 39.344513, 52.441277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542149, 38.950718, 52.472694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127086, 0.098990, 0.986940,
		-0.979405, 0.144861, -0.140646,
		-0.156891, -0.984488, 0.078541,
		40.495083, 38.655373, 52.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127171, 39.320866, 52.949436>,  <40.604904, 39.344513, 52.441277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127171, 39.320866, 52.949436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.305199, 38.963238, 52.929226>,  <40.412014, 38.748661, 52.917099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.305199, 38.963238, 52.929226>,  <40.127171, 39.320866, 52.949436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305199, 38.963238, 52.929226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146943, -0.128569, 0.980754,
		-0.883358, -0.429079, -0.188599,
		0.445069, -0.894070, -0.050523,
		40.438721, 38.695015, 52.914070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749836, 39.448990, 52.309177>,  <40.127171, 39.320866, 52.949436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749836, 39.448990, 52.309177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.530949, 39.755634, 52.443562>,  <39.399616, 39.939621, 52.524193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.530949, 39.755634, 52.443562>,  <39.749836, 39.448990, 52.309177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530949, 39.755634, 52.443562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553134, -0.029977, -0.832553,
		-0.628170, -0.641416, 0.440441,
		-0.547215, 0.766608, 0.335958,
		39.366783, 39.985615, 52.544350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159695, 39.132957, 52.217705>,  <39.749836, 39.448990, 52.309177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159695, 39.132957, 52.217705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.124889, 39.531342, 52.208897>,  <39.104004, 39.770374, 52.203613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.124889, 39.531342, 52.208897>,  <39.159695, 39.132957, 52.217705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124889, 39.531342, 52.208897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425381, -0.057135, -0.903209,
		-0.900821, -0.069226, 0.428636,
		-0.087015, 0.995963, -0.022021,
		39.098785, 39.830132, 52.202290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459904, 39.281929, 51.945862>,  <39.159695, 39.132957, 52.217705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459904, 39.281929, 51.945862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680504, 39.611378, 51.892960>,  <38.812866, 39.809048, 51.861217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680504, 39.611378, 51.892960>,  <38.459904, 39.281929, 51.945862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680504, 39.611378, 51.892960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349371, 0.084093, -0.933203,
		-0.757485, 0.560870, 0.334127,
		0.551504, 0.823622, -0.132253,
		38.845955, 39.858463, 51.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988541, 39.690723, 51.616764>,  <38.459904, 39.281929, 51.945862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988541, 39.690723, 51.616764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344574, 39.855179, 51.538052>,  <38.558193, 39.953850, 51.490822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344574, 39.855179, 51.538052>,  <37.988541, 39.690723, 51.616764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344574, 39.855179, 51.538052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257668, 0.097733, -0.961278,
		-0.375983, 0.906320, 0.192926,
		0.890081, 0.411135, -0.196784,
		38.611599, 39.978519, 51.479015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848476, 40.268787, 51.288216>,  <37.988541, 39.690723, 51.616764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848476, 40.268787, 51.288216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219143, 40.170700, 51.174259>,  <38.441544, 40.111847, 51.105885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219143, 40.170700, 51.174259>,  <37.848476, 40.268787, 51.288216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219143, 40.170700, 51.174259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256280, 0.142303, -0.956070,
		0.274986, 0.958967, 0.069022,
		0.926662, -0.245217, -0.284895,
		38.497143, 40.097134, 51.088791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911823, 40.690849, 50.794426>,  <37.848476, 40.268787, 51.288216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911823, 40.690849, 50.794426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206139, 40.424976, 50.742558>,  <38.382729, 40.265453, 50.711437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.206139, 40.424976, 50.742558>,  <37.911823, 40.690849, 50.794426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206139, 40.424976, 50.742558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119923, 0.060564, -0.990934,
		0.666510, 0.744667, -0.035149,
		0.735787, -0.664683, -0.129669,
		38.426876, 40.225571, 50.703655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383907, 41.006844, 50.287819>,  <37.911823, 40.690849, 50.794426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383907, 41.006844, 50.287819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464531, 40.616367, 50.255768>,  <38.512905, 40.382080, 50.236538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464531, 40.616367, 50.255768>,  <38.383907, 41.006844, 50.287819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464531, 40.616367, 50.255768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011568, 0.079432, -0.996773,
		0.979408, 0.201836, 0.004717,
		0.201560, -0.976193, -0.080131,
		38.524998, 40.323509, 50.231728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816757, 40.964085, 49.696041>,  <38.383907, 41.006844, 50.287819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816757, 40.964085, 49.696041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701691, 40.588879, 49.773369>,  <38.632652, 40.363754, 49.819767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.701691, 40.588879, 49.773369>,  <38.816757, 40.964085, 49.696041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701691, 40.588879, 49.773369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001967, -0.202430, -0.979295,
		0.957729, -0.281328, 0.060077,
		-0.287665, -0.938017, 0.193320,
		38.615391, 40.307472, 49.831364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127232, 40.489037, 49.200451>,  <38.816757, 40.964085, 49.696041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127232, 40.489037, 49.200451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811672, 40.288448, 49.342533>,  <38.622337, 40.168095, 49.427784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811672, 40.288448, 49.342533>,  <39.127232, 40.489037, 49.200451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811672, 40.288448, 49.342533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151121, -0.401956, -0.903102,
		0.595658, -0.766132, 0.241317,
		-0.788894, -0.501472, 0.355207,
		38.575005, 40.138008, 49.449097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237495, 39.868233, 48.903835>,  <39.127232, 40.489037, 49.200451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237495, 39.868233, 48.903835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854858, 39.885063, 49.019180>,  <38.625275, 39.895161, 49.088387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854858, 39.885063, 49.019180>,  <39.237495, 39.868233, 48.903835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854858, 39.885063, 49.019180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274758, -0.459976, -0.844352,
		0.097112, -0.886934, 0.451573,
		-0.956597, 0.042077, 0.288361,
		38.567879, 39.897686, 49.105690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999348, 39.279633, 48.801300>,  <39.237495, 39.868233, 48.903835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999348, 39.279633, 48.801300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692425, 39.536034, 48.793850>,  <38.508270, 39.689877, 48.789379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692425, 39.536034, 48.793850>,  <38.999348, 39.279633, 48.801300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692425, 39.536034, 48.793850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313291, -0.400046, -0.861285,
		-0.559541, -0.655036, 0.507781,
		-0.767309, 0.641007, -0.018626,
		38.462231, 39.728336, 48.788261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428497, 38.852993, 48.701118>,  <38.999348, 39.279633, 48.801300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428497, 38.852993, 48.701118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.329449, 39.215336, 48.563652>,  <38.270020, 39.432743, 48.481174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.329449, 39.215336, 48.563652>,  <38.428497, 38.852993, 48.701118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329449, 39.215336, 48.563652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363618, -0.415672, -0.833666,
		-0.898035, -0.081470, 0.432315,
		-0.247620, 0.905858, -0.343664,
		38.255161, 39.487095, 48.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777790, 38.626846, 48.398220>,  <38.428497, 38.852993, 48.701118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777790, 38.626846, 48.398220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908329, 38.984734, 48.276245>,  <37.986652, 39.199467, 48.203060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908329, 38.984734, 48.276245>,  <37.777790, 38.626846, 48.398220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908329, 38.984734, 48.276245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313879, -0.201719, -0.927787,
		-0.891615, 0.398493, 0.215002,
		0.326347, 0.894714, -0.304935,
		38.006233, 39.253147, 48.184765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289093, 38.921974, 47.823631>,  <37.777790, 38.626846, 48.398220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289093, 38.921974, 47.823631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617805, 39.143147, 47.768570>,  <37.815033, 39.275848, 47.735535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617805, 39.143147, 47.768570>,  <37.289093, 38.921974, 47.823631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617805, 39.143147, 47.768570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130425, -0.052639, -0.990060,
		-0.554680, 0.831563, 0.028858,
		0.821778, 0.552930, -0.137655,
		37.864338, 39.309025, 47.727272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603271, 39.050896, 48.100163>,  <37.289093, 38.921974, 47.823631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603271, 39.050896, 48.100163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215721, 38.957691, 48.066738>,  <35.983192, 38.901768, 48.046684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215721, 38.957691, 48.066738>,  <36.603271, 39.050896, 48.100163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215721, 38.957691, 48.066738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134424, 0.211789, 0.968026,
		-0.207863, 0.949132, -0.236520,
		-0.968877, -0.233011, -0.083563,
		35.925056, 38.887787, 48.041668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257034, 39.570900, 48.389366>,  <36.603271, 39.050896, 48.100163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257034, 39.570900, 48.389366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005814, 39.260113, 48.406677>,  <35.855083, 39.073639, 48.417065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005814, 39.260113, 48.406677>,  <36.257034, 39.570900, 48.389366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005814, 39.260113, 48.406677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161351, 0.184426, 0.969512,
		-0.761264, 0.601916, -0.241193,
		-0.628047, -0.776971, 0.043277,
		35.817398, 39.027023, 48.419659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660366, 39.889370, 48.795891>,  <36.257034, 39.570900, 48.389366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660366, 39.889370, 48.795891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646133, 39.490433, 48.821316>,  <35.637592, 39.251072, 48.836571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646133, 39.490433, 48.821316>,  <35.660366, 39.889370, 48.795891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646133, 39.490433, 48.821316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124086, 0.067517, 0.989972,
		-0.991633, 0.027337, -0.126158,
		-0.035581, -0.997343, 0.063560,
		35.635460, 39.191231, 48.840385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054440, 39.746471, 49.144382>,  <35.660366, 39.889370, 48.795891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054440, 39.746471, 49.144382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295635, 39.432625, 49.202053>,  <35.440353, 39.244316, 49.236656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295635, 39.432625, 49.202053>,  <35.054440, 39.746471, 49.144382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295635, 39.432625, 49.202053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217921, 0.011849, 0.975894,
		-0.767409, -0.619871, -0.163839,
		0.602987, -0.784614, 0.144176,
		35.476532, 39.197239, 49.245304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743614, 39.363483, 49.655140>,  <35.054440, 39.746471, 49.144382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743614, 39.363483, 49.655140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123722, 39.239902, 49.670822>,  <35.351788, 39.165752, 49.680233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123722, 39.239902, 49.670822>,  <34.743614, 39.363483, 49.655140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123722, 39.239902, 49.670822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058110, -0.052219, 0.996943,
		-0.305963, -0.949642, -0.067576,
		0.950268, -0.308955, 0.039207,
		35.408802, 39.147217, 49.682583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769814, 38.972771, 50.270794>,  <34.743614, 39.363483, 49.655140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769814, 38.972771, 50.270794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154293, 39.063465, 50.207954>,  <35.384983, 39.117882, 50.170250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154293, 39.063465, 50.207954>,  <34.769814, 38.972771, 50.270794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154293, 39.063465, 50.207954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152791, 0.036558, 0.987582,
		0.229665, -0.973269, 0.000496,
		0.961202, 0.226738, -0.157102,
		35.442654, 39.131485, 50.160824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021862, 38.609818, 50.856617>,  <34.769814, 38.972771, 50.270794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021862, 38.609818, 50.856617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296059, 38.862820, 50.712376>,  <35.460579, 39.014622, 50.625832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296059, 38.862820, 50.712376>,  <35.021862, 38.609818, 50.856617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296059, 38.862820, 50.712376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318594, 0.184763, 0.929710,
		0.654670, -0.752199, -0.074857,
		0.685496, 0.632502, -0.360605,
		35.501709, 39.052570, 50.604195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295868, 37.973934, 50.941078>,  <35.021862, 38.609818, 50.856617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295868, 37.973934, 50.941078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000748, 37.742168, 51.079601>,  <34.823677, 37.603111, 51.162716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000748, 37.742168, 51.079601>,  <35.295868, 37.973934, 50.941078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000748, 37.742168, 51.079601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244216, -0.249160, -0.937165,
		0.629291, -0.776016, 0.042329,
		-0.737802, -0.579412, 0.346310,
		34.779408, 37.568344, 51.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373962, 37.266678, 50.654831>,  <35.295868, 37.973934, 50.941078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373962, 37.266678, 50.654831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989990, 37.263618, 50.766880>,  <34.759605, 37.261784, 50.834110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989990, 37.263618, 50.766880>,  <35.373962, 37.266678, 50.654831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989990, 37.263618, 50.766880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252249, -0.411798, -0.875667,
		0.122047, -0.911243, 0.393370,
		-0.959935, -0.007645, 0.280119,
		34.702011, 37.261326, 50.850914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079884, 36.651104, 50.384186>,  <35.373962, 37.266678, 50.654831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079884, 36.651104, 50.384186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755943, 36.877106, 50.447323>,  <34.561581, 37.012707, 50.485207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755943, 36.877106, 50.447323>,  <35.079884, 36.651104, 50.384186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755943, 36.877106, 50.447323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415478, -0.362458, -0.834268,
		-0.414157, -0.741209, 0.528284,
		-0.809847, 0.565008, 0.157841,
		34.512989, 37.046608, 50.494675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574455, 36.196293, 50.064587>,  <35.079884, 36.651104, 50.384186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574455, 36.196293, 50.064587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.439217, 36.571949, 50.088940>,  <34.358074, 36.797344, 50.103554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.439217, 36.571949, 50.088940>,  <34.574455, 36.196293, 50.064587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439217, 36.571949, 50.088940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465337, -0.110587, -0.878198,
		-0.818019, -0.325244, 0.474406,
		-0.338092, 0.939142, 0.060886,
		34.337788, 36.853691, 50.107204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886993, 35.980850, 49.907497>,  <34.574455, 36.196293, 50.064587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886993, 35.980850, 49.907497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967934, 36.365852, 49.835232>,  <34.016499, 36.596851, 49.791870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967934, 36.365852, 49.835232>,  <33.886993, 35.980850, 49.907497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967934, 36.365852, 49.835232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473406, -0.065359, -0.878416,
		-0.857287, 0.263278, 0.442429,
		0.202351, 0.962503, -0.180669,
		34.028641, 36.654602, 49.781033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278030, 36.314800, 49.602600>,  <33.886993, 35.980850, 49.907497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278030, 36.314800, 49.602600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558487, 36.571217, 49.477722>,  <33.726761, 36.725067, 49.402794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558487, 36.571217, 49.477722>,  <33.278030, 36.314800, 49.602600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558487, 36.571217, 49.477722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468175, 0.083650, -0.879668,
		-0.537791, 0.762932, 0.358771,
		0.701137, 0.641044, -0.312199,
		33.768829, 36.763531, 49.384064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947376, 36.854733, 49.164848>,  <33.278030, 36.314800, 49.602600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947376, 36.854733, 49.164848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336033, 36.822399, 49.075962>,  <33.569225, 36.803001, 49.022629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336033, 36.822399, 49.075962>,  <32.947376, 36.854733, 49.164848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336033, 36.822399, 49.075962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227991, -0.070950, -0.971075,
		0.062727, 0.994199, -0.087366,
		0.971641, -0.080832, -0.222218,
		33.627525, 36.798149, 49.009296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.556324, 35.613361, 52.437870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.535381, 36.012794, 52.434177>,  <38.522816, 36.252457, 52.431961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.535381, 36.012794, 52.434177>,  <38.556324, 35.613361, 52.437870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535381, 36.012794, 52.434177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172219, -0.000074, -0.985059,
		-0.983667, -0.053160, -0.171971,
		-0.052352, 0.998586, -0.009228,
		38.519676, 36.312370, 52.431408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979424, 35.805168, 52.057976>,  <38.556324, 35.613361, 52.437870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979424, 35.805168, 52.057976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291637, 36.051979, 52.017879>,  <38.478966, 36.200066, 51.993824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291637, 36.051979, 52.017879>,  <37.979424, 35.805168, 52.057976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291637, 36.051979, 52.017879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087396, -0.051063, -0.994864,
		-0.618972, 0.785287, 0.014069,
		0.780535, 0.617023, -0.100237,
		38.525799, 36.237087, 51.987808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820591, 36.292908, 51.455814>,  <37.979424, 35.805168, 52.057976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820591, 36.292908, 51.455814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216537, 36.322315, 51.504417>,  <38.454105, 36.339958, 51.533577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216537, 36.322315, 51.504417>,  <37.820591, 36.292908, 51.455814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216537, 36.322315, 51.504417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130104, -0.126458, -0.983403,
		-0.056933, 0.989244, -0.134741,
		0.989864, 0.073519, 0.121505,
		38.513496, 36.344372, 51.540871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958420, 36.652172, 50.922852>,  <37.820591, 36.292908, 51.455814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958420, 36.652172, 50.922852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.305283, 36.477982, 51.019512>,  <38.513401, 36.373466, 51.077507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.305283, 36.477982, 51.019512>,  <37.958420, 36.652172, 50.922852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305283, 36.477982, 51.019512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185062, -0.168714, -0.968136,
		0.462371, 0.884248, -0.065712,
		0.867159, -0.435478, 0.241649,
		38.565430, 36.347340, 51.092007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354797, 36.884499, 50.426941>,  <37.958420, 36.652172, 50.922852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354797, 36.884499, 50.426941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.556553, 36.570438, 50.570679>,  <38.677605, 36.382000, 50.656921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.556553, 36.570438, 50.570679>,  <38.354797, 36.884499, 50.426941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556553, 36.570438, 50.570679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219789, -0.285711, -0.932771,
		0.835038, 0.549456, 0.028459,
		0.504386, -0.785154, 0.359343,
		38.707870, 36.334892, 50.678482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933132, 36.831322, 49.973236>,  <38.354797, 36.884499, 50.426941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933132, 36.831322, 49.973236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.935764, 36.480743, 50.165813>,  <38.937344, 36.270397, 50.281361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.935764, 36.480743, 50.165813>,  <38.933132, 36.831322, 49.973236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935764, 36.480743, 50.165813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343811, -0.450125, -0.824125,
		0.939016, 0.170946, 0.298373,
		0.006576, -0.876450, 0.481448,
		38.937737, 36.217808, 50.310249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520020, 36.531116, 49.717167>,  <38.933132, 36.831322, 49.973236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520020, 36.531116, 49.717167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.290203, 36.227737, 49.840233>,  <39.152313, 36.045708, 49.914074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.290203, 36.227737, 49.840233>,  <39.520020, 36.531116, 49.717167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290203, 36.227737, 49.840233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316084, -0.552343, -0.771368,
		0.754982, -0.345931, 0.557076,
		-0.574537, -0.758451, 0.307666,
		39.117844, 36.000202, 49.932533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880516, 35.889801, 49.521996>,  <39.520020, 36.531116, 49.717167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880516, 35.889801, 49.521996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.487343, 35.820114, 49.545620>,  <39.251438, 35.778301, 49.559795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.487343, 35.820114, 49.545620>,  <39.880516, 35.889801, 49.521996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487343, 35.820114, 49.545620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031482, -0.475630, -0.879082,
		0.181245, -0.862220, 0.472997,
		-0.982934, -0.174221, 0.059061,
		39.192463, 35.767849, 49.563339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784657, 35.122978, 49.328964>,  <39.880516, 35.889801, 49.521996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784657, 35.122978, 49.328964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.428608, 35.299500, 49.283463>,  <39.214977, 35.405411, 49.256161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.428608, 35.299500, 49.283463>,  <39.784657, 35.122978, 49.328964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428608, 35.299500, 49.283463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143526, -0.508360, -0.849100,
		-0.432533, -0.739476, 0.515840,
		-0.890121, 0.441300, -0.113749,
		39.161572, 35.431889, 49.249336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263756, 34.621140, 49.171738>,  <39.784657, 35.122978, 49.328964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263756, 34.621140, 49.171738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.052036, 34.931934, 49.035423>,  <38.925003, 35.118412, 48.953632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.052036, 34.931934, 49.035423>,  <39.263756, 34.621140, 49.171738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052036, 34.931934, 49.035423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321411, -0.555357, -0.766990,
		-0.785200, -0.296433, 0.543681,
		-0.529298, 0.776985, -0.340789,
		38.893246, 35.165031, 48.933186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685646, 34.402466, 49.128597>,  <39.263756, 34.621140, 49.171738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685646, 34.402466, 49.128597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.687904, 34.710197, 48.873062>,  <38.689259, 34.894836, 48.719742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.687904, 34.710197, 48.873062>,  <38.685646, 34.402466, 49.128597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687904, 34.710197, 48.873062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390672, -0.586377, -0.709604,
		-0.920513, 0.253579, 0.297244,
		0.005643, 0.769325, -0.638833,
		38.689598, 34.940994, 48.681412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988228, 34.401882, 48.766502>,  <38.685646, 34.402466, 49.128597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988228, 34.401882, 48.766502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.246479, 34.616215, 48.548862>,  <38.401428, 34.744816, 48.418278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.246479, 34.616215, 48.548862>,  <37.988228, 34.401882, 48.766502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246479, 34.616215, 48.548862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350075, -0.425547, -0.834480,
		-0.678684, 0.729240, -0.087163,
		0.645628, 0.535835, -0.544101,
		38.440166, 34.776966, 48.385632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284004, 34.436028, 48.760540>,  <37.988228, 34.401882, 48.766502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284004, 34.436028, 48.760540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.968887, 34.204689, 48.845291>,  <36.779816, 34.065884, 48.896141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.968887, 34.204689, 48.845291>,  <37.284004, 34.436028, 48.760540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968887, 34.204689, 48.845291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265630, -0.008661, 0.964036,
		-0.555714, 0.815744, 0.160450,
		-0.787796, -0.578349, 0.211873,
		36.732548, 34.031185, 48.908852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927071, 34.753532, 49.326935>,  <37.284004, 34.436028, 48.760540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927071, 34.753532, 49.326935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825935, 34.366543, 49.329987>,  <36.765255, 34.134350, 49.331818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.825935, 34.366543, 49.329987>,  <36.927071, 34.753532, 49.326935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825935, 34.366543, 49.329987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100030, 0.033985, 0.994404,
		-0.962323, 0.250662, -0.105370,
		-0.252841, -0.967478, 0.007631,
		36.750084, 34.076298, 49.332275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337330, 34.684296, 49.765789>,  <36.927071, 34.753532, 49.326935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337330, 34.684296, 49.765789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465027, 34.305229, 49.767609>,  <36.541645, 34.077789, 49.768700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465027, 34.305229, 49.767609>,  <36.337330, 34.684296, 49.765789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465027, 34.305229, 49.767609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119513, -0.035499, 0.992198,
		-0.940107, -0.317295, -0.124591,
		0.319243, -0.947662, 0.004548,
		36.560799, 34.020931, 49.768974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837593, 34.394714, 50.183239>,  <36.337330, 34.684296, 49.765789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837593, 34.394714, 50.183239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175083, 34.180141, 50.175663>,  <36.377579, 34.051395, 50.171120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175083, 34.180141, 50.175663>,  <35.837593, 34.394714, 50.183239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175083, 34.180141, 50.175663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021832, -0.069547, 0.997340,
		-0.536326, -0.841071, -0.070390,
		0.843729, -0.536436, -0.018938,
		36.428204, 34.019211, 50.169983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656528, 33.832001, 50.594498>,  <35.837593, 34.394714, 50.183239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656528, 33.832001, 50.594498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.056362, 33.831852, 50.582905>,  <36.296261, 33.831764, 50.575947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.056362, 33.831852, 50.582905>,  <35.656528, 33.832001, 50.594498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056362, 33.831852, 50.582905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028872, 0.102103, 0.994355,
		0.002591, -0.994774, 0.102071,
		0.999580, -0.000371, -0.028986,
		36.356236, 33.831741, 50.574207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818066, 33.421814, 51.072712>,  <35.656528, 33.832001, 50.594498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818066, 33.421814, 51.072712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.130119, 33.665100, 51.014118>,  <36.317352, 33.811073, 50.978962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.130119, 33.665100, 51.014118>,  <35.818066, 33.421814, 51.072712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130119, 33.665100, 51.014118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010604, 0.221250, 0.975159,
		0.625520, -0.762310, 0.166156,
		0.780136, 0.608220, -0.146480,
		36.364159, 33.847565, 50.970173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328896, 33.282471, 51.477432>,  <35.818066, 33.421814, 51.072712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328896, 33.282471, 51.477432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455719, 33.650116, 51.383877>,  <36.531811, 33.870705, 51.327744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.455719, 33.650116, 51.383877>,  <36.328896, 33.282471, 51.477432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455719, 33.650116, 51.383877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387826, 0.099407, 0.916357,
		0.865487, -0.381244, -0.324939,
		0.317054, 0.919115, -0.233892,
		36.550835, 33.925850, 51.313709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997128, 33.314117, 51.753006>,  <36.328896, 33.282471, 51.477432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997128, 33.314117, 51.753006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901726, 33.700485, 51.712795>,  <36.844482, 33.932308, 51.688667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901726, 33.700485, 51.712795>,  <36.997128, 33.314117, 51.753006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901726, 33.700485, 51.712795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388585, 0.189791, 0.901655,
		0.890009, 0.175986, -0.420609,
		-0.238507, 0.965923, -0.100530,
		36.830173, 33.990261, 51.682636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536465, 33.697090, 52.028442>,  <36.997128, 33.314117, 51.753006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536465, 33.697090, 52.028442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239086, 33.964581, 52.032082>,  <37.060658, 34.125076, 52.034264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239086, 33.964581, 52.032082>,  <37.536465, 33.697090, 52.028442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239086, 33.964581, 52.032082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264362, 0.281352, 0.922472,
		0.614324, 0.688217, -0.385958,
		-0.743450, 0.668729, 0.009097,
		37.016052, 34.165199, 52.034809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749676, 34.129490, 52.548264>,  <37.536465, 33.697090, 52.028442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749676, 34.129490, 52.548264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.383324, 34.277802, 52.486694>,  <37.163513, 34.366787, 52.449753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.383324, 34.277802, 52.486694>,  <37.749676, 34.129490, 52.548264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383324, 34.277802, 52.486694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040373, 0.466530, 0.883584,
		0.399422, 0.803041, -0.442254,
		-0.915878, 0.370777, -0.153921,
		37.108559, 34.389034, 52.440517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777851, 34.839249, 52.780682>,  <37.749676, 34.129490, 52.548264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777851, 34.839249, 52.780682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.385075, 34.763897, 52.787594>,  <37.149406, 34.718685, 52.791740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.385075, 34.763897, 52.787594>,  <37.777851, 34.839249, 52.780682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385075, 34.763897, 52.787594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077116, 0.482042, 0.872748,
		-0.172740, 0.855657, -0.487865,
		-0.981944, -0.188380, 0.017283,
		37.090492, 34.707382, 52.792778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539993, 35.454823, 52.964371>,  <37.777851, 34.839249, 52.780682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539993, 35.454823, 52.964371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.276905, 35.175175, 53.076542>,  <37.119053, 35.007385, 53.143845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.276905, 35.175175, 53.076542>,  <37.539993, 35.454823, 52.964371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276905, 35.175175, 53.076542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133095, 0.474289, 0.870250,
		-0.741409, 0.535059, -0.404999,
		-0.657722, -0.699115, 0.280428,
		37.079590, 34.965439, 53.160671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918884, 35.834183, 53.299309>,  <37.539993, 35.454823, 52.964371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918884, 35.834183, 53.299309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.852089, 35.465973, 53.440582>,  <36.812012, 35.245045, 53.525345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.852089, 35.465973, 53.440582>,  <36.918884, 35.834183, 53.299309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852089, 35.465973, 53.440582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196029, 0.382062, 0.903106,
		-0.966274, 0.081577, -0.244252,
		-0.166992, -0.920529, 0.353185,
		36.801991, 35.189816, 53.546539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199371, 35.900002, 53.717171>,  <36.918884, 35.834183, 53.299309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199371, 35.900002, 53.717171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.417919, 35.580578, 53.818188>,  <36.549049, 35.388924, 53.878799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.417919, 35.580578, 53.818188>,  <36.199371, 35.900002, 53.717171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417919, 35.580578, 53.818188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113409, 0.228213, 0.966984,
		-0.829831, -0.556970, 0.034124,
		0.546369, -0.798563, 0.252543,
		36.581829, 35.341007, 53.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096443, 36.724743, 53.911915>,  <36.199371, 35.900002, 53.717171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096443, 36.724743, 53.911915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947361, 37.095901, 53.907837>,  <35.857910, 37.318596, 53.905392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.947361, 37.095901, 53.907837>,  <36.096443, 36.724743, 53.911915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947361, 37.095901, 53.907837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310142, -0.134911, -0.941069,
		-0.874586, -0.347584, 0.338061,
		-0.372709, 0.927893, -0.010191,
		35.835548, 37.374268, 53.904781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350372, 36.649136, 53.676346>,  <36.096443, 36.724743, 53.911915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350372, 36.649136, 53.676346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415302, 37.040047, 53.621826>,  <35.454262, 37.274593, 53.589115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415302, 37.040047, 53.621826>,  <35.350372, 36.649136, 53.676346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415302, 37.040047, 53.621826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510868, -0.034942, -0.858949,
		-0.844195, 0.209059, 0.493588,
		0.162324, 0.977279, -0.136299,
		35.464001, 37.333229, 53.580936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595394, 36.977192, 53.706127>,  <35.350372, 36.649136, 53.676346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595394, 36.977192, 53.706127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.840759, 37.227856, 53.513866>,  <34.987980, 37.378254, 53.398510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.840759, 37.227856, 53.513866>,  <34.595394, 36.977192, 53.706127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840759, 37.227856, 53.513866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626740, 0.015950, -0.779065,
		-0.480541, 0.779131, 0.402535,
		0.613415, 0.626658, -0.480648,
		35.024784, 37.415852, 53.369671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148582, 37.507843, 53.353416>,  <34.595394, 36.977192, 53.706127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148582, 37.507843, 53.353416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.497482, 37.533722, 53.159508>,  <34.706821, 37.549248, 53.043163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.497482, 37.533722, 53.159508>,  <34.148582, 37.507843, 53.353416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497482, 37.533722, 53.159508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488969, 0.095420, -0.867066,
		-0.009838, 0.993332, 0.114864,
		0.872246, 0.064695, -0.484770,
		34.759155, 37.553131, 53.014076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127048, 38.074043, 52.760757>,  <34.148582, 37.507843, 53.353416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127048, 38.074043, 52.760757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.421814, 37.826836, 52.651207>,  <34.598675, 37.678513, 52.585476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.421814, 37.826836, 52.651207>,  <34.127048, 38.074043, 52.760757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421814, 37.826836, 52.651207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262430, 0.111822, -0.958450,
		0.622962, 0.778173, -0.079782,
		0.736918, -0.618015, -0.273877,
		34.642891, 37.641430, 52.569042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574196, 38.453167, 52.209503>,  <34.127048, 38.074043, 52.760757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574196, 38.453167, 52.209503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.639256, 38.062428, 52.153923>,  <34.678291, 37.827984, 52.120575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.639256, 38.062428, 52.153923>,  <34.574196, 38.453167, 52.209503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639256, 38.062428, 52.153923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320508, 0.080876, -0.943787,
		0.933177, 0.198042, -0.299934,
		0.162651, -0.976851, -0.138946,
		34.688049, 37.769371, 52.112240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074791, 38.406792, 51.612934>,  <34.574196, 38.453167, 52.209503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074791, 38.406792, 51.612934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.885952, 38.055454, 51.642975>,  <34.772648, 37.844650, 51.660999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.885952, 38.055454, 51.642975>,  <35.074791, 38.406792, 51.612934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885952, 38.055454, 51.642975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265737, 0.060566, -0.962141,
		0.840542, -0.474179, -0.262001,
		-0.472095, -0.878343, 0.075099,
		34.744324, 37.791950, 51.665504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793114, 38.383629, 51.266430>,  <35.074791, 38.406792, 51.612934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793114, 38.383629, 51.266430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.792366, 38.764450, 51.144058>,  <35.791916, 38.992943, 51.070633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.792366, 38.764450, 51.144058>,  <35.793114, 38.383629, 51.266430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792366, 38.764450, 51.144058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338030, 0.288526, 0.895817,
		0.941133, -0.101739, -0.322362,
		-0.001870, 0.952052, -0.305932,
		35.791805, 39.050064, 51.052280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464119, 38.663681, 51.384411>,  <35.793114, 38.383629, 51.266430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464119, 38.663681, 51.384411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.238312, 38.992531, 51.354935>,  <36.102829, 39.189842, 51.337250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.238312, 38.992531, 51.354935>,  <36.464119, 38.663681, 51.384411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238312, 38.992531, 51.354935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559409, 0.446710, 0.698221,
		0.606943, 0.352935, -0.712080,
		-0.564519, 0.822124, -0.073692,
		36.068954, 39.239166, 51.332829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845108, 39.199184, 51.622547>,  <36.464119, 38.663681, 51.384411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845108, 39.199184, 51.622547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.499817, 39.400349, 51.605057>,  <36.292641, 39.521049, 51.594563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.499817, 39.400349, 51.605057>,  <36.845108, 39.199184, 51.622547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499817, 39.400349, 51.605057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309571, 0.595804, 0.741069,
		0.398748, 0.626176, -0.670003,
		-0.863230, 0.502914, -0.043730,
		36.240849, 39.551224, 51.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996067, 39.919632, 51.576977>,  <36.845108, 39.199184, 51.622547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996067, 39.919632, 51.576977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.624332, 39.883232, 51.720116>,  <36.401291, 39.861393, 51.806000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.624332, 39.883232, 51.720116>,  <36.996067, 39.919632, 51.576977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624332, 39.883232, 51.720116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231202, 0.612238, 0.756115,
		-0.287894, 0.785420, -0.547935,
		-0.929335, -0.090997, 0.357850,
		36.345531, 39.855934, 51.827469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859642, 40.629948, 51.808376>,  <36.996067, 39.919632, 51.576977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859642, 40.629948, 51.808376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.602726, 40.382896, 51.989925>,  <36.448574, 40.234665, 52.098854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.602726, 40.382896, 51.989925>,  <36.859642, 40.629948, 51.808376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602726, 40.382896, 51.989925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022474, 0.576734, 0.816623,
		-0.766129, 0.534712, -0.356552,
		-0.642294, -0.617625, 0.453870,
		36.410038, 40.197609, 52.126087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479420, 41.090485, 52.220306>,  <36.859642, 40.629948, 51.808376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479420, 41.090485, 52.220306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.409035, 40.734230, 52.388023>,  <36.366802, 40.520477, 52.488655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.409035, 40.734230, 52.388023>,  <36.479420, 41.090485, 52.220306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409035, 40.734230, 52.388023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044363, 0.418333, 0.907210,
		-0.983397, 0.178237, -0.034100,
		-0.175963, -0.890634, 0.419294,
		36.356247, 40.467041, 52.513813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783077, 41.165607, 52.629524>,  <36.479420, 41.090485, 52.220306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783077, 41.165607, 52.629524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025475, 40.878670, 52.767040>,  <36.170914, 40.706509, 52.849548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025475, 40.878670, 52.767040>,  <35.783077, 41.165607, 52.629524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025475, 40.878670, 52.767040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092107, 0.492557, 0.865392,
		-0.790117, -0.492759, 0.364560,
		0.605996, -0.717340, 0.343791,
		36.207272, 40.663467, 52.870178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516510, 40.990841, 53.211418>,  <35.783077, 41.165607, 52.629524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516510, 40.990841, 53.211418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885918, 40.842121, 53.249107>,  <36.107563, 40.752888, 53.271721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885918, 40.842121, 53.249107>,  <35.516510, 40.990841, 53.211418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885918, 40.842121, 53.249107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045419, 0.349941, 0.935670,
		-0.380857, -0.859828, 0.340064,
		0.923518, -0.371802, 0.094225,
		36.162971, 40.730579, 53.277374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548965, 40.685532, 53.867619>,  <35.516510, 40.990841, 53.211418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548965, 40.685532, 53.867619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.926865, 40.771801, 53.768875>,  <36.153603, 40.823563, 53.709629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.926865, 40.771801, 53.768875>,  <35.548965, 40.685532, 53.867619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926865, 40.771801, 53.768875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139170, 0.417935, 0.897754,
		0.296788, -0.882506, 0.364828,
		0.944748, 0.215669, -0.246857,
		36.210289, 40.836502, 53.694817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.508911, 36.672966, 37.956841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890709, 36.679352, 38.075966>,  <36.119785, 36.683182, 38.147442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890709, 36.679352, 38.075966>,  <35.508911, 36.672966, 37.956841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890709, 36.679352, 38.075966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285708, -0.237500, 0.928421,
		0.085552, -0.971256, -0.222130,
		0.954490, 0.015964, 0.297814,
		36.177055, 36.684139, 38.165310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587528, 36.049969, 38.404408>,  <35.508911, 36.672966, 37.956841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587528, 36.049969, 38.404408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892429, 36.297436, 38.480530>,  <36.075371, 36.445915, 38.526203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892429, 36.297436, 38.480530>,  <35.587528, 36.049969, 38.404408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892429, 36.297436, 38.480530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088468, -0.191679, 0.977462,
		0.641206, -0.761909, -0.091375,
		0.762253, 0.618671, 0.190310,
		36.121105, 36.483036, 38.537624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977787, 35.734379, 38.970695>,  <35.587528, 36.049969, 38.404408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977787, 35.734379, 38.970695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110481, 36.111549, 38.982368>,  <36.190098, 36.337852, 38.989372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110481, 36.111549, 38.982368>,  <35.977787, 35.734379, 38.970695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110481, 36.111549, 38.982368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028331, -0.020959, 0.999379,
		0.942948, -0.332353, 0.019762,
		0.331733, 0.942922, 0.029179,
		36.210003, 36.394424, 38.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629204, 35.653019, 39.342724>,  <35.977787, 35.734379, 38.970695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629204, 35.653019, 39.342724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487431, 36.026585, 39.361389>,  <36.402367, 36.250725, 39.372589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487431, 36.026585, 39.361389>,  <36.629204, 35.653019, 39.342724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487431, 36.026585, 39.361389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030015, -0.061242, 0.997671,
		0.934599, 0.352208, 0.049737,
		-0.354434, 0.933916, 0.046666,
		36.381100, 36.306759, 39.375389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954884, 35.916103, 39.984585>,  <36.629204, 35.653019, 39.342724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954884, 35.916103, 39.984585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662506, 36.172123, 39.889881>,  <36.487080, 36.325737, 39.833057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662506, 36.172123, 39.889881>,  <36.954884, 35.916103, 39.984585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662506, 36.172123, 39.889881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084525, 0.259353, 0.962077,
		0.677185, 0.723235, -0.135472,
		-0.730942, 0.640053, -0.236761,
		36.443222, 36.364140, 39.818851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206017, 36.621433, 40.158455>,  <36.954884, 35.916103, 39.984585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206017, 36.621433, 40.158455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806046, 36.626110, 40.157558>,  <36.566063, 36.628918, 40.157021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806046, 36.626110, 40.157558>,  <37.206017, 36.621433, 40.158455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806046, 36.626110, 40.157558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000191, 0.172610, 0.984990,
		0.011908, 0.984921, -0.172595,
		-0.999929, 0.011697, -0.002243,
		36.506065, 36.629620, 40.156887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899464, 37.248402, 40.450607>,  <37.206017, 36.621433, 40.158455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899464, 37.248402, 40.450607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619473, 36.965645, 40.491276>,  <36.451477, 36.795990, 40.515678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619473, 36.965645, 40.491276>,  <36.899464, 37.248402, 40.450607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619473, 36.965645, 40.491276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155805, 0.290091, 0.944231,
		-0.696964, 0.645098, -0.313194,
		-0.699976, -0.706892, 0.101673,
		36.409481, 36.753578, 40.521778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459637, 37.513412, 40.924911>,  <36.899464, 37.248402, 40.450607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459637, 37.513412, 40.924911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266251, 37.163319, 40.918873>,  <36.150219, 36.953262, 40.915249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266251, 37.163319, 40.918873>,  <36.459637, 37.513412, 40.924911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266251, 37.163319, 40.918873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293646, 0.145910, 0.944713,
		-0.824642, 0.461168, -0.327551,
		-0.483464, -0.875234, -0.015097,
		36.121212, 36.900749, 40.914345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755238, 37.659756, 40.963612>,  <36.459637, 37.513412, 40.924911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755238, 37.659756, 40.963612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851391, 37.304573, 41.120453>,  <35.909084, 37.091461, 41.214558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851391, 37.304573, 41.120453>,  <35.755238, 37.659756, 40.963612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851391, 37.304573, 41.120453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274151, 0.325393, 0.904964,
		-0.931159, -0.325035, -0.165215,
		0.240385, -0.887959, 0.392101,
		35.923508, 37.038185, 41.238083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124710, 37.405212, 41.273956>,  <35.755238, 37.659756, 40.963612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124710, 37.405212, 41.273956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413940, 37.202156, 41.461342>,  <35.587479, 37.080322, 41.573772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413940, 37.202156, 41.461342>,  <35.124710, 37.405212, 41.273956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413940, 37.202156, 41.461342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343269, 0.324449, 0.881419,
		-0.599434, -0.798146, 0.060347,
		0.723081, -0.507637, 0.468464,
		35.630863, 37.049866, 41.601883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758953, 36.843910, 41.801529>,  <35.124710, 37.405212, 41.273956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758953, 36.843910, 41.801529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134811, 36.901150, 41.925846>,  <35.360325, 36.935493, 42.000439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134811, 36.901150, 41.925846>,  <34.758953, 36.843910, 41.801529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134811, 36.901150, 41.925846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339633, 0.279960, 0.897926,
		0.041481, -0.949287, 0.311663,
		0.939643, 0.143098, 0.310797,
		35.416706, 36.944080, 42.019085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772991, 36.465660, 42.422920>,  <34.758953, 36.843910, 41.801529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772991, 36.465660, 42.422920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083389, 36.717354, 42.440342>,  <35.269630, 36.868370, 42.450794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083389, 36.717354, 42.440342>,  <34.772991, 36.465660, 42.422920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083389, 36.717354, 42.440342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281351, 0.283522, 0.916764,
		0.564508, -0.723661, 0.397047,
		0.775998, 0.629231, 0.043553,
		35.316189, 36.906124, 42.453407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545223, 35.761158, 42.734562>,  <34.772991, 36.465660, 42.422920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545223, 35.761158, 42.734562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225845, 35.584080, 42.897778>,  <34.034218, 35.477833, 42.995708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225845, 35.584080, 42.897778>,  <34.545223, 35.761158, 42.734562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225845, 35.584080, 42.897778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073855, -0.600596, -0.796135,
		0.597515, -0.665809, 0.446849,
		-0.798449, -0.442700, 0.408039,
		33.986309, 35.451271, 43.020187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557404, 35.004662, 42.640175>,  <34.545223, 35.761158, 42.734562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557404, 35.004662, 42.640175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169365, 35.064610, 42.716545>,  <33.936543, 35.100578, 42.762367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169365, 35.064610, 42.716545>,  <34.557404, 35.004662, 42.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169365, 35.064610, 42.716545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242543, -0.628374, -0.739134,
		0.009197, -0.763339, 0.645933,
		-0.970097, 0.149869, 0.190922,
		33.878334, 35.109570, 42.773823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251026, 34.334785, 42.624062>,  <34.557404, 35.004662, 42.640175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251026, 34.334785, 42.624062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991261, 34.627312, 42.540703>,  <33.835400, 34.802830, 42.490688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991261, 34.627312, 42.540703>,  <34.251026, 34.334785, 42.624062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991261, 34.627312, 42.540703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313676, -0.507275, -0.802670,
		-0.692724, -0.455898, 0.558830,
		-0.649416, 0.731321, -0.208397,
		33.796436, 34.846706, 42.478184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737675, 33.960415, 42.302246>,  <34.251026, 34.334785, 42.624062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737675, 33.960415, 42.302246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640907, 34.340710, 42.224709>,  <33.582848, 34.568886, 42.178185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640907, 34.340710, 42.224709>,  <33.737675, 33.960415, 42.302246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640907, 34.340710, 42.224709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379621, -0.276593, -0.882827,
		-0.892952, -0.139984, 0.427832,
		-0.241918, 0.950737, -0.193843,
		33.568333, 34.625931, 42.166557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934208, 33.999851, 42.147526>,  <33.737675, 33.960415, 42.302246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934208, 33.999851, 42.147526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115803, 34.324001, 41.999371>,  <33.224762, 34.518490, 41.910477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115803, 34.324001, 41.999371>,  <32.934208, 33.999851, 42.147526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115803, 34.324001, 41.999371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260050, -0.277081, -0.924987,
		-0.852213, 0.516253, 0.084946,
		0.453990, 0.810376, -0.370384,
		33.251999, 34.567116, 41.888256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461212, 34.425732, 41.649933>,  <32.934208, 33.999851, 42.147526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461212, 34.425732, 41.649933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847397, 34.490280, 41.568108>,  <33.079105, 34.529011, 41.519012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847397, 34.490280, 41.568108>,  <32.461212, 34.425732, 41.649933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847397, 34.490280, 41.568108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138191, -0.348464, -0.927080,
		-0.220889, 0.923327, -0.314127,
		0.965459, 0.161372, -0.204567,
		33.137035, 34.538692, 41.506737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355518, 34.636715, 41.024612>,  <32.461212, 34.425732, 41.649933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355518, 34.636715, 41.024612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751549, 34.582737, 41.040295>,  <32.989166, 34.550350, 41.049706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751549, 34.582737, 41.040295>,  <32.355518, 34.636715, 41.024612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751549, 34.582737, 41.040295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003504, -0.255235, -0.966873,
		0.140482, 0.957416, -0.252229,
		0.990077, -0.134944, 0.039210,
		33.048573, 34.542255, 41.052059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610836, 34.977081, 40.410660>,  <32.355518, 34.636715, 41.024612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610836, 34.977081, 40.410660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883656, 34.710835, 40.531826>,  <33.047348, 34.551086, 40.604527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883656, 34.710835, 40.531826>,  <32.610836, 34.977081, 40.410660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883656, 34.710835, 40.531826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010136, -0.405575, -0.914006,
		0.731233, 0.626470, -0.269876,
		0.682052, -0.665616, 0.302920,
		33.088272, 34.511150, 40.622704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964005, 34.872562, 39.839828>,  <32.610836, 34.977081, 40.410660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964005, 34.872562, 39.839828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091953, 34.557159, 40.049946>,  <33.168724, 34.367916, 40.176018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091953, 34.557159, 40.049946>,  <32.964005, 34.872562, 39.839828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091953, 34.557159, 40.049946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179058, -0.494122, -0.850754,
		0.930386, 0.366194, -0.016869,
		0.319876, -0.788508, 0.525294,
		33.187916, 34.320606, 40.207535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623535, 34.676353, 39.640064>,  <32.964005, 34.872562, 39.839828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623535, 34.676353, 39.640064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435875, 34.353672, 39.783802>,  <33.323280, 34.160065, 39.870045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435875, 34.353672, 39.783802>,  <33.623535, 34.676353, 39.640064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435875, 34.353672, 39.783802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114434, -0.459001, -0.881035,
		0.875674, -0.372216, 0.307655,
		-0.469149, -0.806705, 0.359341,
		33.295132, 34.111660, 39.891605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967396, 34.120514, 39.337959>,  <33.623535, 34.676353, 39.640064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967396, 34.120514, 39.337959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632599, 33.948250, 39.473000>,  <33.431721, 33.844891, 39.554024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632599, 33.948250, 39.473000>,  <33.967396, 34.120514, 39.337959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632599, 33.948250, 39.473000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063652, -0.536135, -0.841729,
		0.543494, -0.726013, 0.421331,
		-0.836996, -0.430656, 0.337598,
		33.381500, 33.819054, 39.574280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032745, 33.466709, 38.961681>,  <33.967396, 34.120514, 39.337959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032745, 33.466709, 38.961681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651943, 33.476326, 39.083736>,  <33.423462, 33.482098, 39.156967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651943, 33.476326, 39.083736>,  <34.032745, 33.466709, 38.961681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651943, 33.476326, 39.083736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269757, -0.536951, -0.799322,
		0.144622, -0.843271, 0.517667,
		-0.952006, 0.024045, 0.305133,
		33.366341, 33.483540, 39.175278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812191, 32.765030, 38.941925>,  <34.032745, 33.466709, 38.961681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812191, 32.765030, 38.941925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486004, 32.996552, 38.941956>,  <33.290291, 33.135464, 38.941975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486004, 32.996552, 38.941956>,  <33.812191, 32.765030, 38.941925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486004, 32.996552, 38.941956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418707, -0.589815, -0.690509,
		-0.399622, -0.563120, 0.723324,
		-0.815467, 0.578804, 0.000079,
		33.241364, 33.170193, 38.941978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335838, 32.319241, 38.832798>,  <33.812191, 32.765030, 38.941925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335838, 32.319241, 38.832798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131416, 32.653858, 38.753788>,  <33.008762, 32.854630, 38.706383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131416, 32.653858, 38.753788>,  <33.335838, 32.319241, 38.832798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131416, 32.653858, 38.753788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506467, -0.478739, -0.717148,
		-0.694486, -0.266467, 0.668345,
		-0.511059, 0.836543, -0.197521,
		32.978100, 32.904819, 38.694530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631874, 32.185383, 38.901894>,  <33.335838, 32.319241, 38.832798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631874, 32.185383, 38.901894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704376, 32.468708, 38.629002>,  <32.747879, 32.638702, 38.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704376, 32.468708, 38.629002>,  <32.631874, 32.185383, 38.901894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704376, 32.468708, 38.629002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378627, -0.589986, -0.713132,
		-0.907627, 0.387573, 0.161247,
		0.181257, 0.708311, -0.682233,
		32.758755, 32.681202, 38.424332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196045, 31.658377, 39.163033>,  <32.631874, 32.185383, 38.901894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196045, 31.658377, 39.163033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569550, 31.564034, 39.055363>,  <33.793652, 31.507427, 38.990761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569550, 31.564034, 39.055363>,  <33.196045, 31.658377, 39.163033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569550, 31.564034, 39.055363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310346, 0.159027, 0.937228,
		-0.178248, -0.958687, 0.221692,
		0.933763, -0.235861, -0.269178,
		33.849678, 31.493275, 38.974609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501942, 31.183613, 39.607216>,  <33.196045, 31.658377, 39.163033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501942, 31.183613, 39.607216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837589, 31.350334, 39.467419>,  <34.038979, 31.450367, 39.383541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837589, 31.350334, 39.467419>,  <33.501942, 31.183613, 39.607216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837589, 31.350334, 39.467419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297909, 0.185427, 0.936412,
		0.455106, -0.889882, 0.031426,
		0.839124, 0.416805, -0.349493,
		34.089325, 31.475376, 39.362572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060177, 30.887354, 39.978001>,  <33.501942, 31.183613, 39.607216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060177, 30.887354, 39.978001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193249, 31.231934, 39.824520>,  <34.273094, 31.438681, 39.732430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193249, 31.231934, 39.824520>,  <34.060177, 30.887354, 39.978001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193249, 31.231934, 39.824520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351400, 0.264339, 0.898134,
		0.875123, -0.433628, -0.214771,
		0.332684, 0.861448, -0.383706,
		34.293053, 31.490368, 39.709408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697601, 30.979429, 40.338150>,  <34.060177, 30.887354, 39.978001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697601, 30.979429, 40.338150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579159, 31.331945, 40.190830>,  <34.508095, 31.543455, 40.102436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579159, 31.331945, 40.190830>,  <34.697601, 30.979429, 40.338150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579159, 31.331945, 40.190830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290619, 0.450438, 0.844183,
		0.909870, 0.142931, -0.389498,
		-0.296104, 0.881292, -0.368301,
		34.490326, 31.596333, 40.080341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276363, 31.244749, 40.509968>,  <34.697601, 30.979429, 40.338150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276363, 31.244749, 40.509968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998863, 31.530842, 40.476131>,  <34.832363, 31.702497, 40.455830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998863, 31.530842, 40.476131>,  <35.276363, 31.244749, 40.509968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998863, 31.530842, 40.476131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363926, 0.449483, 0.815796,
		0.621504, 0.535174, -0.572120,
		-0.693751, 0.715230, -0.084592,
		34.790737, 31.745411, 40.450752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666092, 31.793198, 40.755131>,  <35.276363, 31.244749, 40.509968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666092, 31.793198, 40.755131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291653, 31.933643, 40.763573>,  <35.066990, 32.017910, 40.768639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291653, 31.933643, 40.763573>,  <35.666092, 31.793198, 40.755131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291653, 31.933643, 40.763573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217645, 0.531029, 0.818925,
		0.276328, 0.771186, -0.573512,
		-0.936095, 0.351114, 0.021107,
		35.010826, 32.038979, 40.769905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623344, 32.491882, 40.764400>,  <35.666092, 31.793198, 40.755131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623344, 32.491882, 40.764400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281975, 32.369900, 40.933479>,  <35.077152, 32.296711, 41.034927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281975, 32.369900, 40.933479>,  <35.623344, 32.491882, 40.764400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281975, 32.369900, 40.933479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195851, 0.563928, 0.802264,
		-0.483028, 0.767455, -0.421541,
		-0.853420, -0.304957, 0.422699,
		35.025948, 32.278412, 41.060287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342636, 33.143890, 41.155514>,  <35.623344, 32.491882, 40.764400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342636, 33.143890, 41.155514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141060, 32.835770, 41.311813>,  <35.020115, 32.650898, 41.405594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141060, 32.835770, 41.311813>,  <35.342636, 33.143890, 41.155514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141060, 32.835770, 41.311813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053564, 0.423647, 0.904242,
		-0.862076, 0.476614, -0.172232,
		-0.503940, -0.770300, 0.390745,
		34.989880, 32.604679, 41.429035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823105, 33.474670, 41.669147>,  <35.342636, 33.143890, 41.155514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823105, 33.474670, 41.669147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810631, 33.088371, 41.772194>,  <34.803146, 32.856594, 41.834023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810631, 33.088371, 41.772194>,  <34.823105, 33.474670, 41.669147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810631, 33.088371, 41.772194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037275, 0.258682, 0.965243,
		-0.998818, 0.020499, -0.044065,
		-0.031186, -0.965745, 0.257613,
		34.801273, 32.798649, 41.849476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249954, 33.348614, 42.287910>,  <34.823105, 33.474670, 41.669147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249954, 33.348614, 42.287910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519035, 33.052944, 42.301079>,  <34.680485, 32.875542, 42.308979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519035, 33.052944, 42.301079>,  <34.249954, 33.348614, 42.287910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519035, 33.052944, 42.301079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091931, 0.127645, 0.987550,
		-0.734176, -0.661306, 0.153821,
		0.672707, -0.739176, 0.032920,
		34.720848, 32.831192, 42.310955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054699, 32.876461, 42.860676>,  <34.249954, 33.348614, 42.287910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054699, 32.876461, 42.860676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443333, 32.809437, 42.793800>,  <34.676514, 32.769222, 42.753677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443333, 32.809437, 42.793800>,  <34.054699, 32.876461, 42.860676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443333, 32.809437, 42.793800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201068, 0.211562, 0.956458,
		-0.124894, -0.962894, 0.239241,
		0.971583, -0.167560, -0.167185,
		34.734806, 32.759171, 42.743645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185257, 32.505371, 43.370750>,  <34.054699, 32.876461, 42.860676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185257, 32.505371, 43.370750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527447, 32.663906, 43.237438>,  <34.732761, 32.759026, 43.157452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527447, 32.663906, 43.237438>,  <34.185257, 32.505371, 43.370750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527447, 32.663906, 43.237438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317938, 0.106016, 0.942166,
		0.408749, -0.911963, -0.035317,
		0.855476, 0.396338, -0.333282,
		34.784088, 32.782806, 43.137455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683647, 32.086861, 43.603794>,  <34.185257, 32.505371, 43.370750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683647, 32.086861, 43.603794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881302, 32.424637, 43.521095>,  <34.999893, 32.627304, 43.471474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881302, 32.424637, 43.521095>,  <34.683647, 32.086861, 43.603794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881302, 32.424637, 43.521095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333602, 0.035435, 0.942048,
		0.802831, -0.534474, -0.264198,
		0.494138, 0.844442, -0.206749,
		35.029545, 32.677971, 43.459072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326233, 32.036118, 43.933537>,  <34.683647, 32.086861, 43.603794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326233, 32.036118, 43.933537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274830, 32.429161, 43.879913>,  <35.243988, 32.664986, 43.847740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274830, 32.429161, 43.879913>,  <35.326233, 32.036118, 43.933537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274830, 32.429161, 43.879913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418813, 0.176301, 0.890794,
		0.898934, 0.058329, -0.434184,
		-0.128506, 0.982607, -0.134054,
		35.236279, 32.723942, 43.839699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986713, 32.316227, 44.229141>,  <35.326233, 32.036118, 43.933537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986713, 32.316227, 44.229141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750675, 32.635387, 44.179916>,  <35.609051, 32.826881, 44.150383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750675, 32.635387, 44.179916>,  <35.986713, 32.316227, 44.229141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750675, 32.635387, 44.179916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289428, 0.351371, 0.890377,
		0.753670, 0.489791, -0.438276,
		-0.590096, 0.797899, -0.123058,
		35.573647, 32.874756, 44.142998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325375, 32.864288, 44.337963>,  <35.986713, 32.316227, 44.229141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325375, 32.864288, 44.337963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949753, 32.981991, 44.409065>,  <35.724380, 33.052612, 44.451725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949753, 32.981991, 44.409065>,  <36.325375, 32.864288, 44.337963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949753, 32.981991, 44.409065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291633, 0.408080, 0.865113,
		0.182024, 0.864225, -0.469022,
		-0.939051, 0.294254, 0.177756,
		35.668037, 33.070267, 44.462391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408810, 33.501278, 44.595985>,  <36.325375, 32.864288, 44.337963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408810, 33.501278, 44.595985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031651, 33.412605, 44.695423>,  <35.805355, 33.359402, 44.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031651, 33.412605, 44.695423>,  <36.408810, 33.501278, 44.595985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031651, 33.412605, 44.695423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160926, 0.350277, 0.922718,
		-0.291624, 0.910036, -0.294602,
		-0.942899, -0.221677, 0.248598,
		35.748779, 33.346104, 44.770004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240200, 34.090942, 45.020451>,  <36.408810, 33.501278, 44.595985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240200, 34.090942, 45.020451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010395, 33.776199, 45.110596>,  <35.872513, 33.587353, 45.164684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010395, 33.776199, 45.110596>,  <36.240200, 34.090942, 45.020451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010395, 33.776199, 45.110596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112342, 0.196928, 0.973960,
		-0.810751, 0.584868, -0.024740,
		-0.574510, -0.786860, 0.225365,
		35.838043, 33.540142, 45.178204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812473, 34.254196, 45.499321>,  <36.240200, 34.090942, 45.020451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812473, 34.254196, 45.499321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799850, 33.855145, 45.523815>,  <35.792274, 33.615715, 45.538509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799850, 33.855145, 45.523815>,  <35.812473, 34.254196, 45.499321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799850, 33.855145, 45.523815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055106, 0.059431, 0.996710,
		-0.997982, 0.034830, 0.053100,
		-0.031559, -0.997624, 0.061231,
		35.790382, 33.555859, 45.542183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169956, 34.119938, 45.959450>,  <35.812473, 34.254196, 45.499321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169956, 34.119938, 45.959450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443798, 33.828419, 45.954124>,  <35.608101, 33.653507, 45.950932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443798, 33.828419, 45.954124>,  <35.169956, 34.119938, 45.959450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443798, 33.828419, 45.954124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136203, 0.109961, 0.984560,
		-0.716081, -0.675843, 0.174544,
		0.684600, -0.728797, -0.013311,
		35.649178, 33.609779, 45.950130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938877, 33.778034, 46.539104>,  <35.169956, 34.119938, 45.959450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938877, 33.778034, 46.539104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304134, 33.642681, 46.448185>,  <35.523289, 33.561470, 46.393635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304134, 33.642681, 46.448185>,  <34.938877, 33.778034, 46.539104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304134, 33.642681, 46.448185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202963, -0.106160, 0.973415,
		-0.353520, -0.935000, -0.028259,
		0.913143, -0.338386, -0.227300,
		35.578075, 33.541164, 46.379993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966049, 33.196468, 47.000244>,  <34.938877, 33.778034, 46.539104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966049, 33.196468, 47.000244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337048, 33.293507, 46.886475>,  <35.559647, 33.351730, 46.818214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337048, 33.293507, 46.886475>,  <34.966049, 33.196468, 47.000244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337048, 33.293507, 46.886475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287055, 0.025217, 0.957582,
		0.239476, -0.969800, -0.046250,
		0.927497, 0.242594, -0.284425,
		35.615295, 33.366283, 46.801147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423019, 32.663685, 47.230003>,  <34.966049, 33.196468, 47.000244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423019, 32.663685, 47.230003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643723, 32.995461, 47.195145>,  <35.776142, 33.194527, 47.174229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643723, 32.995461, 47.195145>,  <35.423019, 32.663685, 47.230003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643723, 32.995461, 47.195145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228829, -0.050073, 0.972178,
		0.802000, -0.556346, -0.217428,
		0.551755, 0.829440, -0.087150,
		35.809250, 33.244293, 47.168999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993153, 32.615044, 47.640263>,  <35.423019, 32.663685, 47.230003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993153, 32.615044, 47.640263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998287, 33.012821, 47.598473>,  <36.001369, 33.251488, 47.573399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998287, 33.012821, 47.598473>,  <35.993153, 32.615044, 47.640263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998287, 33.012821, 47.598473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488451, 0.084928, 0.868449,
		0.872497, -0.062178, -0.484647,
		0.012839, 0.994445, -0.104470,
		36.002140, 33.311153, 47.567131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615150, 32.778446, 47.982109>,  <35.993153, 32.615044, 47.640263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615150, 32.778446, 47.982109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443798, 33.138313, 47.948452>,  <36.340988, 33.354233, 47.928257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443798, 33.138313, 47.948452>,  <36.615150, 32.778446, 47.982109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443798, 33.138313, 47.948452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517063, 0.320438, 0.793703,
		0.741036, 0.296499, -0.602457,
		-0.428383, 0.899671, -0.084147,
		36.315285, 33.408215, 47.923206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134918, 33.304573, 47.899746>,  <36.615150, 32.778446, 47.982109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134918, 33.304573, 47.899746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801479, 33.466984, 48.049549>,  <36.601418, 33.564430, 48.139431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801479, 33.466984, 48.049549>,  <37.134918, 33.304573, 47.899746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801479, 33.466984, 48.049549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523449, 0.364150, 0.770323,
		0.176395, 0.838175, -0.516089,
		-0.833599, 0.406027, 0.374507,
		36.551399, 33.588791, 48.161900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327896, 34.015770, 48.136101>,  <37.134918, 33.304573, 47.899746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327896, 34.015770, 48.136101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985905, 33.933163, 48.326412>,  <36.780708, 33.883598, 48.440598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985905, 33.933163, 48.326412>,  <37.327896, 34.015770, 48.136101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985905, 33.933163, 48.326412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404565, 0.308477, 0.860912,
		-0.324556, 0.928544, -0.180193,
		-0.854980, -0.206515, 0.475774,
		36.729412, 33.871208, 48.469143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621418, 34.651863, 47.980965>,  <37.327896, 34.015770, 48.136101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621418, 34.651863, 47.980965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020702, 34.668510, 47.963764>,  <38.260273, 34.678501, 47.953445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020702, 34.668510, 47.963764>,  <37.621418, 34.651863, 47.980965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020702, 34.668510, 47.963764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016506, -0.499190, -0.866335,
		-0.057526, 0.865492, -0.497608,
		0.998208, 0.041623, -0.043003,
		38.320164, 34.680996, 47.950863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669563, 34.772320, 47.286800>,  <37.621418, 34.651863, 47.980965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669563, 34.772320, 47.286800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038383, 34.658726, 47.392006>,  <38.259674, 34.590569, 47.455128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038383, 34.658726, 47.392006>,  <37.669563, 34.772320, 47.286800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038383, 34.658726, 47.392006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182217, -0.281027, -0.942243,
		0.341494, 0.916721, -0.207374,
		0.922051, -0.283983, 0.263011,
		38.314999, 34.573532, 47.470909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132698, 34.941250, 46.791134>,  <37.669563, 34.772320, 47.286800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132698, 34.941250, 46.791134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328564, 34.641655, 46.969685>,  <38.446083, 34.461899, 47.076817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328564, 34.641655, 46.969685>,  <38.132698, 34.941250, 46.791134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328564, 34.641655, 46.969685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257860, -0.364660, -0.894724,
		0.832911, 0.553215, 0.014573,
		0.489661, -0.748984, 0.446381,
		38.475460, 34.416962, 47.103600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769600, 34.934513, 46.418785>,  <38.132698, 34.941250, 46.791134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769600, 34.934513, 46.418785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756908, 34.590782, 46.622963>,  <38.749294, 34.384544, 46.745468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756908, 34.590782, 46.622963>,  <38.769600, 34.934513, 46.418785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756908, 34.590782, 46.622963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133258, -0.509779, -0.849922,
		0.990573, 0.041051, 0.130688,
		-0.031732, -0.859325, 0.510444,
		38.747387, 34.332985, 46.776096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195255, 34.495640, 45.999310>,  <38.769600, 34.934513, 46.418785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195255, 34.495640, 45.999310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968880, 34.230740, 46.195736>,  <38.833054, 34.071800, 46.313591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968880, 34.230740, 46.195736>,  <39.195255, 34.495640, 45.999310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968880, 34.230740, 46.195736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064580, -0.629406, -0.774389,
		0.821916, -0.406542, 0.398971,
		-0.565937, -0.662247, 0.491064,
		38.799099, 34.032066, 46.343056>
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
