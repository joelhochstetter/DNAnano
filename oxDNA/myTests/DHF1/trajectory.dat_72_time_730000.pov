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
	<3.442717, 3.159089, 5.194379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252213, 3.488655, 5.317238>,  <3.137910, 3.686395, 5.390953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252213, 3.488655, 5.317238>,  <3.442717, 3.159089, 5.194379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.252213, 3.488655, 5.317238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481000, 0.048295, -0.875389,
		-0.736081, -0.564650, 0.373302,
		-0.476260, 0.823916, 0.307146,
		3.109334, 3.735830, 5.409382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.652052, 3.094276, 5.226634>,  <3.442717, 3.159089, 5.194379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.652052, 3.094276, 5.226634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.787780, 3.464153, 5.157578>,  <2.869216, 3.686080, 5.116144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.787780, 3.464153, 5.157578>,  <2.652052, 3.094276, 5.226634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.787780, 3.464153, 5.157578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388187, -0.029525, -0.921108,
		-0.856839, 0.379565, 0.348936,
		0.339318, 0.924694, -0.172640,
		2.889575, 3.741561, 5.105785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.227715, 3.682017, 4.973722>,  <2.652052, 3.094276, 5.226634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.227715, 3.682017, 4.973722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595718, 3.715500, 4.820580>,  <2.816520, 3.735590, 4.728694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595718, 3.715500, 4.820580>,  <2.227715, 3.682017, 4.973722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.595718, 3.715500, 4.820580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390429, 0.280355, -0.876907,
		0.033931, 0.956240, 0.290610,
		0.920008, 0.083708, -0.382857,
		2.871721, 3.740612, 4.705722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.318728, 4.284434, 4.599456>,  <2.227715, 3.682017, 4.973722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.318728, 4.284434, 4.599456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560328, 4.003384, 4.448990>,  <2.705288, 3.834753, 4.358710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560328, 4.003384, 4.448990>,  <2.318728, 4.284434, 4.599456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.560328, 4.003384, 4.448990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387564, 0.153476, -0.908977,
		0.696403, 0.694810, -0.179613,
		0.604000, -0.702626, -0.376165,
		2.741529, 3.792596, 4.336140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.780776, 4.491954, 3.952329>,  <2.318728, 4.284434, 4.599456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.780776, 4.491954, 3.952329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704294, 4.099346, 3.955418>,  <2.658405, 3.863781, 3.957271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704294, 4.099346, 3.955418>,  <2.780776, 4.491954, 3.952329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.704294, 4.099346, 3.955418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230704, 0.037294, -0.972309,
		0.954053, -0.187691, -0.233572,
		-0.191204, -0.981520, 0.007721,
		2.646933, 3.804890, 3.957734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.989561, 4.259746, 3.276217>,  <2.780776, 4.491954, 3.952329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.989561, 4.259746, 3.276217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741302, 3.979591, 3.417217>,  <2.592346, 3.811499, 3.501817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.741302, 3.979591, 3.417217>,  <2.989561, 4.259746, 3.276217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.741302, 3.979591, 3.417217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449644, -0.050377, -0.891786,
		0.642352, -0.711985, -0.283658,
		-0.620648, -0.700386, 0.352500,
		2.555107, 3.769476, 3.522967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.952703, 3.872619, 2.742124>,  <2.989561, 4.259746, 3.276217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.952703, 3.872619, 2.742124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.628401, 3.794312, 2.962795>,  <2.433819, 3.747327, 3.095198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.628401, 3.794312, 2.962795>,  <2.952703, 3.872619, 2.742124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.628401, 3.794312, 2.962795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500610, -0.256612, -0.826765,
		0.303422, -0.946480, 0.110046,
		-0.810756, -0.195769, 0.551679,
		2.385174, 3.735581, 3.128299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.712102, 3.321143, 2.551821>,  <2.952703, 3.872619, 2.742124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.712102, 3.321143, 2.551821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.400624, 3.509254, 2.717941>,  <2.213738, 3.622121, 2.817613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.400624, 3.509254, 2.717941>,  <2.712102, 3.321143, 2.551821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.400624, 3.509254, 2.717941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590080, -0.324053, -0.739456,
		-0.213169, -0.820871, 0.529839,
		-0.778694, 0.470277, 0.415301,
		2.167016, 3.650338, 2.842531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.780998, 3.871032, 1.548667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.935661, 4.188675, 1.736237>,  <1.028459, 4.379261, 1.848778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.935661, 4.188675, 1.736237>,  <0.780998, 3.871032, 1.548667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.935661, 4.188675, 1.736237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040380, -0.522561, 0.851645,
		0.921339, -0.310360, -0.234119,
		0.386658, 0.794107, 0.468923,
		1.051659, 4.426907, 1.876914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.568746, 3.749356, 1.834040>,  <0.780998, 3.871032, 1.548667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.568746, 3.749356, 1.834040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.330021, 3.997536, 2.037552>,  <1.186786, 4.146444, 2.159659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.330021, 3.997536, 2.037552>,  <1.568746, 3.749356, 1.834040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.330021, 3.997536, 2.037552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221339, -0.482181, 0.847650,
		0.771248, 0.618501, 0.150442,
		-0.596813, 0.620449, 0.508779,
		1.150977, 4.183671, 2.190186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.922180, 4.341311, 2.399811>,  <1.568746, 3.749356, 1.834040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.922180, 4.341311, 2.399811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.571995, 4.158714, 2.463284>,  <1.361884, 4.049156, 2.501367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.571995, 4.158714, 2.463284>,  <1.922180, 4.341311, 2.399811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.571995, 4.158714, 2.463284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406794, -0.518773, 0.751926,
		-0.260929, 0.722834, 0.639865,
		-0.875463, -0.456492, 0.158682,
		1.309356, 4.021767, 2.510888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.804492, 4.468323, 3.060086>,  <1.922180, 4.341311, 2.399811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.804492, 4.468323, 3.060086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.653008, 4.121613, 2.930302>,  <1.562117, 3.913586, 2.852431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.653008, 4.121613, 2.930302>,  <1.804492, 4.468323, 3.060086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.653008, 4.121613, 2.930302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420376, -0.473422, 0.774051,
		-0.824537, 0.156747, 0.543663,
		-0.378712, -0.866777, -0.324461,
		1.539394, 3.861579, 2.832963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.309423, 4.188463, 3.520895>,  <1.804492, 4.468323, 3.060086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.309423, 4.188463, 3.520895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.552904, 3.948082, 3.313690>,  <1.698993, 3.803854, 3.189367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.552904, 3.948082, 3.313690>,  <1.309423, 4.188463, 3.520895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.552904, 3.948082, 3.313690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525552, -0.183710, 0.830690,
		-0.594369, -0.777886, 0.204007,
		0.608704, -0.600953, -0.518012,
		1.735515, 3.767796, 3.158287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.283050, 3.527346, 3.787953>,  <1.309423, 4.188463, 3.520895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.283050, 3.527346, 3.787953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.635181, 3.555321, 3.600281>,  <1.846460, 3.572106, 3.487677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.635181, 3.555321, 3.600281>,  <1.283050, 3.527346, 3.787953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.635181, 3.555321, 3.600281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465166, -0.321105, 0.824931,
		-0.092963, -0.944458, -0.315211,
		0.880329, 0.069937, -0.469181,
		1.899280, 3.576302, 3.459527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.639346, 2.942121, 3.978398>,  <1.283050, 3.527346, 3.787953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.639346, 2.942121, 3.978398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.913630, 3.195007, 3.834118>,  <2.078200, 3.346739, 3.747550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.913630, 3.195007, 3.834118>,  <1.639346, 2.942121, 3.978398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.913630, 3.195007, 3.834118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592252, -0.196539, 0.781415,
		0.423132, -0.749449, -0.509200,
		0.685709, 0.632217, -0.360701,
		2.119342, 3.384672, 3.725908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.212481, 2.598324, 3.877758>,  <1.639346, 2.942121, 3.978398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.212481, 2.598324, 3.877758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326824, 2.979027, 3.922375>,  <2.395430, 3.207449, 3.949145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.326824, 2.979027, 3.922375>,  <2.212481, 2.598324, 3.877758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.326824, 2.979027, 3.922375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507174, -0.249024, 0.825083,
		0.813056, -0.179286, -0.553892,
		0.285858, 0.951758, 0.111542,
		2.412582, 3.264554, 3.955837>
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
