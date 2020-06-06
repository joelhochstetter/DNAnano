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
	<24.543682, 34.777153, 35.247639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293150, 34.815376, 34.938168>,  <24.142830, 34.838310, 34.752483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293150, 34.815376, 34.938168>,  <24.543682, 34.777153, 35.247639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293150, 34.815376, 34.938168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463926, 0.843270, -0.271419,
		0.626484, -0.528928, -0.572497,
		-0.626330, 0.095557, -0.773679,
		24.105251, 34.844044, 34.706062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969425, 35.367962, 35.648861>,  <24.543682, 34.777153, 35.247639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969425, 35.367962, 35.648861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813608, 35.431679, 36.011711>,  <24.720119, 35.469910, 36.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813608, 35.431679, 36.011711>,  <24.969425, 35.367962, 35.648861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813608, 35.431679, 36.011711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563324, 0.820423, 0.097835,
		-0.728646, 0.549119, -0.409321,
		-0.389540, 0.159293, 0.907130,
		24.696747, 35.479465, 36.283852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821083, 36.062115, 35.675323>,  <24.969425, 35.367962, 35.648861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821083, 36.062115, 35.675323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848888, 35.936241, 36.053982>,  <24.865572, 35.860718, 36.281178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848888, 35.936241, 36.053982>,  <24.821083, 36.062115, 35.675323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848888, 35.936241, 36.053982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463579, 0.850447, 0.248665,
		-0.883325, 0.421561, 0.204996,
		0.069511, -0.314684, 0.946648,
		24.869741, 35.841835, 36.337975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578760, 36.661953, 36.079048>,  <24.821083, 36.062115, 35.675323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578760, 36.661953, 36.079048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819626, 36.413849, 36.280113>,  <24.964146, 36.264984, 36.400753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819626, 36.413849, 36.280113>,  <24.578760, 36.661953, 36.079048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819626, 36.413849, 36.280113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542224, 0.779858, 0.312753,
		-0.585994, 0.084226, 0.805926,
		0.602166, -0.620264, 0.502661,
		25.000277, 36.227768, 36.430912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.574289, 36.734272, 36.966267>,  <24.578760, 36.661953, 36.079048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.574289, 36.734272, 36.966267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910650, 36.641277, 36.770782>,  <25.112467, 36.585480, 36.653492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910650, 36.641277, 36.770782>,  <24.574289, 36.734272, 36.966267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910650, 36.641277, 36.770782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452869, 0.796694, 0.400235,
		0.296300, -0.557878, 0.775228,
		0.840902, -0.232487, -0.488706,
		25.162920, 36.571529, 36.624172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224108, 36.855896, 37.356918>,  <24.574289, 36.734272, 36.966267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224108, 36.855896, 37.356918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387766, 36.858124, 36.991936>,  <25.485960, 36.859459, 36.772945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387766, 36.858124, 36.991936>,  <25.224108, 36.855896, 37.356918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387766, 36.858124, 36.991936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431877, 0.879700, 0.199023,
		0.803792, -0.475496, 0.357521,
		0.409146, 0.005568, -0.912452,
		25.510509, 36.859795, 36.718201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782328, 37.160885, 37.402561>,  <25.224108, 36.855896, 37.356918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782328, 37.160885, 37.402561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728659, 37.228634, 37.012012>,  <25.696457, 37.269283, 36.777683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728659, 37.228634, 37.012012>,  <25.782328, 37.160885, 37.402561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728659, 37.228634, 37.012012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357763, 0.927112, 0.111662,
		0.924123, -0.334329, -0.184989,
		-0.134173, 0.169372, -0.976376,
		25.688406, 37.279446, 36.719101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359396, 37.498108, 37.131992>,  <25.782328, 37.160885, 37.402561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359396, 37.498108, 37.131992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062677, 37.630978, 36.898960>,  <25.884645, 37.710697, 36.759140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062677, 37.630978, 36.898960>,  <26.359396, 37.498108, 37.131992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062677, 37.630978, 36.898960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100247, 0.913875, 0.393426,
		0.663089, 0.233441, -0.711210,
		-0.741798, 0.332173, -0.582578,
		25.840137, 37.730629, 36.724186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483356, 38.193626, 36.955956>,  <26.359396, 37.498108, 37.131992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483356, 38.193626, 36.955956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099846, 38.227924, 36.847588>,  <25.869740, 38.248505, 36.782566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099846, 38.227924, 36.847588>,  <26.483356, 38.193626, 36.955956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099846, 38.227924, 36.847588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024287, 0.925172, 0.378769,
		0.283121, 0.369735, -0.884951,
		-0.958777, 0.085745, -0.270915,
		25.812212, 38.253647, 36.766312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358404, 38.932991, 36.722542>,  <26.483356, 38.193626, 36.955956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358404, 38.932991, 36.722542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994967, 38.791180, 36.810871>,  <25.776903, 38.706093, 36.863869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994967, 38.791180, 36.810871>,  <26.358404, 38.932991, 36.722542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994967, 38.791180, 36.810871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261682, 0.895259, 0.360602,
		-0.325540, 0.269855, -0.906202,
		-0.908596, -0.354527, 0.220826,
		25.722387, 38.684822, 36.877117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890966, 39.466244, 36.471790>,  <26.358404, 38.932991, 36.722542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890966, 39.466244, 36.471790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697638, 39.246613, 36.744530>,  <25.581640, 39.114834, 36.908173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697638, 39.246613, 36.744530>,  <25.890966, 39.466244, 36.471790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697638, 39.246613, 36.744530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324037, 0.835745, 0.443317,
		-0.813264, -0.006677, -0.581857,
		-0.483324, -0.549077, 0.681845,
		25.552641, 39.081890, 36.949081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181141, 39.634609, 36.704334>,  <25.890966, 39.466244, 36.471790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181141, 39.634609, 36.704334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410347, 39.555473, 37.022457>,  <25.547871, 39.507992, 37.213329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410347, 39.555473, 37.022457>,  <25.181141, 39.634609, 36.704334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410347, 39.555473, 37.022457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309793, 0.846132, 0.433692,
		-0.758736, -0.494893, 0.423556,
		0.573016, -0.197843, 0.795305,
		25.582253, 39.496120, 37.261047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006454, 40.210762, 37.235409>,  <25.181141, 39.634609, 36.704334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006454, 40.210762, 37.235409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891531, 40.204247, 37.618488>,  <24.822577, 40.200336, 37.848335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891531, 40.204247, 37.618488>,  <25.006454, 40.210762, 37.235409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891531, 40.204247, 37.618488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317930, -0.944791, 0.079313,
		0.903535, 0.327269, 0.276622,
		-0.287307, -0.016284, 0.957700,
		24.805340, 40.199360, 37.905800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641048, 40.046856, 37.685757>,  <25.006454, 40.210762, 37.235409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641048, 40.046856, 37.685757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272495, 39.919537, 37.774967>,  <25.051363, 39.843147, 37.828495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272495, 39.919537, 37.774967>,  <25.641048, 40.046856, 37.685757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272495, 39.919537, 37.774967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330422, -0.943656, 0.018312,
		0.204635, 0.090566, 0.974640,
		-0.921383, -0.318295, 0.223030,
		24.996080, 39.824047, 37.841877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650957, 39.538898, 38.140537>,  <25.641048, 40.046856, 37.685757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650957, 39.538898, 38.140537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340906, 39.534286, 37.887859>,  <25.154875, 39.531517, 37.736252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340906, 39.534286, 37.887859>,  <25.650957, 39.538898, 38.140537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340906, 39.534286, 37.887859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265976, -0.912876, -0.309700,
		-0.573089, -0.408074, 0.710665,
		-0.775130, -0.011534, -0.631697,
		25.108368, 39.530827, 37.698349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341106, 38.950882, 38.209194>,  <25.650957, 39.538898, 38.140537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341106, 38.950882, 38.209194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239223, 39.062393, 37.838810>,  <25.178095, 39.129299, 37.616581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239223, 39.062393, 37.838810>,  <25.341106, 38.950882, 38.209194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239223, 39.062393, 37.838810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168546, -0.930088, -0.326387,
		-0.952217, -0.239200, 0.189912,
		-0.254707, 0.278782, -0.925962,
		25.162811, 39.146027, 37.561020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.808210, 38.501339, 37.798431>,  <25.341106, 38.950882, 38.209194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.808210, 38.501339, 37.798431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059771, 38.675301, 37.540646>,  <25.210707, 38.779678, 37.385975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059771, 38.675301, 37.540646>,  <24.808210, 38.501339, 37.798431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059771, 38.675301, 37.540646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169723, -0.885717, -0.432087,
		-0.758735, 0.162358, -0.630841,
		0.628900, 0.434908, -0.644469,
		25.248440, 38.805775, 37.347305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588577, 38.155560, 37.180225>,  <24.808210, 38.501339, 37.798431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588577, 38.155560, 37.180225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940340, 38.320236, 37.084595>,  <25.151398, 38.419041, 37.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940340, 38.320236, 37.084595>,  <24.588577, 38.155560, 37.180225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940340, 38.320236, 37.084595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282557, -0.855524, -0.433867,
		-0.383153, 0.313993, -0.868678,
		0.879406, 0.411689, -0.239075,
		25.204163, 38.443745, 37.012871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585390, 38.036499, 36.550903>,  <24.588577, 38.155560, 37.180225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585390, 38.036499, 36.550903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966642, 38.127895, 36.630238>,  <25.195393, 38.182732, 36.677837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.966642, 38.127895, 36.630238>,  <24.585390, 38.036499, 36.550903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966642, 38.127895, 36.630238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302500, -0.705997, -0.640360,
		-0.006290, 0.670343, -0.742025,
		0.953128, 0.228490, 0.198338,
		25.252581, 38.196442, 36.689739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858816, 38.238422, 35.922791>,  <24.585390, 38.036499, 36.550903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858816, 38.238422, 35.922791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123734, 38.075672, 36.174446>,  <25.282684, 37.978024, 36.325439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123734, 38.075672, 36.174446>,  <24.858816, 38.238422, 35.922791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123734, 38.075672, 36.174446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052504, -0.812434, -0.580685,
		0.747403, 0.417616, -0.516707,
		0.662293, -0.406877, 0.629142,
		25.322422, 37.953609, 36.363190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460766, 37.943710, 35.555737>,  <24.858816, 38.238422, 35.922791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460766, 37.943710, 35.555737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473646, 37.758816, 35.910206>,  <25.481375, 37.647881, 36.122887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473646, 37.758816, 35.910206>,  <25.460766, 37.943710, 35.555737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473646, 37.758816, 35.910206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059531, -0.884172, -0.463352,
		0.997707, 0.067674, -0.000952,
		0.032199, -0.462233, 0.886174,
		25.483305, 37.620148, 36.176060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472370, 37.234966, 35.454838>,  <25.460766, 37.943710, 35.555737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472370, 37.234966, 35.454838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586395, 37.266876, 35.836910>,  <25.654810, 37.286022, 36.066154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586395, 37.266876, 35.836910>,  <25.472370, 37.234966, 35.454838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586395, 37.266876, 35.836910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165715, -0.985626, 0.032858,
		0.944076, 0.148921, -0.294183,
		0.285061, 0.079771, 0.955184,
		25.671913, 37.290806, 36.123466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016342, 36.753429, 35.560135>,  <25.472370, 37.234966, 35.454838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016342, 36.753429, 35.560135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845293, 36.817947, 35.915916>,  <25.742662, 36.856659, 36.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845293, 36.817947, 35.915916>,  <26.016342, 36.753429, 35.560135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845293, 36.817947, 35.915916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396973, -0.917504, -0.024474,
		0.812127, -0.363554, 0.456375,
		-0.427624, 0.161292, 0.889451,
		25.717007, 36.866337, 36.182751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125500, 36.107430, 35.931557>,  <26.016342, 36.753429, 35.560135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125500, 36.107430, 35.931557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812183, 36.316223, 36.066605>,  <25.624193, 36.441498, 36.147633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812183, 36.316223, 36.066605>,  <26.125500, 36.107430, 35.931557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812183, 36.316223, 36.066605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564914, -0.824360, -0.036104,
		0.259477, -0.219008, 0.940589,
		-0.783291, 0.521983, 0.337623,
		25.577196, 36.472816, 36.167892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910894, 35.718708, 36.520863>,  <26.125500, 36.107430, 35.931557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910894, 35.718708, 36.520863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610634, 35.917660, 36.346905>,  <25.430477, 36.037029, 36.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610634, 35.917660, 36.346905>,  <25.910894, 35.718708, 36.520863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610634, 35.917660, 36.346905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529681, -0.846486, -0.053845,
		-0.394914, 0.189936, 0.898870,
		-0.750654, 0.497379, -0.434895,
		25.385437, 36.066872, 36.216434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453291, 35.243145, 36.220501>,  <25.910894, 35.718708, 36.520863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453291, 35.243145, 36.220501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157709, 35.088009, 36.440876>,  <25.980360, 34.994926, 36.573101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157709, 35.088009, 36.440876>,  <26.453291, 35.243145, 36.220501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157709, 35.088009, 36.440876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212886, -0.910215, -0.355230,
		0.639241, -0.145212, 0.755172,
		-0.738953, -0.387843, 0.550933,
		25.936024, 34.971657, 36.606155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755852, 34.616547, 36.623795>,  <26.453291, 35.243145, 36.220501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755852, 34.616547, 36.623795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365532, 34.625263, 36.536766>,  <26.131340, 34.630493, 36.484550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365532, 34.625263, 36.536766>,  <26.755852, 34.616547, 36.623795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365532, 34.625263, 36.536766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087603, -0.872719, -0.480299,
		-0.200345, -0.487736, 0.849691,
		-0.975801, 0.021789, -0.217572,
		26.072792, 34.631802, 36.471493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891506, 34.051254, 37.224003>,  <26.755852, 34.616547, 36.623795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891506, 34.051254, 37.224003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223835, 34.255127, 37.313412>,  <27.423233, 34.377449, 37.367058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223835, 34.255127, 37.313412>,  <26.891506, 34.051254, 37.224003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223835, 34.255127, 37.313412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352127, 0.170403, 0.920309,
		0.430974, -0.843321, 0.321047,
		0.830824, 0.509679, 0.223517,
		27.473082, 34.408031, 37.380466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242674, 33.873787, 37.957359>,  <26.891506, 34.051254, 37.224003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242674, 33.873787, 37.957359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319761, 34.252327, 37.853611>,  <27.366013, 34.479450, 37.791363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319761, 34.252327, 37.853611>,  <27.242674, 33.873787, 37.957359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319761, 34.252327, 37.853611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347514, 0.313019, 0.883886,
		0.917657, -0.080205, 0.389195,
		0.192717, 0.946354, -0.259372,
		27.377577, 34.536232, 37.775799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638569, 34.082382, 38.479099>,  <27.242674, 33.873787, 37.957359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638569, 34.082382, 38.479099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474211, 34.409386, 38.317684>,  <27.375595, 34.605587, 38.220833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474211, 34.409386, 38.317684>,  <27.638569, 34.082382, 38.479099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474211, 34.409386, 38.317684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236706, 0.331792, 0.913173,
		0.880418, 0.470739, 0.057178,
		-0.410895, 0.817508, -0.403542,
		27.350943, 34.654636, 38.196621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890394, 34.725803, 38.717686>,  <27.638569, 34.082382, 38.479099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890394, 34.725803, 38.717686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508368, 34.794258, 38.620888>,  <27.279152, 34.835331, 38.562809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508368, 34.794258, 38.620888>,  <27.890394, 34.725803, 38.717686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508368, 34.794258, 38.620888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133367, 0.481024, 0.866504,
		0.264696, 0.859842, -0.436586,
		-0.955065, 0.171135, -0.242000,
		27.221848, 34.845600, 38.548286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003962, 35.471455, 38.773521>,  <27.890394, 34.725803, 38.717686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003962, 35.471455, 38.773521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615425, 35.383896, 38.736473>,  <27.382303, 35.331360, 38.714245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615425, 35.383896, 38.736473>,  <28.003962, 35.471455, 38.773521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615425, 35.383896, 38.736473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204001, 0.567822, 0.797472,
		-0.121971, 0.793514, -0.596204,
		-0.971343, -0.218894, -0.092620,
		27.324022, 35.318226, 38.708687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639317, 36.005741, 38.910538>,  <28.003962, 35.471455, 38.773521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639317, 36.005741, 38.910538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356508, 35.735126, 38.992924>,  <27.186823, 35.572758, 39.042355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356508, 35.735126, 38.992924>,  <27.639317, 36.005741, 38.910538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356508, 35.735126, 38.992924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142860, 0.421872, 0.895330,
		-0.692613, 0.603592, -0.394922,
		-0.707020, -0.676536, 0.205965,
		27.144402, 35.532166, 39.054714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134212, 36.347984, 39.346493>,  <27.639317, 36.005741, 38.910538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134212, 36.347984, 39.346493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067778, 35.961521, 39.425434>,  <27.027916, 35.729641, 39.472797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067778, 35.961521, 39.425434>,  <27.134212, 36.347984, 39.346493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067778, 35.961521, 39.425434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074743, 0.211891, 0.974431,
		-0.983274, 0.147091, -0.107407,
		-0.166089, -0.966161, 0.197353,
		27.017950, 35.671673, 39.484638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526747, 36.191368, 39.653881>,  <27.134212, 36.347984, 39.346493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526747, 36.191368, 39.653881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788700, 35.913666, 39.773300>,  <26.945873, 35.747044, 39.844952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788700, 35.913666, 39.773300>,  <26.526747, 36.191368, 39.653881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788700, 35.913666, 39.773300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261748, 0.162229, 0.951404,
		-0.708953, -0.701205, -0.075480,
		0.654885, -0.694257, 0.298552,
		26.985165, 35.705387, 39.862865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307814, 35.577946, 40.112926>,  <26.526747, 36.191368, 39.653881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307814, 35.577946, 40.112926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680622, 35.677574, 40.218227>,  <26.904308, 35.737350, 40.281406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680622, 35.677574, 40.218227>,  <26.307814, 35.577946, 40.112926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680622, 35.677574, 40.218227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287956, 0.067924, 0.955232,
		0.220039, -0.966100, 0.135028,
		0.932021, 0.249070, 0.263249,
		26.960228, 35.752296, 40.297203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684372, 35.196083, 40.771595>,  <26.307814, 35.577946, 40.112926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684372, 35.196083, 40.771595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831549, 35.564499, 40.720520>,  <26.919855, 35.785549, 40.689877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831549, 35.564499, 40.720520>,  <26.684372, 35.196083, 40.771595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831549, 35.564499, 40.720520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227774, 0.222411, 0.947973,
		0.901520, -0.319715, 0.291623,
		0.367941, 0.921041, -0.127686,
		26.941931, 35.840813, 40.682213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223612, 35.207340, 41.221558>,  <26.684372, 35.196083, 40.771595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223612, 35.207340, 41.221558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083551, 35.577869, 41.165947>,  <26.999516, 35.800186, 41.132580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083551, 35.577869, 41.165947>,  <27.223612, 35.207340, 41.221558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083551, 35.577869, 41.165947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032100, 0.160204, 0.986562,
		0.936144, 0.340981, -0.085830,
		-0.350150, 0.926319, -0.139028,
		26.978506, 35.855766, 41.124237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879063, 35.737377, 41.619850>,  <27.223612, 35.207340, 41.221558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879063, 35.737377, 41.619850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865915, 35.419643, 41.862488>,  <26.858027, 35.229004, 42.008072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865915, 35.419643, 41.862488>,  <26.879063, 35.737377, 41.619850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865915, 35.419643, 41.862488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998748, 0.003207, -0.049915,
		0.037704, -0.607476, -0.793443,
		-0.032867, -0.794331, 0.606595,
		26.856054, 35.181343, 42.044468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504099, 36.401981, 41.631092>,  <26.879063, 35.737377, 41.619850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504099, 36.401981, 41.631092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782061, 36.438759, 41.916370>,  <26.948837, 36.460823, 42.087540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782061, 36.438759, 41.916370>,  <26.504099, 36.401981, 41.631092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782061, 36.438759, 41.916370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690973, -0.360049, -0.626834,
		0.199154, 0.928392, -0.313729,
		0.694905, 0.091942, 0.713199,
		26.990532, 36.466343, 42.130329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099922, 36.845985, 41.343685>,  <26.504099, 36.401981, 41.631092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099922, 36.845985, 41.343685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193563, 36.574169, 41.621799>,  <27.249748, 36.411079, 41.788666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193563, 36.574169, 41.621799>,  <27.099922, 36.845985, 41.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193563, 36.574169, 41.621799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604780, -0.458153, -0.651412,
		0.761208, 0.572989, 0.303720,
		0.234102, -0.679544, 0.695282,
		27.263794, 36.370308, 41.830383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784454, 36.837692, 41.379967>,  <27.099922, 36.845985, 41.343685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784454, 36.837692, 41.379967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652889, 36.486649, 41.519459>,  <27.573950, 36.276020, 41.603153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652889, 36.486649, 41.519459>,  <27.784454, 36.837692, 41.379967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652889, 36.486649, 41.519459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447591, -0.470038, -0.760741,
		0.831552, -0.094130, 0.547414,
		-0.328914, -0.877612, 0.348729,
		27.554214, 36.223366, 41.624077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797474, 36.352364, 40.920727>,  <27.784454, 36.837692, 41.379967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797474, 36.352364, 40.920727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556757, 36.108082, 40.714863>,  <27.412327, 35.961514, 40.591343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556757, 36.108082, 40.714863>,  <27.797474, 36.352364, 40.920727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556757, 36.108082, 40.714863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738778, 0.180872, 0.649225,
		-0.303399, 0.770922, -0.560025,
		-0.601794, -0.610708, -0.514664,
		27.376219, 35.924870, 40.560463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816584, 35.768841, 40.407906>,  <27.797474, 36.352364, 40.920727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816584, 35.768841, 40.407906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475288, 35.604366, 40.536224>,  <27.270512, 35.505680, 40.613216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475288, 35.604366, 40.536224>,  <27.816584, 35.768841, 40.407906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475288, 35.604366, 40.536224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105478, -0.466350, -0.878289,
		0.510744, -0.783227, 0.354537,
		-0.853238, -0.411185, 0.320799,
		27.219316, 35.481010, 40.632465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836843, 35.052948, 40.391930>,  <27.816584, 35.768841, 40.407906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836843, 35.052948, 40.391930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474689, 35.214478, 40.339470>,  <27.257397, 35.311394, 40.307995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474689, 35.214478, 40.339470>,  <27.836843, 35.052948, 40.391930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474689, 35.214478, 40.339470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038108, -0.384937, -0.922156,
		-0.422877, -0.829909, 0.363905,
		-0.905385, 0.403826, -0.131155,
		27.203074, 35.335625, 40.300125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460262, 34.561222, 40.008770>,  <27.836843, 35.052948, 40.391930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460262, 34.561222, 40.008770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260788, 34.904522, 39.960243>,  <27.141104, 35.110500, 39.931126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260788, 34.904522, 39.960243>,  <27.460262, 34.561222, 40.008770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260788, 34.904522, 39.960243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277626, -0.290746, -0.915637,
		-0.821120, -0.422932, 0.383264,
		-0.498685, 0.858251, -0.121320,
		27.111183, 35.161999, 39.923847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878880, 34.379333, 39.630386>,  <27.460262, 34.561222, 40.008770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878880, 34.379333, 39.630386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899582, 34.776958, 39.592098>,  <26.912003, 35.015533, 39.569126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899582, 34.776958, 39.592098>,  <26.878880, 34.379333, 39.630386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899582, 34.776958, 39.592098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297191, -0.076174, -0.951774,
		-0.953414, 0.077708, 0.291484,
		0.051756, 0.994062, -0.095720,
		26.915110, 35.075176, 39.563381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243158, 34.651985, 39.280975>,  <26.878880, 34.379333, 39.630386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243158, 34.651985, 39.280975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540928, 34.910164, 39.212582>,  <26.719589, 35.065071, 39.171543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540928, 34.910164, 39.212582>,  <26.243158, 34.651985, 39.280975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540928, 34.910164, 39.212582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161744, -0.074141, -0.984044,
		-0.647823, 0.760200, 0.049204,
		0.744422, 0.645445, -0.170989,
		26.764254, 35.103798, 39.161285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085495, 34.960392, 38.644527>,  <26.243158, 34.651985, 39.280975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085495, 34.960392, 38.644527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471420, 35.060616, 38.676411>,  <26.702976, 35.120750, 38.695541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471420, 35.060616, 38.676411>,  <26.085495, 34.960392, 38.644527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471420, 35.060616, 38.676411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129093, -0.187303, -0.973783,
		-0.229059, 0.949809, -0.213058,
		0.964814, 0.250558, 0.079710,
		26.760864, 35.135784, 38.700325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189137, 35.388756, 38.033432>,  <26.085495, 34.960392, 38.644527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189137, 35.388756, 38.033432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536718, 35.249332, 38.173958>,  <26.745268, 35.165680, 38.258274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536718, 35.249332, 38.173958>,  <26.189137, 35.388756, 38.033432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536718, 35.249332, 38.173958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293160, -0.209392, -0.932851,
		0.398715, 0.913599, -0.079769,
		0.868955, -0.348557, 0.351319,
		26.797405, 35.144764, 38.279354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683849, 35.697056, 37.635971>,  <26.189137, 35.388756, 38.033432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683849, 35.697056, 37.635971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876986, 35.392361, 37.808769>,  <26.992868, 35.209545, 37.912449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876986, 35.392361, 37.808769>,  <26.683849, 35.697056, 37.635971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876986, 35.392361, 37.808769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456170, -0.202304, -0.866592,
		0.747511, 0.615489, 0.249801,
		0.482842, -0.761739, 0.431992,
		27.021839, 35.163837, 37.938366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496161, 35.759781, 37.564686>,  <26.683849, 35.697056, 37.635971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496161, 35.759781, 37.564686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384508, 35.377762, 37.604633>,  <27.317516, 35.148552, 37.628601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384508, 35.377762, 37.604633>,  <27.496161, 35.759781, 37.564686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384508, 35.377762, 37.604633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575931, -0.249727, -0.778421,
		0.768368, -0.159763, 0.619747,
		-0.279130, -0.955046, 0.099870,
		27.300770, 35.091248, 37.634594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134079, 35.267162, 37.733444>,  <27.496161, 35.759781, 37.564686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134079, 35.267162, 37.733444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826569, 35.134693, 37.514610>,  <27.642063, 35.055210, 37.383308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826569, 35.134693, 37.514610>,  <28.134079, 35.267162, 37.733444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826569, 35.134693, 37.514610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627065, -0.222364, -0.746555,
		0.125589, -0.916993, 0.378617,
		-0.768776, -0.331176, -0.547088,
		27.595936, 35.035339, 37.350483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197878, 34.505440, 37.456615>,  <28.134079, 35.267162, 37.733444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197878, 34.505440, 37.456615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998692, 34.742779, 37.203644>,  <27.879179, 34.885181, 37.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998692, 34.742779, 37.203644>,  <28.197878, 34.505440, 37.456615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998692, 34.742779, 37.203644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685034, -0.178038, -0.706421,
		-0.531751, -0.785009, -0.317807,
		-0.497966, 0.593349, -0.632430,
		27.849302, 34.920784, 37.013916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680387, 34.421505, 36.928204>,  <28.197878, 34.505440, 37.456615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680387, 34.421505, 36.928204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409206, 34.633007, 36.723930>,  <28.246498, 34.759911, 36.601368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409206, 34.633007, 36.723930>,  <28.680387, 34.421505, 36.928204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409206, 34.633007, 36.723930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511242, -0.160040, -0.844404,
		-0.528215, -0.833548, -0.161823,
		-0.677953, 0.528758, -0.510680,
		28.205820, 34.791634, 36.570724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384014, 33.887444, 36.438793>,  <28.680387, 34.421505, 36.928204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384014, 33.887444, 36.438793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414635, 34.276718, 36.352024>,  <28.433006, 34.510281, 36.299961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414635, 34.276718, 36.352024>,  <28.384014, 33.887444, 36.438793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414635, 34.276718, 36.352024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655556, -0.213051, -0.724469,
		-0.751257, -0.086745, -0.654285,
		0.076552, 0.973183, -0.216922,
		28.437601, 34.568672, 36.286949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231131, 34.111481, 35.733616>,  <28.384014, 33.887444, 36.438793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231131, 34.111481, 35.733616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511778, 34.358387, 35.876007>,  <28.680166, 34.506531, 35.961441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511778, 34.358387, 35.876007>,  <28.231131, 34.111481, 35.733616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511778, 34.358387, 35.876007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645205, -0.338326, -0.685016,
		-0.302398, 0.710297, -0.635636,
		0.701617, 0.617263, 0.355978,
		28.722263, 34.543568, 35.982800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394758, 34.602791, 35.271187>,  <28.231131, 34.111481, 35.733616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394758, 34.602791, 35.271187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728571, 34.503109, 35.467739>,  <28.928858, 34.443298, 35.585670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728571, 34.503109, 35.467739>,  <28.394758, 34.602791, 35.271187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728571, 34.503109, 35.467739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497227, -0.043516, -0.866529,
		0.237325, 0.967473, 0.087595,
		0.834531, -0.249204, 0.491381,
		28.978930, 34.428349, 35.615154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096695, 34.916187, 35.141483>,  <28.394758, 34.602791, 35.271187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096695, 34.916187, 35.141483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086975, 35.163979, 34.827629>,  <29.081142, 35.312653, 34.639317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086975, 35.163979, 34.827629>,  <29.096695, 34.916187, 35.141483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086975, 35.163979, 34.827629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989962, -0.094396, -0.105187,
		-0.139227, -0.779315, -0.610970,
		-0.024301, 0.619482, -0.784635,
		29.079685, 35.349823, 34.592239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414139, 34.659519, 34.509781>,  <29.096695, 34.916187, 35.141483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414139, 34.659519, 34.509781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434931, 35.058815, 34.498379>,  <29.447407, 35.298393, 34.491539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434931, 35.058815, 34.498379>,  <29.414139, 34.659519, 34.509781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434931, 35.058815, 34.498379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995838, -0.053952, -0.073463,
		-0.074872, -0.024564, -0.996891,
		0.051980, 0.998241, -0.028501,
		29.450525, 35.358288, 34.489830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806494, 34.901875, 33.986130>,  <29.414139, 34.659519, 34.509781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806494, 34.901875, 33.986130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866310, 35.208797, 34.235569>,  <29.902201, 35.392952, 34.385235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866310, 35.208797, 34.235569>,  <29.806494, 34.901875, 33.986130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866310, 35.208797, 34.235569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909007, 0.141460, -0.392039,
		-0.389029, 0.625485, -0.676332,
		0.149541, 0.767305, 0.623602,
		29.911173, 35.438988, 34.422649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987558, 35.471054, 33.615673>,  <29.806494, 34.901875, 33.986130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987558, 35.471054, 33.615673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153942, 35.487259, 33.979065>,  <30.253773, 35.496983, 34.197102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153942, 35.487259, 33.979065>,  <29.987558, 35.471054, 33.615673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153942, 35.487259, 33.979065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862559, 0.298853, -0.408263,
		-0.288041, 0.953439, 0.089367,
		0.415962, 0.040512, 0.908479,
		30.278730, 35.499413, 34.251610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502621, 36.030659, 33.669579>,  <29.987558, 35.471054, 33.615673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502621, 36.030659, 33.669579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625242, 35.807537, 33.978092>,  <30.698814, 35.673664, 34.163200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625242, 35.807537, 33.978092>,  <30.502621, 36.030659, 33.669579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625242, 35.807537, 33.978092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945281, 0.083347, -0.315431,
		0.111663, 0.825779, 0.552828,
		0.306553, -0.557801, 0.771287,
		30.717209, 35.640198, 34.209476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117376, 36.377434, 33.693996>,  <30.502621, 36.030659, 33.669579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117376, 36.377434, 33.693996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131609, 36.098022, 33.408115>,  <31.140148, 35.930378, 33.236588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131609, 36.098022, 33.408115>,  <31.117376, 36.377434, 33.693996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131609, 36.098022, 33.408115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067691, 0.711825, -0.699087,
		0.997072, 0.073254, -0.021956,
		0.035581, -0.698526, -0.714699,
		31.142282, 35.888466, 33.193707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215593, 36.750885, 33.110741>,  <31.117376, 36.377434, 33.693996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215593, 36.750885, 33.110741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132219, 36.387905, 32.964821>,  <31.082195, 36.170116, 32.877270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132219, 36.387905, 32.964821>,  <31.215593, 36.750885, 33.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132219, 36.387905, 32.964821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181761, 0.402439, -0.897221,
		0.960998, -0.120706, -0.248822,
		-0.208435, -0.907454, -0.364804,
		31.069689, 36.115669, 32.855381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545755, 36.697403, 32.402142>,  <31.215593, 36.750885, 33.110741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545755, 36.697403, 32.402142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215240, 36.476452, 32.446194>,  <31.016932, 36.343880, 32.472626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215240, 36.476452, 32.446194>,  <31.545755, 36.697403, 32.402142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215240, 36.476452, 32.446194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358106, 0.364278, -0.859687,
		0.434755, -0.749786, -0.498808,
		-0.826286, -0.552379, 0.110131,
		30.967354, 36.310738, 32.479233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399641, 36.130127, 31.828325>,  <31.545755, 36.697403, 32.402142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399641, 36.130127, 31.828325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091146, 36.327538, 31.989138>,  <30.906050, 36.445984, 32.085625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091146, 36.327538, 31.989138>,  <31.399641, 36.130127, 31.828325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091146, 36.327538, 31.989138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256381, 0.337250, -0.905832,
		-0.582636, -0.801683, -0.133569,
		-0.771235, 0.493526, 0.402030,
		30.859776, 36.475594, 32.109745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609566, 35.835575, 31.627169>,  <31.399641, 36.130127, 31.828325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609566, 35.835575, 31.627169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645386, 36.228310, 31.694078>,  <30.666878, 36.463951, 31.734224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645386, 36.228310, 31.694078>,  <30.609566, 35.835575, 31.627169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645386, 36.228310, 31.694078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337783, 0.187937, -0.922270,
		-0.936954, 0.026086, 0.348477,
		0.089550, 0.981835, 0.167276,
		30.672251, 36.522861, 31.744261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086573, 36.167728, 31.217699>,  <30.609566, 35.835575, 31.627169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086573, 36.167728, 31.217699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328541, 36.480999, 31.275251>,  <30.473722, 36.668961, 31.309784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328541, 36.480999, 31.275251>,  <30.086573, 36.167728, 31.217699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328541, 36.480999, 31.275251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250445, 0.358649, -0.899248,
		-0.755875, 0.507940, 0.413098,
		0.604922, 0.783178, 0.143883,
		30.510017, 36.715954, 31.318417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634212, 36.642506, 31.077835>,  <30.086573, 36.167728, 31.217699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634212, 36.642506, 31.077835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010290, 36.774166, 31.042751>,  <30.235937, 36.853161, 31.021700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010290, 36.774166, 31.042751>,  <29.634212, 36.642506, 31.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010290, 36.774166, 31.042751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213887, 0.370042, -0.904058,
		-0.265114, 0.868752, 0.418313,
		0.940195, 0.329150, -0.087712,
		30.292349, 36.872910, 31.016438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557278, 37.204140, 30.660486>,  <29.634212, 36.642506, 31.077835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557278, 37.204140, 30.660486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955648, 37.192921, 30.626198>,  <30.194670, 37.186192, 30.605625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955648, 37.192921, 30.626198>,  <29.557278, 37.204140, 30.660486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955648, 37.192921, 30.626198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066248, 0.417460, -0.906277,
		0.061201, 0.908263, 0.413900,
		0.995924, -0.028045, -0.085720,
		30.254425, 37.184505, 30.600481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874512, 37.892338, 30.516705>,  <29.557278, 37.204140, 30.660486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874512, 37.892338, 30.516705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118162, 37.603912, 30.384628>,  <30.264353, 37.430855, 30.305382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118162, 37.603912, 30.384628>,  <29.874512, 37.892338, 30.516705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118162, 37.603912, 30.384628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031748, 0.438180, -0.898326,
		0.792437, 0.536711, 0.289800,
		0.609127, -0.721068, -0.330191,
		30.300900, 37.387592, 30.285572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402590, 38.256279, 30.191996>,  <29.874512, 37.892338, 30.516705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402590, 38.256279, 30.191996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441126, 37.882320, 30.055353>,  <30.464247, 37.657948, 29.973368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441126, 37.882320, 30.055353>,  <30.402590, 38.256279, 30.191996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441126, 37.882320, 30.055353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189186, 0.354144, -0.915855,
		0.977204, 0.023605, 0.210986,
		0.096338, -0.934893, -0.341605,
		30.470028, 37.601852, 29.952871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812487, 38.285873, 29.621784>,  <30.402590, 38.256279, 30.191996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812487, 38.285873, 29.621784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642801, 37.928703, 29.561487>,  <30.540991, 37.714401, 29.525309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642801, 37.928703, 29.561487>,  <30.812487, 38.285873, 29.621784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642801, 37.928703, 29.561487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013513, 0.172689, -0.984884,
		0.905462, -0.415762, -0.085323,
		-0.424212, -0.892928, -0.150745,
		30.515537, 37.660824, 29.516264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256271, 37.912674, 29.141541>,  <30.812487, 38.285873, 29.621784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256271, 37.912674, 29.141541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879211, 37.780193, 29.124971>,  <30.652975, 37.700706, 29.115030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879211, 37.780193, 29.124971>,  <31.256271, 37.912674, 29.141541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879211, 37.780193, 29.124971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045007, 0.249089, -0.967434,
		0.330737, -0.910087, -0.249710,
		-0.942649, -0.331205, -0.041423,
		30.596416, 37.680832, 29.112545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179203, 37.648987, 28.500076>,  <31.256271, 37.912674, 29.141541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179203, 37.648987, 28.500076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789534, 37.656601, 28.590078>,  <30.555733, 37.661167, 28.644079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789534, 37.656601, 28.590078>,  <31.179203, 37.648987, 28.500076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789534, 37.656601, 28.590078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216617, 0.202624, -0.954998,
		-0.063766, -0.979072, -0.193268,
		-0.974172, 0.019032, 0.225004,
		30.497282, 37.662312, 28.657579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876570, 37.303844, 27.972538>,  <31.179203, 37.648987, 28.500076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876570, 37.303844, 27.972538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561796, 37.504478, 28.116283>,  <30.372932, 37.624859, 28.202530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561796, 37.504478, 28.116283>,  <30.876570, 37.303844, 27.972538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561796, 37.504478, 28.116283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375220, 0.073345, -0.924030,
		-0.489840, -0.861992, 0.130488,
		-0.786935, 0.501588, 0.359364,
		30.325716, 37.654953, 28.224092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191441, 36.896603, 27.720896>,  <30.876570, 37.303844, 27.972538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191441, 36.896603, 27.720896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090473, 37.264751, 27.840359>,  <30.029892, 37.485641, 27.912037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090473, 37.264751, 27.840359>,  <30.191441, 36.896603, 27.720896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090473, 37.264751, 27.840359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614270, 0.086065, -0.784389,
		-0.747635, -0.381451, 0.543633,
		-0.252418, 0.920374, 0.298659,
		30.014748, 37.540863, 27.929956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537012, 37.022446, 27.470705>,  <30.191441, 36.896603, 27.720896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537012, 37.022446, 27.470705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643894, 37.404339, 27.523003>,  <29.708023, 37.633472, 27.554380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643894, 37.404339, 27.523003>,  <29.537012, 37.022446, 27.470705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643894, 37.404339, 27.523003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423742, 0.238265, -0.873883,
		-0.865474, 0.178104, 0.468225,
		0.267204, 0.954730, 0.130742,
		29.724056, 37.690758, 27.562225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061174, 37.386703, 27.141987>,  <29.537012, 37.022446, 27.470705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061174, 37.386703, 27.141987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334410, 37.676788, 27.176538>,  <29.498350, 37.850838, 27.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334410, 37.676788, 27.176538>,  <29.061174, 37.386703, 27.141987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334410, 37.676788, 27.176538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347446, 0.426718, -0.834981,
		-0.642395, 0.540354, 0.543458,
		0.683089, 0.725209, 0.086378,
		29.539337, 37.894352, 27.202452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678036, 37.970417, 27.095657>,  <29.061174, 37.386703, 27.141987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678036, 37.970417, 27.095657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056686, 38.069462, 27.013107>,  <29.283876, 38.128887, 26.963577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056686, 38.069462, 27.013107>,  <28.678036, 37.970417, 27.095657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056686, 38.069462, 27.013107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319803, 0.641366, -0.697406,
		-0.040322, 0.726182, 0.686319,
		0.946626, 0.247608, -0.206374,
		29.340673, 38.143745, 26.951195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729443, 38.667191, 27.002121>,  <28.678036, 37.970417, 27.095657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729443, 38.667191, 27.002121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053528, 38.565376, 26.790926>,  <29.247978, 38.504288, 26.664209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053528, 38.565376, 26.790926>,  <28.729443, 38.667191, 27.002121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053528, 38.565376, 26.790926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280398, 0.622712, -0.730484,
		0.514718, 0.739892, 0.433157,
		0.810211, -0.254537, -0.527986,
		29.296591, 38.489014, 26.632530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993790, 39.283241, 26.826824>,  <28.729443, 38.667191, 27.002121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993790, 39.283241, 26.826824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158792, 39.018684, 26.576258>,  <29.257793, 38.859951, 26.425919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158792, 39.018684, 26.576258>,  <28.993790, 39.283241, 26.826824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158792, 39.018684, 26.576258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074576, 0.660820, -0.746831,
		0.907897, 0.354787, 0.223268,
		0.412506, -0.661395, -0.626415,
		29.282545, 38.820267, 26.388332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349865, 39.669754, 26.395643>,  <28.993790, 39.283241, 26.826824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349865, 39.669754, 26.395643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344606, 39.340935, 26.167938>,  <29.341452, 39.143642, 26.031315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344606, 39.340935, 26.167938>,  <29.349865, 39.669754, 26.395643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344606, 39.340935, 26.167938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069780, 0.568679, -0.819594,
		0.997476, 0.028949, -0.064838,
		-0.013145, -0.822050, -0.569264,
		29.340662, 39.094318, 25.997160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771387, 39.806553, 25.818342>,  <29.349865, 39.669754, 26.395643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771387, 39.806553, 25.818342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536070, 39.512630, 25.683304>,  <29.394878, 39.336277, 25.602282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536070, 39.512630, 25.683304>,  <29.771387, 39.806553, 25.818342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536070, 39.512630, 25.683304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041682, 0.444480, -0.894818,
		0.807572, -0.512345, -0.292113,
		-0.588295, -0.734806, -0.337594,
		29.359581, 39.292191, 25.582026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998573, 39.607872, 25.059662>,  <29.771387, 39.806553, 25.818342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998573, 39.607872, 25.059662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624868, 39.475445, 25.112648>,  <29.400644, 39.395988, 25.144440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624868, 39.475445, 25.112648>,  <29.998573, 39.607872, 25.059662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624868, 39.475445, 25.112648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224732, 0.258252, -0.939575,
		0.276848, -0.907581, -0.315676,
		-0.934265, -0.331062, 0.132466,
		29.344589, 39.376125, 25.152388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799696, 39.237251, 24.492075>,  <29.998573, 39.607872, 25.059662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799696, 39.237251, 24.492075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432362, 39.306519, 24.634438>,  <29.211960, 39.348080, 24.719854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432362, 39.306519, 24.634438>,  <29.799696, 39.237251, 24.492075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432362, 39.306519, 24.634438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337052, 0.129250, -0.932572,
		-0.207490, -0.976375, -0.060329,
		-0.918338, 0.173165, 0.355907,
		29.156860, 39.358467, 24.741209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243580, 38.761284, 24.124342>,  <29.799696, 39.237251, 24.492075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243580, 38.761284, 24.124342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079849, 39.094997, 24.272081>,  <28.981611, 39.295227, 24.360725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079849, 39.094997, 24.272081>,  <29.243580, 38.761284, 24.124342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079849, 39.094997, 24.272081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526801, 0.114410, -0.842254,
		-0.744938, -0.539328, 0.392673,
		-0.409325, 0.834287, 0.369346,
		28.957052, 39.345284, 24.382885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566298, 38.724308, 23.887102>,  <29.243580, 38.761284, 24.124342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566298, 38.724308, 23.887102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611345, 39.107250, 23.993526>,  <28.638374, 39.337017, 24.057381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611345, 39.107250, 23.993526>,  <28.566298, 38.724308, 23.887102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611345, 39.107250, 23.993526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413316, 0.288638, -0.863631,
		-0.903596, -0.012705, 0.428196,
		0.112621, 0.957354, 0.266063,
		28.645132, 39.394455, 24.073345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895672, 39.056004, 23.795059>,  <28.566298, 38.724308, 23.887102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895672, 39.056004, 23.795059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168564, 39.348438, 23.798359>,  <28.332298, 39.523899, 23.800339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168564, 39.348438, 23.798359>,  <27.895672, 39.056004, 23.795059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168564, 39.348438, 23.798359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457692, 0.435850, -0.774954,
		-0.570158, 0.524920, 0.631964,
		0.682230, 0.731091, 0.008252,
		28.373234, 39.567764, 23.800835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616962, 39.579277, 23.436790>,  <27.895672, 39.056004, 23.795059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616962, 39.579277, 23.436790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984760, 39.736454, 23.432329>,  <28.205439, 39.830761, 23.429653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984760, 39.736454, 23.432329>,  <27.616962, 39.579277, 23.436790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984760, 39.736454, 23.432329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236648, 0.530657, -0.813881,
		-0.313890, 0.750998, 0.580925,
		0.919495, 0.392944, -0.011154,
		28.260609, 39.854336, 23.428984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446857, 40.343018, 23.283646>,  <27.616962, 39.579277, 23.436790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446857, 40.343018, 23.283646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830976, 40.272732, 23.196966>,  <28.061447, 40.230560, 23.144958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830976, 40.272732, 23.196966>,  <27.446857, 40.343018, 23.283646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830976, 40.272732, 23.196966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141532, 0.362530, -0.921162,
		0.240417, 0.915258, 0.323268,
		0.960296, -0.175710, -0.216697,
		28.119064, 40.220020, 23.131956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667229, 40.952229, 22.978689>,  <27.446857, 40.343018, 23.283646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667229, 40.952229, 22.978689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940838, 40.681282, 22.870399>,  <28.105003, 40.518715, 22.805426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940838, 40.681282, 22.870399>,  <27.667229, 40.952229, 22.978689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940838, 40.681282, 22.870399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039821, 0.335905, -0.941054,
		0.728372, 0.654484, 0.202793,
		0.684024, -0.677362, -0.270726,
		28.146046, 40.478073, 22.789181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112225, 41.314484, 22.589025>,  <27.667229, 40.952229, 22.978689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112225, 41.314484, 22.589025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181072, 40.940342, 22.465427>,  <28.222382, 40.715855, 22.391268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181072, 40.940342, 22.465427>,  <28.112225, 41.314484, 22.589025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181072, 40.940342, 22.465427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026198, 0.309221, -0.950629,
		0.984727, 0.171719, 0.028719,
		0.172121, -0.935358, -0.308997,
		28.232708, 40.659733, 22.372728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590061, 41.436722, 22.005838>,  <28.112225, 41.314484, 22.589025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590061, 41.436722, 22.005838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473427, 41.057659, 21.953814>,  <28.403446, 40.830219, 21.922598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473427, 41.057659, 21.953814>,  <28.590061, 41.436722, 22.005838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473427, 41.057659, 21.953814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085935, 0.109468, -0.990269,
		0.952677, -0.299924, 0.049518,
		-0.291585, -0.947661, -0.130062,
		28.385952, 40.773361, 21.914795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141203, 41.029144, 21.727663>,  <28.590061, 41.436722, 22.005838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141203, 41.029144, 21.727663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783821, 40.878742, 21.629391>,  <28.569393, 40.788502, 21.570427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783821, 40.878742, 21.629391>,  <29.141203, 41.029144, 21.727663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783821, 40.878742, 21.629391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254134, 0.027815, -0.966769,
		0.370349, -0.926198, 0.070705,
		-0.893452, -0.376010, -0.245680,
		28.515785, 40.765938, 21.555687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347731, 40.578560, 21.179579>,  <29.141203, 41.029144, 21.727663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347731, 40.578560, 21.179579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952534, 40.634968, 21.154314>,  <28.715416, 40.668812, 21.139156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952534, 40.634968, 21.154314>,  <29.347731, 40.578560, 21.179579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952534, 40.634968, 21.154314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068112, 0.030566, -0.997209,
		-0.138694, -0.989535, -0.039804,
		-0.987990, 0.141018, -0.063160,
		28.656137, 40.677273, 21.135366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101509, 40.155331, 20.615799>,  <29.347731, 40.578560, 21.179579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101509, 40.155331, 20.615799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807909, 40.419910, 20.677420>,  <28.631748, 40.578659, 20.714392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807909, 40.419910, 20.677420>,  <29.101509, 40.155331, 20.615799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807909, 40.419910, 20.677420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088357, 0.131901, -0.987317,
		-0.673378, -0.738302, -0.038372,
		-0.734000, 0.661447, 0.154054,
		28.587709, 40.618343, 20.723637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517412, 40.024181, 20.126293>,  <29.101509, 40.155331, 20.615799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517412, 40.024181, 20.126293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511683, 40.408363, 20.237518>,  <28.508244, 40.638874, 20.304253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511683, 40.408363, 20.237518>,  <28.517412, 40.024181, 20.126293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511683, 40.408363, 20.237518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123873, 0.274243, -0.953649,
		-0.992195, -0.048105, 0.115046,
		-0.014325, 0.960456, 0.278062,
		28.507385, 40.696499, 20.320936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956131, 40.291615, 19.734280>,  <28.517412, 40.024181, 20.126293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956131, 40.291615, 19.734280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118267, 40.645905, 19.824783>,  <28.215549, 40.858479, 19.879086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118267, 40.645905, 19.824783>,  <27.956131, 40.291615, 19.734280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118267, 40.645905, 19.824783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407272, 0.396550, -0.822725,
		-0.818430, 0.241336, 0.521469,
		0.405342, 0.885723, 0.226259,
		28.239870, 40.911621, 19.892660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529903, 40.839928, 19.425991>,  <27.956131, 40.291615, 19.734280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529903, 40.839928, 19.425991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840263, 41.069904, 19.529850>,  <28.026480, 41.207890, 19.592165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840263, 41.069904, 19.529850>,  <27.529903, 40.839928, 19.425991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840263, 41.069904, 19.529850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254261, 0.661674, -0.705365,
		-0.577346, 0.481276, 0.659580,
		0.775901, 0.574945, 0.259645,
		28.073034, 41.242386, 19.607744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299788, 41.569981, 19.500128>,  <27.529903, 40.839928, 19.425991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299788, 41.569981, 19.500128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696148, 41.580509, 19.447330>,  <27.933964, 41.586826, 19.415651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696148, 41.580509, 19.447330>,  <27.299788, 41.569981, 19.500128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696148, 41.580509, 19.447330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105128, 0.763758, -0.636884,
		0.084045, 0.644965, 0.759576,
		0.990901, 0.026325, -0.131994,
		27.993418, 41.588406, 19.407732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453449, 42.196606, 19.548616>,  <27.299788, 41.569981, 19.500128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453449, 42.196606, 19.548616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750004, 42.026409, 19.341040>,  <27.927937, 41.924290, 19.216494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750004, 42.026409, 19.341040>,  <27.453449, 42.196606, 19.548616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750004, 42.026409, 19.341040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166181, 0.632803, -0.756270,
		0.650175, 0.646927, 0.398444,
		0.741388, -0.425494, -0.518940,
		27.972420, 41.898762, 19.185358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861038, 42.747986, 19.397921>,  <27.453449, 42.196606, 19.548616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861038, 42.747986, 19.397921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951807, 42.455959, 19.140079>,  <28.006269, 42.280743, 18.985374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951807, 42.455959, 19.140079>,  <27.861038, 42.747986, 19.397921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951807, 42.455959, 19.140079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103566, 0.640029, -0.761339,
		0.968390, 0.239525, 0.069628,
		0.226924, -0.730062, -0.644605,
		28.019884, 42.236942, 18.946697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301464, 43.048973, 18.888269>,  <27.861038, 42.747986, 19.397921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301464, 43.048973, 18.888269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190081, 42.704559, 18.718056>,  <28.123251, 42.497910, 18.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190081, 42.704559, 18.718056>,  <28.301464, 43.048973, 18.888269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190081, 42.704559, 18.718056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079890, 0.462286, -0.883125,
		0.957121, -0.211916, -0.197514,
		-0.278456, -0.861036, -0.425533,
		28.106544, 42.446247, 18.590395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722134, 42.914406, 18.289724>,  <28.301464, 43.048973, 18.888269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722134, 42.914406, 18.289724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373259, 42.724342, 18.243229>,  <28.163933, 42.610306, 18.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373259, 42.724342, 18.243229>,  <28.722134, 42.914406, 18.289724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373259, 42.724342, 18.243229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099047, 0.404241, -0.909274,
		0.479039, -0.781545, -0.399637,
		-0.872188, -0.475161, -0.116238,
		28.111603, 42.581795, 18.208359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670471, 42.814484, 17.572754>,  <28.722134, 42.914406, 18.289724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670471, 42.814484, 17.572754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292334, 42.737816, 17.678272>,  <28.065451, 42.691814, 17.741583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292334, 42.737816, 17.678272>,  <28.670471, 42.814484, 17.572754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292334, 42.737816, 17.678272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326066, 0.561853, -0.760265,
		-0.002498, -0.804727, -0.593640,
		-0.945344, -0.191667, 0.263798,
		28.008730, 42.680317, 17.757412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277748, 42.545502, 16.928112>,  <28.670471, 42.814484, 17.572754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277748, 42.545502, 16.928112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002689, 42.695759, 17.176638>,  <27.837654, 42.785912, 17.325754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002689, 42.695759, 17.176638>,  <28.277748, 42.545502, 16.928112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002689, 42.695759, 17.176638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411466, 0.503438, -0.759767,
		-0.598193, -0.778104, -0.191626,
		-0.687649, 0.375639, 0.621316,
		27.796394, 42.808449, 17.363033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695843, 42.471542, 16.541090>,  <28.277748, 42.545502, 16.928112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695843, 42.471542, 16.541090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614357, 42.745098, 16.821318>,  <27.565466, 42.909229, 16.989454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614357, 42.745098, 16.821318>,  <27.695843, 42.471542, 16.541090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614357, 42.745098, 16.821318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511820, 0.535612, -0.671685,
		-0.834590, -0.495399, 0.240913,
		-0.203716, 0.683885, 0.700571,
		27.553242, 42.950264, 17.031488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008678, 42.556061, 16.377323>,  <27.695843, 42.471542, 16.541090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008678, 42.556061, 16.377323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114164, 42.864555, 16.609062>,  <27.177456, 43.049652, 16.748106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114164, 42.864555, 16.609062>,  <27.008678, 42.556061, 16.377323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114164, 42.864555, 16.609062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597788, 0.602039, -0.529338,
		-0.757036, -0.206731, 0.619806,
		0.263717, 0.771240, 0.579346,
		27.193279, 43.095928, 16.782866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415741, 42.925549, 16.536360>,  <27.008678, 42.556061, 16.377323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415741, 42.925549, 16.536360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740763, 43.158642, 16.541656>,  <26.935776, 43.298496, 16.544834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740763, 43.158642, 16.541656>,  <26.415741, 42.925549, 16.536360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740763, 43.158642, 16.541656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497927, 0.705758, -0.503959,
		-0.303019, 0.402901, 0.863626,
		0.812557, 0.582732, 0.013242,
		26.984529, 43.333462, 16.545630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304489, 43.723312, 16.662376>,  <26.415741, 42.925549, 16.536360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304489, 43.723312, 16.662376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595531, 43.620594, 16.407930>,  <26.770157, 43.558964, 16.255262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595531, 43.620594, 16.407930>,  <26.304489, 43.723312, 16.662376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595531, 43.620594, 16.407930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458883, 0.507081, -0.729585,
		0.509915, 0.822755, 0.251118,
		0.727607, -0.256793, -0.636117,
		26.813814, 43.543556, 16.217094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488438, 44.321178, 16.274111>,  <26.304489, 43.723312, 16.662376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488438, 44.321178, 16.274111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561300, 44.005535, 16.039459>,  <26.605019, 43.816151, 15.898668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561300, 44.005535, 16.039459>,  <26.488438, 44.321178, 16.274111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561300, 44.005535, 16.039459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537580, 0.419624, -0.731385,
		0.823303, 0.448586, -0.347770,
		0.182156, -0.789105, -0.586628,
		26.615948, 43.768803, 15.863471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920170, 44.533306, 15.707095>,  <26.488438, 44.321178, 16.274111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920170, 44.533306, 15.707095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653730, 44.239025, 15.658018>,  <26.493866, 44.062458, 15.628572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653730, 44.239025, 15.658018>,  <26.920170, 44.533306, 15.707095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653730, 44.239025, 15.658018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491179, 0.556470, -0.670138,
		0.561309, -0.386100, -0.732023,
		-0.666090, -0.735709, -0.122708,
		26.453901, 44.018314, 15.621210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198200, 44.857018, 16.258135>,  <26.920170, 44.533306, 15.707095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198200, 44.857018, 16.258135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567080, 44.703350, 16.240393>,  <27.788406, 44.611149, 16.229748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567080, 44.703350, 16.240393>,  <27.198200, 44.857018, 16.258135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567080, 44.703350, 16.240393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004395, 0.104275, -0.994539,
		0.386692, 0.917357, 0.094474,
		0.922198, -0.384165, -0.044354,
		27.843739, 44.588100, 16.227087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758238, 45.411804, 16.032972>,  <27.198200, 44.857018, 16.258135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758238, 45.411804, 16.032972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847990, 45.032887, 15.941501>,  <27.901842, 44.805538, 15.886618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847990, 45.032887, 15.941501>,  <27.758238, 45.411804, 16.032972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847990, 45.032887, 15.941501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106504, 0.209417, -0.972009,
		0.968664, 0.242455, -0.053901,
		0.224381, -0.947291, -0.228677,
		27.915304, 44.748699, 15.872897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567049, 45.682152, 15.372443>,  <27.758238, 45.411804, 16.032972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567049, 45.682152, 15.372443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221025, 45.739082, 15.180019>,  <27.013411, 45.773239, 15.064566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221025, 45.739082, 15.180019>,  <27.567049, 45.682152, 15.372443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221025, 45.739082, 15.180019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280344, -0.932360, 0.228279,
		-0.416030, 0.332337, 0.846446,
		-0.865058, 0.142325, -0.481059,
		26.961508, 45.781780, 15.035702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268953, 45.801773, 15.494413>,  <27.567049, 45.682152, 15.372443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268953, 45.801773, 15.494413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498459, 45.655300, 15.201374>,  <28.636162, 45.567417, 15.025551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498459, 45.655300, 15.201374>,  <28.268953, 45.801773, 15.494413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498459, 45.655300, 15.201374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807984, 0.106733, 0.579457,
		-0.133997, -0.924400, 0.357112,
		0.573766, -0.366186, -0.732598,
		28.670589, 45.545444, 14.981594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544649, 45.875072, 16.304703>,  <28.268953, 45.801773, 15.494413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544649, 45.875072, 16.304703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171257, 45.832973, 16.441835>,  <27.947222, 45.807713, 16.524115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171257, 45.832973, 16.441835>,  <28.544649, 45.875072, 16.304703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171257, 45.832973, 16.441835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282209, 0.374286, 0.883328,
		-0.221288, 0.921321, -0.319687,
		-0.933483, -0.105251, 0.342830,
		27.891212, 45.801399, 16.544685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518620, 46.366276, 16.889950>,  <28.544649, 45.875072, 16.304703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518620, 46.366276, 16.889950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228437, 46.092552, 16.919418>,  <28.054327, 45.928318, 16.937099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228437, 46.092552, 16.919418>,  <28.518620, 46.366276, 16.889950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228437, 46.092552, 16.919418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018994, 0.126902, 0.991733,
		-0.688005, 0.718061, -0.105060,
		-0.725457, -0.684313, 0.073670,
		28.010799, 45.887257, 16.941519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943737, 46.558212, 17.379110>,  <28.518620, 46.366276, 16.889950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943737, 46.558212, 17.379110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943176, 46.158310, 17.370350>,  <27.942841, 45.918369, 17.365093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943176, 46.158310, 17.370350>,  <27.943737, 46.558212, 17.379110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943176, 46.158310, 17.370350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105965, -0.021926, 0.994128,
		-0.994369, -0.000927, 0.105970,
		-0.001402, -0.999759, -0.021901,
		27.942757, 45.858383, 17.363779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380310, 46.170937, 17.813314>,  <27.943737, 46.558212, 17.379110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380310, 46.170937, 17.813314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672148, 45.900570, 17.771688>,  <27.847250, 45.738350, 17.746714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672148, 45.900570, 17.771688>,  <27.380310, 46.170937, 17.813314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672148, 45.900570, 17.771688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061367, -0.216261, 0.974405,
		-0.681123, -0.704533, -0.199262,
		0.729593, -0.675918, -0.104066,
		27.891026, 45.697796, 17.740469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202326, 45.638535, 18.192045>,  <27.380310, 46.170937, 17.813314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202326, 45.638535, 18.192045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597700, 45.585129, 18.163294>,  <27.834925, 45.553085, 18.146044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597700, 45.585129, 18.163294>,  <27.202326, 45.638535, 18.192045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597700, 45.585129, 18.163294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045620, -0.190213, 0.980682,
		-0.144606, -0.972622, -0.181923,
		0.988438, -0.133514, -0.071877,
		27.894232, 45.545074, 18.141731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282534, 45.034096, 18.608658>,  <27.202326, 45.638535, 18.192045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282534, 45.034096, 18.608658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658863, 45.164543, 18.571785>,  <27.884661, 45.242813, 18.549662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658863, 45.164543, 18.571785>,  <27.282534, 45.034096, 18.608658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658863, 45.164543, 18.571785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161279, -0.191628, 0.968126,
		0.298059, -0.925703, -0.232885,
		0.940824, 0.326118, -0.092180,
		27.941111, 45.262379, 18.544130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769514, 44.408016, 18.768461>,  <27.282534, 45.034096, 18.608658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769514, 44.408016, 18.768461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953175, 44.759052, 18.823633>,  <28.063372, 44.969673, 18.856735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953175, 44.759052, 18.823633>,  <27.769514, 44.408016, 18.768461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953175, 44.759052, 18.823633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397194, -0.341680, 0.851758,
		0.794618, -0.336301, -0.505454,
		0.459151, 0.877586, 0.137928,
		28.090919, 45.022327, 18.865011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476435, 44.236404, 18.954477>,  <27.769514, 44.408016, 18.768461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476435, 44.236404, 18.954477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471651, 44.621574, 19.062286>,  <28.468781, 44.852676, 19.126972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471651, 44.621574, 19.062286>,  <28.476435, 44.236404, 18.954477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471651, 44.621574, 19.062286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304511, -0.253231, 0.918230,
		0.952434, 0.093051, -0.290192,
		-0.011957, 0.962920, 0.269521,
		28.468063, 44.910450, 19.143143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127090, 44.448616, 19.161158>,  <28.476435, 44.236404, 18.954477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127090, 44.448616, 19.161158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886196, 44.709202, 19.345722>,  <28.741659, 44.865555, 19.456461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886196, 44.709202, 19.345722>,  <29.127090, 44.448616, 19.161158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886196, 44.709202, 19.345722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457093, -0.192469, 0.868344,
		0.654507, 0.733856, -0.181870,
		-0.602235, 0.651469, 0.461412,
		28.705526, 44.904644, 19.484146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605371, 44.929169, 19.618656>,  <29.127090, 44.448616, 19.161158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605371, 44.929169, 19.618656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238525, 44.924488, 19.778036>,  <29.018417, 44.921680, 19.873665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238525, 44.924488, 19.778036>,  <29.605371, 44.929169, 19.618656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238525, 44.924488, 19.778036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384546, -0.289275, 0.876610,
		0.105002, 0.957175, 0.269798,
		-0.917115, -0.011704, 0.398452,
		28.963390, 44.920979, 19.897572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666924, 45.367336, 20.232845>,  <29.605371, 44.929169, 19.618656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666924, 45.367336, 20.232845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336559, 45.144241, 20.265837>,  <29.138342, 45.010384, 20.285631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336559, 45.144241, 20.265837>,  <29.666924, 45.367336, 20.232845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336559, 45.144241, 20.265837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307160, -0.322441, 0.895368,
		-0.472785, 0.764828, 0.437621,
		-0.825910, -0.557737, 0.082479,
		29.088787, 44.976921, 20.290581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584829, 45.371292, 20.937748>,  <29.666924, 45.367336, 20.232845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584829, 45.371292, 20.937748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356413, 45.054939, 20.849728>,  <29.219364, 44.865128, 20.796915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356413, 45.054939, 20.849728>,  <29.584829, 45.371292, 20.937748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356413, 45.054939, 20.849728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332154, -0.467723, 0.819090,
		-0.750724, 0.394643, 0.529783,
		-0.571040, -0.790880, -0.220049,
		29.185101, 44.817677, 20.783712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266293, 45.310493, 21.536230>,  <29.584829, 45.371292, 20.937748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266293, 45.310493, 21.536230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246655, 44.949421, 21.365234>,  <29.234871, 44.732777, 21.262636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246655, 44.949421, 21.365234>,  <29.266293, 45.310493, 21.536230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246655, 44.949421, 21.365234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351782, -0.416208, 0.838463,
		-0.934794, -0.109218, 0.337983,
		-0.049096, -0.902686, -0.427490,
		29.231926, 44.678616, 21.236988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949116, 44.912823, 22.038605>,  <29.266293, 45.310493, 21.536230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949116, 44.912823, 22.038605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146208, 44.657585, 21.801943>,  <29.264463, 44.504444, 21.659946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146208, 44.657585, 21.801943>,  <28.949116, 44.912823, 22.038605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146208, 44.657585, 21.801943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164304, -0.599468, 0.783354,
		-0.854531, -0.483192, -0.190534,
		0.492729, -0.638094, -0.591654,
		29.294027, 44.466156, 21.624447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680700, 44.284904, 22.326889>,  <28.949116, 44.912823, 22.038605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680700, 44.284904, 22.326889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000044, 44.183498, 22.108400>,  <29.191650, 44.122654, 21.977306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000044, 44.183498, 22.108400>,  <28.680700, 44.284904, 22.326889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000044, 44.183498, 22.108400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252540, -0.682499, 0.685871,
		-0.546671, -0.685513, -0.480857,
		0.798357, -0.253510, -0.546222,
		29.239552, 44.107445, 21.944534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797255, 43.526398, 22.358376>,  <28.680700, 44.284904, 22.326889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797255, 43.526398, 22.358376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153049, 43.652588, 22.226141>,  <29.366526, 43.728302, 22.146799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153049, 43.652588, 22.226141>,  <28.797255, 43.526398, 22.358376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153049, 43.652588, 22.226141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444751, -0.431546, 0.784834,
		0.104935, -0.845128, -0.524163,
		0.889486, 0.315479, -0.330587,
		29.419895, 43.747231, 22.126965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212845, 42.918739, 22.296766>,  <28.797255, 43.526398, 22.358376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212845, 42.918739, 22.296766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439526, 43.242146, 22.360203>,  <29.575533, 43.436188, 22.398266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439526, 43.242146, 22.360203>,  <29.212845, 42.918739, 22.296766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439526, 43.242146, 22.360203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468028, -0.474307, 0.745642,
		0.678086, -0.348330, -0.647198,
		0.566700, 0.808517, 0.158593,
		29.609535, 43.484699, 22.407780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745926, 42.636021, 22.482576>,  <29.212845, 42.918739, 22.296766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745926, 42.636021, 22.482576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805607, 43.015694, 22.593418>,  <29.841415, 43.243500, 22.659924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805607, 43.015694, 22.593418>,  <29.745926, 42.636021, 22.482576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805607, 43.015694, 22.593418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380042, -0.313763, 0.870127,
		0.912856, -0.024515, -0.407544,
		0.149204, 0.949185, 0.277104,
		29.850368, 43.300449, 22.676550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355375, 42.689552, 22.860176>,  <29.745926, 42.636021, 22.482576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355375, 42.689552, 22.860176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190989, 43.035229, 22.976299>,  <30.092358, 43.242634, 23.045973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190989, 43.035229, 22.976299>,  <30.355375, 42.689552, 22.860176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190989, 43.035229, 22.976299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257198, -0.195598, 0.946357,
		0.874618, 0.463586, -0.141885,
		-0.410965, 0.864193, 0.290307,
		30.067699, 43.294487, 23.063391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827679, 42.978939, 23.217276>,  <30.355375, 42.689552, 22.860176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827679, 42.978939, 23.217276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489885, 43.144341, 23.353432>,  <30.287209, 43.243580, 23.435125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489885, 43.144341, 23.353432>,  <30.827679, 42.978939, 23.217276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489885, 43.144341, 23.353432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300589, -0.160091, 0.940222,
		0.443275, 0.896319, 0.010901,
		-0.844484, 0.413500, 0.340389,
		30.236540, 43.268391, 23.455547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002939, 43.597515, 23.756744>,  <30.827679, 42.978939, 23.217276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002939, 43.597515, 23.756744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626158, 43.480694, 23.822994>,  <30.400089, 43.410603, 23.862745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626158, 43.480694, 23.822994>,  <31.002939, 43.597515, 23.756744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626158, 43.480694, 23.822994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221176, -0.168620, 0.960546,
		-0.252601, 0.941421, 0.223427,
		-0.941952, -0.292052, 0.165626,
		30.343573, 43.393078, 23.872683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886942, 43.877586, 24.377811>,  <31.002939, 43.597515, 23.756744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886942, 43.877586, 24.377811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587414, 43.614838, 24.342499>,  <30.407698, 43.457188, 24.321312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587414, 43.614838, 24.342499>,  <30.886942, 43.877586, 24.377811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587414, 43.614838, 24.342499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076332, -0.046839, 0.995982,
		-0.658364, 0.752549, -0.015066,
		-0.748819, -0.656868, -0.088281,
		30.362768, 43.417778, 24.316015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306835, 44.068626, 24.806503>,  <30.886942, 43.877586, 24.377811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306835, 44.068626, 24.806503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226852, 43.681519, 24.745255>,  <30.178864, 43.449253, 24.708506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226852, 43.681519, 24.745255>,  <30.306835, 44.068626, 24.806503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226852, 43.681519, 24.745255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159691, -0.122001, 0.979599,
		-0.966704, 0.220330, -0.130149,
		-0.199957, -0.967766, -0.153124,
		30.166866, 43.391190, 24.699318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650890, 43.853157, 25.049726>,  <30.306835, 44.068626, 24.806503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650890, 43.853157, 25.049726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814528, 43.488350, 25.061451>,  <29.912710, 43.269466, 25.068485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814528, 43.488350, 25.061451>,  <29.650890, 43.853157, 25.049726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814528, 43.488350, 25.061451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250417, -0.081323, 0.964717,
		-0.877459, -0.401998, -0.261655,
		0.409093, -0.912022, 0.029310,
		29.937256, 43.214745, 25.070244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227642, 43.455959, 25.493027>,  <29.650890, 43.853157, 25.049726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227642, 43.455959, 25.493027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546417, 43.216839, 25.458340>,  <29.737682, 43.073368, 25.437527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546417, 43.216839, 25.458340>,  <29.227642, 43.455959, 25.493027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546417, 43.216839, 25.458340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093537, -0.263953, 0.959989,
		-0.596774, -0.756941, -0.266271,
		0.796938, -0.597803, -0.086719,
		29.785500, 43.037498, 25.432323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093229, 42.764297, 25.770975>,  <29.227642, 43.455959, 25.493027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093229, 42.764297, 25.770975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490198, 42.790524, 25.812540>,  <29.728380, 42.806259, 25.837479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490198, 42.790524, 25.812540>,  <29.093229, 42.764297, 25.770975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490198, 42.790524, 25.812540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092551, -0.157360, 0.983195,
		0.080817, -0.985362, -0.150099,
		0.992422, 0.065567, 0.103914,
		29.787926, 42.810192, 25.843714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305643, 42.046242, 26.019133>,  <29.093229, 42.764297, 25.770975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305643, 42.046242, 26.019133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599329, 42.295464, 26.127012>,  <29.775539, 42.444996, 26.191740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599329, 42.295464, 26.127012>,  <29.305643, 42.046242, 26.019133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599329, 42.295464, 26.127012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078152, -0.472170, 0.878037,
		0.674406, -0.623589, -0.395366,
		0.734214, 0.623051, 0.269699,
		29.819593, 42.482380, 26.207922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828537, 41.563309, 26.304867>,  <29.305643, 42.046242, 26.019133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828537, 41.563309, 26.304867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937422, 41.925629, 26.434746>,  <30.002752, 42.143021, 26.512674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937422, 41.925629, 26.434746>,  <29.828537, 41.563309, 26.304867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937422, 41.925629, 26.434746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177470, -0.378913, 0.908256,
		0.945730, -0.189614, -0.263897,
		0.272212, 0.905798, 0.324699,
		30.019085, 42.197369, 26.532156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447685, 41.518536, 26.654825>,  <29.828537, 41.563309, 26.304867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447685, 41.518536, 26.654825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296307, 41.860928, 26.795723>,  <30.205479, 42.066364, 26.880262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296307, 41.860928, 26.795723>,  <30.447685, 41.518536, 26.654825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296307, 41.860928, 26.795723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289467, -0.252018, 0.923415,
		0.879197, 0.451427, -0.152402,
		-0.378447, 0.855979, 0.352246,
		30.182774, 42.117722, 26.901398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005047, 41.747272, 26.953148>,  <30.447685, 41.518536, 26.654825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005047, 41.747272, 26.953148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694799, 41.941330, 27.114664>,  <30.508652, 42.057766, 27.211575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694799, 41.941330, 27.114664>,  <31.005047, 41.747272, 26.953148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694799, 41.941330, 27.114664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121821, -0.512638, 0.849919,
		0.619334, 0.708403, 0.338511,
		-0.775619, 0.485146, 0.403792,
		30.462114, 42.086872, 27.235802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192242, 41.759441, 27.634281>,  <31.005047, 41.747272, 26.953148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192242, 41.759441, 27.634281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812338, 41.881889, 27.660347>,  <30.584394, 41.955357, 27.675987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812338, 41.881889, 27.660347>,  <31.192242, 41.759441, 27.634281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812338, 41.881889, 27.660347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012118, -0.244024, 0.969693,
		0.312743, 0.920187, 0.235473,
		-0.949760, 0.306118, 0.065166,
		30.527411, 41.973724, 27.679897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144060, 42.111134, 28.344967>,  <31.192242, 41.759441, 27.634281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144060, 42.111134, 28.344967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779657, 41.991093, 28.231827>,  <30.561016, 41.919067, 28.163942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779657, 41.991093, 28.231827>,  <31.144060, 42.111134, 28.344967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779657, 41.991093, 28.231827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191555, -0.299451, 0.934685,
		-0.365199, 0.905686, 0.215317,
		-0.911008, -0.300101, -0.282849,
		30.506355, 41.901062, 28.146973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681232, 42.294586, 28.847769>,  <31.144060, 42.111134, 28.344967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681232, 42.294586, 28.847769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481068, 41.999470, 28.666552>,  <30.360970, 41.822399, 28.557821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481068, 41.999470, 28.666552>,  <30.681232, 42.294586, 28.847769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481068, 41.999470, 28.666552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380005, -0.283010, 0.880626,
		-0.777937, 0.612833, -0.138745,
		-0.500410, -0.737795, -0.453044,
		30.330944, 41.778130, 28.530638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203465, 42.135002, 29.287565>,  <30.681232, 42.294586, 28.847769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203465, 42.135002, 29.287565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157957, 41.799686, 29.074278>,  <30.130651, 41.598495, 28.946304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157957, 41.799686, 29.074278>,  <30.203465, 42.135002, 29.287565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157957, 41.799686, 29.074278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159763, -0.514282, 0.842608,
		-0.980577, 0.181052, -0.075418,
		-0.113770, -0.838292, -0.533219,
		30.123827, 41.548199, 28.914312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665640, 41.736790, 29.444254>,  <30.203465, 42.135002, 29.287565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665640, 41.736790, 29.444254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876713, 41.436401, 29.285460>,  <30.003357, 41.256168, 29.190184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876713, 41.436401, 29.285460>,  <29.665640, 41.736790, 29.444254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876713, 41.436401, 29.285460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272764, -0.592398, 0.758066,
		-0.804458, -0.291734, -0.517435,
		0.527681, -0.750970, -0.396985,
		30.035017, 41.211109, 29.166365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269064, 41.171158, 29.583876>,  <29.665640, 41.736790, 29.444254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269064, 41.171158, 29.583876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615122, 40.996391, 29.485384>,  <29.822756, 40.891529, 29.426289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615122, 40.996391, 29.485384>,  <29.269064, 41.171158, 29.583876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615122, 40.996391, 29.485384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077920, -0.602097, 0.794612,
		-0.495433, -0.668268, -0.554945,
		0.865144, -0.436918, -0.246227,
		29.874664, 40.865314, 29.411516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138329, 40.461525, 29.745901>,  <29.269064, 41.171158, 29.583876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138329, 40.461525, 29.745901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536690, 40.496841, 29.738098>,  <29.775707, 40.518032, 29.733416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536690, 40.496841, 29.738098>,  <29.138329, 40.461525, 29.745901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536690, 40.496841, 29.738098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073058, -0.658590, 0.748947,
		0.053279, -0.747304, -0.662343,
		0.995903, 0.088293, -0.019508,
		29.835461, 40.523331, 29.732246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410206, 39.742867, 29.723604>,  <29.138329, 40.461525, 29.745901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410206, 39.742867, 29.723604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701136, 39.971073, 29.876184>,  <29.875694, 40.107998, 29.967733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701136, 39.971073, 29.876184>,  <29.410206, 39.742867, 29.723604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701136, 39.971073, 29.876184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164816, -0.684754, 0.709893,
		0.666209, -0.453454, -0.592070,
		0.727325, 0.570520, 0.381452,
		29.919333, 40.142227, 29.990620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016752, 39.252365, 29.869699>,  <29.410206, 39.742867, 29.723604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016752, 39.252365, 29.869699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047878, 39.590927, 30.080427>,  <30.066553, 39.794064, 30.206863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047878, 39.590927, 30.080427>,  <30.016752, 39.252365, 29.869699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047878, 39.590927, 30.080427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464679, -0.498305, 0.731960,
		0.882054, 0.187846, -0.432083,
		0.077813, 0.846408, 0.526820,
		30.071222, 39.844849, 30.238474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641630, 39.435371, 29.892027>,  <30.016752, 39.252365, 29.869699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641630, 39.435371, 29.892027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498159, 39.613857, 30.219990>,  <30.412077, 39.720947, 30.416767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498159, 39.613857, 30.219990>,  <30.641630, 39.435371, 29.892027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498159, 39.613857, 30.219990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577579, -0.583937, 0.570457,
		0.733318, 0.678170, -0.048278,
		-0.358675, 0.446210, 0.819908,
		30.390556, 39.747719, 30.465961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316853, 39.563778, 30.292389>,  <30.641630, 39.435371, 29.892027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316853, 39.563778, 30.292389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995710, 39.574585, 30.530613>,  <30.803024, 39.581070, 30.673548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995710, 39.574585, 30.530613>,  <31.316853, 39.563778, 30.292389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995710, 39.574585, 30.530613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521249, -0.453032, 0.723230,
		0.289348, 0.891085, 0.349636,
		-0.802855, 0.027018, 0.595562,
		30.754854, 39.582691, 30.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633705, 40.091557, 29.886446>,  <31.316853, 39.563778, 30.292389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633705, 40.091557, 29.886446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003883, 39.948784, 29.937275>,  <32.225990, 39.863121, 29.967772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003883, 39.948784, 29.937275>,  <31.633705, 40.091557, 29.886446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003883, 39.948784, 29.937275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251313, 0.327312, -0.910883,
		0.283531, 0.874909, 0.392612,
		0.925447, -0.356932, 0.127073,
		32.281517, 39.841705, 29.975397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990067, 40.623360, 29.795628>,  <31.633705, 40.091557, 29.886446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990067, 40.623360, 29.795628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239517, 40.319195, 29.723120>,  <32.389187, 40.136696, 29.679615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239517, 40.319195, 29.723120>,  <31.990067, 40.623360, 29.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239517, 40.319195, 29.723120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270061, 0.427181, -0.862893,
		0.733590, 0.489170, 0.471760,
		0.623628, -0.760414, -0.181270,
		32.426605, 40.091072, 29.668739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557861, 40.871330, 29.611401>,  <31.990067, 40.623360, 29.795628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557861, 40.871330, 29.611401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579769, 40.509548, 29.442188>,  <32.592915, 40.292477, 29.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579769, 40.509548, 29.442188>,  <32.557861, 40.871330, 29.611401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579769, 40.509548, 29.442188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334461, 0.415811, -0.845717,
		0.940816, -0.095164, 0.325282,
		0.054773, -0.904458, -0.423030,
		32.596203, 40.238209, 29.315279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147102, 40.962017, 29.308466>,  <32.557861, 40.871330, 29.611401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147102, 40.962017, 29.308466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993622, 40.640308, 29.126951>,  <32.901535, 40.447285, 29.018044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993622, 40.640308, 29.126951>,  <33.147102, 40.962017, 29.308466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993622, 40.640308, 29.126951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305193, 0.353344, -0.884311,
		0.871569, -0.477802, 0.109880,
		-0.383700, -0.804272, -0.453785,
		32.878513, 40.399025, 28.990816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676193, 40.618885, 28.864252>,  <33.147102, 40.962017, 29.308466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676193, 40.618885, 28.864252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332840, 40.490414, 28.704237>,  <33.126827, 40.413330, 28.608227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332840, 40.490414, 28.704237>,  <33.676193, 40.618885, 28.864252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332840, 40.490414, 28.704237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371465, 0.148711, -0.916460,
		0.353836, -0.935270, -0.008344,
		-0.858378, -0.321177, -0.400040,
		33.075325, 40.394062, 28.584225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813633, 40.170341, 28.295095>,  <33.676193, 40.618885, 28.864252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813633, 40.170341, 28.295095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441772, 40.271721, 28.188122>,  <33.218658, 40.332546, 28.123938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441772, 40.271721, 28.188122>,  <33.813633, 40.170341, 28.295095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441772, 40.271721, 28.188122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248311, -0.105271, -0.962943,
		-0.272207, -0.961604, 0.034932,
		-0.929648, 0.253446, -0.267433,
		33.162880, 40.347755, 28.107891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680317, 39.874130, 27.617645>,  <33.813633, 40.170341, 28.295095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680317, 39.874130, 27.617645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401852, 40.161263, 27.614180>,  <33.234772, 40.333542, 27.612101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401852, 40.161263, 27.614180>,  <33.680317, 39.874130, 27.617645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401852, 40.161263, 27.614180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258280, 0.239186, -0.935992,
		-0.669809, -0.653845, -0.351914,
		-0.696167, 0.717828, -0.008666,
		33.193001, 40.376610, 27.611580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417763, 39.817673, 26.927870>,  <33.680317, 39.874130, 27.617645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417763, 39.817673, 26.927870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264713, 40.157871, 27.072229>,  <33.172882, 40.361992, 27.158846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264713, 40.157871, 27.072229>,  <33.417763, 39.817673, 26.927870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264713, 40.157871, 27.072229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036040, 0.404067, -0.914019,
		-0.923200, -0.336722, -0.185259,
		-0.382627, 0.850499, 0.360900,
		33.149925, 40.413021, 27.180500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058968, 39.958992, 26.337797>,  <33.417763, 39.817673, 26.927870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058968, 39.958992, 26.337797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097755, 40.285984, 26.564894>,  <33.121029, 40.482178, 26.701151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097755, 40.285984, 26.564894>,  <33.058968, 39.958992, 26.337797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097755, 40.285984, 26.564894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059602, 0.574174, -0.816561,
		-0.993502, 0.045339, 0.104398,
		0.096965, 0.817477, 0.567741,
		33.126846, 40.531227, 26.735216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673939, 40.435486, 26.039898>,  <33.058968, 39.958992, 26.337797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673939, 40.435486, 26.039898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888462, 40.681240, 26.271381>,  <33.017178, 40.828693, 26.410271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888462, 40.681240, 26.271381>,  <32.673939, 40.435486, 26.039898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888462, 40.681240, 26.271381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048727, 0.661974, -0.747942,
		-0.842613, 0.429328, 0.325087,
		0.536311, 0.614385, 0.578707,
		33.049355, 40.865555, 26.444994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344784, 41.053455, 26.004864>,  <32.673939, 40.435486, 26.039898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344784, 41.053455, 26.004864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721748, 41.122108, 26.119692>,  <32.947926, 41.163300, 26.188589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721748, 41.122108, 26.119692>,  <32.344784, 41.053455, 26.004864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721748, 41.122108, 26.119692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086283, 0.704494, -0.704445,
		-0.323144, 0.688644, 0.649112,
		0.942408, 0.171630, 0.287072,
		33.004471, 41.173599, 26.205814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431786, 41.804058, 26.101105>,  <32.344784, 41.053455, 26.004864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431786, 41.804058, 26.101105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793526, 41.646248, 26.035988>,  <33.010571, 41.551559, 25.996918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793526, 41.646248, 26.035988>,  <32.431786, 41.804058, 26.101105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793526, 41.646248, 26.035988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168314, 0.680197, -0.713444,
		0.392207, 0.617801, 0.681539,
		0.904347, -0.394530, -0.162794,
		33.064831, 41.527889, 25.987150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991470, 42.312809, 26.263983>,  <32.431786, 41.804058, 26.101105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991470, 42.312809, 26.263983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157333, 42.053230, 26.008821>,  <33.256851, 41.897484, 25.855724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157333, 42.053230, 26.008821>,  <32.991470, 42.312809, 26.263983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157333, 42.053230, 26.008821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011431, 0.697242, -0.716745,
		0.909904, 0.304498, 0.281701,
		0.414661, -0.648949, -0.637904,
		33.281731, 41.858547, 25.817450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287777, 42.697529, 25.771137>,  <32.991470, 42.312809, 26.263983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287777, 42.697529, 25.771137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352253, 42.351093, 25.581863>,  <33.390938, 42.143230, 25.468300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352253, 42.351093, 25.581863>,  <33.287777, 42.697529, 25.771137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352253, 42.351093, 25.581863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049764, 0.485977, -0.872554,
		0.985668, 0.117100, 0.121435,
		0.161191, -0.866091, -0.473185,
		33.400612, 42.091267, 25.439907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983295, 42.768913, 25.307278>,  <33.287777, 42.697529, 25.771137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983295, 42.768913, 25.307278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754623, 42.479828, 25.151911>,  <33.617420, 42.306377, 25.058691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754623, 42.479828, 25.151911>,  <33.983295, 42.768913, 25.307278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754623, 42.479828, 25.151911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130938, 0.386975, -0.912746,
		0.809964, -0.572654, -0.126594,
		-0.571676, -0.722715, -0.388418,
		33.583122, 42.263012, 25.035385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292866, 42.653427, 24.644108>,  <33.983295, 42.768913, 25.307278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292866, 42.653427, 24.644108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931698, 42.485207, 24.608610>,  <33.714996, 42.384274, 24.587311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931698, 42.485207, 24.608610>,  <34.292866, 42.653427, 24.644108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931698, 42.485207, 24.608610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100840, 0.407979, -0.907406,
		0.417843, -0.810351, -0.410777,
		-0.902906, -0.420576, -0.088756,
		33.660824, 42.359039, 24.581987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322788, 42.340679, 24.001745>,  <34.292866, 42.653427, 24.644108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322788, 42.340679, 24.001745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933380, 42.372406, 24.087500>,  <33.699734, 42.391441, 24.138952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933380, 42.372406, 24.087500>,  <34.322788, 42.340679, 24.001745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933380, 42.372406, 24.087500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152306, 0.474271, -0.867104,
		-0.170456, -0.876798, -0.449633,
		-0.973523, 0.079321, 0.214384,
		33.641323, 42.396202, 24.151815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997780, 42.054665, 23.408384>,  <34.322788, 42.340679, 24.001745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997780, 42.054665, 23.408384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727325, 42.290031, 23.585745>,  <33.565052, 42.431252, 23.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727325, 42.290031, 23.585745>,  <33.997780, 42.054665, 23.408384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727325, 42.290031, 23.585745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237143, 0.395982, -0.887108,
		-0.697567, -0.704957, -0.128200,
		-0.676138, 0.588416, 0.443400,
		33.524483, 42.466557, 23.718765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262207, 42.000401, 23.075247>,  <33.997780, 42.054665, 23.408384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262207, 42.000401, 23.075247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257591, 42.362968, 23.244135>,  <33.254822, 42.580509, 23.345467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257591, 42.362968, 23.244135>,  <33.262207, 42.000401, 23.075247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257591, 42.362968, 23.244135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390418, 0.384647, -0.836434,
		-0.920565, -0.174496, 0.349443,
		-0.011542, 0.906421, 0.422219,
		33.254128, 42.634895, 23.370800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614960, 42.359955, 22.880112>,  <33.262207, 42.000401, 23.075247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614960, 42.359955, 22.880112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838207, 42.660465, 23.021019>,  <32.972157, 42.840771, 23.105564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838207, 42.660465, 23.021019>,  <32.614960, 42.359955, 22.880112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838207, 42.660465, 23.021019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396723, 0.614478, -0.681929,
		-0.728777, 0.240843, 0.640998,
		0.558117, 0.751273, 0.352270,
		33.005642, 42.885849, 23.126699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122871, 42.925228, 23.063658>,  <32.614960, 42.359955, 22.880112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122871, 42.925228, 23.063658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488644, 43.070141, 22.991480>,  <32.708107, 43.157089, 22.948174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488644, 43.070141, 22.991480>,  <32.122871, 42.925228, 23.063658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488644, 43.070141, 22.991480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378682, 0.608463, -0.697405,
		-0.142865, 0.706062, 0.693589,
		0.914434, 0.362285, -0.180444,
		32.762974, 43.178825, 22.937347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139038, 43.677109, 23.096500>,  <32.122871, 42.925228, 23.063658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139038, 43.677109, 23.096500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432941, 43.547852, 22.857937>,  <32.609283, 43.470299, 22.714798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432941, 43.547852, 22.857937>,  <32.139038, 43.677109, 23.096500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432941, 43.547852, 22.857937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248132, 0.690261, -0.679684,
		0.631312, 0.647394, 0.426996,
		0.734763, -0.323141, -0.596409,
		32.653370, 43.450909, 22.679014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402714, 44.273899, 22.731462>,  <32.139038, 43.677109, 23.096500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402714, 44.273899, 22.731462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491985, 43.951927, 22.511545>,  <32.545547, 43.758743, 22.379595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491985, 43.951927, 22.511545>,  <32.402714, 44.273899, 22.731462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491985, 43.951927, 22.511545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381984, 0.446692, -0.809046,
		0.896815, 0.390577, -0.207778,
		0.223182, -0.804932, -0.549794,
		32.558941, 43.710449, 22.346607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622181, 44.531239, 22.073006>,  <32.402714, 44.273899, 22.731462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622181, 44.531239, 22.073006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554840, 44.148323, 21.978977>,  <32.514435, 43.918575, 21.922560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554840, 44.148323, 21.978977>,  <32.622181, 44.531239, 22.073006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554840, 44.148323, 21.978977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238260, 0.270922, -0.932649,
		0.956499, -0.101002, -0.273692,
		-0.168348, -0.957288, -0.235072,
		32.504337, 43.861137, 21.908455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867081, 44.511890, 21.421438>,  <32.622181, 44.531239, 22.073006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867081, 44.511890, 21.421438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613384, 44.203930, 21.449728>,  <32.461166, 44.019154, 21.466702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613384, 44.203930, 21.449728>,  <32.867081, 44.511890, 21.421438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613384, 44.203930, 21.449728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281206, 0.144507, -0.948705,
		0.720185, -0.621591, -0.308151,
		-0.634237, -0.769898, 0.070723,
		32.423115, 43.972961, 21.470945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951225, 43.971367, 20.896235>,  <32.867081, 44.511890, 21.421438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951225, 43.971367, 20.896235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571777, 43.950783, 21.021112>,  <32.344109, 43.938431, 21.096039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571777, 43.950783, 21.021112>,  <32.951225, 43.971367, 20.896235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571777, 43.950783, 21.021112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313331, 0.015535, -0.949517,
		0.044019, -0.998554, -0.030863,
		-0.948623, -0.051467, 0.312194,
		32.287189, 43.935345, 21.114771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755589, 43.566898, 20.390291>,  <32.951225, 43.971367, 20.896235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755589, 43.566898, 20.390291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419815, 43.714962, 20.549452>,  <32.218349, 43.803799, 20.644949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419815, 43.714962, 20.549452>,  <32.755589, 43.566898, 20.390291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419815, 43.714962, 20.549452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373651, 0.138552, -0.917163,
		-0.394628, -0.918577, 0.022006,
		-0.839437, 0.370161, 0.397903,
		32.167984, 43.826012, 20.668823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330753, 43.111763, 20.116194>,  <32.755589, 43.566898, 20.390291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330753, 43.111763, 20.116194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115131, 43.415253, 20.262480>,  <31.985758, 43.597347, 20.350250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115131, 43.415253, 20.262480>,  <32.330753, 43.111763, 20.116194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115131, 43.415253, 20.262480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573903, -0.013068, -0.818819,
		-0.616482, -0.651276, 0.442481,
		-0.539059, 0.758729, 0.365713,
		31.953413, 43.642872, 20.372194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610254, 43.024635, 19.828171>,  <32.330753, 43.111763, 20.116194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610254, 43.024635, 19.828171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627180, 43.408440, 19.939566>,  <31.637335, 43.638721, 20.006403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627180, 43.408440, 19.939566>,  <31.610254, 43.024635, 19.828171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627180, 43.408440, 19.939566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374303, 0.273661, -0.886006,
		-0.926340, -0.066748, 0.370726,
		0.042314, 0.959507, 0.278487,
		31.639874, 43.696293, 20.023111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869646, 43.308090, 19.837936>,  <31.610254, 43.024635, 19.828171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869646, 43.308090, 19.837936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102444, 43.630558, 19.795271>,  <31.242123, 43.824039, 19.769672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102444, 43.630558, 19.795271>,  <30.869646, 43.308090, 19.837936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102444, 43.630558, 19.795271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414901, 0.181567, -0.891566,
		-0.699385, 0.563141, 0.440151,
		0.581994, 0.806167, -0.106663,
		31.277042, 43.872410, 19.763271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503702, 43.862133, 19.532406>,  <30.869646, 43.308090, 19.837936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503702, 43.862133, 19.532406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878227, 43.971149, 19.443830>,  <31.102943, 44.036560, 19.390686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878227, 43.971149, 19.443830>,  <30.503702, 43.862133, 19.532406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878227, 43.971149, 19.443830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276443, 0.183206, -0.943406,
		-0.216552, 0.944539, 0.246882,
		0.936314, 0.272546, -0.221437,
		31.159122, 44.052914, 19.377399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417391, 44.360134, 19.121317>,  <30.503702, 43.862133, 19.532406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417391, 44.360134, 19.121317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803089, 44.291660, 19.040398>,  <31.034508, 44.250576, 18.991846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803089, 44.291660, 19.040398>,  <30.417391, 44.360134, 19.121317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803089, 44.291660, 19.040398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199105, 0.035804, -0.979324,
		0.174889, 0.984588, 0.000441,
		0.964246, -0.171185, -0.202298,
		31.092363, 44.240303, 18.979708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581732, 44.859180, 18.583910>,  <30.417391, 44.360134, 19.121317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581732, 44.859180, 18.583910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845047, 44.558987, 18.560490>,  <31.003036, 44.378872, 18.546438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845047, 44.558987, 18.560490>,  <30.581732, 44.859180, 18.583910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845047, 44.558987, 18.560490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124368, -0.031719, -0.991729,
		0.742421, 0.660125, -0.114217,
		0.658288, -0.750485, -0.058549,
		31.042534, 44.333839, 18.542925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019827, 44.979801, 17.959673>,  <30.581732, 44.859180, 18.583910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019827, 44.979801, 17.959673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072441, 44.591946, 18.042131>,  <31.104010, 44.359234, 18.091606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072441, 44.591946, 18.042131>,  <31.019827, 44.979801, 17.959673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072441, 44.591946, 18.042131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075488, -0.217146, -0.973216,
		0.988433, 0.112451, -0.101759,
		0.131536, -0.969640, 0.206146,
		31.111902, 44.301052, 18.103975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565811, 44.750183, 17.473764>,  <31.019827, 44.979801, 17.959673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565811, 44.750183, 17.473764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369137, 44.418736, 17.580830>,  <31.251133, 44.219868, 17.645069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369137, 44.418736, 17.580830>,  <31.565811, 44.750183, 17.473764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369137, 44.418736, 17.580830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130517, -0.233785, -0.963488,
		0.860937, -0.508666, 0.006800,
		-0.491683, -0.828615, 0.267664,
		31.221632, 44.170151, 17.661129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882973, 44.175220, 17.047373>,  <31.565811, 44.750183, 17.473764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882973, 44.175220, 17.047373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519913, 44.054550, 17.164104>,  <31.302076, 43.982147, 17.234144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519913, 44.054550, 17.164104>,  <31.882973, 44.175220, 17.047373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519913, 44.054550, 17.164104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238730, -0.200824, -0.950094,
		0.345228, -0.932020, 0.110258,
		-0.907649, -0.301677, 0.291831,
		31.247618, 43.964046, 17.251654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774372, 43.526287, 16.668522>,  <31.882973, 44.175220, 17.047373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774372, 43.526287, 16.668522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413614, 43.642750, 16.796154>,  <31.197159, 43.712627, 16.872732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413614, 43.642750, 16.796154>,  <31.774372, 43.526287, 16.668522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413614, 43.642750, 16.796154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370562, -0.141945, -0.917897,
		-0.221963, -0.946086, 0.235913,
		-0.901896, 0.291159, 0.319077,
		31.143045, 43.730095, 16.891878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401730, 43.021645, 16.412363>,  <31.774372, 43.526287, 16.668522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401730, 43.021645, 16.412363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147058, 43.322239, 16.481535>,  <30.994255, 43.502598, 16.523039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147058, 43.322239, 16.481535>,  <31.401730, 43.021645, 16.412363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147058, 43.322239, 16.481535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364945, -0.096088, -0.926057,
		-0.679307, -0.652710, 0.335429,
		-0.636678, 0.751490, 0.172930,
		30.956055, 43.547688, 16.533415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044613, 42.867382, 15.879469>,  <31.401730, 43.021645, 16.412363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044613, 42.867382, 15.879469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338009, 42.868793, 15.607594>,  <32.514046, 42.869640, 15.444468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338009, 42.868793, 15.607594>,  <32.044613, 42.867382, 15.879469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338009, 42.868793, 15.607594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658969, -0.248768, 0.709841,
		-0.166581, -0.968557, -0.184794,
		0.733492, 0.003527, -0.679689,
		32.558056, 42.869850, 15.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351318, 42.226021, 15.887340>,  <32.044613, 42.867382, 15.879469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351318, 42.226021, 15.887340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636612, 42.471329, 15.751575>,  <32.807789, 42.618515, 15.670117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636612, 42.471329, 15.751575>,  <32.351318, 42.226021, 15.887340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636612, 42.471329, 15.751575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565908, -0.218113, 0.795094,
		0.413578, -0.759162, -0.502619,
		0.713233, 0.613270, -0.339409,
		32.850582, 42.655308, 15.649753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942566, 41.808739, 16.006418>,  <32.351318, 42.226021, 15.887340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942566, 41.808739, 16.006418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054161, 42.191563, 15.974922>,  <33.121117, 42.421257, 15.956024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054161, 42.191563, 15.974922>,  <32.942566, 41.808739, 16.006418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054161, 42.191563, 15.974922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541981, -0.089237, 0.835639,
		0.792732, -0.275807, -0.543606,
		0.278985, 0.957062, -0.078741,
		33.137856, 42.478680, 15.951300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571400, 41.802654, 16.414589>,  <32.942566, 41.808739, 16.006418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571400, 41.802654, 16.414589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533974, 42.196159, 16.353327>,  <33.511520, 42.432262, 16.316568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533974, 42.196159, 16.353327>,  <33.571400, 41.802654, 16.414589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533974, 42.196159, 16.353327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376675, 0.177374, 0.909206,
		0.921609, 0.027377, -0.387154,
		-0.093562, 0.983763, -0.153157,
		33.505905, 42.491287, 16.307379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247871, 42.177185, 16.581686>,  <33.571400, 41.802654, 16.414589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247871, 42.177185, 16.581686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957058, 42.451023, 16.602694>,  <33.782570, 42.615326, 16.615297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957058, 42.451023, 16.602694>,  <34.247871, 42.177185, 16.581686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957058, 42.451023, 16.602694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237670, 0.179167, 0.954679,
		0.644158, 0.706562, -0.292967,
		-0.727030, 0.684594, 0.052517,
		33.738949, 42.656403, 16.618448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517971, 42.832458, 16.837082>,  <34.247871, 42.177185, 16.581686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517971, 42.832458, 16.837082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129116, 42.840240, 16.930525>,  <33.895802, 42.844910, 16.986589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129116, 42.840240, 16.930525>,  <34.517971, 42.832458, 16.837082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129116, 42.840240, 16.930525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221720, 0.399826, 0.889370,
		-0.076095, 0.916384, -0.393000,
		-0.972137, 0.019459, 0.233605,
		33.837475, 42.846077, 17.000607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447327, 43.451107, 17.295830>,  <34.517971, 42.832458, 16.837082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447327, 43.451107, 17.295830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109871, 43.246918, 17.362381>,  <33.907398, 43.124405, 17.402311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109871, 43.246918, 17.362381>,  <34.447327, 43.451107, 17.295830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109871, 43.246918, 17.362381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110754, 0.137759, 0.984254,
		-0.525359, 0.848785, -0.059682,
		-0.843641, -0.510477, 0.166380,
		33.856777, 43.093773, 17.412294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049221, 43.787918, 17.777773>,  <34.447327, 43.451107, 17.295830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049221, 43.787918, 17.777773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917156, 43.412579, 17.818739>,  <33.837917, 43.187374, 17.843319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917156, 43.412579, 17.818739>,  <34.049221, 43.787918, 17.777773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917156, 43.412579, 17.818739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148635, 0.055463, 0.987336,
		-0.932148, 0.341205, 0.121160,
		-0.330164, -0.938351, 0.102415,
		33.818108, 43.131073, 17.849463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678440, 43.798550, 18.431589>,  <34.049221, 43.787918, 17.777773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678440, 43.798550, 18.431589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739063, 43.410175, 18.357487>,  <33.775436, 43.177151, 18.313025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739063, 43.410175, 18.357487>,  <33.678440, 43.798550, 18.431589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739063, 43.410175, 18.357487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070139, -0.176386, 0.981819,
		-0.985956, -0.161799, 0.041367,
		0.151561, -0.970932, -0.185258,
		33.784531, 43.118896, 18.301908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356579, 43.505566, 18.923492>,  <33.678440, 43.798550, 18.431589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356579, 43.505566, 18.923492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595013, 43.206181, 18.807222>,  <33.738071, 43.026550, 18.737461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595013, 43.206181, 18.807222>,  <33.356579, 43.505566, 18.923492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595013, 43.206181, 18.807222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209724, -0.204315, 0.956175,
		-0.775049, -0.630920, 0.035182,
		0.596083, -0.748462, -0.290673,
		33.773838, 42.981644, 18.720020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223419, 42.946854, 19.446243>,  <33.356579, 43.505566, 18.923492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223419, 42.946854, 19.446243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562370, 42.858017, 19.253321>,  <33.765743, 42.804714, 19.137568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562370, 42.858017, 19.253321>,  <33.223419, 42.946854, 19.446243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562370, 42.858017, 19.253321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423875, -0.264137, 0.866350,
		-0.319802, -0.938567, -0.129687,
		0.847383, -0.222089, -0.482306,
		33.816586, 42.791389, 19.108629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314713, 42.185036, 19.529572>,  <33.223419, 42.946854, 19.446243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314713, 42.185036, 19.529572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682938, 42.324017, 19.458195>,  <33.903873, 42.407406, 19.415369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682938, 42.324017, 19.458195>,  <33.314713, 42.185036, 19.529572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682938, 42.324017, 19.458195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350501, -0.533218, 0.769953,
		0.172373, -0.771335, -0.612642,
		0.920563, 0.347451, -0.178441,
		33.959106, 42.428253, 19.404663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756474, 41.643795, 19.325104>,  <33.314713, 42.185036, 19.529572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756474, 41.643795, 19.325104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981529, 41.921371, 19.504827>,  <34.116562, 42.087917, 19.612661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981529, 41.921371, 19.504827>,  <33.756474, 41.643795, 19.325104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981529, 41.921371, 19.504827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298324, -0.677304, 0.672504,
		0.771001, -0.244336, -0.588097,
		0.562638, 0.693945, 0.449310,
		34.150322, 42.129555, 19.639620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374844, 41.362942, 19.548609>,  <33.756474, 41.643795, 19.325104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374844, 41.362942, 19.548609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453308, 41.705635, 19.739412>,  <34.500385, 41.911251, 19.853893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453308, 41.705635, 19.739412>,  <34.374844, 41.362942, 19.548609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453308, 41.705635, 19.739412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292853, -0.515442, 0.805330,
		0.935819, -0.018281, -0.352005,
		0.196160, 0.856729, 0.477007,
		34.512157, 41.962654, 19.882515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052731, 41.323677, 19.720173>,  <34.374844, 41.362942, 19.548609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052731, 41.323677, 19.720173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879639, 41.576447, 19.977362>,  <34.775784, 41.728107, 20.131676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879639, 41.576447, 19.977362>,  <35.052731, 41.323677, 19.720173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879639, 41.576447, 19.977362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340285, -0.545959, 0.765594,
		0.834834, 0.550092, 0.021220,
		-0.432733, 0.631923, 0.642974,
		34.749821, 41.766022, 20.170254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447514, 41.402309, 20.318609>,  <35.052731, 41.323677, 19.720173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447514, 41.402309, 20.318609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088295, 41.516987, 20.452066>,  <34.872765, 41.585793, 20.532141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088295, 41.516987, 20.452066>,  <35.447514, 41.402309, 20.318609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088295, 41.516987, 20.452066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213203, -0.379763, 0.900180,
		0.384779, 0.879539, 0.279922,
		-0.898048, 0.286690, 0.333645,
		34.818882, 41.602993, 20.552160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596455, 41.879967, 20.844589>,  <35.447514, 41.402309, 20.318609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596455, 41.879967, 20.844589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224079, 41.779297, 20.950434>,  <35.000656, 41.718895, 21.013941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224079, 41.779297, 20.950434>,  <35.596455, 41.879967, 20.844589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224079, 41.779297, 20.950434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338432, -0.322357, 0.884053,
		-0.137190, 0.912550, 0.385267,
		-0.930936, -0.251670, 0.264612,
		34.944798, 41.703796, 21.029818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420860, 42.045361, 21.545475>,  <35.596455, 41.879967, 20.844589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420860, 42.045361, 21.545475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117214, 41.787811, 21.507168>,  <34.935024, 41.633282, 21.484182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117214, 41.787811, 21.507168>,  <35.420860, 42.045361, 21.545475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117214, 41.787811, 21.507168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221029, -0.393333, 0.892432,
		-0.612279, 0.656294, 0.440900,
		-0.759118, -0.643869, -0.095769,
		34.889481, 41.594650, 21.478437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996468, 42.152691, 22.128687>,  <35.420860, 42.045361, 21.545475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996468, 42.152691, 22.128687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934544, 41.776608, 22.007332>,  <34.897388, 41.550957, 21.934519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934544, 41.776608, 22.007332>,  <34.996468, 42.152691, 22.128687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934544, 41.776608, 22.007332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099556, -0.320371, 0.942046,
		-0.982915, 0.115636, 0.143201,
		-0.154811, -0.940208, -0.303386,
		34.888100, 41.494545, 21.916317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404781, 41.867031, 22.420357>,  <34.996468, 42.152691, 22.128687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404781, 41.867031, 22.420357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583878, 41.517574, 22.344170>,  <34.691334, 41.307899, 22.298458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583878, 41.517574, 22.344170>,  <34.404781, 41.867031, 22.420357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583878, 41.517574, 22.344170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036725, -0.194865, 0.980142,
		-0.893411, -0.445841, -0.055164,
		0.447738, -0.873644, -0.190468,
		34.718201, 41.255482, 22.287029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181068, 41.432652, 22.975166>,  <34.404781, 41.867031, 22.420357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181068, 41.432652, 22.975166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510315, 41.256905, 22.831259>,  <34.707863, 41.151455, 22.744915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510315, 41.256905, 22.831259>,  <34.181068, 41.432652, 22.975166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510315, 41.256905, 22.831259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208600, -0.355305, 0.911178,
		-0.528172, -0.825053, -0.200805,
		0.823116, -0.439371, -0.359768,
		34.757252, 41.125095, 22.723328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138580, 40.852200, 23.305536>,  <34.181068, 41.432652, 22.975166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138580, 40.852200, 23.305536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518757, 40.893692, 23.188305>,  <34.746864, 40.918587, 23.117966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518757, 40.893692, 23.188305>,  <34.138580, 40.852200, 23.305536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518757, 40.893692, 23.188305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310824, -0.337066, 0.888693,
		-0.006599, -0.935749, -0.352605,
		0.950445, 0.103734, -0.293077,
		34.803890, 40.924812, 23.100382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407063, 40.198696, 23.371212>,  <34.138580, 40.852200, 23.305536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407063, 40.198696, 23.371212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722076, 40.445007, 23.361341>,  <34.911083, 40.592793, 23.355419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722076, 40.445007, 23.361341>,  <34.407063, 40.198696, 23.371212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722076, 40.445007, 23.361341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322908, -0.378210, 0.867575,
		0.524897, -0.691215, -0.496693,
		0.787536, 0.615774, -0.024677,
		34.958336, 40.629738, 23.353939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018002, 39.769600, 23.530722>,  <34.407063, 40.198696, 23.371212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018002, 39.769600, 23.530722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109020, 40.154133, 23.592770>,  <35.163631, 40.384853, 23.629997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109020, 40.154133, 23.592770>,  <35.018002, 39.769600, 23.530722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109020, 40.154133, 23.592770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579608, -0.261715, 0.771725,
		0.782482, -0.085694, -0.616748,
		0.227545, 0.961333, 0.155118,
		35.177284, 40.442532, 23.639305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673191, 39.781502, 23.963942>,  <35.018002, 39.769600, 23.530722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673191, 39.781502, 23.963942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542046, 40.158604, 23.988327>,  <35.463360, 40.384865, 24.002958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542046, 40.158604, 23.988327>,  <35.673191, 39.781502, 23.963942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542046, 40.158604, 23.988327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561513, 0.142568, 0.815094,
		0.759742, 0.301473, -0.576112,
		-0.327864, 0.942756, 0.060966,
		35.443687, 40.441429, 24.006617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274910, 40.219215, 23.949734>,  <35.673191, 39.781502, 23.963942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274910, 40.219215, 23.949734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976490, 40.416210, 24.129007>,  <35.797440, 40.534409, 24.236570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976490, 40.416210, 24.129007>,  <36.274910, 40.219215, 23.949734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976490, 40.416210, 24.129007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600713, 0.207351, 0.772107,
		0.287321, 0.845259, -0.450537,
		-0.746050, 0.492486, 0.448182,
		35.752674, 40.563957, 24.263462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652664, 40.763870, 24.370955>,  <36.274910, 40.219215, 23.949734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652664, 40.763870, 24.370955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279839, 40.748959, 24.515104>,  <36.056145, 40.740013, 24.601595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279839, 40.748959, 24.515104>,  <36.652664, 40.763870, 24.370955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279839, 40.748959, 24.515104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348180, 0.182815, 0.919429,
		-0.100158, 0.982440, -0.157415,
		-0.932062, -0.037279, 0.360377,
		36.000221, 40.737774, 24.623217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652382, 41.251415, 24.978064>,  <36.652664, 40.763870, 24.370955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652382, 41.251415, 24.978064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334370, 41.017555, 25.042711>,  <36.143562, 40.877239, 25.081501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334370, 41.017555, 25.042711>,  <36.652382, 41.251415, 24.978064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334370, 41.017555, 25.042711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109011, 0.124396, 0.986226,
		-0.596698, 0.801695, -0.035166,
		-0.795027, -0.584646, 0.161621,
		36.095863, 40.842163, 25.091198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116814, 41.640217, 25.410622>,  <36.652382, 41.251415, 24.978064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116814, 41.640217, 25.410622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049217, 41.249035, 25.459679>,  <36.008659, 41.014324, 25.489113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049217, 41.249035, 25.459679>,  <36.116814, 41.640217, 25.410622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049217, 41.249035, 25.459679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003823, 0.123779, 0.992302,
		-0.985609, 0.168163, -0.017180,
		-0.168995, -0.977957, 0.122641,
		35.998520, 40.955647, 25.496471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657478, 41.549217, 25.963448>,  <36.116814, 41.640217, 25.410622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657478, 41.549217, 25.963448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803951, 41.177967, 25.936646>,  <35.891834, 40.955215, 25.920565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803951, 41.177967, 25.936646>,  <35.657478, 41.549217, 25.963448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803951, 41.177967, 25.936646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039274, -0.056530, 0.997628,
		-0.929716, -0.367941, 0.015751,
		0.366178, -0.928129, -0.067007,
		35.913803, 40.899529, 25.916544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375690, 41.172127, 26.570042>,  <35.657478, 41.549217, 25.963448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375690, 41.172127, 26.570042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707195, 40.973885, 26.466091>,  <35.906097, 40.854939, 26.403721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707195, 40.973885, 26.466091>,  <35.375690, 41.172127, 26.570042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707195, 40.973885, 26.466091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198520, -0.173807, 0.964563,
		-0.523209, -0.850981, -0.045657,
		0.828759, -0.495604, -0.259874,
		35.955822, 40.825203, 26.388128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333405, 40.712276, 27.023092>,  <35.375690, 41.172127, 26.570042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333405, 40.712276, 27.023092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713951, 40.705372, 26.900066>,  <35.942280, 40.701229, 26.826250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713951, 40.705372, 26.900066>,  <35.333405, 40.712276, 27.023092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713951, 40.705372, 26.900066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305622, -0.072173, 0.949414,
		-0.038579, -0.997243, -0.063390,
		0.951371, -0.017254, -0.307564,
		35.999363, 40.700195, 26.807796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556660, 40.137562, 27.209940>,  <35.333405, 40.712276, 27.023092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556660, 40.137562, 27.209940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887886, 40.355595, 27.157490>,  <36.086620, 40.486416, 27.126020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887886, 40.355595, 27.157490>,  <35.556660, 40.137562, 27.209940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887886, 40.355595, 27.157490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306246, -0.243871, 0.920185,
		0.469602, -0.802127, -0.368871,
		0.828062, 0.545086, -0.131126,
		36.136303, 40.519119, 27.118153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098961, 39.766533, 27.473513>,  <35.556660, 40.137562, 27.209940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098961, 39.766533, 27.473513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244312, 40.138256, 27.447174>,  <36.331524, 40.361290, 27.431370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244312, 40.138256, 27.447174>,  <36.098961, 39.766533, 27.473513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244312, 40.138256, 27.447174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353460, -0.072124, 0.932665,
		0.861987, -0.362186, -0.354683,
		0.363379, 0.929311, -0.065848,
		36.353325, 40.417049, 27.427420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743530, 39.725189, 27.738600>,  <36.098961, 39.766533, 27.473513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743530, 39.725189, 27.738600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636620, 40.109577, 27.767174>,  <36.572472, 40.340210, 27.784319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636620, 40.109577, 27.767174>,  <36.743530, 39.725189, 27.738600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636620, 40.109577, 27.767174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232842, -0.007529, 0.972485,
		0.935066, 0.276556, -0.221741,
		-0.267277, 0.960968, 0.071434,
		36.556435, 40.397869, 27.788605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312500, 40.056149, 28.010981>,  <36.743530, 39.725189, 27.738600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312500, 40.056149, 28.010981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005112, 40.298767, 28.092520>,  <36.820679, 40.444340, 28.141443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005112, 40.298767, 28.092520>,  <37.312500, 40.056149, 28.010981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005112, 40.298767, 28.092520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265596, 0.012516, 0.964003,
		0.582165, 0.794946, -0.170715,
		-0.768468, 0.606551, 0.203848,
		36.774570, 40.480732, 28.153673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604187, 40.363659, 28.599428>,  <37.312500, 40.056149, 28.010981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604187, 40.363659, 28.599428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217384, 40.464825, 28.587200>,  <36.985302, 40.525524, 28.579865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217384, 40.464825, 28.587200>,  <37.604187, 40.363659, 28.599428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217384, 40.464825, 28.587200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041691, 0.275480, 0.960402,
		0.251322, 0.927440, -0.276935,
		-0.967005, 0.252916, -0.030568,
		36.927284, 40.540699, 28.578030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483311, 41.020199, 28.920059>,  <37.604187, 40.363659, 28.599428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483311, 41.020199, 28.920059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131496, 40.832542, 28.951847>,  <36.920406, 40.719948, 28.970921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131496, 40.832542, 28.951847>,  <37.483311, 41.020199, 28.920059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131496, 40.832542, 28.951847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072503, 0.297198, 0.952059,
		-0.470272, 0.831610, -0.295412,
		-0.879538, -0.469145, 0.079470,
		36.867634, 40.691799, 28.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982262, 41.509388, 29.344280>,  <37.483311, 41.020199, 28.920059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982262, 41.509388, 29.344280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872826, 41.124878, 29.357538>,  <36.807163, 40.894173, 29.365494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872826, 41.124878, 29.357538>,  <36.982262, 41.509388, 29.344280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872826, 41.124878, 29.357538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065554, 0.015745, 0.997725,
		-0.959611, 0.275138, 0.058708,
		-0.273588, -0.961276, 0.033145,
		36.790749, 40.836494, 29.367481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482731, 41.438141, 29.965841>,  <36.982262, 41.509388, 29.344280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482731, 41.438141, 29.965841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603664, 41.063416, 29.895437>,  <36.676224, 40.838581, 29.853195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603664, 41.063416, 29.895437>,  <36.482731, 41.438141, 29.965841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603664, 41.063416, 29.895437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051181, -0.168433, 0.984383,
		-0.951828, -0.306618, -0.002975,
		0.302331, -0.936811, -0.176012,
		36.694363, 40.782372, 29.842634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132999, 41.019493, 30.382240>,  <36.482731, 41.438141, 29.965841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132999, 41.019493, 30.382240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493729, 40.877186, 30.284136>,  <36.710167, 40.791801, 30.225273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493729, 40.877186, 30.284136>,  <36.132999, 41.019493, 30.382240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493729, 40.877186, 30.284136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230663, -0.083614, 0.969435,
		-0.365402, -0.930826, 0.006657,
		0.901819, -0.355769, -0.245260,
		36.764275, 40.770454, 30.210558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492867, 40.722042, 30.970335>,  <36.132999, 41.019493, 30.382240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492867, 40.722042, 30.970335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800884, 40.604504, 30.743818>,  <36.985695, 40.533981, 30.607908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800884, 40.604504, 30.743818>,  <36.492867, 40.722042, 30.970335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800884, 40.604504, 30.743818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588646, -0.015045, 0.808250,
		-0.246025, -0.955733, 0.161389,
		0.770044, -0.293851, -0.566290,
		37.031898, 40.516350, 30.573931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753014, 40.218113, 31.395973>,  <36.492867, 40.722042, 30.970335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753014, 40.218113, 31.395973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047955, 40.353130, 31.161921>,  <37.224918, 40.434139, 31.021490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047955, 40.353130, 31.161921>,  <36.753014, 40.218113, 31.395973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047955, 40.353130, 31.161921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622380, -0.002746, 0.782710,
		0.262591, -0.941307, -0.212104,
		0.737352, 0.337542, -0.585130,
		37.269161, 40.454391, 30.986382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415447, 39.755623, 31.423676>,  <36.753014, 40.218113, 31.395973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415447, 39.755623, 31.423676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518940, 40.139034, 31.375885>,  <37.581036, 40.369083, 31.347212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518940, 40.139034, 31.375885>,  <37.415447, 39.755623, 31.423676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518940, 40.139034, 31.375885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673703, -0.090433, 0.733448,
		0.692228, -0.270260, -0.669164,
		0.258736, 0.958531, -0.119475,
		37.596561, 40.426594, 31.340042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164688, 39.325787, 31.988947>,  <37.415447, 39.755623, 31.423676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164688, 39.325787, 31.988947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261055, 39.314941, 32.377014>,  <37.318874, 39.308434, 32.609856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261055, 39.314941, 32.377014>,  <37.164688, 39.325787, 31.988947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261055, 39.314941, 32.377014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686013, 0.711863, -0.150457,
		-0.686547, 0.701795, 0.190099,
		0.240915, -0.027114, 0.970167,
		37.333328, 39.306808, 32.668064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244038, 40.089092, 32.211033>,  <37.164688, 39.325787, 31.988947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244038, 40.089092, 32.211033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445080, 39.882984, 32.488705>,  <37.565704, 39.759319, 32.655308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445080, 39.882984, 32.488705>,  <37.244038, 40.089092, 32.211033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445080, 39.882984, 32.488705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784928, 0.608511, -0.116634,
		-0.362315, 0.603499, 0.710294,
		0.502610, -0.515271, 0.694175,
		37.595863, 39.728401, 32.696957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671619, 40.580257, 32.460770>,  <37.244038, 40.089092, 32.211033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671619, 40.580257, 32.460770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814495, 40.252636, 32.640358>,  <37.900219, 40.056065, 32.748112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814495, 40.252636, 32.640358>,  <37.671619, 40.580257, 32.460770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814495, 40.252636, 32.640358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877844, 0.458577, 0.138193,
		-0.319074, 0.344765, 0.882796,
		0.357186, -0.819051, 0.448970,
		37.921650, 40.006920, 32.775047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782364, 40.734634, 33.165833>,  <37.671619, 40.580257, 32.460770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782364, 40.734634, 33.165833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018330, 40.442059, 33.029011>,  <38.159908, 40.266514, 32.946918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018330, 40.442059, 33.029011>,  <37.782364, 40.734634, 33.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018330, 40.442059, 33.029011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796597, 0.596447, 0.098409,
		0.132038, -0.330533, 0.934513,
		0.589915, -0.731436, -0.342056,
		38.195305, 40.222630, 32.926395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337543, 40.880859, 33.461254>,  <37.782364, 40.734634, 33.165833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337543, 40.880859, 33.461254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497543, 40.635258, 33.189079>,  <38.593544, 40.487896, 33.025772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497543, 40.635258, 33.189079>,  <38.337543, 40.880859, 33.461254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497543, 40.635258, 33.189079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861942, 0.504378, 0.051570,
		0.311535, -0.607127, 0.730988,
		0.400004, -0.614003, -0.680439,
		38.617546, 40.451057, 32.984947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901154, 40.543522, 33.728611>,  <38.337543, 40.880859, 33.461254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901154, 40.543522, 33.728611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936535, 40.557789, 33.330433>,  <38.957764, 40.566349, 33.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936535, 40.557789, 33.330433>,  <38.901154, 40.543522, 33.728611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936535, 40.557789, 33.330433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824300, 0.558420, 0.093257,
		0.559201, -0.828791, 0.019991,
		0.088454, 0.035671, -0.995441,
		38.963070, 40.568489, 33.031799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530407, 40.231495, 33.676838>,  <38.901154, 40.543522, 33.728611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530407, 40.231495, 33.676838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438686, 40.389328, 33.320923>,  <39.383656, 40.484028, 33.107372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438686, 40.389328, 33.320923>,  <39.530407, 40.231495, 33.676838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438686, 40.389328, 33.320923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860956, 0.508666, 0.003700,
		0.454066, -0.765222, -0.456355,
		-0.229301, 0.394582, -0.889790,
		39.369896, 40.507702, 33.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139259, 40.120003, 33.250179>,  <39.530407, 40.231495, 33.676838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139259, 40.120003, 33.250179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910065, 40.429863, 33.143143>,  <39.772549, 40.615780, 33.078922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910065, 40.429863, 33.143143>,  <40.139259, 40.120003, 33.250179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910065, 40.429863, 33.143143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782304, 0.614292, 0.103181,
		0.244307, -0.150215, -0.957992,
		-0.572988, 0.774649, -0.267590,
		39.738167, 40.662258, 33.062866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664745, 40.421429, 32.788807>,  <40.139259, 40.120003, 33.250179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664745, 40.421429, 32.788807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391140, 40.470638, 32.501202>,  <40.226974, 40.500164, 32.328636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391140, 40.470638, 32.501202>,  <40.664745, 40.421429, 32.788807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391140, 40.470638, 32.501202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018484, 0.982436, 0.185684,
		0.729232, 0.140301, -0.669728,
		-0.684017, 0.123028, -0.719017,
		40.185936, 40.507545, 32.285496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745438, 41.033298, 32.370361>,  <40.664745, 40.421429, 32.788807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745438, 41.033298, 32.370361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355869, 40.956806, 32.321518>,  <40.122128, 40.910912, 32.292213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355869, 40.956806, 32.321518>,  <40.745438, 41.033298, 32.370361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355869, 40.956806, 32.321518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202471, 0.975382, 0.087381,
		0.102393, 0.109825, -0.988663,
		-0.973921, -0.191229, -0.122109,
		40.063694, 40.899437, 32.284885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502663, 41.440880, 31.829609>,  <40.745438, 41.033298, 32.370361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502663, 41.440880, 31.829609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180740, 41.386688, 32.060757>,  <39.987587, 41.354172, 32.199444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180740, 41.386688, 32.060757>,  <40.502663, 41.440880, 31.829609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180740, 41.386688, 32.060757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132526, 0.990039, 0.047542,
		-0.578554, -0.038321, -0.814743,
		-0.804806, -0.135481, 0.577869,
		39.939301, 41.346043, 32.234116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934963, 41.783363, 31.564817>,  <40.502663, 41.440880, 31.829609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934963, 41.783363, 31.564817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896175, 41.769001, 31.962673>,  <39.872902, 41.760384, 32.201385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896175, 41.769001, 31.962673>,  <39.934963, 41.783363, 31.564817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896175, 41.769001, 31.962673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051205, 0.998206, 0.031040,
		-0.993970, -0.047920, -0.098631,
		-0.096967, -0.035903, 0.994640,
		39.867085, 41.758228, 32.261066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679192, 42.443642, 31.733067>,  <39.934963, 41.783363, 31.564817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679192, 42.443642, 31.733067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864872, 42.317486, 32.064137>,  <39.976280, 42.241791, 32.262779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864872, 42.317486, 32.064137>,  <39.679192, 42.443642, 31.733067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864872, 42.317486, 32.064137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565433, 0.824789, -0.002833,
		-0.681766, 0.469311, 0.561198,
		0.464199, -0.315388, 0.827677,
		40.004131, 42.222870, 32.312439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597721, 43.055550, 32.286171>,  <39.679192, 42.443642, 31.733067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597721, 43.055550, 32.286171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911747, 42.810101, 32.320000>,  <40.100163, 42.662830, 32.340298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911747, 42.810101, 32.320000>,  <39.597721, 43.055550, 32.286171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911747, 42.810101, 32.320000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611197, 0.789557, 0.055110,
		-0.100591, 0.008425, 0.994892,
		0.785060, -0.613619, 0.084571,
		40.147266, 42.626015, 32.345371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983318, 43.362568, 32.727764>,  <39.597721, 43.055550, 32.286171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983318, 43.362568, 32.727764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244576, 43.098156, 32.580006>,  <40.401329, 42.939510, 32.491352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244576, 43.098156, 32.580006>,  <39.983318, 43.362568, 32.727764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244576, 43.098156, 32.580006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632700, 0.744411, -0.213409,
		0.416050, -0.094330, 0.904436,
		0.653141, -0.661025, -0.369394,
		40.440517, 42.899849, 32.469189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664074, 43.781818, 32.781090>,  <39.983318, 43.362568, 32.727764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664074, 43.781818, 32.781090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763702, 43.488625, 32.527889>,  <40.823479, 43.312710, 32.375969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763702, 43.488625, 32.527889>,  <40.664074, 43.781818, 32.781090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763702, 43.488625, 32.527889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653022, 0.609780, -0.449145,
		0.715211, -0.301498, 0.630534,
		0.249070, -0.732986, -0.633006,
		40.838425, 43.268730, 32.337986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368614, 43.798096, 32.771343>,  <40.664074, 43.781818, 32.781090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368614, 43.798096, 32.771343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292145, 43.589203, 32.438904>,  <41.246262, 43.463867, 32.239441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292145, 43.589203, 32.438904>,  <41.368614, 43.798096, 32.771343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292145, 43.589203, 32.438904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775308, 0.438923, -0.454140,
		0.601955, -0.731180, 0.320977,
		-0.191175, -0.522228, -0.831102,
		41.234791, 43.432533, 32.189571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501038, 44.466396, 32.521301>,  <41.368614, 43.798096, 32.771343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501038, 44.466396, 32.521301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293209, 44.586071, 32.201168>,  <41.168514, 44.657875, 32.009087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293209, 44.586071, 32.201168>,  <41.501038, 44.466396, 32.521301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293209, 44.586071, 32.201168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852908, -0.125732, 0.506695,
		0.050970, 0.945874, 0.320507,
		-0.519568, 0.299189, -0.800335,
		41.137341, 44.675827, 31.961067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778641, 44.096382, 31.945747>,  <41.501038, 44.466396, 32.521301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778641, 44.096382, 31.945747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770084, 43.881287, 31.608610>,  <41.764950, 43.752232, 31.406328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770084, 43.881287, 31.608610>,  <41.778641, 44.096382, 31.945747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770084, 43.881287, 31.608610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492196, -0.728131, 0.477042,
		-0.870222, 0.425047, -0.249096,
		-0.021391, -0.537736, -0.842842,
		41.763668, 43.719967, 31.355757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073391, 43.905327, 31.727501>,  <41.778641, 44.096382, 31.945747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073391, 43.905327, 31.727501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335712, 43.604034, 31.707239>,  <41.493107, 43.423260, 31.695082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335712, 43.604034, 31.707239>,  <41.073391, 43.905327, 31.727501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335712, 43.604034, 31.707239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619915, -0.575599, 0.533284,
		-0.430842, -0.318328, -0.844418,
		0.655805, -0.753229, -0.050656,
		41.532455, 43.378067, 31.692041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850952, 43.238281, 31.410631>,  <41.073391, 43.905327, 31.727501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850952, 43.238281, 31.410631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125298, 43.175911, 31.694963>,  <41.289906, 43.138489, 31.865562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125298, 43.175911, 31.694963>,  <40.850952, 43.238281, 31.410631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125298, 43.175911, 31.694963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685569, -0.466095, 0.559241,
		0.244113, -0.870885, -0.426577,
		0.685861, -0.155930, 0.710831,
		41.331055, 43.129131, 31.908213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079655, 42.446987, 31.531736>,  <40.850952, 43.238281, 31.410631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079655, 42.446987, 31.531736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079243, 42.687290, 31.851509>,  <41.078995, 42.831470, 32.043373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079243, 42.687290, 31.851509>,  <41.079655, 42.446987, 31.531736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079243, 42.687290, 31.851509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614402, -0.631124, 0.473489,
		0.788992, -0.490687, 0.369753,
		-0.001025, 0.600757, 0.799431,
		41.078934, 42.867516, 32.091339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307892, 42.013248, 32.135353>,  <41.079655, 42.446987, 31.531736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307892, 42.013248, 32.135353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042175, 42.283985, 32.262222>,  <40.882744, 42.446426, 32.338345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042175, 42.283985, 32.262222>,  <41.307892, 42.013248, 32.135353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042175, 42.283985, 32.262222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585294, -0.734934, 0.342495,
		0.464918, 0.041876, 0.884363,
		-0.664290, 0.676845, 0.317174,
		40.842888, 42.487038, 32.357376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120010, 41.807743, 32.694263>,  <41.307892, 42.013248, 32.135353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120010, 41.807743, 32.694263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824169, 42.058132, 32.595345>,  <40.646664, 42.208366, 32.535995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824169, 42.058132, 32.595345>,  <41.120010, 41.807743, 32.694263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824169, 42.058132, 32.595345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672123, -0.706160, 0.222685,
		-0.035236, 0.330911, 0.943004,
		-0.739600, 0.625968, -0.247295,
		40.602287, 42.245922, 32.521156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688862, 41.693813, 33.278675>,  <41.120010, 41.807743, 32.694263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688862, 41.693813, 33.278675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474384, 41.853909, 32.981407>,  <40.345695, 41.949966, 32.803047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474384, 41.853909, 32.981407>,  <40.688862, 41.693813, 33.278675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474384, 41.853909, 32.981407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678732, -0.727856, 0.097718,
		-0.501811, 0.556810, 0.661928,
		-0.536198, 0.400236, -0.743171,
		40.313526, 41.973980, 32.758457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027699, 41.779953, 33.569321>,  <40.688862, 41.693813, 33.278675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027699, 41.779953, 33.569321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067661, 41.739742, 33.173359>,  <40.091640, 41.715614, 32.935783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067661, 41.739742, 33.173359>,  <40.027699, 41.779953, 33.569321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067661, 41.739742, 33.173359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761055, -0.648595, -0.010946,
		-0.640947, 0.754466, -0.141306,
		0.099909, -0.100526, -0.989905,
		40.097633, 41.709583, 32.876389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344463, 41.802055, 33.270023>,  <40.027699, 41.779953, 33.569321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344463, 41.802055, 33.270023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559425, 41.587215, 33.009956>,  <39.688404, 41.458309, 32.853916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559425, 41.587215, 33.009956>,  <39.344463, 41.802055, 33.270023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559425, 41.587215, 33.009956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733225, -0.678456, -0.045583,
		-0.416627, 0.501215, -0.758423,
		0.537403, -0.537104, -0.650167,
		39.720646, 41.426083, 32.814907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016472, 41.619556, 32.504200>,  <39.344463, 41.802055, 33.270023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016472, 41.619556, 32.504200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259167, 41.339085, 32.653980>,  <39.404781, 41.170799, 32.743851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259167, 41.339085, 32.653980>,  <39.016472, 41.619556, 32.504200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259167, 41.339085, 32.653980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726642, -0.680225, -0.096364,
		0.322282, -0.213627, -0.922224,
		0.606734, -0.701183, 0.374455,
		39.441189, 41.128731, 32.766315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031067, 41.135780, 32.005688>,  <39.016472, 41.619556, 32.504200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031067, 41.135780, 32.005688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130207, 40.971478, 32.356651>,  <39.189690, 40.872894, 32.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130207, 40.971478, 32.356651>,  <39.031067, 41.135780, 32.005688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130207, 40.971478, 32.356651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560892, -0.799284, -0.215746,
		0.789918, -0.438658, -0.428495,
		0.247851, -0.410761, 0.877409,
		39.204563, 40.848248, 32.619873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116322, 40.417496, 31.788120>,  <39.031067, 41.135780, 32.005688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116322, 40.417496, 31.788120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094051, 40.432480, 32.187218>,  <39.080688, 40.441471, 32.426678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094051, 40.432480, 32.187218>,  <39.116322, 40.417496, 31.788120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094051, 40.432480, 32.187218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581958, -0.813217, -0.001945,
		0.811311, -0.580754, 0.067076,
		-0.055677, 0.037457, 0.997746,
		39.077347, 40.443718, 32.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115677, 39.697899, 32.001137>,  <39.116322, 40.417496, 31.788120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115677, 39.697899, 32.001137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966331, 39.923641, 32.295647>,  <38.876724, 40.059086, 32.472355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966331, 39.923641, 32.295647>,  <39.115677, 39.697899, 32.001137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966331, 39.923641, 32.295647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660058, -0.719301, 0.216631,
		0.651862, -0.405104, 0.641067,
		-0.373362, 0.564355, 0.736277,
		38.854324, 40.092949, 32.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138794, 39.302402, 32.584484>,  <39.115677, 39.697899, 32.001137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138794, 39.302402, 32.584484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857910, 39.578274, 32.655190>,  <38.689381, 39.743797, 32.697613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857910, 39.578274, 32.655190>,  <39.138794, 39.302402, 32.584484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857910, 39.578274, 32.655190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617408, -0.713518, 0.331208,
		0.354552, 0.123441, 0.926852,
		-0.702211, 0.689677, 0.176766,
		38.647247, 39.785175, 32.708218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680504, 39.110283, 33.211185>,  <39.138794, 39.302402, 32.584484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680504, 39.110283, 33.211185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400391, 39.352688, 33.060268>,  <38.232323, 39.498131, 32.969719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400391, 39.352688, 33.060268>,  <38.680504, 39.110283, 33.211185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400391, 39.352688, 33.060268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713302, -0.615051, 0.336025,
		-0.028419, 0.504436, 0.862981,
		-0.700280, 0.606017, -0.377295,
		38.190308, 39.534492, 32.947079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113121, 39.059299, 33.668934>,  <38.680504, 39.110283, 33.211185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113121, 39.059299, 33.668934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946693, 39.267944, 33.370995>,  <37.846836, 39.393131, 33.192230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946693, 39.267944, 33.370995>,  <38.113121, 39.059299, 33.668934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946693, 39.267944, 33.370995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867783, -0.472532, 0.153834,
		-0.271725, 0.710377, 0.649254,
		-0.416074, 0.521611, -0.744852,
		37.821873, 39.424427, 33.147537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501148, 39.189377, 33.905846>,  <38.113121, 39.059299, 33.668934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501148, 39.189377, 33.905846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472881, 39.208099, 33.507286>,  <37.455921, 39.219334, 33.268150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472881, 39.208099, 33.507286>,  <37.501148, 39.189377, 33.905846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472881, 39.208099, 33.507286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809729, -0.586043, 0.029897,
		-0.582535, 0.808927, 0.079313,
		-0.070665, 0.046806, -0.996401,
		37.451683, 39.222141, 33.208366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640648, 39.101452, 34.693226>,  <37.501148, 39.189377, 33.905846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640648, 39.101452, 34.693226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278980, 39.191696, 34.838318>,  <37.061977, 39.245842, 34.925373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278980, 39.191696, 34.838318>,  <37.640648, 39.101452, 34.693226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278980, 39.191696, 34.838318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423586, 0.583284, 0.693076,
		-0.055209, 0.780307, -0.622955,
		-0.904172, 0.225611, 0.362730,
		37.007729, 39.259380, 34.947136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115463, 39.627605, 34.903069>,  <37.640648, 39.101452, 34.693226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115463, 39.627605, 34.903069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204941, 39.543270, 35.283703>,  <38.258629, 39.492668, 35.512081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204941, 39.543270, 35.283703>,  <38.115463, 39.627605, 34.903069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204941, 39.543270, 35.283703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198997, -0.965637, -0.167168,
		0.954128, -0.151967, -0.257966,
		0.223697, -0.210834, 0.951582,
		38.272049, 39.480019, 35.569176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448109, 38.941364, 34.920586>,  <38.115463, 39.627605, 34.903069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448109, 38.941364, 34.920586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332325, 39.013702, 35.296566>,  <38.262856, 39.057106, 35.522156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332325, 39.013702, 35.296566>,  <38.448109, 38.941364, 34.920586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332325, 39.013702, 35.296566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261062, -0.959677, 0.104248,
		0.920902, -0.215210, 0.324999,
		-0.289459, 0.180847, 0.939951,
		38.245487, 39.067955, 35.578552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784489, 39.192856, 34.425125>,  <38.448109, 38.941364, 34.920586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784489, 39.192856, 34.425125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776791, 38.945827, 34.110611>,  <38.772171, 38.797611, 33.921902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776791, 38.945827, 34.110611>,  <38.784489, 39.192856, 34.425125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776791, 38.945827, 34.110611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419707, 0.708789, -0.566978,
		0.907455, -0.340920, 0.245557,
		-0.019245, -0.617569, -0.786281,
		38.771015, 38.760555, 33.874725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521229, 39.152081, 34.309883>,  <38.784489, 39.192856, 34.425125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521229, 39.152081, 34.309883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237930, 39.119953, 34.029327>,  <39.067951, 39.100677, 33.860996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237930, 39.119953, 34.029327>,  <39.521229, 39.152081, 34.309883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237930, 39.119953, 34.029327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328142, 0.842209, -0.427793,
		0.625072, -0.533135, -0.570133,
		-0.708243, -0.080317, -0.701385,
		39.025459, 39.095860, 33.818913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833916, 39.347294, 33.675175>,  <39.521229, 39.152081, 34.309883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833916, 39.347294, 33.675175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453693, 39.461784, 33.723370>,  <39.225559, 39.530479, 33.752285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453693, 39.461784, 33.723370>,  <39.833916, 39.347294, 33.675175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453693, 39.461784, 33.723370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235232, 0.916916, -0.322382,
		-0.202752, -0.278100, -0.938910,
		-0.950557, 0.286225, 0.120489,
		39.168526, 39.547653, 33.759518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194794, 39.262753, 33.078609>,  <39.833916, 39.347294, 33.675175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194794, 39.262753, 33.078609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032665, 38.905365, 33.001217>,  <39.935387, 38.690933, 32.954781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032665, 38.905365, 33.001217>,  <40.194794, 39.262753, 33.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032665, 38.905365, 33.001217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822071, -0.448809, 0.350384,
		-0.399893, -0.017039, 0.916404,
		-0.405320, -0.893465, -0.193483,
		39.911068, 38.637325, 32.943172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552605, 38.879463, 33.487244>,  <40.194794, 39.262753, 33.078609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552605, 38.879463, 33.487244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456444, 38.571716, 33.723984>,  <40.398746, 38.387070, 33.866028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456444, 38.571716, 33.723984>,  <40.552605, 38.879463, 33.487244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456444, 38.571716, 33.723984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388357, -0.635038, -0.667762,
		0.889599, 0.069318, 0.451452,
		-0.240401, -0.769365, 0.591849,
		40.384323, 38.340908, 33.901539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192749, 38.438450, 33.653751>,  <40.552605, 38.879463, 33.487244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192749, 38.438450, 33.653751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826195, 38.278801, 33.641521>,  <40.606262, 38.183010, 33.634186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826195, 38.278801, 33.641521>,  <41.192749, 38.438450, 33.653751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826195, 38.278801, 33.641521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346633, -0.753031, -0.559276,
		0.200198, -0.523111, 0.828418,
		-0.916387, -0.399123, -0.030572,
		40.551277, 38.159065, 33.632351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289368, 37.747799, 33.852402>,  <41.192749, 38.438450, 33.653751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289368, 37.747799, 33.852402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940220, 37.744186, 33.657253>,  <40.730732, 37.742020, 33.540165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940220, 37.744186, 33.657253>,  <41.289368, 37.747799, 33.852402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940220, 37.744186, 33.657253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209518, -0.909907, -0.358011,
		-0.440681, -0.414714, 0.796123,
		-0.872871, -0.009034, -0.487868,
		40.678360, 37.741478, 33.510891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992500, 38.040306, 34.490322>,  <41.289368, 37.747799, 33.852402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992500, 38.040306, 34.490322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832245, 37.697811, 34.620770>,  <40.736092, 37.492313, 34.699039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832245, 37.697811, 34.620770>,  <40.992500, 38.040306, 34.490322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832245, 37.697811, 34.620770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894123, -0.443091, -0.064925,
		0.200092, 0.265581, 0.943096,
		-0.400634, -0.856235, 0.326121,
		40.712055, 37.440941, 34.718605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394413, 37.744461, 35.079288>,  <40.992500, 38.040306, 34.490322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394413, 37.744461, 35.079288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205978, 37.477364, 34.848743>,  <41.092918, 37.317104, 34.710415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205978, 37.477364, 34.848743>,  <41.394413, 37.744461, 35.079288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205978, 37.477364, 34.848743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865937, -0.474548, -0.157982,
		-0.168021, -0.573518, 0.801777,
		-0.471087, -0.667744, -0.576364,
		41.064651, 37.277042, 34.675835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557747, 37.105122, 35.384647>,  <41.394413, 37.744461, 35.079288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557747, 37.105122, 35.384647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470165, 37.128819, 34.995075>,  <41.417614, 37.143036, 34.761330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470165, 37.128819, 34.995075>,  <41.557747, 37.105122, 35.384647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470165, 37.128819, 34.995075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908106, -0.352762, -0.225615,
		-0.356934, -0.933836, 0.023438,
		-0.218955, 0.059245, -0.973935,
		41.404480, 37.146591, 34.702896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698299, 36.463917, 35.126320>,  <41.557747, 37.105122, 35.384647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698299, 36.463917, 35.126320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769470, 36.777050, 34.887817>,  <41.812172, 36.964928, 34.744717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769470, 36.777050, 34.887817>,  <41.698299, 36.463917, 35.126320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769470, 36.777050, 34.887817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962398, -0.264820, -0.060497,
		-0.205259, -0.563071, -0.800512,
		0.177928, 0.782829, -0.596256,
		41.822849, 37.011898, 34.708942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200703, 36.296928, 34.587364>,  <41.698299, 36.463917, 35.126320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200703, 36.296928, 34.587364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234322, 36.695282, 34.573811>,  <42.254494, 36.934296, 34.565678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234322, 36.695282, 34.573811>,  <42.200703, 36.296928, 34.587364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234322, 36.695282, 34.573811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947960, -0.090394, -0.305289,
		-0.307095, -0.006459, -0.951657,
		0.084052, 0.995885, -0.033883,
		42.259537, 36.994049, 34.563644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250652, 36.671154, 33.871700>,  <42.200703, 36.296928, 34.587364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250652, 36.671154, 33.871700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464584, 36.875664, 34.140789>,  <42.592945, 36.998371, 34.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464584, 36.875664, 34.140789>,  <42.250652, 36.671154, 33.871700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464584, 36.875664, 34.140789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840580, -0.241004, -0.485121,
		-0.085901, 0.824934, -0.558664,
		0.534833, 0.511274, 0.672720,
		42.625034, 37.029045, 34.342606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626980, 37.162716, 33.475800>,  <42.250652, 36.671154, 33.871700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626980, 37.162716, 33.475800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809006, 37.010143, 33.797649>,  <42.918221, 36.918602, 33.990761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809006, 37.010143, 33.797649>,  <42.626980, 37.162716, 33.475800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809006, 37.010143, 33.797649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741557, -0.337906, -0.579579,
		0.492956, 0.860426, 0.129079,
		0.455068, -0.381427, 0.804628,
		42.945526, 36.895714, 34.039040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325001, 37.021088, 33.377136>,  <42.626980, 37.162716, 33.475800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325001, 37.021088, 33.377136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310604, 36.769997, 33.688175>,  <43.301964, 36.619343, 33.874798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310604, 36.769997, 33.688175>,  <43.325001, 37.021088, 33.377136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310604, 36.769997, 33.688175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717409, -0.557926, -0.417184,
		0.695722, 0.542842, 0.470419,
		-0.035994, -0.627727, 0.777601,
		43.299805, 36.581680, 33.921455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901001, 37.148186, 33.757534>,  <43.325001, 37.021088, 33.377136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901001, 37.148186, 33.757534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732033, 36.786186, 33.737362>,  <43.630653, 36.568985, 33.725258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732033, 36.786186, 33.737362>,  <43.901001, 37.148186, 33.757534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732033, 36.786186, 33.737362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841715, -0.371020, -0.392249,
		0.336273, -0.208143, 0.918475,
		-0.422417, -0.904998, -0.050433,
		43.605309, 36.514687, 33.722233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390530, 36.622040, 33.964996>,  <43.901001, 37.148186, 33.757534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390530, 36.622040, 33.964996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138130, 36.420528, 33.729019>,  <43.986691, 36.299622, 33.587433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138130, 36.420528, 33.729019>,  <44.390530, 36.622040, 33.964996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138130, 36.420528, 33.729019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773619, -0.465348, -0.430075,
		-0.057867, -0.727773, 0.683373,
		-0.631003, -0.503783, -0.589947,
		43.948830, 36.269394, 33.552036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418476, 36.722584, 34.663910>,  <44.390530, 36.622040, 33.964996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418476, 36.722584, 34.663910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401237, 37.073502, 34.472702>,  <44.390896, 37.284050, 34.357979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401237, 37.073502, 34.472702>,  <44.418476, 36.722584, 34.663910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401237, 37.073502, 34.472702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932799, -0.136027, -0.333741,
		-0.357811, -0.460280, -0.812473,
		-0.043096, 0.877291, -0.478021,
		44.388309, 37.336689, 34.329296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885738, 36.191978, 34.662083>,  <44.418476, 36.722584, 34.663910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885738, 36.191978, 34.662083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131397, 36.303490, 34.957409>,  <45.278793, 36.370396, 35.134605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131397, 36.303490, 34.957409>,  <44.885738, 36.191978, 34.662083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131397, 36.303490, 34.957409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727729, -0.161905, 0.666481,
		0.305335, -0.946610, 0.103439,
		0.614151, 0.278776, 0.738311,
		45.315643, 36.387123, 35.178902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038635, 35.562561, 34.354515>,  <44.885738, 36.191978, 34.662083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038635, 35.562561, 34.354515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130867, 35.320297, 34.659149>,  <45.186207, 35.174938, 34.841930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130867, 35.320297, 34.659149>,  <45.038635, 35.562561, 34.354515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130867, 35.320297, 34.659149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932852, -0.085062, -0.350074,
		0.276806, 0.791168, 0.545373,
		0.230577, -0.605655, 0.761588,
		45.200039, 35.138599, 34.887627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660950, 35.317924, 34.144485>,  <45.038635, 35.562561, 34.354515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660950, 35.317924, 34.144485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621922, 35.193729, 34.522709>,  <45.598507, 35.119213, 34.749641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621922, 35.193729, 34.522709>,  <45.660950, 35.317924, 34.144485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621922, 35.193729, 34.522709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917793, -0.395499, -0.035164,
		0.384885, 0.864396, 0.323547,
		-0.097567, -0.310483, 0.945559,
		45.592651, 35.100586, 34.806377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200794, 35.646568, 34.499630>,  <45.660950, 35.317924, 34.144485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200794, 35.646568, 34.499630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109615, 35.287514, 34.650517>,  <46.054909, 35.072083, 34.741051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109615, 35.287514, 34.650517>,  <46.200794, 35.646568, 34.499630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109615, 35.287514, 34.650517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947396, -0.293874, -0.126806,
		0.224680, 0.328471, 0.917402,
		-0.227948, -0.897633, 0.377220,
		46.041229, 35.018223, 34.763683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777611, 35.530060, 34.829937>,  <46.200794, 35.646568, 34.499630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777611, 35.530060, 34.829937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603100, 35.170433, 34.815250>,  <46.498394, 34.954659, 34.806438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603100, 35.170433, 34.815250>,  <46.777611, 35.530060, 34.829937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603100, 35.170433, 34.815250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891185, -0.426098, -0.155663,
		0.124305, -0.100635, 0.987128,
		-0.436278, -0.899063, -0.036718,
		46.472218, 34.900715, 34.804234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166626, 35.049217, 35.306190>,  <46.777611, 35.530060, 34.829937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166626, 35.049217, 35.306190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959423, 34.844597, 35.031967>,  <46.835102, 34.721825, 34.867435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959423, 34.844597, 35.031967>,  <47.166626, 35.049217, 35.306190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959423, 34.844597, 35.031967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842831, -0.442007, -0.307027,
		-0.145961, -0.736849, 0.660113,
		-0.518007, -0.511550, -0.685555,
		46.804020, 34.691132, 34.826302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702061, 34.816013, 34.731781>,  <47.166626, 35.049217, 35.306190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702061, 34.816013, 34.731781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.967884, 35.016434, 34.953522>,  <48.127380, 35.136684, 35.086567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.967884, 35.016434, 34.953522>,  <47.702061, 34.816013, 34.731781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.967884, 35.016434, 34.953522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735595, -0.308248, -0.603227,
		-0.131370, 0.808659, -0.573421,
		0.664561, 0.501052, 0.554352,
		48.167252, 35.166748, 35.119827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.461563, 38.875687, 21.853895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.071407, 38.959167, 21.882320>,  <31.837313, 39.009254, 21.899376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.071407, 38.959167, 21.882320>,  <32.461563, 38.875687, 21.853895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071407, 38.959167, 21.882320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030092, -0.193291, 0.980680,
		0.218405, 0.958688, 0.182255,
		-0.975394, 0.208701, 0.071064,
		31.778790, 39.021778, 21.903639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316441, 39.418335, 22.403278>,  <32.461563, 38.875687, 21.853895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316441, 39.418335, 22.403278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.985102, 39.196606, 22.370855>,  <31.786299, 39.063568, 22.351402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.985102, 39.196606, 22.370855>,  <32.316441, 39.418335, 22.403278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985102, 39.196606, 22.370855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024160, -0.109205, 0.993726,
		-0.559699, 0.825105, 0.077066,
		-0.828344, -0.554325, -0.081057,
		31.736599, 39.030308, 22.346539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858854, 39.517170, 23.016895>,  <32.316441, 39.418335, 22.403278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858854, 39.517170, 23.016895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672337, 39.194523, 22.871603>,  <31.560427, 39.000935, 22.784428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672337, 39.194523, 22.871603>,  <31.858854, 39.517170, 23.016895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672337, 39.194523, 22.871603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129719, -0.343818, 0.930034,
		-0.875068, 0.480786, 0.055686,
		-0.466293, -0.806619, -0.363231,
		31.532450, 38.952538, 22.762634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257473, 39.591240, 23.329689>,  <31.858854, 39.517170, 23.016895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257473, 39.591240, 23.329689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307390, 39.206253, 23.233290>,  <31.337339, 38.975262, 23.175449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307390, 39.206253, 23.233290>,  <31.257473, 39.591240, 23.329689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307390, 39.206253, 23.233290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294852, -0.267899, 0.917220,
		-0.947359, -0.043402, -0.317217,
		0.124792, -0.962469, -0.241000,
		31.344828, 38.917511, 23.160990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682287, 39.249004, 23.689962>,  <31.257473, 39.591240, 23.329689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682287, 39.249004, 23.689962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.915428, 38.934429, 23.608179>,  <31.055313, 38.745686, 23.559109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.915428, 38.934429, 23.608179>,  <30.682287, 39.249004, 23.689962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915428, 38.934429, 23.608179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256806, -0.416997, 0.871874,
		-0.770931, -0.455668, -0.445009,
		0.582853, -0.786435, -0.204457,
		31.090284, 38.698498, 23.546843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249279, 38.611259, 23.923460>,  <30.682287, 39.249004, 23.689962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249279, 38.611259, 23.923460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.633171, 38.504467, 23.888493>,  <30.863506, 38.440392, 23.867512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.633171, 38.504467, 23.888493>,  <30.249279, 38.611259, 23.923460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633171, 38.504467, 23.888493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039146, -0.435227, 0.899470,
		-0.278189, -0.859824, -0.428151,
		0.959728, -0.266983, -0.087416,
		30.921089, 38.424374, 23.862268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343746, 37.836044, 24.094032>,  <30.249279, 38.611259, 23.923460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343746, 37.836044, 24.094032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.716516, 37.974583, 24.137041>,  <30.940178, 38.057705, 24.162848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.716516, 37.974583, 24.137041>,  <30.343746, 37.836044, 24.094032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716516, 37.974583, 24.137041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125548, -0.586276, 0.800324,
		0.340229, -0.732341, -0.589848,
		0.931924, 0.346347, 0.107524,
		30.996094, 38.078487, 24.169298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768328, 37.275547, 24.353333>,  <30.343746, 37.836044, 24.094032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768328, 37.275547, 24.353333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.978674, 37.596142, 24.467237>,  <31.104881, 37.788498, 24.535580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.978674, 37.596142, 24.467237>,  <30.768328, 37.275547, 24.353333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978674, 37.596142, 24.467237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263949, -0.472033, 0.841140,
		0.808576, -0.367165, -0.459777,
		0.525867, 0.801483, 0.284762,
		31.136435, 37.836586, 24.552666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422443, 37.098103, 24.806637>,  <30.768328, 37.275547, 24.353333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422443, 37.098103, 24.806637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.377504, 37.488205, 24.882801>,  <31.350542, 37.722267, 24.928499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.377504, 37.488205, 24.882801>,  <31.422443, 37.098103, 24.806637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377504, 37.488205, 24.882801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443740, -0.122214, 0.887783,
		0.889086, 0.184231, -0.419030,
		-0.112346, 0.975255, 0.190410,
		31.343801, 37.780781, 24.939924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056091, 37.384575, 24.862726>,  <31.422443, 37.098103, 24.806637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056091, 37.384575, 24.862726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818207, 37.647892, 25.047319>,  <31.675476, 37.805882, 25.158075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818207, 37.647892, 25.047319>,  <32.056091, 37.384575, 24.862726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818207, 37.647892, 25.047319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598530, -0.020686, 0.800834,
		0.536728, 0.752479, -0.381705,
		-0.594714, 0.658292, 0.461483,
		31.639793, 37.845379, 25.185764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512627, 37.913895, 24.935514>,  <32.056091, 37.384575, 24.862726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512627, 37.913895, 24.935514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.216087, 37.955338, 25.200743>,  <32.038162, 37.980202, 25.359880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.216087, 37.955338, 25.200743>,  <32.512627, 37.913895, 24.935514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216087, 37.955338, 25.200743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659808, -0.068086, 0.748344,
		0.122677, 0.992286, -0.017883,
		-0.741353, 0.103604, 0.663070,
		31.993681, 37.986420, 25.399664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730049, 38.516006, 25.353891>,  <32.512627, 37.913895, 24.935514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730049, 38.516006, 25.353891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.458469, 38.290794, 25.542366>,  <32.295521, 38.155666, 25.655451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.458469, 38.290794, 25.542366>,  <32.730049, 38.516006, 25.353891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458469, 38.290794, 25.542366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550073, 0.034948, 0.834385,
		-0.486253, 0.825695, 0.285981,
		-0.678953, -0.563033, 0.471186,
		32.254784, 38.121883, 25.683722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770653, 38.710815, 26.108875>,  <32.730049, 38.516006, 25.353891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770653, 38.710815, 26.108875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.564884, 38.368259, 26.091118>,  <32.441422, 38.162727, 26.080463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.564884, 38.368259, 26.091118>,  <32.770653, 38.710815, 26.108875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564884, 38.368259, 26.091118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343880, -0.253436, 0.904166,
		-0.785568, 0.449855, 0.424867,
		-0.514421, -0.856388, -0.044396,
		32.410557, 38.111343, 26.077799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327663, 38.697052, 26.612219>,  <32.770653, 38.710815, 26.108875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327663, 38.697052, 26.612219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377460, 38.304626, 26.552877>,  <32.407337, 38.069172, 26.517273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377460, 38.304626, 26.552877>,  <32.327663, 38.697052, 26.612219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377460, 38.304626, 26.552877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363065, -0.094109, 0.926999,
		-0.923410, -0.169267, 0.344476,
		0.124492, -0.981067, -0.148356,
		32.414806, 38.010307, 26.508371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095421, 38.371758, 27.221313>,  <32.327663, 38.697052, 26.612219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095421, 38.371758, 27.221313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306107, 38.080952, 27.045120>,  <32.432518, 37.906467, 26.939404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306107, 38.080952, 27.045120>,  <32.095421, 38.371758, 27.221313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306107, 38.080952, 27.045120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417578, -0.230060, 0.879034,
		-0.740408, -0.646933, 0.182410,
		0.526711, -0.727015, -0.440483,
		32.464119, 37.862846, 26.912975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946913, 37.859249, 27.651340>,  <32.095421, 38.371758, 27.221313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946913, 37.859249, 27.651340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283424, 37.765247, 27.456602>,  <32.485332, 37.708847, 27.339760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283424, 37.765247, 27.456602>,  <31.946913, 37.859249, 27.651340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283424, 37.765247, 27.456602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415729, -0.294425, 0.860513,
		-0.345565, -0.926329, -0.149996,
		0.841281, -0.235005, -0.486845,
		32.535809, 37.694744, 27.310549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096638, 37.169621, 27.795322>,  <31.946913, 37.859249, 27.651340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096638, 37.169621, 27.795322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438122, 37.362762, 27.717325>,  <32.643013, 37.478649, 27.670527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438122, 37.362762, 27.717325>,  <32.096638, 37.169621, 27.795322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438122, 37.362762, 27.717325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394527, -0.355327, 0.847403,
		0.339888, -0.800369, -0.493848,
		0.853713, 0.482858, -0.194995,
		32.694237, 37.507622, 27.658827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706242, 36.641159, 27.887300>,  <32.096638, 37.169621, 27.795322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706242, 36.641159, 27.887300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858788, 37.010555, 27.903927>,  <32.950317, 37.232193, 27.913902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.858788, 37.010555, 27.903927>,  <32.706242, 36.641159, 27.887300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858788, 37.010555, 27.903927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554420, -0.264475, 0.789096,
		0.739714, -0.277891, -0.612862,
		0.381369, 0.923488, 0.041568,
		32.973198, 37.287601, 27.916397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450493, 36.502739, 28.067640>,  <32.706242, 36.641159, 27.887300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450493, 36.502739, 28.067640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352222, 36.882488, 28.145954>,  <33.293259, 37.110336, 28.192944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352222, 36.882488, 28.145954>,  <33.450493, 36.502739, 28.067640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352222, 36.882488, 28.145954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253616, -0.131987, 0.958258,
		0.935586, 0.285078, -0.208350,
		-0.245679, 0.949373, 0.195786,
		33.278519, 37.167301, 28.204689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048458, 36.697304, 28.364361>,  <33.450493, 36.502739, 28.067640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048458, 36.697304, 28.364361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.769032, 36.966114, 28.462658>,  <33.601376, 37.127399, 28.521637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.769032, 36.966114, 28.462658>,  <34.048458, 36.697304, 28.364361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769032, 36.966114, 28.462658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408111, 0.092093, 0.908276,
		0.587750, 0.734782, -0.338593,
		-0.698567, 0.672023, 0.245745,
		33.559460, 37.167721, 28.536381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420395, 37.262547, 28.648642>,  <34.048458, 36.697304, 28.364361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420395, 37.262547, 28.648642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045971, 37.272877, 28.789000>,  <33.821316, 37.279076, 28.873215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045971, 37.272877, 28.789000>,  <34.420395, 37.262547, 28.648642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045971, 37.272877, 28.789000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346949, 0.233512, 0.908349,
		-0.058476, 0.972011, -0.227543,
		-0.936059, 0.025829, 0.350893,
		33.765152, 37.280624, 28.894268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677887, 37.409389, 29.318281>,  <34.420395, 37.262547, 28.648642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677887, 37.409389, 29.318281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031254, 37.591255, 29.363649>,  <35.243275, 37.700375, 29.390869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031254, 37.591255, 29.363649>,  <34.677887, 37.409389, 29.318281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031254, 37.591255, 29.363649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089728, 0.073435, -0.993255,
		-0.459925, 0.887631, 0.024077,
		0.883413, 0.454663, 0.113419,
		35.296276, 37.727654, 29.397675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679825, 38.107765, 28.915359>,  <34.677887, 37.409389, 29.318281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679825, 38.107765, 28.915359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055000, 37.973965, 28.951990>,  <35.280106, 37.893684, 28.973969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055000, 37.973965, 28.951990>,  <34.679825, 38.107765, 28.915359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055000, 37.973965, 28.951990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083104, -0.039587, -0.995754,
		0.336705, 0.941564, -0.009332,
		0.937936, -0.334500, 0.091577,
		35.336380, 37.873615, 28.979464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027332, 38.426811, 28.410633>,  <34.679825, 38.107765, 28.915359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027332, 38.426811, 28.410633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240726, 38.096020, 28.481630>,  <35.368763, 37.897545, 28.524229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240726, 38.096020, 28.481630>,  <35.027332, 38.426811, 28.410633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240726, 38.096020, 28.481630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019540, -0.197742, -0.980059,
		0.845584, 0.526314, -0.089333,
		0.533484, -0.826977, 0.177492,
		35.400772, 37.847927, 28.534878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677597, 38.499371, 28.068296>,  <35.027332, 38.426811, 28.410633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677597, 38.499371, 28.068296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640575, 38.105087, 28.124588>,  <35.618362, 37.868515, 28.158363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640575, 38.105087, 28.124588>,  <35.677597, 38.499371, 28.068296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640575, 38.105087, 28.124588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292701, -0.162027, -0.942376,
		0.951714, -0.046029, 0.303516,
		-0.092554, -0.985712, 0.140731,
		35.612808, 37.809372, 28.166807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271397, 38.213894, 27.691092>,  <35.677597, 38.499371, 28.068296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271397, 38.213894, 27.691092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009254, 37.916382, 27.743713>,  <35.851971, 37.737873, 27.775288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009254, 37.916382, 27.743713>,  <36.271397, 38.213894, 27.691092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009254, 37.916382, 27.743713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235576, -0.366756, -0.899997,
		0.717648, -0.558822, 0.415570,
		-0.655351, -0.743780, 0.131557,
		35.812649, 37.693249, 27.783180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582832, 37.645226, 27.367807>,  <36.271397, 38.213894, 27.691092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582832, 37.645226, 27.367807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189430, 37.573128, 27.373894>,  <35.953388, 37.529869, 27.377544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189430, 37.573128, 27.373894>,  <36.582832, 37.645226, 27.367807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189430, 37.573128, 27.373894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030012, -0.245536, -0.968923,
		0.178382, -0.952483, 0.246895,
		-0.983504, -0.180248, 0.015214,
		35.894379, 37.519054, 27.378458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537544, 37.149258, 26.899441>,  <36.582832, 37.645226, 27.367807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537544, 37.149258, 26.899441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146313, 37.204914, 26.961403>,  <35.911572, 37.238308, 26.998579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146313, 37.204914, 26.961403>,  <36.537544, 37.149258, 26.899441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146313, 37.204914, 26.961403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179310, -0.184687, -0.966301,
		-0.105837, -0.972899, 0.205587,
		-0.978083, 0.139134, 0.154904,
		35.852886, 37.246655, 27.007874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166325, 36.590458, 26.754066>,  <36.537544, 37.149258, 26.899441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166325, 36.590458, 26.754066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912682, 36.896496, 26.709288>,  <35.760494, 37.080120, 26.682421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912682, 36.896496, 26.709288>,  <36.166325, 36.590458, 26.754066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912682, 36.896496, 26.709288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065704, -0.197564, -0.978086,
		-0.770446, -0.612859, 0.175547,
		-0.634110, 0.765097, -0.111945,
		35.722450, 37.126026, 26.675705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851967, 36.484287, 26.134134>,  <36.166325, 36.590458, 26.754066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851967, 36.484287, 26.134134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731327, 36.859653, 26.201565>,  <35.658943, 37.084873, 26.242023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731327, 36.859653, 26.201565>,  <35.851967, 36.484287, 26.134134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731327, 36.859653, 26.201565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205814, 0.108563, -0.972551,
		-0.930957, -0.328012, 0.160397,
		-0.301595, 0.938415, 0.168577,
		35.640850, 37.141178, 26.252138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262886, 36.522236, 25.929792>,  <35.851967, 36.484287, 26.134134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262886, 36.522236, 25.929792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364120, 36.908833, 25.912642>,  <35.424862, 37.140789, 25.902351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364120, 36.908833, 25.912642>,  <35.262886, 36.522236, 25.929792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364120, 36.908833, 25.912642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391294, 0.061730, -0.918193,
		-0.884780, 0.249161, 0.393806,
		0.253088, 0.966493, -0.042878,
		35.440048, 37.198780, 25.899778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554523, 36.933807, 25.676779>,  <35.262886, 36.522236, 25.929792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554523, 36.933807, 25.676779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884617, 37.146679, 25.601122>,  <35.082672, 37.274403, 25.555727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884617, 37.146679, 25.601122>,  <34.554523, 36.933807, 25.676779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884617, 37.146679, 25.601122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370004, 0.256392, -0.892950,
		-0.426713, 0.806877, 0.408491,
		0.825235, 0.532176, -0.189142,
		35.132187, 37.306332, 25.544380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307217, 37.563034, 25.302273>,  <34.554523, 36.933807, 25.676779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307217, 37.563034, 25.302273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702374, 37.541794, 25.243952>,  <34.939468, 37.529049, 25.208960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702374, 37.541794, 25.243952>,  <34.307217, 37.563034, 25.302273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702374, 37.541794, 25.243952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134960, 0.169656, -0.976218,
		0.076570, 0.984072, 0.160435,
		0.987888, -0.053096, -0.145801,
		34.998741, 37.525864, 25.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471672, 38.173790, 24.864613>,  <34.307217, 37.563034, 25.302273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471672, 38.173790, 24.864613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768047, 37.913624, 24.797724>,  <34.945873, 37.757523, 24.757591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.768047, 37.913624, 24.797724>,  <34.471672, 38.173790, 24.864613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768047, 37.913624, 24.797724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029542, 0.217194, -0.975681,
		0.670918, 0.727864, 0.141714,
		0.740943, -0.650416, -0.167222,
		34.990330, 37.718498, 24.747557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851337, 38.477135, 24.366577>,  <34.471672, 38.173790, 24.864613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851337, 38.477135, 24.366577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.899971, 38.080418, 24.350752>,  <34.929150, 37.842388, 24.341257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.899971, 38.080418, 24.350752>,  <34.851337, 38.477135, 24.366577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899971, 38.080418, 24.350752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034096, 0.044008, -0.998449,
		0.991996, 0.120045, 0.039166,
		0.121583, -0.991793, -0.039563,
		34.936447, 37.782879, 24.338882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456745, 38.303822, 23.921000>,  <34.851337, 38.477135, 24.366577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456745, 38.303822, 23.921000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192410, 38.003624, 23.918173>,  <35.033806, 37.823505, 23.916477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192410, 38.003624, 23.918173>,  <35.456745, 38.303822, 23.921000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192410, 38.003624, 23.918173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143041, 0.135185, -0.980441,
		0.736768, -0.646906, -0.196687,
		-0.660843, -0.750491, -0.007066,
		34.994156, 37.778477, 23.916054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752098, 37.891914, 23.355843>,  <35.456745, 38.303822, 23.921000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752098, 37.891914, 23.355843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365997, 37.793739, 23.391752>,  <35.134338, 37.734837, 23.413298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365997, 37.793739, 23.391752>,  <35.752098, 37.891914, 23.355843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365997, 37.793739, 23.391752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132073, 0.161707, -0.977961,
		0.225508, -0.955831, -0.188502,
		-0.965247, -0.245434, 0.089773,
		35.076424, 37.720108, 23.418684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637794, 37.437511, 22.885878>,  <35.752098, 37.891914, 23.355843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637794, 37.437511, 22.885878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252438, 37.522232, 22.951626>,  <35.021225, 37.573063, 22.991074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252438, 37.522232, 22.951626>,  <35.637794, 37.437511, 22.885878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252438, 37.522232, 22.951626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135432, 0.144643, -0.980172,
		-0.231376, -0.966550, -0.110663,
		-0.963391, 0.211801, 0.164368,
		34.963421, 37.585773, 23.000937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340675, 37.177303, 22.373777>,  <35.637794, 37.437511, 22.885878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340675, 37.177303, 22.373777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052547, 37.429665, 22.489094>,  <34.879673, 37.581081, 22.558283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052547, 37.429665, 22.489094>,  <35.340675, 37.177303, 22.373777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052547, 37.429665, 22.489094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229369, 0.175594, -0.957370,
		-0.654625, -0.755734, 0.018226,
		-0.720317, 0.630899, 0.288290,
		34.836452, 37.618935, 22.575581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648064, 37.000504, 22.034708>,  <35.340675, 37.177303, 22.373777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648064, 37.000504, 22.034708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628410, 37.385551, 22.141253>,  <34.616619, 37.616581, 22.205179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628410, 37.385551, 22.141253>,  <34.648064, 37.000504, 22.034708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628410, 37.385551, 22.141253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487372, 0.209671, -0.847648,
		-0.871811, -0.171463, 0.458852,
		-0.049132, 0.962620, 0.266360,
		34.613670, 37.674339, 22.221161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.795029, 37.325356, 21.776495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038387, 37.623325, 21.885994>,  <34.184402, 37.802109, 21.951693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038387, 37.623325, 21.885994>,  <33.795029, 37.325356, 21.776495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038387, 37.623325, 21.885994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298441, 0.534355, -0.790821,
		-0.735382, 0.399435, 0.547417,
		0.608396, 0.744927, 0.273747,
		34.220905, 37.846802, 21.968119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400642, 37.941238, 21.811337>,  <33.795029, 37.325356, 21.776495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400642, 37.941238, 21.811337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769798, 38.088394, 21.765860>,  <33.991291, 38.176685, 21.738573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769798, 38.088394, 21.765860>,  <33.400642, 37.941238, 21.811337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769798, 38.088394, 21.765860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287467, 0.461834, -0.839090,
		-0.256182, 0.807074, 0.531980,
		0.922894, 0.367887, -0.113694,
		34.046665, 38.198761, 21.731752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188023, 38.570511, 21.659899>,  <33.400642, 37.941238, 21.811337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188023, 38.570511, 21.659899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570522, 38.558426, 21.543499>,  <33.800022, 38.551174, 21.473660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570522, 38.558426, 21.543499>,  <33.188023, 38.570511, 21.659899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570522, 38.558426, 21.543499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195148, 0.675180, -0.711371,
		0.217966, 0.737034, 0.639743,
		0.956247, -0.030210, -0.290997,
		33.857395, 38.549362, 21.456200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406212, 39.307781, 21.542955>,  <33.188023, 38.570511, 21.659899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406212, 39.307781, 21.542955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653835, 39.078693, 21.328011>,  <33.802410, 38.941242, 21.199043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653835, 39.078693, 21.328011>,  <33.406212, 39.307781, 21.542955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653835, 39.078693, 21.328011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065178, 0.644409, -0.761899,
		0.782636, 0.506684, 0.361597,
		0.619058, -0.572721, -0.537362,
		33.839554, 38.906876, 21.166801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851620, 39.739201, 21.222763>,  <33.406212, 39.307781, 21.542955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851620, 39.739201, 21.222763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861534, 39.397346, 21.015305>,  <33.867481, 39.192234, 20.890829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861534, 39.397346, 21.015305>,  <33.851620, 39.739201, 21.222763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861534, 39.397346, 21.015305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206040, 0.503299, -0.839189,
		0.978230, 0.127659, -0.163615,
		0.024783, -0.854631, -0.518644,
		33.868969, 39.140957, 20.859711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325432, 39.867165, 20.628355>,  <33.851620, 39.739201, 21.222763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325432, 39.867165, 20.628355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069103, 39.577934, 20.525192>,  <33.915306, 39.404396, 20.463295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069103, 39.577934, 20.525192>,  <34.325432, 39.867165, 20.628355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069103, 39.577934, 20.525192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229546, 0.501054, -0.834418,
		0.732570, -0.475510, -0.487064,
		-0.640819, -0.723073, -0.257905,
		33.876858, 39.361012, 20.447821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496445, 39.783669, 19.893927>,  <34.325432, 39.867165, 20.628355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496445, 39.783669, 19.893927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175724, 39.547661, 19.931877>,  <33.983292, 39.406055, 19.954647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175724, 39.547661, 19.931877>,  <34.496445, 39.783669, 19.893927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175724, 39.547661, 19.931877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326866, 0.300089, -0.896161,
		0.500280, -0.749551, -0.433467,
		-0.801797, -0.590017, 0.094874,
		33.935184, 39.370655, 19.960339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501049, 39.375889, 19.300358>,  <34.496445, 39.783669, 19.893927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501049, 39.375889, 19.300358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130623, 39.381927, 19.451183>,  <33.908367, 39.385551, 19.541679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130623, 39.381927, 19.451183>,  <34.501049, 39.375889, 19.300358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130623, 39.381927, 19.451183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373419, 0.107490, -0.921414,
		-0.054444, -0.994092, -0.093904,
		-0.926064, 0.015100, 0.377065,
		33.852802, 39.386456, 19.564302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167629, 38.876808, 18.904999>,  <34.501049, 39.375889, 19.300358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167629, 38.876808, 18.904999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888966, 39.128983, 19.041945>,  <33.721767, 39.280285, 19.124111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.888966, 39.128983, 19.041945>,  <34.167629, 38.876808, 18.904999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888966, 39.128983, 19.041945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388131, 0.070131, -0.918932,
		-0.603337, -0.773068, 0.195834,
		-0.696663, 0.630434, 0.342364,
		33.679966, 39.318111, 19.144653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626862, 38.695179, 18.519672>,  <34.167629, 38.876808, 18.904999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626862, 38.695179, 18.519672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565495, 39.067245, 18.653090>,  <33.528675, 39.290485, 18.733141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565495, 39.067245, 18.653090>,  <33.626862, 38.695179, 18.519672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565495, 39.067245, 18.653090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226612, 0.295426, -0.928100,
		-0.961826, -0.217973, 0.165463,
		-0.153419, 0.930167, 0.333544,
		33.519470, 39.346294, 18.753153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006897, 38.761051, 18.181852>,  <33.626862, 38.695179, 18.519672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006897, 38.761051, 18.181852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163185, 39.112625, 18.291262>,  <33.256958, 39.323570, 18.356907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163185, 39.112625, 18.291262>,  <33.006897, 38.761051, 18.181852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163185, 39.112625, 18.291262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251592, 0.387796, -0.886744,
		-0.885459, 0.277654, 0.372653,
		0.390721, 0.878933, 0.273522,
		33.280403, 39.376305, 18.373318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435307, 39.156342, 18.299166>,  <33.006897, 38.761051, 18.181852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435307, 39.156342, 18.299166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760952, 39.374676, 18.219885>,  <32.956341, 39.505676, 18.172316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760952, 39.374676, 18.219885>,  <32.435307, 39.156342, 18.299166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760952, 39.374676, 18.219885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397417, 0.274833, -0.875515,
		-0.423411, 0.791539, 0.440669,
		0.814114, 0.545832, -0.198204,
		33.005188, 39.538425, 18.160423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225929, 39.809620, 18.065950>,  <32.435307, 39.156342, 18.299166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225929, 39.809620, 18.065950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603790, 39.802979, 17.934887>,  <32.830505, 39.798992, 17.856249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603790, 39.802979, 17.934887>,  <32.225929, 39.809620, 18.065950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603790, 39.802979, 17.934887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306709, 0.309859, -0.899954,
		0.116472, 0.950638, 0.287615,
		0.944650, -0.016605, -0.327659,
		32.887184, 39.797997, 17.836590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342026, 40.536942, 17.790442>,  <32.225929, 39.809620, 18.065950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342026, 40.536942, 17.790442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621090, 40.297577, 17.632872>,  <32.788528, 40.153957, 17.538330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.621090, 40.297577, 17.632872>,  <32.342026, 40.536942, 17.790442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621090, 40.297577, 17.632872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046137, 0.511177, -0.858236,
		0.714940, 0.616934, 0.329020,
		0.697662, -0.598407, -0.393924,
		32.830387, 40.118053, 17.514694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702099, 40.974419, 17.519821>,  <32.342026, 40.536942, 17.790442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702099, 40.974419, 17.519821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.780674, 40.630493, 17.331295>,  <32.827820, 40.424137, 17.218180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.780674, 40.630493, 17.331295>,  <32.702099, 40.974419, 17.519821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780674, 40.630493, 17.331295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076844, 0.465702, -0.881599,
		0.977500, 0.209399, 0.025412,
		0.196441, -0.859810, -0.471315,
		32.839607, 40.372551, 17.189901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033550, 41.219807, 16.834270>,  <32.702099, 40.974419, 17.519821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033550, 41.219807, 16.834270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954460, 40.833305, 16.768236>,  <32.907005, 40.601402, 16.728615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954460, 40.833305, 16.768236>,  <33.033550, 41.219807, 16.834270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954460, 40.833305, 16.768236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183561, 0.201929, -0.962045,
		0.962917, -0.159922, -0.217294,
		-0.197730, -0.966255, -0.165085,
		32.895142, 40.543430, 16.718710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309643, 41.108898, 16.135695>,  <33.033550, 41.219807, 16.834270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309643, 41.108898, 16.135695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092884, 40.775749, 16.180727>,  <32.962830, 40.575859, 16.207747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092884, 40.775749, 16.180727>,  <33.309643, 41.108898, 16.135695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092884, 40.775749, 16.180727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226425, 0.015675, -0.973902,
		0.809373, -0.553242, -0.197078,
		-0.541893, -0.832873, 0.112581,
		32.930317, 40.525887, 16.214500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478321, 40.614414, 15.590933>,  <33.309643, 41.108898, 16.135695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478321, 40.614414, 15.590933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113552, 40.517136, 15.723144>,  <32.894691, 40.458767, 15.802470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113552, 40.517136, 15.723144>,  <33.478321, 40.614414, 15.590933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113552, 40.517136, 15.723144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368102, 0.128812, -0.920819,
		0.181369, -0.961385, -0.206990,
		-0.911924, -0.243202, 0.330525,
		32.839973, 40.444176, 15.822302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147114, 40.162640, 15.050988>,  <33.478321, 40.614414, 15.590933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147114, 40.162640, 15.050988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.851990, 40.308838, 15.277986>,  <32.674915, 40.396557, 15.414185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.851990, 40.308838, 15.277986>,  <33.147114, 40.162640, 15.050988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851990, 40.308838, 15.277986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568680, 0.116355, -0.814288,
		-0.363653, -0.923510, 0.122005,
		-0.737808, 0.365500, 0.567495,
		32.630646, 40.418488, 15.448234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442081, 39.865349, 14.823683>,  <33.147114, 40.162640, 15.050988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442081, 39.865349, 14.823683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309093, 40.178890, 15.033459>,  <32.229301, 40.367016, 15.159325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309093, 40.178890, 15.033459>,  <32.442081, 39.865349, 14.823683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309093, 40.178890, 15.033459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729265, 0.138931, -0.669978,
		-0.598025, -0.605206, 0.525445,
		-0.332474, 0.783852, 0.524440,
		32.209351, 40.414047, 15.190790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721294, 39.767040, 14.993628>,  <32.442081, 39.865349, 14.823683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721294, 39.767040, 14.993628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775637, 40.161415, 15.032548>,  <31.808243, 40.398041, 15.055901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775637, 40.161415, 15.032548>,  <31.721294, 39.767040, 14.993628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775637, 40.161415, 15.032548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559211, 0.157384, -0.813949,
		-0.817818, 0.056169, 0.572729,
		0.135857, 0.985939, 0.097301,
		31.816393, 40.457195, 15.061738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071156, 40.088013, 15.011405>,  <31.721294, 39.767040, 14.993628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071156, 40.088013, 15.011405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332565, 40.373535, 14.910692>,  <31.489410, 40.544849, 14.850265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332565, 40.373535, 14.910692>,  <31.071156, 40.088013, 15.011405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332565, 40.373535, 14.910692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533431, 0.198345, -0.822260,
		-0.536991, 0.671674, 0.510387,
		0.653523, 0.713803, -0.251782,
		31.528622, 40.587677, 14.835157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725662, 40.722889, 14.958150>,  <31.071156, 40.088013, 15.011405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725662, 40.722889, 14.958150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041756, 40.703079, 14.713829>,  <31.231411, 40.691193, 14.567236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041756, 40.703079, 14.713829>,  <30.725662, 40.722889, 14.958150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041756, 40.703079, 14.713829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564995, 0.327100, -0.757487,
		0.237304, 0.943692, 0.230506,
		0.790233, -0.049520, -0.610803,
		31.278826, 40.688225, 14.530588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848759, 41.384529, 14.546269>,  <30.725662, 40.722889, 14.958150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848759, 41.384529, 14.546269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945833, 41.030533, 14.387325>,  <31.004078, 40.818134, 14.291959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945833, 41.030533, 14.387325>,  <30.848759, 41.384529, 14.546269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945833, 41.030533, 14.387325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511039, 0.231537, -0.827787,
		0.824587, 0.403957, -0.396074,
		0.242685, -0.884991, -0.397360,
		31.018639, 40.765034, 14.268117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232550, 41.382751, 14.947153>,  <30.848759, 41.384529, 14.546269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232550, 41.382751, 14.947153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851969, 41.262379, 14.921294>,  <29.623621, 41.190155, 14.905779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851969, 41.262379, 14.921294>,  <30.232550, 41.382751, 14.947153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851969, 41.262379, 14.921294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081340, 0.043261, 0.995747,
		-0.296852, 0.952665, -0.065638,
		-0.951453, -0.300928, -0.064648,
		29.566532, 41.172100, 14.901900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762779, 41.961765, 15.102133>,  <30.232550, 41.382751, 14.947153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762779, 41.961765, 15.102133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598341, 41.607941, 15.190269>,  <29.499678, 41.395645, 15.243152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598341, 41.607941, 15.190269>,  <29.762779, 41.961765, 15.102133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598341, 41.607941, 15.190269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166963, 0.164561, 0.972133,
		-0.896172, 0.436427, 0.080040,
		-0.411094, -0.884563, 0.220342,
		29.475014, 41.342571, 15.256372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413248, 42.070850, 15.806360>,  <29.762779, 41.961765, 15.102133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413248, 42.070850, 15.806360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400106, 41.671989, 15.779220>,  <29.392221, 41.432671, 15.762935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400106, 41.671989, 15.779220>,  <29.413248, 42.070850, 15.806360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400106, 41.671989, 15.779220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049693, -0.069435, 0.996348,
		-0.998224, 0.029363, 0.051833,
		-0.032855, -0.997154, -0.067852,
		29.390249, 41.372845, 15.758864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150705, 41.920578, 16.414539>,  <29.413248, 42.070850, 15.806360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150705, 41.920578, 16.414539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305397, 41.579708, 16.273554>,  <29.398212, 41.375187, 16.188963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305397, 41.579708, 16.273554>,  <29.150705, 41.920578, 16.414539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305397, 41.579708, 16.273554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065235, -0.355967, 0.932219,
		-0.919883, -0.383508, -0.082071,
		0.386728, -0.852179, -0.352466,
		29.421415, 41.324055, 16.167814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811426, 41.301907, 16.579634>,  <29.150705, 41.920578, 16.414539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811426, 41.301907, 16.579634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.192806, 41.189957, 16.534731>,  <29.421635, 41.122787, 16.507790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.192806, 41.189957, 16.534731>,  <28.811426, 41.301907, 16.579634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192806, 41.189957, 16.534731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003816, -0.383434, 0.923560,
		-0.301520, -0.880142, -0.366654,
		0.953452, -0.279871, -0.112255,
		29.478842, 41.105995, 16.501055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840811, 40.735813, 16.982958>,  <28.811426, 41.301907, 16.579634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840811, 40.735813, 16.982958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225145, 40.827080, 16.920055>,  <29.455746, 40.881840, 16.882315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225145, 40.827080, 16.920055>,  <28.840811, 40.735813, 16.982958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225145, 40.827080, 16.920055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248962, -0.461574, 0.851450,
		0.121688, -0.857257, -0.500303,
		0.960838, 0.228168, -0.157256,
		29.513397, 40.895531, 16.872879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121927, 40.170303, 17.306629>,  <28.840811, 40.735813, 16.982958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121927, 40.170303, 17.306629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428591, 40.423279, 17.262356>,  <29.612589, 40.575066, 17.235792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.428591, 40.423279, 17.262356>,  <29.121927, 40.170303, 17.306629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428591, 40.423279, 17.262356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421710, -0.366019, 0.829572,
		0.484145, -0.682676, -0.547319,
		0.766658, 0.632443, -0.110685,
		29.658588, 40.613010, 17.229151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791788, 39.820259, 17.334621>,  <29.121927, 40.170303, 17.306629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791788, 39.820259, 17.334621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846138, 40.203781, 17.434401>,  <29.878748, 40.433895, 17.494268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846138, 40.203781, 17.434401>,  <29.791788, 39.820259, 17.334621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846138, 40.203781, 17.434401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528498, -0.283113, 0.800336,
		0.837990, 0.023085, -0.545197,
		0.135876, 0.958809, 0.249446,
		29.886900, 40.491425, 17.509233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510529, 39.840748, 17.573336>,  <29.791788, 39.820259, 17.334621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510529, 39.840748, 17.573336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.384443, 40.192760, 17.715422>,  <30.308792, 40.403969, 17.800674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.384443, 40.192760, 17.715422>,  <30.510529, 39.840748, 17.573336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384443, 40.192760, 17.715422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541744, -0.140463, 0.828724,
		0.779202, 0.453659, -0.432479,
		-0.315211, 0.880036, 0.355216,
		30.289881, 40.456772, 17.821987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064474, 40.210537, 17.588516>,  <30.510529, 39.840748, 17.573336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064474, 40.210537, 17.588516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794645, 40.371605, 17.836004>,  <30.632748, 40.468246, 17.984497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794645, 40.371605, 17.836004>,  <31.064474, 40.210537, 17.588516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794645, 40.371605, 17.836004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585726, -0.218177, 0.780592,
		0.449310, 0.888964, -0.088678,
		-0.674571, 0.402669, 0.618718,
		30.592274, 40.492405, 18.021620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395765, 40.690445, 17.988800>,  <31.064474, 40.210537, 17.588516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395765, 40.690445, 17.988800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.067993, 40.605709, 18.201838>,  <30.871330, 40.554867, 18.329660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.067993, 40.605709, 18.201838>,  <31.395765, 40.690445, 17.988800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067993, 40.605709, 18.201838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571147, -0.223620, 0.789801,
		-0.048215, 0.951376, 0.304235,
		-0.819431, -0.211843, 0.532593,
		30.822165, 40.542156, 18.361616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661951, 40.713604, 18.631229>,  <31.395765, 40.690445, 17.988800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661951, 40.713604, 18.631229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283119, 40.593765, 18.677324>,  <31.055820, 40.521862, 18.704981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283119, 40.593765, 18.677324>,  <31.661951, 40.713604, 18.631229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283119, 40.593765, 18.677324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209056, -0.303276, 0.929688,
		-0.243580, 0.904582, 0.349859,
		-0.947082, -0.299594, 0.115236,
		30.998995, 40.503887, 18.711895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398041, 40.975006, 19.247984>,  <31.661951, 40.713604, 18.631229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398041, 40.975006, 19.247984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.191399, 40.646069, 19.152597>,  <31.067413, 40.448704, 19.095366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.191399, 40.646069, 19.152597>,  <31.398041, 40.975006, 19.247984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191399, 40.646069, 19.152597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190136, -0.381736, 0.904503,
		-0.834846, 0.421930, 0.353564,
		-0.516605, -0.822346, -0.238467,
		31.036417, 40.399364, 19.081057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115150, 40.856659, 19.810366>,  <31.398041, 40.975006, 19.247984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115150, 40.856659, 19.810366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.036062, 40.513008, 19.621555>,  <30.988609, 40.306820, 19.508268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.036062, 40.513008, 19.621555>,  <31.115150, 40.856659, 19.810366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036062, 40.513008, 19.621555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052301, -0.490094, 0.870099,
		-0.978862, 0.147350, 0.141835,
		-0.197722, -0.859125, -0.472028,
		30.976746, 40.255272, 19.479946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471918, 40.497482, 20.131186>,  <31.115150, 40.856659, 19.810366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471918, 40.497482, 20.131186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676022, 40.215359, 19.934340>,  <30.798485, 40.046085, 19.816233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676022, 40.215359, 19.934340>,  <30.471918, 40.497482, 20.131186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676022, 40.215359, 19.934340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222726, -0.444316, 0.867743,
		-0.830679, -0.552381, -0.069627,
		0.510261, -0.705308, -0.492113,
		30.829100, 40.003765, 19.786705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264063, 39.786572, 20.421463>,  <30.471918, 40.497482, 20.131186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264063, 39.786572, 20.421463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612629, 39.736637, 20.231703>,  <30.821768, 39.706676, 20.117847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612629, 39.736637, 20.231703>,  <30.264063, 39.786572, 20.421463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612629, 39.736637, 20.231703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403857, -0.366395, 0.838245,
		-0.278455, -0.922048, -0.268869,
		0.871414, -0.124829, -0.474400,
		30.874052, 39.699188, 20.089382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496502, 39.106991, 20.390629>,  <30.264063, 39.786572, 20.421463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496502, 39.106991, 20.390629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844658, 39.303555, 20.378365>,  <31.053551, 39.421494, 20.371006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844658, 39.303555, 20.378365>,  <30.496502, 39.106991, 20.390629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844658, 39.303555, 20.378365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309103, -0.496898, 0.810893,
		0.383244, -0.715270, -0.584391,
		0.870390, 0.491407, -0.030659,
		31.105776, 39.450977, 20.369167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978535, 38.578392, 20.599258>,  <30.496502, 39.106991, 20.390629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978535, 38.578392, 20.599258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.159639, 38.930668, 20.654966>,  <31.268301, 39.142033, 20.688391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.159639, 38.930668, 20.654966>,  <30.978535, 38.578392, 20.599258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159639, 38.930668, 20.654966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379147, -0.331532, 0.863906,
		0.807004, -0.338339, -0.484015,
		0.452760, 0.880689, 0.139268,
		31.295467, 39.194874, 20.696747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696592, 38.410309, 20.705450>,  <30.978535, 38.578392, 20.599258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696592, 38.410309, 20.705450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.601574, 38.761497, 20.871693>,  <31.544563, 38.972210, 20.971439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.601574, 38.761497, 20.871693>,  <31.696592, 38.410309, 20.705450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601574, 38.761497, 20.871693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212561, -0.370503, 0.904182,
		0.947834, 0.303127, -0.098612,
		-0.237546, 0.877976, 0.415608,
		31.530310, 39.024891, 20.996374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122116, 38.425289, 21.340801>,  <31.696592, 38.410309, 20.705450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122116, 38.425289, 21.340801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872572, 38.730618, 21.407907>,  <31.722845, 38.913815, 21.448172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872572, 38.730618, 21.407907>,  <32.122116, 38.425289, 21.340801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872572, 38.730618, 21.407907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056351, -0.170167, 0.983803,
		0.779502, 0.623208, 0.063146,
		-0.623860, 0.763318, 0.167764,
		31.685413, 38.959614, 21.458237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.039810, 36.913681, 24.616941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.740086, 37.175484, 24.657242>,  <35.560249, 37.332565, 24.681423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.740086, 37.175484, 24.657242>,  <36.039810, 36.913681, 24.616941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740086, 37.175484, 24.657242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105902, -0.031750, 0.993869,
		0.653690, 0.755391, -0.045522,
		-0.749315, 0.654504, 0.100752,
		35.515289, 37.371834, 24.687468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243523, 37.488075, 24.917976>,  <36.039810, 36.913681, 24.616941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243523, 37.488075, 24.917976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852821, 37.508465, 25.001266>,  <35.618401, 37.520699, 25.051241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852821, 37.508465, 25.001266>,  <36.243523, 37.488075, 24.917976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852821, 37.508465, 25.001266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212796, 0.112856, 0.970557,
		0.025976, 0.992303, -0.121080,
		-0.976751, 0.050977, 0.208226,
		35.559795, 37.523758, 25.063734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124474, 38.097027, 25.353571>,  <36.243523, 37.488075, 24.917976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124474, 38.097027, 25.353571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829166, 37.833050, 25.409334>,  <35.651981, 37.674664, 25.442791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829166, 37.833050, 25.409334>,  <36.124474, 38.097027, 25.353571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829166, 37.833050, 25.409334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120708, 0.074078, 0.989920,
		-0.663616, 0.747656, 0.024971,
		-0.738270, -0.659942, 0.139407,
		35.607685, 37.635067, 25.451157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785431, 38.427498, 25.860426>,  <36.124474, 38.097027, 25.353571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785431, 38.427498, 25.860426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.653248, 38.050301, 25.876240>,  <35.573936, 37.823982, 25.885729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.653248, 38.050301, 25.876240>,  <35.785431, 38.427498, 25.860426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653248, 38.050301, 25.876240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166704, -0.017089, 0.985859,
		-0.928981, 0.332378, 0.162848,
		-0.330461, -0.942991, 0.039534,
		35.554108, 37.767403, 25.888100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405647, 38.440525, 26.439529>,  <35.785431, 38.427498, 25.860426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405647, 38.440525, 26.439529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.448063, 38.052670, 26.351395>,  <35.473511, 37.819954, 26.298513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.448063, 38.052670, 26.351395>,  <35.405647, 38.440525, 26.439529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448063, 38.052670, 26.351395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164071, -0.235612, 0.957897,
		-0.980733, -0.065421, -0.184074,
		0.106036, -0.969643, -0.220339,
		35.479874, 37.761776, 26.285294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805321, 38.104057, 26.673786>,  <35.405647, 38.440525, 26.439529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805321, 38.104057, 26.673786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.094131, 37.827316, 26.671688>,  <35.267418, 37.661274, 26.670429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.094131, 37.827316, 26.671688>,  <34.805321, 38.104057, 26.673786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094131, 37.827316, 26.671688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106851, -0.118996, 0.987129,
		-0.683568, -0.712169, -0.159843,
		0.722023, -0.691849, -0.005246,
		35.310738, 37.619762, 26.670115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595802, 37.584335, 27.139727>,  <34.805321, 38.104057, 26.673786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595802, 37.584335, 27.139727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.986691, 37.506386, 27.106102>,  <35.221222, 37.459618, 27.085928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.986691, 37.506386, 27.106102>,  <34.595802, 37.584335, 27.139727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986691, 37.506386, 27.106102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058066, -0.135471, 0.989078,
		-0.204130, -0.971428, -0.121070,
		0.977220, -0.194870, -0.084060,
		35.279858, 37.447926, 27.080883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691166, 36.967693, 27.513454>,  <34.595802, 37.584335, 27.139727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691166, 36.967693, 27.513454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040096, 37.161293, 27.485771>,  <35.249454, 37.277454, 27.469162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040096, 37.161293, 27.485771>,  <34.691166, 36.967693, 27.513454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040096, 37.161293, 27.485771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198938, -0.222066, 0.954521,
		0.446622, -0.846421, -0.290000,
		0.872326, 0.484002, -0.069206,
		35.301796, 37.306492, 27.465010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133686, 36.594723, 27.951553>,  <34.691166, 36.967693, 27.513454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133686, 36.594723, 27.951553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.323502, 36.941620, 27.891291>,  <35.437393, 37.149757, 27.855133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.323502, 36.941620, 27.891291>,  <35.133686, 36.594723, 27.951553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323502, 36.941620, 27.891291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235687, 0.039721, 0.971017,
		0.848093, -0.496296, -0.185549,
		0.474542, 0.867244, -0.150657,
		35.465866, 37.201794, 27.846094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686329, 36.527805, 28.394917>,  <35.133686, 36.594723, 27.951553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686329, 36.527805, 28.394917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.642254, 36.917439, 28.315899>,  <35.615807, 37.151218, 28.268488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.642254, 36.917439, 28.315899>,  <35.686329, 36.527805, 28.394917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642254, 36.917439, 28.315899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170762, 0.214353, 0.961713,
		0.979131, 0.072239, -0.189956,
		-0.110191, 0.974081, -0.197544,
		35.609196, 37.209663, 28.256636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106483, 36.782310, 28.847755>,  <35.686329, 36.527805, 28.394917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106483, 36.782310, 28.847755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.913551, 37.118328, 28.748413>,  <35.797791, 37.319939, 28.688808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.913551, 37.118328, 28.748413>,  <36.106483, 36.782310, 28.847755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913551, 37.118328, 28.748413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261108, 0.408495, 0.874617,
		0.836170, 0.357007, -0.416372,
		-0.482330, 0.840047, -0.248354,
		35.768852, 37.370342, 28.673906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526421, 37.372677, 28.987856>,  <36.106483, 36.782310, 28.847755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526421, 37.372677, 28.987856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.154556, 37.519604, 28.999189>,  <35.931438, 37.607761, 29.005989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.154556, 37.519604, 28.999189>,  <36.526421, 37.372677, 28.987856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154556, 37.519604, 28.999189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205456, 0.453083, 0.867470,
		0.305803, 0.812275, -0.496683,
		-0.929663, 0.367321, 0.028333,
		35.875656, 37.629799, 29.007689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557957, 38.078850, 29.383535>,  <36.526421, 37.372677, 28.987856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557957, 38.078850, 29.383535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.182156, 37.942181, 29.393320>,  <35.956676, 37.860180, 29.399191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.182156, 37.942181, 29.393320>,  <36.557957, 38.078850, 29.383535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182156, 37.942181, 29.393320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092948, 0.323004, 0.941822,
		-0.329700, 0.882568, -0.335220,
		-0.939499, -0.341677, 0.024461,
		35.900307, 37.839676, 29.400658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704361, 38.836971, 29.736633>,  <36.557957, 38.078850, 29.383535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704361, 38.836971, 29.736633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652252, 38.672565, 29.375723>,  <36.620987, 38.573921, 29.159178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652252, 38.672565, 29.375723>,  <36.704361, 38.836971, 29.736633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652252, 38.672565, 29.375723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945148, -0.223454, 0.238254,
		-0.299541, 0.883821, -0.359355,
		-0.130275, -0.411010, -0.902275,
		36.613171, 38.549263, 29.105040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910419, 39.547127, 29.590178>,  <36.704361, 38.836971, 29.736633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910419, 39.547127, 29.590178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834942, 39.936501, 29.642042>,  <36.789654, 40.170124, 29.673161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834942, 39.936501, 29.642042>,  <36.910419, 39.547127, 29.590178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834942, 39.936501, 29.642042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374896, 0.050631, -0.925683,
		-0.907661, -0.223281, 0.355384,
		-0.188694, 0.973438, 0.129662,
		36.778336, 40.228531, 29.680941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187603, 39.655716, 29.370600>,  <36.910419, 39.547127, 29.590178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187603, 39.655716, 29.370600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.348057, 40.022053, 29.363468>,  <36.444328, 40.241856, 29.359188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.348057, 40.022053, 29.363468>,  <36.187603, 39.655716, 29.370600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348057, 40.022053, 29.363468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300812, 0.113318, -0.946927,
		-0.865219, 0.385209, 0.320953,
		0.401135, 0.915845, -0.017831,
		36.468399, 40.296806, 29.358118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770527, 40.039371, 28.973606>,  <36.187603, 39.655716, 29.370600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770527, 40.039371, 28.973606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099693, 40.266041, 28.990025>,  <36.297192, 40.402042, 28.999876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099693, 40.266041, 28.990025>,  <35.770527, 40.039371, 28.973606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099693, 40.266041, 28.990025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114435, 0.236077, -0.964973,
		-0.556518, 0.789395, 0.259119,
		0.822917, 0.566677, 0.041047,
		36.346569, 40.436043, 29.002338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587513, 40.590797, 28.640497>,  <35.770527, 40.039371, 28.973606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587513, 40.590797, 28.640497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987473, 40.590965, 28.634699>,  <36.227448, 40.591068, 28.631220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987473, 40.590965, 28.634699>,  <35.587513, 40.590797, 28.640497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987473, 40.590965, 28.634699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014388, 0.153045, -0.988115,
		0.001799, 0.988219, 0.153035,
		0.999895, 0.000424, -0.014494,
		36.287441, 40.591091, 28.630350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742252, 41.236359, 28.377541>,  <35.587513, 40.590797, 28.640497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742252, 41.236359, 28.377541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053463, 40.991745, 28.319998>,  <36.240189, 40.844978, 28.285473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053463, 40.991745, 28.319998>,  <35.742252, 41.236359, 28.377541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053463, 40.991745, 28.319998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000555, 0.228318, -0.973587,
		0.628226, 0.757560, 0.177299,
		0.778031, -0.611534, -0.143856,
		36.286873, 40.808285, 28.276840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155437, 41.657700, 27.829323>,  <35.742252, 41.236359, 28.377541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155437, 41.657700, 27.829323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302250, 41.285934, 27.813988>,  <36.390339, 41.062874, 27.804787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302250, 41.285934, 27.813988>,  <36.155437, 41.657700, 27.829323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302250, 41.285934, 27.813988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098616, 0.002101, -0.995124,
		0.924965, 0.369026, -0.090884,
		0.367035, -0.929417, -0.038335,
		36.412361, 41.007111, 27.802486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794460, 41.640915, 27.533659>,  <36.155437, 41.657700, 27.829323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794460, 41.640915, 27.533659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651573, 41.269817, 27.490416>,  <36.565842, 41.047157, 27.464470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651573, 41.269817, 27.490416>,  <36.794460, 41.640915, 27.533659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651573, 41.269817, 27.490416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087914, 0.081837, -0.992761,
		0.929876, -0.364132, 0.052329,
		-0.357213, -0.927745, -0.108111,
		36.544411, 40.991493, 27.457983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191380, 41.251740, 26.886986>,  <36.794460, 41.640915, 27.533659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191380, 41.251740, 26.886986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854431, 41.052006, 26.968054>,  <36.652264, 40.932167, 27.016695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.854431, 41.052006, 26.968054>,  <37.191380, 41.251740, 26.886986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854431, 41.052006, 26.968054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188761, -0.078859, -0.978851,
		0.504758, -0.862812, -0.027827,
		-0.842371, -0.499336, 0.202671,
		36.601719, 40.902206, 27.028854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220642, 40.700748, 26.316568>,  <37.191380, 41.251740, 26.886986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220642, 40.700748, 26.316568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850613, 40.687733, 26.467922>,  <36.628593, 40.679924, 26.558735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850613, 40.687733, 26.467922>,  <37.220642, 40.700748, 26.316568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850613, 40.687733, 26.467922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361948, -0.226202, -0.904338,
		0.115016, -0.973537, 0.197478,
		-0.925076, -0.032537, 0.378387,
		36.573090, 40.677971, 26.581438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888863, 39.982841, 26.029690>,  <37.220642, 40.700748, 26.316568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888863, 39.982841, 26.029690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605469, 40.241600, 26.142525>,  <36.435432, 40.396854, 26.210226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.605469, 40.241600, 26.142525>,  <36.888863, 39.982841, 26.029690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605469, 40.241600, 26.142525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448551, -0.104178, -0.887665,
		-0.544837, -0.755431, 0.363973,
		-0.708487, 0.646894, 0.282089,
		36.392921, 40.435669, 26.227152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284985, 39.663033, 25.868492>,  <36.888863, 39.982841, 26.029690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284985, 39.663033, 25.868492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174213, 40.046555, 25.893782>,  <36.107750, 40.276669, 25.908955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174213, 40.046555, 25.893782>,  <36.284985, 39.663033, 25.868492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174213, 40.046555, 25.893782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434836, -0.066374, -0.898060,
		-0.856872, -0.276188, 0.435306,
		-0.276927, 0.958809, 0.063222,
		36.091137, 40.334198, 25.912748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703552, 39.620991, 25.484055>,  <36.284985, 39.663033, 25.868492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703552, 39.620991, 25.484055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785465, 40.011555, 25.511454>,  <35.834614, 40.245892, 25.527893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785465, 40.011555, 25.511454>,  <35.703552, 39.620991, 25.484055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785465, 40.011555, 25.511454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430064, 0.152620, -0.889805,
		-0.879267, 0.152754, 0.451171,
		0.204778, 0.976408, 0.068500,
		35.846897, 40.304478, 25.532003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174580, 40.040543, 25.416721>,  <35.703552, 39.620991, 25.484055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174580, 40.040543, 25.416721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.437859, 40.318016, 25.299706>,  <35.595825, 40.484501, 25.229496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.437859, 40.318016, 25.299706>,  <35.174580, 40.040543, 25.416721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437859, 40.318016, 25.299706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535688, 0.158513, -0.829404,
		-0.528970, 0.702625, 0.475929,
		0.658201, 0.693679, -0.292540,
		35.635319, 40.526119, 25.211943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778675, 40.713490, 25.202673>,  <35.174580, 40.040543, 25.416721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778675, 40.713490, 25.202673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.134163, 40.701672, 25.019676>,  <35.347458, 40.694580, 24.909878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.134163, 40.701672, 25.019676>,  <34.778675, 40.713490, 25.202673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134163, 40.701672, 25.019676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432958, 0.274023, -0.858754,
		0.150732, 0.961270, 0.230740,
		0.888722, -0.029540, -0.457494,
		35.400780, 40.692810, 24.882427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299122, 40.980118, 25.774416>,  <34.778675, 40.713490, 25.202673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299122, 40.980118, 25.774416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.936752, 41.137348, 25.837400>,  <33.719330, 41.231686, 25.875191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.936752, 41.137348, 25.837400>,  <34.299122, 40.980118, 25.774416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936752, 41.137348, 25.837400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023050, -0.417084, 0.908576,
		0.422815, 0.819470, 0.386906,
		-0.905923, 0.393077, 0.157460,
		33.664974, 41.255272, 25.884638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303528, 41.189770, 26.456821>,  <34.299122, 40.980118, 25.774416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303528, 41.189770, 26.456821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.913795, 41.195724, 26.366964>,  <33.679958, 41.199299, 26.313051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.913795, 41.195724, 26.366964>,  <34.303528, 41.189770, 26.456821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913795, 41.195724, 26.366964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214433, -0.365329, 0.905844,
		-0.068581, 0.930759, 0.359143,
		-0.974328, 0.014888, -0.224641,
		33.621498, 41.200191, 26.299572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003487, 41.521824, 27.032536>,  <34.303528, 41.189770, 26.456821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003487, 41.521824, 27.032536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.723549, 41.300762, 26.851519>,  <33.555588, 41.168125, 26.742908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.723549, 41.300762, 26.851519>,  <34.003487, 41.521824, 27.032536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723549, 41.300762, 26.851519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268143, -0.383951, 0.883561,
		-0.662059, 0.739699, 0.120515,
		-0.699841, -0.552654, -0.452544,
		33.513596, 41.134968, 26.715755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455765, 41.634460, 27.367144>,  <34.003487, 41.521824, 27.032536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455765, 41.634460, 27.367144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341347, 41.296825, 27.185728>,  <33.272697, 41.094246, 27.076878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341347, 41.296825, 27.185728>,  <33.455765, 41.634460, 27.367144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341347, 41.296825, 27.185728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241739, -0.394439, 0.886555,
		-0.927222, 0.363233, -0.091221,
		-0.286045, -0.844085, -0.453540,
		33.255535, 41.043598, 27.049665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776798, 41.551666, 27.672607>,  <33.455765, 41.634460, 27.367144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776798, 41.551666, 27.672607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.889492, 41.208340, 27.501060>,  <32.957108, 41.002346, 27.398132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.889492, 41.208340, 27.501060>,  <32.776798, 41.551666, 27.672607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889492, 41.208340, 27.501060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241355, -0.495996, 0.834108,
		-0.928640, -0.131488, -0.346897,
		0.281735, -0.858312, -0.428866,
		32.974014, 40.950848, 27.372400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171085, 41.124756, 27.739096>,  <32.776798, 41.551666, 27.672607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171085, 41.124756, 27.739096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.494461, 40.891720, 27.705585>,  <32.688484, 40.751896, 27.685480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.494461, 40.891720, 27.705585>,  <32.171085, 41.124756, 27.739096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494461, 40.891720, 27.705585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224234, -0.436452, 0.871337,
		-0.544200, -0.685634, -0.483480,
		0.808434, -0.582594, -0.083775,
		32.736992, 40.716942, 27.680452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932161, 40.473820, 27.838161>,  <32.171085, 41.124756, 27.739096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932161, 40.473820, 27.838161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.320374, 40.452354, 27.932129>,  <32.553303, 40.439476, 27.988510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.320374, 40.452354, 27.932129>,  <31.932161, 40.473820, 27.838161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320374, 40.452354, 27.932129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235362, -0.420221, 0.876367,
		0.051686, -0.905833, -0.420469,
		0.970532, -0.053667, 0.234918,
		32.611534, 40.436253, 28.002604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019474, 39.849590, 28.095798>,  <31.932161, 40.473820, 27.838161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019474, 39.849590, 28.095798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.361931, 40.004154, 28.233034>,  <32.567406, 40.096893, 28.315376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.361931, 40.004154, 28.233034>,  <32.019474, 39.849590, 28.095798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361931, 40.004154, 28.233034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120718, -0.496014, 0.859882,
		0.502443, -0.777598, -0.378012,
		0.856141, 0.386409, 0.343089,
		32.618774, 40.120075, 28.335960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467918, 39.278854, 28.392408>,  <32.019474, 39.849590, 28.095798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467918, 39.278854, 28.392408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.588112, 39.618763, 28.565659>,  <32.660229, 39.822708, 28.669609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.588112, 39.618763, 28.565659>,  <32.467918, 39.278854, 28.392408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588112, 39.618763, 28.565659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148428, -0.490241, 0.858855,
		0.942166, -0.193786, -0.273441,
		0.300486, 0.849771, 0.433126,
		32.678257, 39.873695, 28.695597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012295, 39.162037, 28.769384>,  <32.467918, 39.278854, 28.392408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012295, 39.162037, 28.769384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.859978, 39.487476, 28.945135>,  <32.768585, 39.682739, 29.050587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.859978, 39.487476, 28.945135>,  <33.012295, 39.162037, 28.769384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859978, 39.487476, 28.945135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031099, -0.463641, 0.885477,
		0.924136, 0.350850, 0.151250,
		-0.380796, 0.813598, 0.439378,
		32.745739, 39.731556, 29.076948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348087, 39.187531, 29.343412>,  <33.012295, 39.162037, 28.769384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348087, 39.187531, 29.343412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.041569, 39.423130, 29.446074>,  <32.857658, 39.564491, 29.507671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.041569, 39.423130, 29.446074>,  <33.348087, 39.187531, 29.343412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041569, 39.423130, 29.446074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058292, -0.334083, 0.940739,
		0.639842, 0.735842, 0.221671,
		-0.766293, 0.589003, 0.256654,
		32.811680, 39.599831, 29.523069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490421, 39.570644, 29.910412>,  <33.348087, 39.187531, 29.343412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490421, 39.570644, 29.910412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.094658, 39.614735, 29.948193>,  <32.857201, 39.641190, 29.970861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.094658, 39.614735, 29.948193>,  <33.490421, 39.570644, 29.910412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094658, 39.614735, 29.948193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084912, -0.088244, 0.992473,
		0.117735, 0.989981, 0.077949,
		-0.989408, 0.110230, 0.094450,
		32.797836, 39.647804, 29.976528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.907154, 43.790516, 22.805973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546032, 43.632477, 22.873911>,  <33.329361, 43.537655, 22.914673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546032, 43.632477, 22.873911>,  <33.907154, 43.790516, 22.805973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546032, 43.632477, 22.873911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414987, -0.696710, 0.585133,
		-0.112853, 0.598742, 0.792951,
		-0.902801, -0.395098, 0.169845,
		33.275192, 43.513947, 22.924864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736237, 43.858551, 23.592876>,  <33.907154, 43.790516, 22.805973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736237, 43.858551, 23.592876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501633, 43.567757, 23.450047>,  <33.360870, 43.393280, 23.364349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501633, 43.567757, 23.450047>,  <33.736237, 43.858551, 23.592876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501633, 43.567757, 23.450047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144752, -0.527848, 0.836913,
		-0.796904, 0.439167, 0.414819,
		-0.586506, -0.726986, -0.357074,
		33.325680, 43.349663, 23.342924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249184, 43.673874, 24.137423>,  <33.736237, 43.858551, 23.592876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249184, 43.673874, 24.137423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241127, 43.353050, 23.898659>,  <33.236294, 43.160557, 23.755400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241127, 43.353050, 23.898659>,  <33.249184, 43.673874, 24.137423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241127, 43.353050, 23.898659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006952, -0.596904, 0.802283,
		-0.999773, 0.020313, 0.006450,
		-0.020147, -0.802056, -0.596909,
		33.235085, 43.112434, 23.719585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666714, 43.254047, 24.338512>,  <33.249184, 43.673874, 24.137423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666714, 43.254047, 24.338512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909500, 43.012981, 24.131289>,  <33.055172, 42.868340, 24.006954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909500, 43.012981, 24.131289>,  <32.666714, 43.254047, 24.338512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909500, 43.012981, 24.131289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069030, -0.689385, 0.721099,
		-0.791727, -0.401919, -0.460033,
		0.606963, -0.602669, -0.518060,
		33.091587, 42.832180, 23.975870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393562, 42.637859, 24.452139>,  <32.666714, 43.254047, 24.338512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393562, 42.637859, 24.452139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768368, 42.544933, 24.347803>,  <32.993252, 42.489178, 24.285202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768368, 42.544933, 24.347803>,  <32.393562, 42.637859, 24.452139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768368, 42.544933, 24.347803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009097, -0.730269, 0.683099,
		-0.349179, -0.642444, -0.682157,
		0.937012, -0.232319, -0.260839,
		33.049473, 42.475239, 24.269550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376461, 41.929150, 24.518122>,  <32.393562, 42.637859, 24.452139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376461, 41.929150, 24.518122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755112, 42.053284, 24.552954>,  <32.982304, 42.127766, 24.573853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755112, 42.053284, 24.552954>,  <32.376461, 41.929150, 24.518122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755112, 42.053284, 24.552954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158313, -0.682989, 0.713066,
		0.280765, -0.661224, -0.695668,
		0.946630, 0.310337, 0.087080,
		33.039101, 42.146385, 24.579077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797359, 41.335636, 24.695349>,  <32.376461, 41.929150, 24.518122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797359, 41.335636, 24.695349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064049, 41.619171, 24.787460>,  <33.224060, 41.789291, 24.842728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064049, 41.619171, 24.787460>,  <32.797359, 41.335636, 24.695349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064049, 41.619171, 24.787460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352656, -0.572231, 0.740395,
		0.656597, -0.412426, -0.631495,
		0.666719, 0.708842, 0.230281,
		33.264065, 41.831825, 24.856544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460659, 41.025139, 24.746309>,  <32.797359, 41.335636, 24.695349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460659, 41.025139, 24.746309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447845, 41.352444, 24.975891>,  <33.440159, 41.548824, 25.113640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447845, 41.352444, 24.975891>,  <33.460659, 41.025139, 24.746309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447845, 41.352444, 24.975891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282601, -0.543403, 0.790475,
		0.958703, 0.187521, -0.213834,
		-0.032032, 0.818260, 0.573955,
		33.438236, 41.597923, 25.148077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072292, 40.954666, 25.101748>,  <33.460659, 41.025139, 24.746309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072292, 40.954666, 25.101748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828766, 41.211472, 25.288147>,  <33.682648, 41.365555, 25.399986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828766, 41.211472, 25.288147>,  <34.072292, 40.954666, 25.101748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828766, 41.211472, 25.288147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030989, -0.567719, 0.822639,
		0.792704, 0.515279, 0.325743,
		-0.608819, 0.642015, 0.466001,
		33.646122, 41.404076, 25.427948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763325, 41.263359, 24.739338>,  <34.072292, 40.954666, 25.101748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763325, 41.263359, 24.739338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082859, 41.057041, 24.615517>,  <35.274578, 40.933250, 24.541224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082859, 41.057041, 24.615517>,  <34.763325, 41.263359, 24.739338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082859, 41.057041, 24.615517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330568, 0.053529, -0.942263,
		0.502586, 0.855037, -0.127745,
		0.798831, -0.515797, -0.309551,
		35.322510, 40.902302, 24.522652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070190, 41.672386, 24.257980>,  <34.763325, 41.263359, 24.739338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070190, 41.672386, 24.257980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177250, 41.292408, 24.193510>,  <35.241486, 41.064423, 24.154827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177250, 41.292408, 24.193510>,  <35.070190, 41.672386, 24.257980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177250, 41.292408, 24.193510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339668, 0.063515, -0.938398,
		0.901660, 0.305904, -0.305665,
		0.267646, -0.949941, -0.161175,
		35.257545, 41.007427, 24.145157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529667, 41.681976, 23.795670>,  <35.070190, 41.672386, 24.257980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529667, 41.681976, 23.795670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426975, 41.296898, 23.761501>,  <35.365360, 41.065849, 23.741001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426975, 41.296898, 23.761501>,  <35.529667, 41.681976, 23.795670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426975, 41.296898, 23.761501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137122, 0.123770, -0.982791,
		0.956706, -0.240601, -0.163783,
		-0.256732, -0.962700, -0.085420,
		35.349957, 41.008087, 23.735876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956669, 41.494858, 23.258102>,  <35.529667, 41.681976, 23.795670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956669, 41.494858, 23.258102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647724, 41.242817, 23.290178>,  <35.462357, 41.091591, 23.309423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647724, 41.242817, 23.290178>,  <35.956669, 41.494858, 23.258102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647724, 41.242817, 23.290178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215545, 0.141241, -0.966225,
		0.597497, -0.763557, -0.244905,
		-0.772359, -0.630104, 0.080190,
		35.416016, 41.053787, 23.314236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978256, 41.156891, 22.660587>,  <35.956669, 41.494858, 23.258102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978256, 41.156891, 22.660587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616764, 41.068092, 22.807005>,  <35.399868, 41.014812, 22.894855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616764, 41.068092, 22.807005>,  <35.978256, 41.156891, 22.660587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616764, 41.068092, 22.807005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362188, -0.059362, -0.930213,
		0.228230, -0.973239, -0.026757,
		-0.903731, -0.221994, 0.366044,
		35.345646, 41.001495, 22.916819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817520, 40.623833, 22.170210>,  <35.978256, 41.156891, 22.660587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817520, 40.623833, 22.170210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484539, 40.773167, 22.333986>,  <35.284752, 40.862766, 22.432253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484539, 40.773167, 22.333986>,  <35.817520, 40.623833, 22.170210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484539, 40.773167, 22.333986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359054, 0.199348, -0.911779,
		-0.422022, -0.906024, -0.031899,
		-0.832452, 0.373337, 0.409441,
		35.234802, 40.885166, 22.456818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305412, 40.221645, 21.853249>,  <35.817520, 40.623833, 22.170210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305412, 40.221645, 21.853249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132751, 40.556572, 21.987457>,  <35.029156, 40.757530, 22.067982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132751, 40.556572, 21.987457>,  <35.305412, 40.221645, 21.853249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132751, 40.556572, 21.987457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372063, 0.173574, -0.911834,
		-0.821734, -0.518429, 0.236612,
		-0.431652, 0.837320, 0.335519,
		35.003258, 40.807766, 22.088114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656128, 40.237949, 21.512703>,  <35.305412, 40.221645, 21.853249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656128, 40.237949, 21.512703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712444, 40.608746, 21.651764>,  <34.746235, 40.831223, 21.735201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712444, 40.608746, 21.651764>,  <34.656128, 40.237949, 21.512703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712444, 40.608746, 21.651764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485018, 0.370704, -0.792045,
		-0.863097, -0.057108, 0.501799,
		0.140787, 0.926993, 0.347652,
		34.754681, 40.886845, 21.756060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012329, 40.671833, 21.355551>,  <34.656128, 40.237949, 21.512703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012329, 40.671833, 21.355551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300659, 40.947987, 21.380177>,  <34.473656, 41.113678, 21.394953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300659, 40.947987, 21.380177>,  <34.012329, 40.671833, 21.355551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300659, 40.947987, 21.380177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350834, 0.440019, -0.826619,
		-0.597772, 0.574245, 0.559384,
		0.720821, 0.690381, 0.061566,
		34.516907, 41.155102, 21.398647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647167, 41.306671, 21.092932>,  <34.012329, 40.671833, 21.355551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647167, 41.306671, 21.092932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036736, 41.392788, 21.064306>,  <34.270477, 41.444458, 21.047131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036736, 41.392788, 21.064306>,  <33.647167, 41.306671, 21.092932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036736, 41.392788, 21.064306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190160, 0.602586, -0.775067,
		-0.123744, 0.768465, 0.627813,
		0.973923, 0.215295, -0.071565,
		34.328911, 41.457375, 21.042837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681576, 42.056812, 21.015066>,  <33.647167, 41.306671, 21.092932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681576, 42.056812, 21.015066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031750, 41.917137, 20.881392>,  <34.241856, 41.833332, 20.801186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031750, 41.917137, 20.881392>,  <33.681576, 42.056812, 21.015066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031750, 41.917137, 20.881392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028725, 0.652606, -0.757153,
		0.482484, 0.672437, 0.561282,
		0.875434, -0.349192, -0.334188,
		34.294380, 41.812378, 20.781136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064316, 42.610226, 20.870275>,  <33.681576, 42.056812, 21.015066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064316, 42.610226, 20.870275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297714, 42.356495, 20.667431>,  <34.437752, 42.204254, 20.545725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297714, 42.356495, 20.667431>,  <34.064316, 42.610226, 20.870275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297714, 42.356495, 20.667431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114580, 0.682485, -0.721863,
		0.803993, 0.363099, 0.470908,
		0.583495, -0.634329, -0.507109,
		34.472763, 42.166195, 20.515299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609020, 43.033024, 20.645660>,  <34.064316, 42.610226, 20.870275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609020, 43.033024, 20.645660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561604, 42.712994, 20.410433>,  <34.533154, 42.520977, 20.269297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561604, 42.712994, 20.410433>,  <34.609020, 43.033024, 20.645660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561604, 42.712994, 20.410433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164904, 0.599883, -0.782909,
		0.979161, 0.004172, -0.203045,
		-0.118537, -0.800077, -0.588070,
		34.526043, 42.472969, 20.234013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917786, 43.177830, 19.964642>,  <34.609020, 43.033024, 20.645660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917786, 43.177830, 19.964642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666508, 42.878609, 19.879044>,  <34.515739, 42.699078, 19.827684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666508, 42.878609, 19.879044>,  <34.917786, 43.177830, 19.964642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666508, 42.878609, 19.879044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045946, 0.310225, -0.949552,
		0.776700, -0.586670, -0.229251,
		-0.628193, -0.748050, -0.213997,
		34.478050, 42.654194, 19.814844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.959669, 39.596287, 21.579447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.075254, 39.956623, 21.709051>,  <28.144606, 40.172825, 21.786814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.075254, 39.956623, 21.709051>,  <27.959669, 39.596287, 21.579447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075254, 39.956623, 21.709051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234449, -0.394732, 0.888381,
		0.928188, -0.180747, -0.325265,
		0.288965, 0.900843, 0.324009,
		28.161943, 40.226875, 21.806253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633293, 39.486599, 21.852505>,  <27.959669, 39.596287, 21.579447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633293, 39.486599, 21.852505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.489092, 39.822495, 22.014927>,  <28.402571, 40.024033, 22.112381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.489092, 39.822495, 22.014927>,  <28.633293, 39.486599, 21.852505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489092, 39.822495, 22.014927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229872, -0.341919, 0.911181,
		0.903990, 0.421823, -0.069770,
		-0.360501, 0.839736, 0.406056,
		28.380941, 40.074417, 22.136744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856005, 39.469505, 22.563877>,  <28.633293, 39.486599, 21.852505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856005, 39.469505, 22.563877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.675945, 39.822624, 22.617599>,  <28.567909, 40.034496, 22.649834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.675945, 39.822624, 22.617599>,  <28.856005, 39.469505, 22.563877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675945, 39.822624, 22.617599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109588, -0.094653, 0.989460,
		0.886203, 0.460124, -0.054136,
		-0.450150, 0.882795, 0.134305,
		28.540901, 40.087463, 22.657890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341196, 39.910137, 22.934860>,  <28.856005, 39.469505, 22.563877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341196, 39.910137, 22.934860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.965611, 40.027534, 23.006647>,  <28.740259, 40.097973, 23.049719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.965611, 40.027534, 23.006647>,  <29.341196, 39.910137, 22.934860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965611, 40.027534, 23.006647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180661, -0.023272, 0.983270,
		0.292759, 0.955678, -0.031171,
		-0.938964, 0.293493, 0.179467,
		28.683922, 40.115582, 23.060488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416454, 40.367611, 23.510668>,  <29.341196, 39.910137, 22.934860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416454, 40.367611, 23.510668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.043268, 40.225063, 23.490349>,  <28.819357, 40.139534, 23.478157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.043268, 40.225063, 23.490349>,  <29.416454, 40.367611, 23.510668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043268, 40.225063, 23.490349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009233, -0.117379, 0.993044,
		-0.359853, 0.926943, 0.106220,
		-0.932963, -0.356369, -0.050798,
		28.763380, 40.118153, 23.475109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090483, 40.670666, 24.003082>,  <29.416454, 40.367611, 23.510668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090483, 40.670666, 24.003082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.851984, 40.356548, 23.936386>,  <28.708885, 40.168079, 23.896368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.851984, 40.356548, 23.936386>,  <29.090483, 40.670666, 24.003082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851984, 40.356548, 23.936386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055965, -0.247854, 0.967180,
		-0.800848, 0.567346, 0.191731,
		-0.596247, -0.785294, -0.166742,
		28.673111, 40.120960, 23.886364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563082, 40.638226, 24.549109>,  <29.090483, 40.670666, 24.003082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563082, 40.638226, 24.549109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.577345, 40.264938, 24.406090>,  <28.585903, 40.040966, 24.320278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.577345, 40.264938, 24.406090>,  <28.563082, 40.638226, 24.549109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577345, 40.264938, 24.406090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182326, -0.345694, 0.920464,
		-0.982592, -0.098009, 0.157823,
		0.035656, -0.933215, -0.357545,
		28.588041, 39.984974, 24.298826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343853, 40.298336, 25.082508>,  <28.563082, 40.638226, 24.549109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343853, 40.298336, 25.082508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.494528, 40.008743, 24.851351>,  <28.584932, 39.834988, 24.712656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.494528, 40.008743, 24.851351>,  <28.343853, 40.298336, 25.082508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494528, 40.008743, 24.851351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400203, -0.435432, 0.806372,
		-0.835431, -0.535023, 0.125718,
		0.376686, -0.723981, -0.577892,
		28.607534, 39.791550, 24.677984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049526, 39.648006, 25.353678>,  <28.343853, 40.298336, 25.082508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049526, 39.648006, 25.353678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.382830, 39.572849, 25.145687>,  <28.582811, 39.527756, 25.020893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.382830, 39.572849, 25.145687>,  <28.049526, 39.648006, 25.353678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382830, 39.572849, 25.145687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314502, -0.612414, 0.725284,
		-0.454715, -0.767884, -0.451208,
		0.833260, -0.187892, -0.519975,
		28.632807, 39.516483, 24.989695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160530, 38.868710, 25.365610>,  <28.049526, 39.648006, 25.353678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160530, 38.868710, 25.365610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.512938, 39.041878, 25.289305>,  <28.724382, 39.145779, 25.243521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.512938, 39.041878, 25.289305>,  <28.160530, 38.868710, 25.365610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512938, 39.041878, 25.289305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455487, -0.667269, 0.589308,
		0.127830, -0.606081, -0.785064,
		0.881017, 0.432917, -0.190765,
		28.777243, 39.171753, 25.232075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570473, 38.440441, 25.106115>,  <28.160530, 38.868710, 25.365610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570473, 38.440441, 25.106115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.823523, 38.713028, 25.253294>,  <28.975353, 38.876579, 25.341600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.823523, 38.713028, 25.253294>,  <28.570473, 38.440441, 25.106115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823523, 38.713028, 25.253294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318333, -0.661922, 0.678619,
		0.706009, -0.312183, -0.635683,
		0.632626, 0.681470, 0.367945,
		29.013309, 38.917469, 25.363678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137329, 38.052235, 25.268253>,  <28.570473, 38.440441, 25.106115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137329, 38.052235, 25.268253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.198738, 38.385464, 25.480827>,  <29.235584, 38.585400, 25.608372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.198738, 38.385464, 25.480827>,  <29.137329, 38.052235, 25.268253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198738, 38.385464, 25.480827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377423, -0.546474, 0.747609,
		0.913226, 0.085801, -0.398316,
		0.153524, 0.833070, 0.531437,
		29.244795, 38.635384, 25.640259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749868, 37.899807, 25.605330>,  <29.137329, 38.052235, 25.268253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749868, 37.899807, 25.605330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.584877, 38.185532, 25.831470>,  <29.485882, 38.356964, 25.967155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.584877, 38.185532, 25.831470>,  <29.749868, 37.899807, 25.605330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584877, 38.185532, 25.831470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357704, -0.443759, 0.821660,
		0.837799, 0.541148, -0.072469,
		-0.412481, 0.714309, 0.565352,
		29.461132, 38.399826, 26.001076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339741, 38.171104, 25.911903>,  <29.749868, 37.899807, 25.605330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339741, 38.171104, 25.911903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.026020, 38.261387, 26.143047>,  <29.837788, 38.315556, 26.281734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.026020, 38.261387, 26.143047>,  <30.339741, 38.171104, 25.911903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026020, 38.261387, 26.143047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494291, -0.335526, 0.801934,
		0.374892, 0.914591, 0.151588,
		-0.784303, 0.225710, 0.577861,
		29.790730, 38.329102, 26.316406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871719, 38.710182, 25.761127>,  <30.339741, 38.171104, 25.911903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871719, 38.710182, 25.761127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.094265, 38.437279, 25.571398>,  <31.227793, 38.273537, 25.457560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.094265, 38.437279, 25.571398>,  <30.871719, 38.710182, 25.761127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094265, 38.437279, 25.571398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424755, 0.257105, -0.868032,
		0.714172, 0.684414, -0.146749,
		0.556364, -0.682257, -0.474325,
		31.261173, 38.232601, 25.429100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193031, 39.070240, 25.199512>,  <30.871719, 38.710182, 25.761127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193031, 39.070240, 25.199512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.228109, 38.679195, 25.122997>,  <31.249157, 38.444569, 25.077087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.228109, 38.679195, 25.122997>,  <31.193031, 39.070240, 25.199512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228109, 38.679195, 25.122997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124864, 0.179725, -0.975760,
		0.988291, 0.109454, -0.106307,
		0.087695, -0.977609, -0.191288,
		31.254417, 38.385914, 25.065611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666821, 38.980545, 24.670912>,  <31.193031, 39.070240, 25.199512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666821, 38.980545, 24.670912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.500448, 38.617672, 24.645565>,  <31.400625, 38.399948, 24.630356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.500448, 38.617672, 24.645565>,  <31.666821, 38.980545, 24.670912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500448, 38.617672, 24.645565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116443, 0.015979, -0.993069,
		0.901911, -0.420425, 0.098989,
		-0.415929, -0.907186, -0.063368,
		31.375669, 38.345516, 24.626554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193336, 38.562775, 24.244236>,  <31.666821, 38.980545, 24.670912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193336, 38.562775, 24.244236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.826937, 38.403179, 24.227507>,  <31.607096, 38.307423, 24.217470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.826937, 38.403179, 24.227507>,  <32.193336, 38.562775, 24.244236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826937, 38.403179, 24.227507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097235, 0.321947, -0.941751,
		0.389211, -0.858580, -0.333700,
		-0.916002, -0.398987, -0.041822,
		31.552135, 38.283485, 24.214960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123703, 38.026470, 23.698969>,  <32.193336, 38.562775, 24.244236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123703, 38.026470, 23.698969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.743639, 38.134701, 23.760921>,  <31.515600, 38.199638, 23.798092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.743639, 38.134701, 23.760921>,  <32.123703, 38.026470, 23.698969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743639, 38.134701, 23.760921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095916, 0.218991, -0.971001,
		-0.296643, -0.937461, -0.182125,
		-0.950159, 0.270573, 0.154880,
		31.458591, 38.215874, 23.807384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838856, 37.604736, 23.205963>,  <32.123703, 38.026470, 23.698969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838856, 37.604736, 23.205963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623465, 37.928024, 23.301321>,  <31.494230, 38.121998, 23.358536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623465, 37.928024, 23.301321>,  <31.838856, 37.604736, 23.205963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623465, 37.928024, 23.301321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078887, 0.330021, -0.940672,
		-0.838940, -0.487723, -0.241466,
		-0.538476, 0.808216, 0.238392,
		31.461922, 38.170490, 23.372839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254204, 37.652119, 22.813675>,  <31.838856, 37.604736, 23.205963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254204, 37.652119, 22.813675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287161, 38.035534, 22.922796>,  <31.306934, 38.265583, 22.988270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287161, 38.035534, 22.922796>,  <31.254204, 37.652119, 22.813675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287161, 38.035534, 22.922796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108110, 0.280714, -0.953683,
		-0.990719, 0.049084, 0.126756,
		0.082393, 0.958535, 0.272803,
		31.311878, 38.323093, 23.004637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998394, 37.952625, 22.231293>,  <31.254204, 37.652119, 22.813675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998394, 37.952625, 22.231293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188499, 38.255760, 22.410091>,  <31.302563, 38.437641, 22.517370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188499, 38.255760, 22.410091>,  <30.998394, 37.952625, 22.231293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188499, 38.255760, 22.410091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050149, 0.483882, -0.873695,
		-0.878413, 0.437653, 0.191967,
		0.475265, 0.757838, 0.446996,
		31.331079, 38.483112, 22.544189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513657, 38.539089, 22.073027>,  <30.998394, 37.952625, 22.231293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513657, 38.539089, 22.073027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.879932, 38.677197, 22.155293>,  <31.099699, 38.760063, 22.204651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.879932, 38.677197, 22.155293>,  <30.513657, 38.539089, 22.073027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879932, 38.677197, 22.155293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013998, 0.484037, -0.874936,
		-0.401639, 0.804049, 0.438395,
		0.915691, 0.345272, 0.205663,
		31.154640, 38.780777, 22.216991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486635, 39.245461, 21.927416>,  <30.513657, 38.539089, 22.073027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486635, 39.245461, 21.927416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.880875, 39.179859, 21.910934>,  <31.117418, 39.140499, 21.901047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.880875, 39.179859, 21.910934>,  <30.486635, 39.245461, 21.927416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880875, 39.179859, 21.910934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057886, 0.556142, -0.829069,
		0.158888, 0.814744, 0.557627,
		0.985598, -0.164008, -0.041202,
		31.176554, 39.130657, 21.898575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860699, 39.870861, 21.875696>,  <30.486635, 39.245461, 21.927416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860699, 39.870861, 21.875696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.098883, 39.587200, 21.724684>,  <31.241793, 39.417004, 21.634075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.098883, 39.587200, 21.724684>,  <30.860699, 39.870861, 21.875696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098883, 39.587200, 21.724684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114939, 0.540293, -0.833590,
		0.795118, 0.452978, 0.403234,
		0.595462, -0.709150, -0.377532,
		31.277521, 39.374454, 21.611423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362955, 40.228405, 21.445309>,  <30.860699, 39.870861, 21.875696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362955, 40.228405, 21.445309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390285, 39.852131, 21.312374>,  <31.406683, 39.626366, 21.232615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.390285, 39.852131, 21.312374>,  <31.362955, 40.228405, 21.445309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390285, 39.852131, 21.312374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046511, 0.335754, -0.940801,
		0.996578, 0.048822, 0.066693,
		0.068325, -0.940684, -0.332334,
		31.410782, 39.569927, 21.212673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939053, 40.311195, 20.954109>,  <31.362955, 40.228405, 21.445309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939053, 40.311195, 20.954109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.716904, 39.987679, 20.876738>,  <31.583614, 39.793568, 20.830315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.716904, 39.987679, 20.876738>,  <31.939053, 40.311195, 20.954109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716904, 39.987679, 20.876738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006669, 0.236922, -0.971506,
		0.831574, -0.538258, -0.136974,
		-0.555373, -0.808793, -0.193428,
		31.550291, 39.745041, 20.818708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201561, 40.077644, 20.351082>,  <31.939053, 40.311195, 20.954109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201561, 40.077644, 20.351082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849176, 39.888474, 20.357420>,  <31.637747, 39.774971, 20.361223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849176, 39.888474, 20.357420>,  <32.201561, 40.077644, 20.351082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849176, 39.888474, 20.357420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078754, 0.113521, -0.990409,
		0.466597, -0.873756, -0.137253,
		-0.880957, -0.472931, 0.015843,
		31.584888, 39.746593, 20.362173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657238, 39.465496, 20.049122>,  <32.201561, 40.077644, 20.351082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657238, 39.465496, 20.049122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.022789, 39.457565, 19.886919>,  <33.242119, 39.452805, 19.789597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.022789, 39.457565, 19.886919>,  <32.657238, 39.465496, 20.049122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022789, 39.457565, 19.886919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300183, -0.639483, 0.707779,
		-0.273350, -0.768549, -0.578456,
		0.913876, -0.019829, -0.405509,
		33.296951, 39.451618, 19.765266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754757, 38.764175, 19.951477>,  <32.657238, 39.465496, 20.049122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754757, 38.764175, 19.951477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.108505, 38.947872, 19.984892>,  <33.320755, 39.058090, 20.004940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.108505, 38.947872, 19.984892>,  <32.754757, 38.764175, 19.951477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108505, 38.947872, 19.984892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323120, -0.731458, 0.600469,
		0.336867, -0.504046, -0.795273,
		0.884372, 0.459247, 0.083537,
		33.373817, 39.085648, 20.009953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288609, 38.278873, 20.057138>,  <32.754757, 38.764175, 19.951477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288609, 38.278873, 20.057138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480633, 38.607353, 20.180540>,  <33.595848, 38.804440, 20.254581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480633, 38.607353, 20.180540>,  <33.288609, 38.278873, 20.057138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480633, 38.607353, 20.180540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475114, -0.539026, 0.695498,
		0.737435, -0.187305, -0.648927,
		0.480059, 0.821199, 0.308506,
		33.624649, 38.853714, 20.273092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912636, 38.061954, 20.126123>,  <33.288609, 38.278873, 20.057138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912636, 38.061954, 20.126123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881203, 38.390476, 20.352144>,  <33.862343, 38.587589, 20.487757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881203, 38.390476, 20.352144>,  <33.912636, 38.061954, 20.126123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881203, 38.390476, 20.352144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542748, -0.440194, 0.715300,
		0.836212, 0.362888, -0.411171,
		-0.078579, 0.821305, 0.565052,
		33.857628, 38.636868, 20.521660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594540, 38.065678, 20.533661>,  <33.912636, 38.061954, 20.126123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594540, 38.065678, 20.533661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.381046, 38.341095, 20.730042>,  <34.252949, 38.506344, 20.847870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.381046, 38.341095, 20.730042>,  <34.594540, 38.065678, 20.533661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381046, 38.341095, 20.730042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482442, -0.228888, 0.845494,
		0.694532, 0.688126, -0.210016,
		-0.533737, 0.688544, 0.490951,
		34.220924, 38.547657, 20.877327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031105, 38.395657, 20.979250>,  <34.594540, 38.065678, 20.533661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031105, 38.395657, 20.979250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669418, 38.456963, 21.138700>,  <34.452408, 38.493744, 21.234371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669418, 38.456963, 21.138700>,  <35.031105, 38.395657, 20.979250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669418, 38.456963, 21.138700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312485, -0.398807, 0.862152,
		0.291109, 0.904137, 0.312716,
		-0.904217, 0.153262, 0.398626,
		34.398151, 38.502941, 21.258287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182327, 38.722958, 21.632057>,  <35.031105, 38.395657, 20.979250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182327, 38.722958, 21.632057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827549, 38.539097, 21.650156>,  <34.614681, 38.428780, 21.661015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827549, 38.539097, 21.650156>,  <35.182327, 38.722958, 21.632057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827549, 38.539097, 21.650156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179027, -0.251829, 0.951069,
		-0.425768, 0.851646, 0.305649,
		-0.886945, -0.459654, 0.045247,
		34.561466, 38.401199, 21.663731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045147, 38.825920, 22.247969>,  <35.182327, 38.722958, 21.632057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045147, 38.825920, 22.247969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.788315, 38.533409, 22.155914>,  <34.634216, 38.357903, 22.100681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.788315, 38.533409, 22.155914>,  <35.045147, 38.825920, 22.247969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788315, 38.533409, 22.155914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208801, -0.455651, 0.865323,
		-0.737653, 0.507556, 0.445257,
		-0.642082, -0.731279, -0.230134,
		34.595692, 38.314026, 22.086874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525829, 38.833740, 22.747831>,  <35.045147, 38.825920, 22.247969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525829, 38.833740, 22.747831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532848, 38.478355, 22.564388>,  <34.537060, 38.265125, 22.454323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532848, 38.478355, 22.564388>,  <34.525829, 38.833740, 22.747831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532848, 38.478355, 22.564388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102532, -0.457859, 0.883092,
		-0.994575, 0.031526, -0.099130,
		0.017547, -0.888466, -0.458608,
		34.538113, 38.211815, 22.426805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902889, 38.395710, 22.981569>,  <34.525829, 38.833740, 22.747831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902889, 38.395710, 22.981569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203449, 38.158234, 22.866385>,  <34.383785, 38.015747, 22.797274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.203449, 38.158234, 22.866385>,  <33.902889, 38.395710, 22.981569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203449, 38.158234, 22.866385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098964, -0.532873, 0.840388,
		-0.652384, -0.602969, -0.459155,
		0.751400, -0.593696, -0.287965,
		34.428871, 37.980125, 22.779995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689171, 37.810333, 23.214315>,  <33.902889, 38.395710, 22.981569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689171, 37.810333, 23.214315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.075264, 37.740532, 23.136478>,  <34.306919, 37.698650, 23.089775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.075264, 37.740532, 23.136478>,  <33.689171, 37.810333, 23.214315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075264, 37.740532, 23.136478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110264, -0.403149, 0.908467,
		-0.236982, -0.898342, -0.369893,
		0.965236, -0.174504, -0.194593,
		34.364834, 37.688179, 23.078100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796547, 37.278118, 23.631807>,  <33.689171, 37.810333, 23.214315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796547, 37.278118, 23.631807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.165485, 37.415871, 23.561749>,  <34.386848, 37.498524, 23.519712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.165485, 37.415871, 23.561749>,  <33.796547, 37.278118, 23.631807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165485, 37.415871, 23.561749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299935, -0.352467, 0.886457,
		0.243545, -0.870154, -0.428389,
		0.922347, 0.344381, -0.175148,
		34.442188, 37.519184, 23.509205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216343, 36.813396, 23.869261>,  <33.796547, 37.278118, 23.631807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216343, 36.813396, 23.869261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475502, 37.117874, 23.880646>,  <34.630997, 37.300560, 23.887476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.475502, 37.117874, 23.880646>,  <34.216343, 36.813396, 23.869261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475502, 37.117874, 23.880646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287733, -0.279163, 0.916121,
		0.705289, -0.585366, -0.399891,
		0.647901, 0.761192, 0.028462,
		34.669872, 37.346233, 23.889185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957211, 36.497807, 24.168081>,  <34.216343, 36.813396, 23.869261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957211, 36.497807, 24.168081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927639, 36.892826, 24.223619>,  <34.909897, 37.129837, 24.256943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927639, 36.892826, 24.223619>,  <34.957211, 36.497807, 24.168081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927639, 36.892826, 24.223619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436945, -0.093074, 0.894660,
		0.896445, 0.126810, -0.424624,
		-0.073931, 0.987551, 0.138845,
		34.905460, 37.189091, 24.265272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.065727, 43.054451, 19.218521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740463, 42.827267, 19.269409>,  <34.545303, 42.690956, 19.299942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740463, 42.827267, 19.269409>,  <35.065727, 43.054451, 19.218521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740463, 42.827267, 19.269409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167435, 0.018931, -0.985701,
		0.557436, -0.822835, -0.110491,
		-0.813161, -0.567965, 0.127219,
		34.496513, 42.656876, 19.307575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963219, 42.640209, 18.520758>,  <35.065727, 43.054451, 19.218521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963219, 42.640209, 18.520758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614201, 42.672714, 18.713451>,  <34.404789, 42.692215, 18.829067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614201, 42.672714, 18.713451>,  <34.963219, 42.640209, 18.520758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614201, 42.672714, 18.713451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485039, -0.026249, -0.874098,
		-0.058387, -0.996347, 0.062319,
		-0.872541, 0.081263, 0.481735,
		34.352440, 42.697094, 18.857971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639824, 42.070431, 18.403141>,  <34.963219, 42.640209, 18.520758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639824, 42.070431, 18.403141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.372219, 42.356300, 18.484791>,  <34.211655, 42.527821, 18.533781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.372219, 42.356300, 18.484791>,  <34.639824, 42.070431, 18.403141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372219, 42.356300, 18.484791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440816, -0.160411, -0.883148,
		-0.598418, -0.680818, 0.422355,
		-0.669013, 0.714672, 0.204123,
		34.171516, 42.570702, 18.546028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146927, 41.936947, 17.993132>,  <34.639824, 42.070431, 18.403141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146927, 41.936947, 17.993132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988525, 42.280575, 18.122852>,  <33.893482, 42.486752, 18.200686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988525, 42.280575, 18.122852>,  <34.146927, 41.936947, 17.993132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988525, 42.280575, 18.122852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492833, 0.099154, -0.864456,
		-0.774787, -0.502156, 0.384115,
		-0.396005, 0.859074, 0.324302,
		33.869724, 42.538296, 18.220142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380779, 41.948811, 17.941267>,  <34.146927, 41.936947, 17.993132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380779, 41.948811, 17.941267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505756, 42.328369, 17.923521>,  <33.580742, 42.556107, 17.912872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505756, 42.328369, 17.923521>,  <33.380779, 41.948811, 17.941267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505756, 42.328369, 17.923521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322593, 0.062059, -0.944501,
		-0.893483, 0.309416, 0.325498,
		0.312444, 0.948900, -0.044367,
		33.599491, 42.613037, 17.910212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868904, 42.321171, 17.588114>,  <33.380779, 41.948811, 17.941267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868904, 42.321171, 17.588114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199150, 42.539505, 17.530947>,  <33.397297, 42.670506, 17.496647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199150, 42.539505, 17.530947>,  <32.868904, 42.321171, 17.588114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199150, 42.539505, 17.530947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247564, 0.122821, -0.961055,
		-0.507021, 0.828844, 0.236531,
		0.825616, 0.545832, -0.142920,
		33.446835, 42.703255, 17.488071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575222, 42.845646, 17.346004>,  <32.868904, 42.321171, 17.588114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575222, 42.845646, 17.346004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952103, 42.882652, 17.217197>,  <33.178230, 42.904858, 17.139914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952103, 42.882652, 17.217197>,  <32.575222, 42.845646, 17.346004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952103, 42.882652, 17.217197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317057, -0.064493, -0.946211,
		-0.108312, 0.993620, -0.031431,
		0.942201, 0.092521, -0.322019,
		33.234764, 42.910408, 17.120592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694489, 43.412392, 16.793058>,  <32.575222, 42.845646, 17.346004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694489, 43.412392, 16.793058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006569, 43.166508, 16.746737>,  <33.193817, 43.018978, 16.718945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.006569, 43.166508, 16.746737>,  <32.694489, 43.412392, 16.793058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006569, 43.166508, 16.746737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232717, -0.113405, -0.965910,
		0.580624, 0.780556, -0.231533,
		0.780204, -0.614712, -0.115803,
		33.240631, 42.982094, 16.711996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176929, 43.726864, 16.292702>,  <32.694489, 43.412392, 16.793058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176929, 43.726864, 16.292702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278435, 43.339981, 16.296967>,  <33.339340, 43.107853, 16.299526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278435, 43.339981, 16.296967>,  <33.176929, 43.726864, 16.292702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278435, 43.339981, 16.296967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207837, -0.065290, -0.975982,
		0.944673, 0.245456, -0.217589,
		0.253767, -0.967207, 0.010663,
		33.354565, 43.049820, 16.300165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650860, 43.664452, 15.825866>,  <33.176929, 43.726864, 16.292702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650860, 43.664452, 15.825866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492039, 43.298515, 15.855316>,  <33.396748, 43.078953, 15.872986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492039, 43.298515, 15.855316>,  <33.650860, 43.664452, 15.825866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492039, 43.298515, 15.855316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276811, 0.042882, -0.959967,
		0.875058, -0.401536, -0.270264,
		-0.397051, -0.914839, 0.073625,
		33.372925, 43.024063, 15.877404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704113, 43.434658, 15.116096>,  <33.650860, 43.664452, 15.825866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704113, 43.434658, 15.116096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439705, 43.191055, 15.291441>,  <33.281059, 43.044895, 15.396648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439705, 43.191055, 15.291441>,  <33.704113, 43.434658, 15.116096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439705, 43.191055, 15.291441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581642, 0.046771, -0.812099,
		0.474070, -0.791786, -0.385139,
		-0.661023, -0.609004, 0.438363,
		33.241398, 43.008354, 15.422950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547153, 42.984051, 14.600557>,  <33.704113, 43.434658, 15.116096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547153, 42.984051, 14.600557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.231346, 42.944687, 14.842872>,  <33.041862, 42.921066, 14.988260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.231346, 42.944687, 14.842872>,  <33.547153, 42.984051, 14.600557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231346, 42.944687, 14.842872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608234, -0.006307, -0.793733,
		0.081937, -0.995125, -0.054880,
		-0.789517, -0.098416, 0.605786,
		32.994492, 42.915165, 15.024608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168938, 42.333130, 14.459681>,  <33.547153, 42.984051, 14.600557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168938, 42.333130, 14.459681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939232, 42.627934, 14.602250>,  <32.801411, 42.804817, 14.687792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939232, 42.627934, 14.602250>,  <33.168938, 42.333130, 14.459681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939232, 42.627934, 14.602250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620376, -0.107681, -0.776877,
		-0.534187, -0.667247, 0.519062,
		-0.574263, 0.737012, 0.356422,
		32.766953, 42.849037, 14.709177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473049, 42.213791, 14.245266>,  <33.168938, 42.333130, 14.459681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473049, 42.213791, 14.245266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428219, 42.598240, 14.346201>,  <32.401321, 42.828911, 14.406762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428219, 42.598240, 14.346201>,  <32.473049, 42.213791, 14.245266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428219, 42.598240, 14.346201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787851, 0.068808, -0.612010,
		-0.605582, -0.267396, 0.749513,
		-0.112076, 0.961127, 0.252337,
		32.394596, 42.886578, 14.421902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457081, 41.456547, 14.544733>,  <32.473049, 42.213791, 14.245266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457081, 41.456547, 14.544733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.151112, 41.211628, 14.624717>,  <31.967529, 41.064678, 14.672707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.151112, 41.211628, 14.624717>,  <32.457081, 41.456547, 14.544733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151112, 41.211628, 14.624717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347948, -0.131546, 0.928239,
		-0.542051, 0.779610, 0.313669,
		-0.764926, -0.612294, 0.199959,
		31.921633, 41.027939, 14.684705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083324, 41.697559, 15.224665>,  <32.457081, 41.456547, 14.544733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083324, 41.697559, 15.224665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997982, 41.311028, 15.167126>,  <31.946777, 41.079109, 15.132603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997982, 41.311028, 15.167126>,  <32.083324, 41.697559, 15.224665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997982, 41.311028, 15.167126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335354, -0.210728, 0.918222,
		-0.917616, 0.147665, 0.369021,
		-0.213352, -0.966327, -0.143847,
		31.933977, 41.021130, 15.123971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802513, 41.393116, 15.883483>,  <32.083324, 41.697559, 15.224665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802513, 41.393116, 15.883483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922506, 41.080769, 15.664301>,  <31.994501, 40.893360, 15.532791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.922506, 41.080769, 15.664301>,  <31.802513, 41.393116, 15.883483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922506, 41.080769, 15.664301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279359, -0.477317, 0.833143,
		-0.912124, -0.403004, 0.074956,
		0.299982, -0.780869, -0.547955,
		32.012501, 40.846508, 15.499914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748384, 40.756275, 16.321577>,  <31.802513, 41.393116, 15.883483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748384, 40.756275, 16.321577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992439, 40.633038, 16.029602>,  <32.138870, 40.559093, 15.854417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992439, 40.633038, 16.029602>,  <31.748384, 40.756275, 16.321577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992439, 40.633038, 16.029602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471362, -0.599360, 0.646982,
		-0.636829, -0.738812, -0.220466,
		0.610136, -0.308097, -0.729938,
		32.175480, 40.540607, 15.810620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687727, 39.961285, 16.200851>,  <31.748384, 40.756275, 16.321577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687727, 39.961285, 16.200851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036705, 40.139690, 16.120943>,  <32.246094, 40.246735, 16.072998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036705, 40.139690, 16.120943>,  <31.687727, 39.961285, 16.200851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036705, 40.139690, 16.120943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396264, -0.406369, 0.823310,
		0.286027, -0.797456, -0.531275,
		0.872447, 0.446014, -0.199771,
		32.298439, 40.273495, 16.061012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120129, 39.541306, 16.413866>,  <31.687727, 39.961285, 16.200851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120129, 39.541306, 16.413866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365700, 39.851528, 16.355066>,  <32.513042, 40.037663, 16.319786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365700, 39.851528, 16.355066>,  <32.120129, 39.541306, 16.413866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365700, 39.851528, 16.355066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521127, -0.258345, 0.813440,
		0.592890, -0.575999, -0.562767,
		0.613928, 0.775554, -0.146998,
		32.549877, 40.084194, 16.310966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832237, 39.298542, 16.454063>,  <32.120129, 39.541306, 16.413866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832237, 39.298542, 16.454063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847866, 39.689354, 16.537851>,  <32.857243, 39.923843, 16.588123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847866, 39.689354, 16.537851>,  <32.832237, 39.298542, 16.454063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847866, 39.689354, 16.537851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562436, -0.194770, 0.803574,
		0.825918, 0.086417, -0.557128,
		0.039069, 0.977035, 0.209469,
		32.859589, 39.982464, 16.600693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439484, 39.392384, 16.537468>,  <32.832237, 39.298542, 16.454063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439484, 39.392384, 16.537468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244217, 39.662735, 16.758333>,  <33.127056, 39.824947, 16.890852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244217, 39.662735, 16.758333>,  <33.439484, 39.392384, 16.537468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244217, 39.662735, 16.758333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432142, -0.362480, 0.825749,
		0.758255, 0.641713, -0.115127,
		-0.488162, 0.675880, 0.552163,
		33.097767, 39.865498, 16.923983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832634, 39.328667, 17.091129>,  <33.439484, 39.392384, 16.537468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832634, 39.328667, 17.091129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548698, 39.587830, 17.201654>,  <33.378338, 39.743328, 17.267969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.548698, 39.587830, 17.201654>,  <33.832634, 39.328667, 17.091129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548698, 39.587830, 17.201654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348210, -0.018210, 0.937239,
		0.612278, 0.761500, -0.212683,
		-0.709835, 0.647909, 0.276312,
		33.335747, 39.782204, 17.284548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179771, 39.750744, 17.581148>,  <33.832634, 39.328667, 17.091129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179771, 39.750744, 17.581148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788265, 39.805561, 17.642122>,  <33.553360, 39.838451, 17.678707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788265, 39.805561, 17.642122>,  <34.179771, 39.750744, 17.581148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788265, 39.805561, 17.642122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141463, -0.086580, 0.986150,
		0.148347, 0.986774, 0.065354,
		-0.978765, 0.137047, 0.152436,
		33.494637, 39.846676, 17.687853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050209, 40.316853, 18.047102>,  <34.179771, 39.750744, 17.581148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050209, 40.316853, 18.047102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719372, 40.093319, 18.071169>,  <33.520870, 39.959198, 18.085609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719372, 40.093319, 18.071169>,  <34.050209, 40.316853, 18.047102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719372, 40.093319, 18.071169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173116, -0.151440, 0.973189,
		-0.534738, 0.815335, 0.221998,
		-0.827095, -0.558833, 0.060167,
		33.471245, 39.925671, 18.089218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663673, 40.588398, 18.740574>,  <34.050209, 40.316853, 18.047102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663673, 40.588398, 18.740574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533760, 40.224541, 18.636992>,  <33.455811, 40.006226, 18.574842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533760, 40.224541, 18.636992>,  <33.663673, 40.588398, 18.740574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533760, 40.224541, 18.636992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090251, -0.302359, 0.948912,
		-0.941472, 0.284820, 0.180298,
		-0.324784, -0.909646, -0.258958,
		33.436325, 39.951649, 18.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219418, 40.582489, 19.169561>,  <33.663673, 40.588398, 18.740574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219418, 40.582489, 19.169561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252022, 40.205750, 19.039160>,  <33.271584, 39.979706, 18.960918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252022, 40.205750, 19.039160>,  <33.219418, 40.582489, 19.169561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252022, 40.205750, 19.039160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053528, -0.330756, 0.942197,
		-0.995234, -0.059345, -0.077374,
		0.081506, -0.941848, -0.326004,
		33.276474, 39.923195, 18.941359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761196, 40.209949, 19.568485>,  <33.219418, 40.582489, 19.169561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761196, 40.209949, 19.568485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.017818, 39.931797, 19.438967>,  <33.171791, 39.764904, 19.361256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.017818, 39.931797, 19.438967>,  <32.761196, 40.209949, 19.568485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017818, 39.931797, 19.438967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215345, -0.241869, 0.946111,
		-0.736227, -0.676713, -0.005426,
		0.641558, -0.695384, -0.323797,
		33.210285, 39.723183, 19.341827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058628, 39.746880, 19.544825>,  <32.761196, 40.209949, 19.568485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058628, 39.746880, 19.544825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699966, 39.678844, 19.708324>,  <31.484768, 39.638023, 19.806423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699966, 39.678844, 19.708324>,  <32.058628, 39.746880, 19.544825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699966, 39.678844, 19.708324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435162, 0.168694, -0.884407,
		0.081470, -0.970883, -0.225275,
		-0.896658, -0.170084, 0.408748,
		31.430969, 39.627819, 19.830950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712833, 39.269039, 19.136419>,  <32.058628, 39.746880, 19.544825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712833, 39.269039, 19.136419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444334, 39.485863, 19.338648>,  <31.283234, 39.615955, 19.459984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444334, 39.485863, 19.338648>,  <31.712833, 39.269039, 19.136419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444334, 39.485863, 19.338648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446885, 0.248219, -0.859465,
		-0.591369, -0.802848, 0.075620,
		-0.671249, 0.542054, 0.505570,
		31.242960, 39.648479, 19.490318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068502, 39.088623, 18.793240>,  <31.712833, 39.269039, 19.136419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068502, 39.088623, 18.793240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.034746, 39.424587, 19.007687>,  <31.014492, 39.626167, 19.136354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.034746, 39.424587, 19.007687>,  <31.068502, 39.088623, 18.793240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034746, 39.424587, 19.007687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557244, 0.406256, -0.724179,
		-0.826050, -0.359861, 0.433754,
		-0.084388, 0.839914, 0.536118,
		31.009430, 39.676563, 19.168522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360107, 39.370480, 18.757645>,  <31.068502, 39.088623, 18.793240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360107, 39.370480, 18.757645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.568727, 39.695843, 18.860683>,  <30.693899, 39.891060, 18.922506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.568727, 39.695843, 18.860683>,  <30.360107, 39.370480, 18.757645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568727, 39.695843, 18.860683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694555, 0.580104, -0.425527,
		-0.495558, 0.043021, 0.867509,
		0.521551, 0.813406, 0.257595,
		30.725193, 39.939865, 18.937962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856022, 39.917080, 18.876125>,  <30.360107, 39.370480, 18.757645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856022, 39.917080, 18.876125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.214039, 40.091488, 18.838634>,  <30.428848, 40.196133, 18.816139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.214039, 40.091488, 18.838634>,  <29.856022, 39.917080, 18.876125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214039, 40.091488, 18.838634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419995, 0.753368, -0.506005,
		-0.150017, 0.492261, 0.857423,
		0.895042, 0.436023, -0.093729,
		30.482552, 40.222294, 18.810516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705826, 40.567772, 19.068035>,  <29.856022, 39.917080, 18.876125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705826, 40.567772, 19.068035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.033646, 40.561905, 18.838905>,  <30.230337, 40.558384, 18.701427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.033646, 40.561905, 18.838905>,  <29.705826, 40.567772, 19.068035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033646, 40.561905, 18.838905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369508, 0.750532, -0.547874,
		0.437955, 0.660672, 0.609679,
		0.819548, -0.014663, -0.572823,
		30.279510, 40.557507, 18.667059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725283, 41.205322, 18.897339>,  <29.705826, 40.567772, 19.068035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725283, 41.205322, 18.897339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.975904, 41.009926, 18.654421>,  <30.126278, 40.892689, 18.508669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.975904, 41.009926, 18.654421>,  <29.725283, 41.205322, 18.897339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975904, 41.009926, 18.654421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412408, 0.453379, -0.790169,
		0.661322, 0.745539, 0.082611,
		0.626556, -0.488487, -0.607296,
		30.163872, 40.863380, 18.472233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251610, 41.758648, 19.085680>,  <29.725283, 41.205322, 18.897339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251610, 41.758648, 19.085680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.869680, 41.700150, 19.189159>,  <28.640522, 41.665051, 19.251247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.869680, 41.700150, 19.189159>,  <29.251610, 41.758648, 19.085680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869680, 41.700150, 19.189159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281078, -0.161814, 0.945945,
		-0.096475, 0.975925, 0.195609,
		-0.954823, -0.146242, 0.258700,
		28.583233, 41.656277, 19.266769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200062, 41.876328, 19.835827>,  <29.251610, 41.758648, 19.085680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200062, 41.876328, 19.835827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.840097, 41.713139, 19.774229>,  <28.624119, 41.615223, 19.737270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.840097, 41.713139, 19.774229>,  <29.200062, 41.876328, 19.835827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840097, 41.713139, 19.774229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021349, -0.393935, 0.918890,
		-0.435548, 0.823633, 0.363217,
		-0.899912, -0.407975, -0.153993,
		28.570124, 41.590748, 19.728031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767885, 42.027592, 20.425760>,  <29.200062, 41.876328, 19.835827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767885, 42.027592, 20.425760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.618057, 41.699745, 20.252361>,  <28.528160, 41.503036, 20.148321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.618057, 41.699745, 20.252361>,  <28.767885, 42.027592, 20.425760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618057, 41.699745, 20.252361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074641, -0.439363, 0.895203,
		-0.924189, 0.367673, 0.103395,
		-0.374570, -0.819619, -0.433499,
		28.505686, 41.453857, 20.122313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144539, 41.868652, 20.762539>,  <28.767885, 42.027592, 20.425760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144539, 41.868652, 20.762539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238129, 41.515446, 20.599791>,  <28.294283, 41.303524, 20.502142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238129, 41.515446, 20.599791>,  <28.144539, 41.868652, 20.762539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238129, 41.515446, 20.599791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373433, -0.468008, 0.800947,
		-0.897666, -0.035461, -0.439248,
		0.233974, -0.883012, -0.406872,
		28.308321, 41.250542, 20.477730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537998, 41.487297, 20.806932>,  <28.144539, 41.868652, 20.762539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537998, 41.487297, 20.806932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.854616, 41.243809, 20.785330>,  <28.044588, 41.097717, 20.772367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.854616, 41.243809, 20.785330>,  <27.537998, 41.487297, 20.806932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854616, 41.243809, 20.785330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294687, -0.457627, 0.838891,
		-0.535363, -0.648106, -0.541614,
		0.791547, -0.608717, -0.054008,
		28.092079, 41.061192, 20.769127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335846, 40.842739, 21.098059>,  <27.537998, 41.487297, 20.806932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335846, 40.842739, 21.098059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.735336, 40.838646, 21.117842>,  <27.975031, 40.836189, 21.129711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.735336, 40.838646, 21.117842>,  <27.335846, 40.842739, 21.098059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735336, 40.838646, 21.117842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049327, -0.407824, 0.911727,
		0.010841, -0.913003, -0.407809,
		0.998724, -0.010232, 0.049457,
		28.034954, 40.835575, 21.132679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406216, 40.161713, 21.249176>,  <27.335846, 40.842739, 21.098059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406216, 40.161713, 21.249176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.747890, 40.348057, 21.341558>,  <27.952894, 40.459862, 21.396988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.747890, 40.348057, 21.341558>,  <27.406216, 40.161713, 21.249176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747890, 40.348057, 21.341558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075207, -0.328815, 0.941395,
		0.514500, -0.821496, -0.245833,
		0.854186, 0.465859, 0.230958,
		28.004147, 40.487816, 21.410847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.181429, 44.593826, 16.818886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.397316, 44.271114, 16.722708>,  <30.526848, 44.077488, 16.665001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.397316, 44.271114, 16.722708>,  <30.181429, 44.593826, 16.818886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397316, 44.271114, 16.722708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011069, -0.278792, 0.960288,
		-0.841774, -0.520945, -0.141538,
		0.539717, -0.806778, -0.240446,
		30.559231, 44.029079, 16.650574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868629, 43.976017, 17.108070>,  <30.181429, 44.593826, 16.818886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868629, 43.976017, 17.108070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265749, 43.940605, 17.075777>,  <30.504021, 43.919357, 17.056400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265749, 43.940605, 17.075777>,  <29.868629, 43.976017, 17.108070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265749, 43.940605, 17.075777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058628, -0.228692, 0.971732,
		-0.104485, -0.969465, -0.221854,
		0.992797, -0.088524, -0.080733,
		30.563587, 43.914047, 17.051558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109518, 43.637699, 17.764204>,  <29.868629, 43.976017, 17.108070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109518, 43.637699, 17.764204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.467981, 43.718071, 17.605947>,  <30.683060, 43.766296, 17.510994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.467981, 43.718071, 17.605947>,  <30.109518, 43.637699, 17.764204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467981, 43.718071, 17.605947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410591, -0.037351, 0.911054,
		0.168284, -0.978893, -0.115974,
		0.896156, 0.200934, -0.395639,
		30.736828, 43.778351, 17.487255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504843, 43.195297, 18.211872>,  <30.109518, 43.637699, 17.764204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504843, 43.195297, 18.211872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.734880, 43.477253, 18.045790>,  <30.872904, 43.646427, 17.946140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.734880, 43.477253, 18.045790>,  <30.504843, 43.195297, 18.211872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734880, 43.477253, 18.045790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421691, 0.179490, 0.888797,
		0.701030, -0.686231, -0.194022,
		0.575095, 0.704890, -0.415205,
		30.907410, 43.688721, 17.921228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288916, 43.029961, 18.372799>,  <30.504843, 43.195297, 18.211872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288916, 43.029961, 18.372799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238813, 43.418320, 18.291145>,  <31.208752, 43.651337, 18.242153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238813, 43.418320, 18.291145>,  <31.288916, 43.029961, 18.372799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238813, 43.418320, 18.291145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569052, 0.238850, 0.786848,
		0.812706, -0.017605, -0.582408,
		-0.125255, 0.970897, -0.204133,
		31.201237, 43.709587, 18.229906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941776, 43.362640, 18.495808>,  <31.288916, 43.029961, 18.372799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941776, 43.362640, 18.495808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.682486, 43.667217, 18.494528>,  <31.526911, 43.849964, 18.493761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.682486, 43.667217, 18.494528>,  <31.941776, 43.362640, 18.495808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682486, 43.667217, 18.494528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389016, 0.334779, 0.858248,
		0.654577, 0.555093, -0.513225,
		-0.648225, 0.761442, -0.003198,
		31.488018, 43.895649, 18.493568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377945, 43.917988, 18.753279>,  <31.941776, 43.362640, 18.495808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377945, 43.917988, 18.753279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.995878, 44.023510, 18.807035>,  <31.766638, 44.086823, 18.839289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.995878, 44.023510, 18.807035>,  <32.377945, 43.917988, 18.753279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995878, 44.023510, 18.807035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165842, 0.100717, 0.980996,
		0.245255, 0.959304, -0.139952,
		-0.955168, 0.263804, 0.134391,
		31.709328, 44.102650, 18.847353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382114, 44.423100, 19.166599>,  <32.377945, 43.917988, 18.753279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382114, 44.423100, 19.166599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.007320, 44.300793, 19.234203>,  <31.782444, 44.227409, 19.274765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.007320, 44.300793, 19.234203>,  <32.382114, 44.423100, 19.166599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007320, 44.300793, 19.234203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094473, 0.243987, 0.965166,
		-0.336351, 0.920314, -0.199726,
		-0.936986, -0.305765, 0.169010,
		31.726225, 44.209064, 19.284906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196438, 44.798061, 19.733282>,  <32.382114, 44.423100, 19.166599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196438, 44.798061, 19.733282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902534, 44.527260, 19.716320>,  <31.726192, 44.364780, 19.706142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.902534, 44.527260, 19.716320>,  <32.196438, 44.798061, 19.733282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902534, 44.527260, 19.716320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019532, -0.041375, 0.998953,
		-0.678045, 0.734819, 0.017177,
		-0.734761, -0.677000, -0.042406,
		31.682106, 44.324162, 19.703598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730909, 44.980595, 20.215960>,  <32.196438, 44.798061, 19.733282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730909, 44.980595, 20.215960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.681227, 44.590649, 20.141972>,  <31.651417, 44.356682, 20.097578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.681227, 44.590649, 20.141972>,  <31.730909, 44.980595, 20.215960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681227, 44.590649, 20.141972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030993, -0.190136, 0.981268,
		-0.991772, 0.116148, 0.053831,
		-0.124208, -0.974863, -0.184972,
		31.643965, 44.298191, 20.086479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177523, 44.669571, 20.697182>,  <31.730909, 44.980595, 20.215960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177523, 44.669571, 20.697182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.416153, 44.363407, 20.600645>,  <31.559330, 44.179710, 20.542723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.416153, 44.363407, 20.600645>,  <31.177523, 44.669571, 20.697182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416153, 44.363407, 20.600645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135900, -0.200030, 0.970319,
		-0.790968, -0.611666, -0.015314,
		0.596575, -0.765410, -0.241343,
		31.595125, 44.133785, 20.528242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959831, 44.119755, 21.075104>,  <31.177523, 44.669571, 20.697182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959831, 44.119755, 21.075104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.337759, 44.040691, 20.970612>,  <31.564516, 43.993252, 20.907917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.337759, 44.040691, 20.970612>,  <30.959831, 44.119755, 21.075104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337759, 44.040691, 20.970612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134385, -0.493387, 0.859366,
		-0.298751, -0.847054, -0.439600,
		0.944822, -0.197661, -0.261231,
		31.621206, 43.981392, 20.892242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352436, 43.890068, 21.215239>,  <30.959831, 44.119755, 21.075104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352436, 43.890068, 21.215239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027472, 43.964741, 21.436195>,  <29.832493, 44.009544, 21.568769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027472, 43.964741, 21.436195>,  <30.352436, 43.890068, 21.215239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027472, 43.964741, 21.436195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495563, 0.278146, -0.822832,
		-0.307253, -0.942223, -0.133456,
		-0.812412, 0.186682, 0.552392,
		29.783749, 44.020744, 21.601913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769310, 43.539261, 20.859524>,  <30.352436, 43.890068, 21.215239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769310, 43.539261, 20.859524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605448, 43.823120, 21.088814>,  <29.507130, 43.993435, 21.226387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605448, 43.823120, 21.088814>,  <29.769310, 43.539261, 20.859524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605448, 43.823120, 21.088814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468673, 0.375376, -0.799649,
		-0.782641, -0.596237, 0.178816,
		-0.409657, 0.709644, 0.573224,
		29.482552, 44.036015, 21.260780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081394, 43.450214, 20.681618>,  <29.769310, 43.539261, 20.859524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081394, 43.450214, 20.681618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131235, 43.817112, 20.832951>,  <29.161140, 44.037251, 20.923750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131235, 43.817112, 20.832951>,  <29.081394, 43.450214, 20.681618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131235, 43.817112, 20.832951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528628, 0.384051, -0.757005,
		-0.839658, -0.105672, 0.532735,
		0.124603, 0.917245, 0.378333,
		29.168615, 44.092285, 20.946451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440878, 43.770950, 20.595554>,  <29.081394, 43.450214, 20.681618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440878, 43.770950, 20.595554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665358, 44.099030, 20.639977>,  <28.800045, 44.295876, 20.666630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665358, 44.099030, 20.639977>,  <28.440878, 43.770950, 20.595554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665358, 44.099030, 20.639977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562256, 0.476249, -0.676059,
		-0.607390, 0.316964, 0.728431,
		0.561201, 0.820196, 0.111054,
		28.833717, 44.345089, 20.673292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954346, 44.360130, 20.432074>,  <28.440878, 43.770950, 20.595554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954346, 44.360130, 20.432074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304003, 44.551140, 20.396652>,  <28.513798, 44.665745, 20.375401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304003, 44.551140, 20.396652>,  <27.954346, 44.360130, 20.432074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304003, 44.551140, 20.396652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400622, 0.605913, -0.687293,
		-0.274547, 0.636268, 0.720962,
		0.874143, 0.477528, -0.088551,
		28.566246, 44.694397, 20.370087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766109, 45.104958, 20.409363>,  <27.954346, 44.360130, 20.432074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766109, 45.104958, 20.409363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128483, 45.037949, 20.253817>,  <28.345907, 44.997742, 20.160488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128483, 45.037949, 20.253817>,  <27.766109, 45.104958, 20.409363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128483, 45.037949, 20.253817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260631, 0.503166, -0.823951,
		0.333698, 0.847796, 0.412173,
		0.905934, -0.167526, -0.388868,
		28.400263, 44.987690, 20.137156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858303, 45.700924, 20.075344>,  <27.766109, 45.104958, 20.409363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858303, 45.700924, 20.075344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099213, 45.436119, 19.896902>,  <28.243757, 45.277237, 19.789837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099213, 45.436119, 19.896902>,  <27.858303, 45.700924, 20.075344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099213, 45.436119, 19.896902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097409, 0.493704, -0.864157,
		0.792325, 0.563913, 0.232859,
		0.602273, -0.662011, -0.446104,
		28.279894, 45.237514, 19.763071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416313, 46.105042, 19.667027>,  <27.858303, 45.700924, 20.075344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416313, 46.105042, 19.667027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414776, 45.737915, 19.508234>,  <28.413853, 45.517639, 19.412958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414776, 45.737915, 19.508234>,  <28.416313, 46.105042, 19.667027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414776, 45.737915, 19.508234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093068, 0.395591, -0.913699,
		0.995652, 0.033434, -0.086941,
		-0.003845, -0.917818, -0.396983,
		28.413622, 45.462570, 19.389139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796406, 46.091354, 19.077127>,  <28.416313, 46.105042, 19.667027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796406, 46.091354, 19.077127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566343, 45.771946, 19.006071>,  <28.428307, 45.580299, 18.963436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566343, 45.771946, 19.006071>,  <28.796406, 46.091354, 19.077127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566343, 45.771946, 19.006071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053447, 0.253373, -0.965891,
		0.816296, -0.546044, -0.188408,
		-0.575157, -0.798522, -0.177643,
		28.393797, 45.532391, 18.952778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070618, 45.906876, 18.467049>,  <28.796406, 46.091354, 19.077127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070618, 45.906876, 18.467049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730333, 45.697559, 18.486885>,  <28.526163, 45.571968, 18.498787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730333, 45.697559, 18.486885>,  <29.070618, 45.906876, 18.467049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730333, 45.697559, 18.486885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147464, 0.147039, -0.978077,
		0.504528, -0.839372, -0.202254,
		-0.850709, -0.523292, 0.049591,
		28.475121, 45.540573, 18.501762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158365, 45.488678, 17.839159>,  <29.070618, 45.906876, 18.467049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158365, 45.488678, 17.839159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772505, 45.484394, 17.944483>,  <28.540989, 45.481823, 18.007677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.772505, 45.484394, 17.944483>,  <29.158365, 45.488678, 17.839159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772505, 45.484394, 17.944483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261696, -0.078731, -0.961934,
		0.031031, -0.996838, 0.073146,
		-0.964651, -0.010708, 0.263311,
		28.483109, 45.481182, 18.023476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787443, 44.865841, 17.460829>,  <29.158365, 45.488678, 17.839159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787443, 44.865841, 17.460829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510164, 45.135323, 17.563274>,  <28.343796, 45.297012, 17.624743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510164, 45.135323, 17.563274>,  <28.787443, 44.865841, 17.460829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510164, 45.135323, 17.563274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324246, 0.025857, -0.945619,
		-0.643692, -0.738546, 0.200523,
		-0.693199, 0.673707, 0.256114,
		28.302204, 45.337433, 17.640108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091101, 44.593460, 17.301031>,  <28.787443, 44.865841, 17.460829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091101, 44.593460, 17.301031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033430, 44.988937, 17.317488>,  <27.998827, 45.226223, 17.327362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033430, 44.988937, 17.317488>,  <28.091101, 44.593460, 17.301031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033430, 44.988937, 17.317488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303863, -0.004667, -0.952704,
		-0.941743, -0.149859, 0.301102,
		-0.144176, 0.988697, 0.041142,
		27.990177, 45.285545, 17.329830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499228, 44.150623, 17.412935>,  <28.091101, 44.593460, 17.301031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499228, 44.150623, 17.412935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381643, 43.812332, 17.234800>,  <27.311092, 43.609356, 17.127918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381643, 43.812332, 17.234800>,  <27.499228, 44.150623, 17.412935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381643, 43.812332, 17.234800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298980, -0.523905, 0.797580,
		-0.907853, 0.101309, 0.406864,
		-0.293961, -0.845731, -0.445339,
		27.293455, 43.558613, 17.101198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283062, 43.872112, 17.951275>,  <27.499228, 44.150623, 17.412935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283062, 43.872112, 17.951275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339233, 43.583298, 17.680292>,  <27.372936, 43.410011, 17.517702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339233, 43.583298, 17.680292>,  <27.283062, 43.872112, 17.951275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339233, 43.583298, 17.680292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360716, -0.599903, 0.714144,
		-0.922044, -0.344655, 0.176206,
		0.140427, -0.722032, -0.677459,
		27.381361, 43.366688, 17.477055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857615, 43.257263, 18.138470>,  <27.283062, 43.872112, 17.951275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857615, 43.257263, 18.138470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144402, 43.129642, 17.890547>,  <27.316473, 43.053070, 17.741793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144402, 43.129642, 17.890547>,  <26.857615, 43.257263, 18.138470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144402, 43.129642, 17.890547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318294, -0.641197, 0.698252,
		-0.620202, -0.697904, -0.358162,
		0.716965, -0.319057, -0.619810,
		27.359491, 43.033928, 17.704605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786974, 42.516674, 18.027618>,  <26.857615, 43.257263, 18.138470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786974, 42.516674, 18.027618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170233, 42.553104, 17.919056>,  <27.400188, 42.574963, 17.853918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170233, 42.553104, 17.919056>,  <26.786974, 42.516674, 18.027618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170233, 42.553104, 17.919056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254162, -0.706923, 0.660047,
		-0.131747, -0.701403, -0.700484,
		0.958146, 0.091077, -0.271405,
		27.457676, 42.580429, 17.837635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028309, 41.795715, 17.976357>,  <26.786974, 42.516674, 18.027618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028309, 41.795715, 17.976357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347145, 42.025356, 18.051247>,  <27.538446, 42.163139, 18.096182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347145, 42.025356, 18.051247>,  <27.028309, 41.795715, 17.976357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347145, 42.025356, 18.051247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359028, -0.699859, 0.617493,
		0.485536, -0.424978, -0.763969,
		0.797091, 0.574101, 0.187228,
		27.586273, 42.197586, 18.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631189, 41.357090, 17.966204>,  <27.028309, 41.795715, 17.976357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631189, 41.357090, 17.966204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784246, 41.676506, 18.152073>,  <27.876081, 41.868156, 18.263594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784246, 41.676506, 18.152073>,  <27.631189, 41.357090, 17.966204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784246, 41.676506, 18.152073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313766, -0.585375, 0.747588,
		0.868986, -0.140260, -0.474543,
		0.382642, 0.798538, 0.464673,
		27.899038, 41.916069, 18.291475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293333, 41.295212, 18.103714>,  <27.631189, 41.357090, 17.966204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293333, 41.295212, 18.103714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208063, 41.583408, 18.367668>,  <28.156900, 41.756325, 18.526041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208063, 41.583408, 18.367668>,  <28.293333, 41.295212, 18.103714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208063, 41.583408, 18.367668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415462, -0.544450, 0.728673,
		0.884278, 0.429493, -0.183273,
		-0.213177, 0.720493, 0.659883,
		28.144110, 41.799557, 18.565634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921595, 41.448044, 18.451321>,  <28.293333, 41.295212, 18.103714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921595, 41.448044, 18.451321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600828, 41.544174, 18.670107>,  <28.408367, 41.601852, 18.801378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600828, 41.544174, 18.670107>,  <28.921595, 41.448044, 18.451321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600828, 41.544174, 18.670107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366398, -0.525301, 0.767992,
		0.471890, 0.816274, 0.333193,
		-0.801918, 0.240326, 0.546965,
		28.360252, 41.616272, 18.834196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808859, 41.582897, 18.289305>,  <28.921595, 41.448044, 18.451321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808859, 41.582897, 18.289305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947182, 41.231339, 18.157879>,  <30.030176, 41.020401, 18.079023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947182, 41.231339, 18.157879>,  <29.808859, 41.582897, 18.289305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947182, 41.231339, 18.157879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352994, 0.202585, -0.913430,
		0.869374, 0.431853, -0.240191,
		0.345808, -0.878898, -0.328564,
		30.050924, 40.967670, 18.059309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062187, 41.764320, 17.671925>,  <29.808859, 41.582897, 18.289305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062187, 41.764320, 17.671925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024250, 41.368023, 17.633095>,  <30.001488, 41.130245, 17.609797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024250, 41.368023, 17.633095>,  <30.062187, 41.764320, 17.671925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024250, 41.368023, 17.633095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252228, 0.118248, -0.960416,
		0.963009, -0.066604, -0.261109,
		-0.094843, -0.990748, -0.097074,
		29.995796, 41.070797, 17.603973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532911, 41.621243, 17.188997>,  <30.062187, 41.764320, 17.671925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532911, 41.621243, 17.188997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302578, 41.294231, 17.185722>,  <30.164377, 41.098026, 17.183758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302578, 41.294231, 17.185722>,  <30.532911, 41.621243, 17.188997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302578, 41.294231, 17.185722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116781, 0.092162, -0.988872,
		0.809184, -0.568469, -0.148541,
		-0.575833, -0.817526, -0.008190,
		30.129827, 41.048973, 17.183266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768585, 41.268318, 16.696068>,  <30.532911, 41.621243, 17.188997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768585, 41.268318, 16.696068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392250, 41.138599, 16.735378>,  <30.166449, 41.060768, 16.758965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.392250, 41.138599, 16.735378>,  <30.768585, 41.268318, 16.696068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392250, 41.138599, 16.735378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089378, -0.042259, -0.995101,
		0.326864, -0.945010, 0.010773,
		-0.940835, -0.324300, 0.098276,
		30.109999, 41.041309, 16.764860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681870, 40.752968, 16.197048>,  <30.768585, 41.268318, 16.696068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681870, 40.752968, 16.197048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307070, 40.861656, 16.284864>,  <30.082190, 40.926868, 16.337555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307070, 40.861656, 16.284864>,  <30.681870, 40.752968, 16.197048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307070, 40.861656, 16.284864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255093, -0.102858, -0.961430,
		-0.238657, -0.956864, 0.165691,
		-0.937001, 0.271718, 0.219542,
		30.025969, 40.943172, 16.350727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088003, 40.216457, 15.878679>,  <30.681870, 40.752968, 16.197048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088003, 40.216457, 15.878679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882263, 40.548943, 15.963090>,  <29.758820, 40.748432, 16.013737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882263, 40.548943, 15.963090>,  <30.088003, 40.216457, 15.878679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882263, 40.548943, 15.963090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449851, -0.052011, -0.891588,
		-0.730120, -0.553521, 0.400673,
		-0.514352, 0.831210, 0.211027,
		29.727957, 40.798306, 16.026398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414425, 40.075455, 15.724025>,  <30.088003, 40.216457, 15.878679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414425, 40.075455, 15.724025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422596, 40.475330, 15.729743>,  <29.427500, 40.715256, 15.733173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422596, 40.475330, 15.729743>,  <29.414425, 40.075455, 15.724025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422596, 40.475330, 15.729743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298722, 0.019748, -0.954136,
		-0.954121, 0.015222, 0.299033,
		0.020429, 0.999689, 0.014295,
		29.428724, 40.775238, 15.734032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697285, 40.331703, 15.622786>,  <29.414425, 40.075455, 15.724025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697285, 40.331703, 15.622786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939924, 40.628067, 15.507482>,  <29.085508, 40.805885, 15.438299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939924, 40.628067, 15.507482>,  <28.697285, 40.331703, 15.622786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939924, 40.628067, 15.507482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437338, 0.008192, -0.899260,
		-0.663906, 0.671558, 0.328995,
		0.606600, 0.740907, -0.288259,
		29.121904, 40.850338, 15.421003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293530, 40.725189, 15.150199>,  <28.697285, 40.331703, 15.622786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293530, 40.725189, 15.150199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676651, 40.789230, 15.054720>,  <28.906525, 40.827656, 14.997433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676651, 40.789230, 15.054720>,  <28.293530, 40.725189, 15.150199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676651, 40.789230, 15.054720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235569, -0.038527, -0.971094,
		-0.164670, 0.986348, 0.000814,
		0.957805, 0.160101, -0.238697,
		28.963993, 40.837261, 14.983110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.203224, 37.683811, 29.833879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259724, 37.306110, 29.714930>,  <32.293625, 37.079491, 29.643560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259724, 37.306110, 29.714930>,  <32.203224, 37.683811, 29.833879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259724, 37.306110, 29.714930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504864, 0.327094, -0.798825,
		0.851564, -0.037301, 0.522922,
		0.141248, -0.944255, -0.297374,
		32.302097, 37.022835, 29.625717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552116, 37.450756, 29.214588>,  <32.203224, 37.683811, 29.833879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552116, 37.450756, 29.214588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943268, 37.452236, 29.130928>,  <33.177959, 37.453125, 29.080732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943268, 37.452236, 29.130928>,  <32.552116, 37.450756, 29.214588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943268, 37.452236, 29.130928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207632, 0.138646, -0.968332,
		0.025416, 0.990335, 0.136347,
		0.977877, 0.003699, -0.209149,
		33.236629, 37.453346, 29.068184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702187, 38.079098, 28.901560>,  <32.552116, 37.450756, 29.214588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702187, 38.079098, 28.901560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965157, 37.803688, 28.779099>,  <33.122936, 37.638443, 28.705622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965157, 37.803688, 28.779099>,  <32.702187, 38.079098, 28.901560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965157, 37.803688, 28.779099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187639, 0.243907, -0.951473,
		0.729787, 0.682965, 0.031155,
		0.657421, -0.688527, -0.306151,
		33.162384, 37.597130, 28.687254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173622, 38.434666, 28.525646>,  <32.702187, 38.079098, 28.901560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173622, 38.434666, 28.525646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199978, 38.053238, 28.408091>,  <33.215790, 37.824383, 28.337557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199978, 38.053238, 28.408091>,  <33.173622, 38.434666, 28.525646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199978, 38.053238, 28.408091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245356, 0.270004, -0.931074,
		0.967192, 0.133452, -0.216173,
		0.065886, -0.953566, -0.293889,
		33.219742, 37.767166, 28.319923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565544, 38.428467, 27.920273>,  <33.173622, 38.434666, 28.525646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565544, 38.428467, 27.920273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368282, 38.080624, 27.929916>,  <33.249924, 37.871918, 27.935703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368282, 38.080624, 27.929916>,  <33.565544, 38.428467, 27.920273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368282, 38.080624, 27.929916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359383, 0.178412, -0.915976,
		0.792236, -0.460387, -0.400507,
		-0.493159, -0.869605, 0.024111,
		33.220333, 37.819740, 27.937149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731705, 38.094715, 27.229744>,  <33.565544, 38.428467, 27.920273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731705, 38.094715, 27.229744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409859, 37.898682, 27.363863>,  <33.216751, 37.781063, 27.444334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409859, 37.898682, 27.363863>,  <33.731705, 38.094715, 27.229744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409859, 37.898682, 27.363863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355976, -0.053847, -0.932942,
		0.475272, -0.870012, -0.131132,
		-0.804610, -0.490081, 0.335295,
		33.168476, 37.751656, 27.464451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692120, 37.607952, 26.687466>,  <33.731705, 38.094715, 27.229744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692120, 37.607952, 26.687466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344330, 37.625923, 26.884237>,  <33.135654, 37.636707, 27.002300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344330, 37.625923, 26.884237>,  <33.692120, 37.607952, 26.687466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344330, 37.625923, 26.884237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493572, -0.038785, -0.868840,
		-0.019944, -0.998238, 0.055891,
		-0.869476, 0.044914, 0.491929,
		33.083488, 37.639400, 27.031815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296974, 36.989960, 26.429115>,  <33.692120, 37.607952, 26.687466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296974, 36.989960, 26.429115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038197, 37.262875, 26.565321>,  <32.882931, 37.426624, 26.647043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038197, 37.262875, 26.565321>,  <33.296974, 36.989960, 26.429115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038197, 37.262875, 26.565321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518301, -0.065916, -0.852654,
		-0.559307, -0.728109, 0.396273,
		-0.646946, 0.682284, 0.340512,
		32.844112, 37.467560, 26.667475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596226, 36.778286, 26.169788>,  <33.296974, 36.989960, 26.429115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596226, 36.778286, 26.169788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570770, 37.166103, 26.264399>,  <32.555496, 37.398792, 26.321165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570770, 37.166103, 26.264399>,  <32.596226, 36.778286, 26.169788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570770, 37.166103, 26.264399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705758, 0.123847, -0.697545,
		-0.705590, -0.211316, 0.676379,
		-0.063635, 0.969540, 0.236523,
		32.551682, 37.456966, 26.335356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920847, 36.971996, 26.070232>,  <32.596226, 36.778286, 26.169788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920847, 36.971996, 26.070232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071365, 37.339870, 26.115089>,  <32.161674, 37.560596, 26.142004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071365, 37.339870, 26.115089>,  <31.920847, 36.971996, 26.070232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071365, 37.339870, 26.115089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786874, 0.381136, -0.485350,
		-0.489113, 0.094391, 0.867098,
		0.376295, 0.919688, 0.112145,
		32.184254, 37.615776, 26.148733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331718, 37.393410, 26.322397>,  <31.920847, 36.971996, 26.070232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331718, 37.393410, 26.322397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.590729, 37.630093, 26.130318>,  <31.746136, 37.772102, 26.015070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.590729, 37.630093, 26.130318>,  <31.331718, 37.393410, 26.322397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590729, 37.630093, 26.130318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758187, 0.436931, -0.483988,
		-0.076564, 0.677477, 0.731549,
		0.647526, 0.591707, -0.480201,
		31.784986, 37.807606, 25.986258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001236, 38.039783, 26.258720>,  <31.331718, 37.393410, 26.322397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001236, 38.039783, 26.258720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306927, 38.032356, 26.000849>,  <31.490341, 38.027901, 25.846127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306927, 38.032356, 26.000849>,  <31.001236, 38.039783, 26.258720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306927, 38.032356, 26.000849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578580, 0.421911, -0.698023,
		0.284960, 0.906447, 0.311691,
		0.764227, -0.018570, -0.644680,
		31.536196, 38.026787, 25.807446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617401, 38.477077, 26.666805>,  <31.001236, 38.039783, 26.258720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617401, 38.477077, 26.666805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.234367, 38.396481, 26.749199>,  <30.004547, 38.348122, 26.798635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.234367, 38.396481, 26.749199>,  <30.617401, 38.477077, 26.666805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234367, 38.396481, 26.749199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273857, -0.414084, 0.868065,
		-0.089611, 0.887658, 0.451701,
		-0.957587, -0.201490, 0.205985,
		29.947092, 38.336033, 26.810995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446341, 38.917953, 27.175007>,  <30.617401, 38.477077, 26.666805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446341, 38.917953, 27.175007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.175148, 38.623932, 27.177559>,  <30.012432, 38.447517, 27.179090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.175148, 38.623932, 27.177559>,  <30.446341, 38.917953, 27.175007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175148, 38.623932, 27.177559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106074, -0.089241, 0.990346,
		-0.727387, 0.672111, 0.138474,
		-0.677980, -0.735053, 0.006381,
		29.971754, 38.403416, 27.179474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173340, 38.906334, 27.801020>,  <30.446341, 38.917953, 27.175007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173340, 38.906334, 27.801020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.011690, 38.545650, 27.739561>,  <29.914700, 38.329243, 27.702686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.011690, 38.545650, 27.739561>,  <30.173340, 38.906334, 27.801020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011690, 38.545650, 27.739561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058337, -0.193041, 0.979455,
		-0.912841, 0.386859, 0.130616,
		-0.404126, -0.901707, -0.153648,
		29.890453, 38.275139, 27.693466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648102, 38.765453, 28.306656>,  <30.173340, 38.906334, 27.801020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648102, 38.765453, 28.306656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.765507, 38.405071, 28.178825>,  <29.835949, 38.188843, 28.102127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.765507, 38.405071, 28.178825>,  <29.648102, 38.765453, 28.306656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765507, 38.405071, 28.178825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072802, -0.312265, 0.947201,
		-0.953180, -0.301279, -0.026061,
		0.293510, -0.900956, -0.319578,
		29.853559, 38.134785, 28.082952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273127, 38.306225, 28.659124>,  <29.648102, 38.765453, 28.306656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273127, 38.306225, 28.659124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.603912, 38.121651, 28.530619>,  <29.802383, 38.010906, 28.453516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.603912, 38.121651, 28.530619>,  <29.273127, 38.306225, 28.659124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603912, 38.121651, 28.530619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220831, -0.258910, 0.940319,
		-0.517072, -0.848555, -0.112211,
		0.826964, -0.461433, -0.321262,
		29.852001, 37.983219, 28.434240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207096, 37.615078, 28.906269>,  <29.273127, 38.306225, 28.659124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207096, 37.615078, 28.906269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.598431, 37.604816, 28.824097>,  <29.833231, 37.598660, 28.774794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.598431, 37.604816, 28.824097>,  <29.207096, 37.615078, 28.906269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598431, 37.604816, 28.824097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187360, -0.312399, 0.931291,
		-0.088063, -0.949604, -0.300826,
		0.978336, -0.025650, -0.205429,
		29.891932, 37.597122, 28.762468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427299, 36.963760, 29.096020>,  <29.207096, 37.615078, 28.906269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427299, 36.963760, 29.096020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773939, 37.163200, 29.087982>,  <29.981922, 37.282864, 29.083160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773939, 37.163200, 29.087982>,  <29.427299, 36.963760, 29.096020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773939, 37.163200, 29.087982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245066, -0.390174, 0.887529,
		0.434685, -0.774054, -0.460314,
		0.866597, 0.498603, -0.020092,
		30.033918, 37.312782, 29.081955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893011, 36.519142, 29.248062>,  <29.427299, 36.963760, 29.096020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893011, 36.519142, 29.248062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082430, 36.857609, 29.345848>,  <30.196081, 37.060688, 29.404520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082430, 36.857609, 29.345848>,  <29.893011, 36.519142, 29.248062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082430, 36.857609, 29.345848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307256, -0.418829, 0.854503,
		0.825438, -0.329532, -0.458323,
		0.473546, 0.846162, 0.244467,
		30.224493, 37.111458, 29.419188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490450, 36.373459, 29.532185>,  <29.893011, 36.519142, 29.248062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490450, 36.373459, 29.532185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452105, 36.747295, 29.669210>,  <30.429096, 36.971596, 29.751427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452105, 36.747295, 29.669210>,  <30.490450, 36.373459, 29.532185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452105, 36.747295, 29.669210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427949, -0.272023, 0.861895,
		0.898704, 0.229225, -0.373880,
		-0.095864, 0.934590, 0.342565,
		30.423346, 37.027672, 29.771980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152905, 36.519558, 29.834860>,  <30.490450, 36.373459, 29.532185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152905, 36.519558, 29.834860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895765, 36.784492, 29.988770>,  <30.741482, 36.943455, 30.081116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895765, 36.784492, 29.988770>,  <31.152905, 36.519558, 29.834860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895765, 36.784492, 29.988770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410698, -0.125983, 0.903026,
		0.646584, 0.738536, -0.191033,
		-0.642850, 0.662339, 0.384774,
		30.702909, 36.983192, 30.104202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387072, 36.627308, 30.500717>,  <31.152905, 36.519558, 29.834860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387072, 36.627308, 30.500717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.054888, 36.848431, 30.528271>,  <30.855577, 36.981102, 30.544802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.054888, 36.848431, 30.528271>,  <31.387072, 36.627308, 30.500717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054888, 36.848431, 30.528271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090149, 0.011338, 0.995864,
		0.549737, 0.833234, -0.059251,
		-0.830459, 0.552804, 0.068883,
		30.805750, 37.014271, 30.548935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542070, 37.350288, 30.922922>,  <31.387072, 36.627308, 30.500717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542070, 37.350288, 30.922922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165499, 37.219887, 30.957415>,  <30.939556, 37.141647, 30.978111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165499, 37.219887, 30.957415>,  <31.542070, 37.350288, 30.922922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165499, 37.219887, 30.957415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060627, 0.087927, 0.994280,
		-0.331721, 0.941271, -0.063013,
		-0.941427, -0.326004, 0.086233,
		30.883070, 37.122086, 30.983284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261559, 37.721497, 31.504211>,  <31.542070, 37.350288, 30.922922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261559, 37.721497, 31.504211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041187, 37.391678, 31.452669>,  <30.908964, 37.193787, 31.421743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041187, 37.391678, 31.452669>,  <31.261559, 37.721497, 31.504211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041187, 37.391678, 31.452669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139045, -0.061553, 0.988371,
		-0.822889, 0.562437, -0.080737,
		-0.550927, -0.824545, -0.128855,
		30.875910, 37.144314, 31.414013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681950, 37.816368, 31.886393>,  <31.261559, 37.721497, 31.504211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681950, 37.816368, 31.886393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720984, 37.420048, 31.848890>,  <30.744404, 37.182255, 31.826389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720984, 37.420048, 31.848890>,  <30.681950, 37.816368, 31.886393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720984, 37.420048, 31.848890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079543, -0.086139, 0.993102,
		-0.992043, -0.104369, 0.070406,
		0.097585, -0.990801, -0.093756,
		30.750259, 37.122807, 31.820765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358429, 38.486389, 31.576729>,  <30.681950, 37.816368, 31.886393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358429, 38.486389, 31.576729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.569019, 38.826466, 31.576662>,  <30.695374, 39.030510, 31.576622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.569019, 38.826466, 31.576662>,  <30.358429, 38.486389, 31.576729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569019, 38.826466, 31.576662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601620, 0.372409, -0.706658,
		-0.600731, 0.372139, 0.707555,
		0.526475, 0.850191, -0.000169,
		30.726961, 39.081524, 31.576611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848385, 38.908474, 31.352493>,  <30.358429, 38.486389, 31.576729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848385, 38.908474, 31.352493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172804, 39.142017, 31.337969>,  <30.367455, 39.282143, 31.329254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172804, 39.142017, 31.337969>,  <29.848385, 38.908474, 31.352493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172804, 39.142017, 31.337969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407138, 0.518817, -0.751709,
		-0.420052, 0.624453, 0.658494,
		0.811045, 0.583855, -0.036309,
		30.416117, 39.317173, 31.327076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718683, 39.729694, 31.401043>,  <29.848385, 38.908474, 31.352493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718683, 39.729694, 31.401043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.078886, 39.690140, 31.231663>,  <30.295008, 39.666409, 31.130035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.078886, 39.690140, 31.231663>,  <29.718683, 39.729694, 31.401043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078886, 39.690140, 31.231663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260763, 0.656483, -0.707836,
		0.347980, 0.747832, 0.565383,
		0.900507, -0.098882, -0.423450,
		30.349037, 39.660477, 31.104628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055382, 40.359715, 31.517473>,  <29.718683, 39.729694, 31.401043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055382, 40.359715, 31.517473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163649, 40.190430, 31.171612>,  <30.228609, 40.088860, 30.964094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163649, 40.190430, 31.171612>,  <30.055382, 40.359715, 31.517473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163649, 40.190430, 31.171612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325435, 0.805077, -0.495927,
		0.905998, 0.415620, 0.080177,
		0.270666, -0.423216, -0.864655,
		30.244848, 40.063465, 30.912216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346470, 40.856220, 31.015274>,  <30.055382, 40.359715, 31.517473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346470, 40.856220, 31.015274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273842, 40.548992, 30.769640>,  <30.230265, 40.364655, 30.622259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273842, 40.548992, 30.769640>,  <30.346470, 40.856220, 31.015274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273842, 40.548992, 30.769640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037684, 0.629439, -0.776136,
		0.982656, -0.117781, -0.143230,
		-0.181568, -0.768072, -0.614084,
		30.219372, 40.318569, 30.585415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920506, 40.804588, 30.435879>,  <30.346470, 40.856220, 31.015274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920506, 40.804588, 30.435879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585907, 40.622608, 30.313702>,  <30.385149, 40.513420, 30.240395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585907, 40.622608, 30.313702>,  <30.920506, 40.804588, 30.435879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585907, 40.622608, 30.313702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007441, 0.547923, -0.836496,
		0.547923, -0.701998, -0.454950,
		0.836496, 0.454950, 0.305444,
		30.334959, 40.486122, 30.222069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111498, 40.594784, 29.859400>,  <30.920506, 40.804588, 30.435879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111498, 40.594784, 29.859400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714024, 40.595287, 29.814522>,  <30.475538, 40.595589, 29.787596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714024, 40.595287, 29.814522>,  <31.111498, 40.594784, 29.859400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714024, 40.595287, 29.814522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094289, 0.551391, -0.828902,
		0.060818, -0.834246, -0.548028,
		-0.993686, 0.001261, -0.112194,
		30.415918, 40.595665, 29.780863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007448, 40.346245, 29.152306>,  <31.111498, 40.594784, 29.859400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007448, 40.346245, 29.152306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.653011, 40.510296, 29.238693>,  <30.440350, 40.608727, 29.290525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.653011, 40.510296, 29.238693>,  <31.007448, 40.346245, 29.152306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653011, 40.510296, 29.238693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032343, 0.410092, -0.911470,
		-0.462383, -0.814630, -0.350114,
		-0.886090, 0.410125, 0.215967,
		30.387184, 40.633335, 29.303484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570488, 40.204624, 28.605688>,  <31.007448, 40.346245, 29.152306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570488, 40.204624, 28.605688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438980, 40.543247, 28.773136>,  <30.360075, 40.746422, 28.873606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438980, 40.543247, 28.773136>,  <30.570488, 40.204624, 28.605688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438980, 40.543247, 28.773136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020209, 0.449467, -0.893068,
		-0.944193, -0.285156, -0.164880,
		-0.328772, 0.846561, 0.418621,
		30.340349, 40.797215, 28.898722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328918, 40.573734, 28.093355>,  <30.570488, 40.204624, 28.605688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328918, 40.573734, 28.093355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.247442, 40.873394, 28.345480>,  <30.198557, 41.053188, 28.496754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.247442, 40.873394, 28.345480>,  <30.328918, 40.573734, 28.093355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247442, 40.873394, 28.345480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081120, 0.628680, -0.773421,
		-0.975669, -0.208669, -0.067285,
		-0.203690, 0.749145, 0.630311,
		30.186335, 41.098137, 28.534573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743023, 40.839436, 27.959265>,  <30.328918, 40.573734, 28.093355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743023, 40.839436, 27.959265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.934052, 41.135162, 28.149143>,  <30.048668, 41.312599, 28.263069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.934052, 41.135162, 28.149143>,  <29.743023, 40.839436, 27.959265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934052, 41.135162, 28.149143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082208, 0.575521, -0.813645,
		-0.874739, 0.349549, 0.335630,
		0.477570, 0.739318, 0.474695,
		30.077322, 41.356956, 28.291552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365793, 41.401356, 27.684868>,  <29.743023, 40.839436, 27.959265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365793, 41.401356, 27.684868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.696842, 41.561230, 27.842497>,  <29.895472, 41.657154, 27.937075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.696842, 41.561230, 27.842497>,  <29.365793, 41.401356, 27.684868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696842, 41.561230, 27.842497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052845, 0.643485, -0.763633,
		-0.558794, 0.652824, 0.511440,
		0.827621, 0.399686, 0.394074,
		29.945129, 41.681137, 27.960718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242542, 42.116215, 27.934956>,  <29.365793, 41.401356, 27.684868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242542, 42.116215, 27.934956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.620541, 42.041668, 27.827436>,  <29.847340, 41.996941, 27.762924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.620541, 42.041668, 27.827436>,  <29.242542, 42.116215, 27.934956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620541, 42.041668, 27.827436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130461, 0.538839, -0.832245,
		0.299942, 0.821535, 0.484886,
		0.944995, -0.186366, -0.268799,
		29.904039, 41.985760, 27.746798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493013, 42.733761, 27.766397>,  <29.242542, 42.116215, 27.934956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493013, 42.733761, 27.766397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777660, 42.510960, 27.595121>,  <29.948448, 42.377281, 27.492355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777660, 42.510960, 27.595121>,  <29.493013, 42.733761, 27.766397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777660, 42.510960, 27.595121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109555, 0.514037, -0.850743,
		0.693971, 0.652316, 0.304776,
		0.711620, -0.557001, -0.428191,
		29.991146, 42.343861, 27.466663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627605, 43.243347, 27.300016>,  <29.493013, 42.733761, 27.766397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627605, 43.243347, 27.300016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803234, 42.902115, 27.187258>,  <29.908611, 42.697376, 27.119602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803234, 42.902115, 27.187258>,  <29.627605, 43.243347, 27.300016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803234, 42.902115, 27.187258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031937, 0.328381, -0.944005,
		0.897885, 0.405481, 0.171427,
		0.439070, -0.853083, -0.281899,
		29.934956, 42.646191, 27.102688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346418, 43.383640, 26.936451>,  <29.627605, 43.243347, 27.300016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346418, 43.383640, 26.936451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.239002, 43.019897, 26.809351>,  <30.174553, 42.801651, 26.733091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.239002, 43.019897, 26.809351>,  <30.346418, 43.383640, 26.936451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239002, 43.019897, 26.809351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237526, 0.257169, -0.936721,
		0.933525, -0.327020, 0.146935,
		-0.268539, -0.909353, -0.317749,
		30.158440, 42.747093, 26.714025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824575, 43.240936, 26.475096>,  <30.346418, 43.383640, 26.936451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824575, 43.240936, 26.475096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511248, 43.003036, 26.402782>,  <30.323250, 42.860298, 26.359394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511248, 43.003036, 26.402782>,  <30.824575, 43.240936, 26.475096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511248, 43.003036, 26.402782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038337, 0.244053, -0.969004,
		0.620434, -0.765972, -0.168371,
		-0.783321, -0.594748, -0.180783,
		30.276251, 42.824612, 26.348547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060064, 42.846691, 25.950232>,  <30.824575, 43.240936, 26.475096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060064, 42.846691, 25.950232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661482, 42.858101, 25.918579>,  <30.422333, 42.864948, 25.899588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661482, 42.858101, 25.918579>,  <31.060064, 42.846691, 25.950232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661482, 42.858101, 25.918579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080811, 0.063518, -0.994703,
		-0.023354, -0.997573, -0.065599,
		-0.996455, 0.028531, -0.079132,
		30.362545, 42.866661, 25.894840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852001, 42.314144, 25.431387>,  <31.060064, 42.846691, 25.950232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852001, 42.314144, 25.431387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540531, 42.564278, 25.410892>,  <30.353649, 42.714355, 25.398596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540531, 42.564278, 25.410892>,  <30.852001, 42.314144, 25.431387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540531, 42.564278, 25.410892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010349, -0.094449, -0.995476,
		-0.627342, -0.774622, 0.080017,
		-0.778676, 0.625332, -0.051235,
		30.306929, 42.751877, 25.395521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489836, 42.056309, 24.884956>,  <30.852001, 42.314144, 25.431387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489836, 42.056309, 24.884956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.304010, 42.404564, 24.949663>,  <30.192514, 42.613518, 24.988487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.304010, 42.404564, 24.949663>,  <30.489836, 42.056309, 24.884956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304010, 42.404564, 24.949663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198328, 0.075744, -0.977205,
		-0.863045, -0.486058, 0.137484,
		-0.464564, 0.870638, 0.161769,
		30.164640, 42.665756, 24.998194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888584, 42.147808, 24.528700>,  <30.489836, 42.056309, 24.884956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888584, 42.147808, 24.528700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979445, 42.535019, 24.571283>,  <30.033960, 42.767345, 24.596834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979445, 42.535019, 24.571283>,  <29.888584, 42.147808, 24.528700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979445, 42.535019, 24.571283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225123, 0.158551, -0.961343,
		-0.947482, 0.194401, 0.253939,
		0.227149, 0.968023, 0.106460,
		30.047588, 42.825424, 24.603222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388062, 42.503510, 24.196308>,  <29.888584, 42.147808, 24.528700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388062, 42.503510, 24.196308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.669792, 42.786331, 24.221586>,  <29.838831, 42.956024, 24.236753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.669792, 42.786331, 24.221586>,  <29.388062, 42.503510, 24.196308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669792, 42.786331, 24.221586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136495, 0.222255, -0.965387,
		-0.696629, 0.671322, 0.253050,
		0.704327, 0.707057, 0.063197,
		29.881090, 42.998447, 24.240545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054640, 43.125908, 24.006155>,  <29.388062, 42.503510, 24.196308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054640, 43.125908, 24.006155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.447803, 43.185871, 23.963417>,  <29.683702, 43.221851, 23.937775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.447803, 43.185871, 23.963417>,  <29.054640, 43.125908, 24.006155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447803, 43.185871, 23.963417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169970, 0.516117, -0.839484,
		-0.070703, 0.843298, 0.532776,
		0.982910, 0.149910, -0.106844,
		29.742676, 43.230843, 23.931364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154276, 43.857010, 23.864206>,  <29.054640, 43.125908, 24.006155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154276, 43.857010, 23.864206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.490353, 43.676350, 23.744146>,  <29.691998, 43.567955, 23.672110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.490353, 43.676350, 23.744146>,  <29.154276, 43.857010, 23.864206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490353, 43.676350, 23.744146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113862, 0.394225, -0.911933,
		0.530203, 0.800374, 0.279798,
		0.840191, -0.451651, -0.300151,
		29.742411, 43.540855, 23.654100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633417, 44.389164, 23.573029>,  <29.154276, 43.857010, 23.864206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633417, 44.389164, 23.573029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733234, 44.042412, 23.400402>,  <29.793125, 43.834362, 23.296827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733234, 44.042412, 23.400402>,  <29.633417, 44.389164, 23.573029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733234, 44.042412, 23.400402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172738, 0.478365, -0.861005,
		0.952832, 0.140311, 0.269117,
		0.249544, -0.866880, -0.431564,
		29.808098, 43.782349, 23.270933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118229, 44.549446, 23.055441>,  <29.633417, 44.389164, 23.573029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118229, 44.549446, 23.055441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028162, 44.174694, 22.948439>,  <29.974121, 43.949844, 22.884237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028162, 44.174694, 22.948439>,  <30.118229, 44.549446, 23.055441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028162, 44.174694, 22.948439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170784, 0.232352, -0.957520,
		0.959235, -0.261289, 0.107685,
		-0.225169, -0.936878, -0.267504,
		29.960611, 43.893631, 22.868187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512798, 44.406860, 22.484564>,  <30.118229, 44.549446, 23.055441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512798, 44.406860, 22.484564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.222137, 44.134808, 22.445789>,  <30.047741, 43.971577, 22.422525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.222137, 44.134808, 22.445789>,  <30.512798, 44.406860, 22.484564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222137, 44.134808, 22.445789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068414, 0.212033, -0.974865,
		0.683591, -0.701755, -0.200605,
		-0.726652, -0.680134, -0.096934,
		30.004143, 43.930767, 22.416710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601706, 44.234047, 21.816940>,  <30.512798, 44.406860, 22.484564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601706, 44.234047, 21.816940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.236584, 44.105347, 21.917547>,  <30.017509, 44.028126, 21.977911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.236584, 44.105347, 21.917547>,  <30.601706, 44.234047, 21.816940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236584, 44.105347, 21.917547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362299, 0.353749, -0.862323,
		0.188475, -0.878260, -0.439473,
		-0.912807, -0.321747, 0.251520,
		29.962742, 44.008823, 21.993004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129187, 43.589516, 21.509853>,  <30.601706, 44.234047, 21.816940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129187, 43.589516, 21.509853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493645, 43.710194, 21.397573>,  <31.712320, 43.782600, 21.330206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.493645, 43.710194, 21.397573>,  <31.129187, 43.589516, 21.509853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493645, 43.710194, 21.397573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377717, -0.339104, 0.861591,
		0.164752, -0.891060, -0.422929,
		0.911146, 0.301696, -0.280700,
		31.766989, 43.800701, 21.313364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576794, 42.965603, 21.584105>,  <31.129187, 43.589516, 21.509853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576794, 42.965603, 21.584105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842800, 43.262913, 21.554998>,  <32.002403, 43.441299, 21.537535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.842800, 43.262913, 21.554998>,  <31.576794, 42.965603, 21.584105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842800, 43.262913, 21.554998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490020, -0.360738, 0.793567,
		0.563592, -0.563389, -0.604117,
		0.665015, 0.743277, -0.072763,
		32.042305, 43.485897, 21.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251198, 42.621971, 21.548674>,  <31.576794, 42.965603, 21.584105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251198, 42.621971, 21.548674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359222, 42.994202, 21.647541>,  <32.424038, 43.217541, 21.706861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359222, 42.994202, 21.647541>,  <32.251198, 42.621971, 21.548674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359222, 42.994202, 21.647541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640450, -0.365297, 0.675560,
		0.718951, -0.024146, -0.694642,
		0.270062, 0.930578, 0.247166,
		32.440243, 43.273376, 21.721691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084934, 42.710979, 21.646557>,  <32.251198, 42.621971, 21.548674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084934, 42.710979, 21.646557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919987, 43.007786, 21.857979>,  <32.821018, 43.185867, 21.984833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919987, 43.007786, 21.857979>,  <33.084934, 42.710979, 21.646557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919987, 43.007786, 21.857979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501648, -0.299354, 0.811625,
		0.760461, 0.599837, -0.248785,
		-0.412368, 0.742013, 0.528555,
		32.796276, 43.230389, 22.016544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606045, 43.043446, 21.923088>,  <33.084934, 42.710979, 21.646557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606045, 43.043446, 21.923088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286419, 43.106503, 22.155170>,  <33.094643, 43.144337, 22.294420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286419, 43.106503, 22.155170>,  <33.606045, 43.043446, 21.923088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286419, 43.106503, 22.155170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532837, -0.261369, 0.804842,
		0.278528, 0.952278, 0.124852,
		-0.799066, 0.157645, 0.580208,
		33.046700, 43.153797, 22.329233>
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
