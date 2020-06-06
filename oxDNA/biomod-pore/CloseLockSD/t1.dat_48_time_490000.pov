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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<3.897236, 15.450073, 14.856061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.154793, 15.145342, 14.884396>,  <4.309328, 14.962503, 14.901396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.154793, 15.145342, 14.884396>,  <3.897236, 15.450073, 14.856061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154793, 15.145342, 14.884396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733466, 0.588256, -0.340562,
		0.217780, 0.271241, 0.937550,
		0.643894, -0.761829, 0.070836,
		4.347961, 14.916793, 14.905646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.437529, 15.560225, 15.474208>,  <3.897236, 15.450073, 14.856061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.437529, 15.560225, 15.474208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.512266, 15.388008, 15.121000>,  <4.557108, 15.284678, 14.909076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.512266, 15.388008, 15.121000>,  <4.437529, 15.560225, 15.474208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.512266, 15.388008, 15.121000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532421, 0.799773, -0.277294,
		0.825602, -0.418327, 0.378661,
		0.186843, -0.430541, -0.883020,
		4.568318, 15.258845, 14.856094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.204293, 15.593485, 15.335272>,  <4.437529, 15.560225, 15.474208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.204293, 15.593485, 15.335272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.000601, 15.561775, 14.992483>,  <4.878386, 15.542749, 14.786810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.000601, 15.561775, 14.992483>,  <5.204293, 15.593485, 15.335272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.000601, 15.561775, 14.992483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543527, 0.742420, -0.391652,
		0.667280, -0.665228, -0.334975,
		-0.509230, -0.079274, -0.856972,
		4.847832, 15.537993, 14.735392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.802231, 16.102001, 15.275799>,  <5.204293, 15.593485, 15.335272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.802231, 16.102001, 15.275799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183547, 16.005013, 15.203747>,  <6.412336, 15.946818, 15.160516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183547, 16.005013, 15.203747>,  <5.802231, 16.102001, 15.275799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.183547, 16.005013, 15.203747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019511, 0.545660, -0.837779,
		0.301429, 0.802160, 0.515441,
		0.953289, -0.242474, -0.180129,
		6.469534, 15.932270, 15.149708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.426043, 16.738476, 15.248791>,  <5.802231, 16.102001, 15.275799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.426043, 16.738476, 15.248791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.487284, 16.408289, 15.031474>,  <6.524028, 16.210176, 14.901084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.487284, 16.408289, 15.031474>,  <6.426043, 16.738476, 15.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.487284, 16.408289, 15.031474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064985, 0.540173, -0.839041,
		0.986071, 0.163764, 0.029059,
		0.153102, -0.825466, -0.543292,
		6.533214, 16.160648, 14.868486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.999650, 16.833420, 14.777590>,  <6.426043, 16.738476, 15.248791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.999650, 16.833420, 14.777590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.823195, 16.523952, 14.595672>,  <6.717323, 16.338272, 14.486521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.823195, 16.523952, 14.595672>,  <6.999650, 16.833420, 14.777590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.823195, 16.523952, 14.595672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060649, 0.479911, -0.875218,
		0.895389, -0.413672, -0.164783,
		-0.441134, -0.773667, -0.454796,
		6.690855, 16.291853, 14.459233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.427648, 16.711632, 14.213518>,  <6.999650, 16.833420, 14.777590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.427648, 16.711632, 14.213518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.084645, 16.525654, 14.125422>,  <6.878843, 16.414066, 14.072563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.084645, 16.525654, 14.125422>,  <7.427648, 16.711632, 14.213518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.084645, 16.525654, 14.125422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011998, 0.446048, -0.894929,
		0.514336, -0.764764, -0.388066,
		-0.857505, -0.464950, -0.220243,
		6.827393, 16.386169, 14.059349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.478585, 16.342539, 13.608968>,  <7.427648, 16.711632, 14.213518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.478585, 16.342539, 13.608968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.085858, 16.405157, 13.651918>,  <6.850222, 16.442728, 13.677689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.085858, 16.405157, 13.651918>,  <7.478585, 16.342539, 13.608968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.085858, 16.405157, 13.651918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071237, 0.220468, -0.972789,
		-0.175959, -0.962750, -0.205307,
		-0.981817, 0.156545, 0.107376,
		6.791313, 16.452120, 13.684132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.149420, 16.132797, 13.025024>,  <7.478585, 16.342539, 13.608968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.149420, 16.132797, 13.025024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.839684, 16.359343, 13.137897>,  <6.653842, 16.495270, 13.205621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.839684, 16.359343, 13.137897>,  <7.149420, 16.132797, 13.025024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.839684, 16.359343, 13.137897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081052, 0.353497, -0.931917,
		-0.627556, -0.744493, -0.227823,
		-0.774341, 0.566365, 0.282182,
		6.607382, 16.529253, 13.222552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.519296, 16.015623, 12.563020>,  <7.149420, 16.132797, 13.025024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.519296, 16.015623, 12.563020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.433268, 16.384535, 12.691485>,  <6.381650, 16.605883, 12.768564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.433268, 16.384535, 12.691485>,  <6.519296, 16.015623, 12.563020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.433268, 16.384535, 12.691485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170400, 0.288376, -0.942233,
		-0.961617, -0.257374, 0.095135,
		-0.215071, 0.922279, 0.321164,
		6.368746, 16.661219, 12.787834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.853750, 16.174515, 12.313961>,  <6.519296, 16.015623, 12.563020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.853750, 16.174515, 12.313961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.031534, 16.520695, 12.406437>,  <6.138204, 16.728403, 12.461923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.031534, 16.520695, 12.406437>,  <5.853750, 16.174515, 12.313961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.031534, 16.520695, 12.406437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278870, 0.378934, -0.882406,
		-0.851285, 0.327722, 0.409770,
		0.444460, 0.865452, 0.231189,
		6.164872, 16.780331, 12.475794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.500884, 16.537075, 11.889729>,  <5.853750, 16.174515, 12.313961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.500884, 16.537075, 11.889729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.816476, 16.764868, 11.981992>,  <6.005831, 16.901543, 12.037349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.816476, 16.764868, 11.981992>,  <5.500884, 16.537075, 11.889729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.816476, 16.764868, 11.981992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123286, 0.514502, -0.848580,
		-0.601924, 0.641076, 0.476140,
		0.788979, 0.569482, 0.230655,
		6.053170, 16.935713, 12.051188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.413583, 17.101591, 11.590526>,  <5.500884, 16.537075, 11.889729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.413583, 17.101591, 11.590526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.806526, 17.147457, 11.649621>,  <6.042291, 17.174976, 11.685079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.806526, 17.147457, 11.649621>,  <5.413583, 17.101591, 11.590526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.806526, 17.147457, 11.649621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089683, 0.404390, -0.910179,
		-0.164109, 0.907370, 0.386972,
		0.982357, 0.114664, 0.147739,
		6.101233, 17.181856, 11.693943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.527562, 17.740183, 11.351823>,  <5.413583, 17.101591, 11.590526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.527562, 17.740183, 11.351823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.868547, 17.532106, 11.331001>,  <6.073138, 17.407261, 11.318508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.868547, 17.532106, 11.331001>,  <5.527562, 17.740183, 11.351823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.868547, 17.532106, 11.331001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241903, 0.480756, -0.842827,
		0.463456, 0.705886, 0.535662,
		0.852462, -0.520191, -0.052053,
		6.124286, 17.376049, 11.315385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.974076, 18.238335, 11.206824>,  <5.527562, 17.740183, 11.351823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.974076, 18.238335, 11.206824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.177969, 17.919987, 11.076122>,  <6.300304, 17.728979, 10.997702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.177969, 17.919987, 11.076122>,  <5.974076, 18.238335, 11.206824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.177969, 17.919987, 11.076122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309019, 0.523823, -0.793799,
		0.802920, 0.303652, 0.512947,
		0.509732, -0.795868, -0.326754,
		6.330888, 17.681227, 10.978096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.719560, 18.430658, 11.013763>,  <5.974076, 18.238335, 11.206824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.719560, 18.430658, 11.013763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.630538, 18.092451, 10.819621>,  <6.577126, 17.889526, 10.703135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.630538, 18.092451, 10.819621>,  <6.719560, 18.430658, 11.013763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.630538, 18.092451, 10.819621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395507, 0.376731, -0.837644,
		0.891091, -0.378383, 0.250565,
		-0.222554, -0.845518, -0.485355,
		6.563772, 17.838797, 10.674015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.279699, 18.365391, 10.606040>,  <6.719560, 18.430658, 11.013763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.279699, 18.365391, 10.606040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.003065, 18.146412, 10.417568>,  <6.837084, 18.015024, 10.304485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.003065, 18.146412, 10.417568>,  <7.279699, 18.365391, 10.606040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.003065, 18.146412, 10.417568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369328, 0.292586, -0.882038,
		0.620729, -0.784026, -0.000161,
		-0.691587, -0.547446, -0.471179,
		6.795588, 17.982178, 10.276215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.625076, 18.380516, 9.988461>,  <7.279699, 18.365391, 10.606040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.625076, 18.380516, 9.988461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.262483, 18.230530, 9.910804>,  <7.044928, 18.140537, 9.864209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.262483, 18.230530, 9.910804>,  <7.625076, 18.380516, 9.988461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.262483, 18.230530, 9.910804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207558, 0.004708, -0.978211,
		0.367709, -0.927027, 0.073559,
		-0.906482, -0.374965, -0.194143,
		6.990539, 18.118040, 9.852561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.671697, 17.898281, 9.340188>,  <7.625076, 18.380516, 9.988461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.671697, 17.898281, 9.340188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.278544, 17.971531, 9.348266>,  <7.042652, 18.015480, 9.353112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.278544, 17.971531, 9.348266>,  <7.671697, 17.898281, 9.340188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.278544, 17.971531, 9.348266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031659, 0.275866, -0.960675,
		-0.181493, -0.943591, -0.276942,
		-0.982883, 0.183124, 0.020194,
		6.983679, 18.026468, 9.354324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.349905, 17.470194, 8.758024>,  <7.671697, 17.898281, 9.340188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.349905, 17.470194, 8.758024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.095627, 17.770077, 8.831592>,  <6.943059, 17.950006, 8.875732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.095627, 17.770077, 8.831592>,  <7.349905, 17.470194, 8.758024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.095627, 17.770077, 8.831592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001419, 0.237120, -0.971479,
		-0.771938, -0.617827, -0.149673,
		-0.635697, 0.749709, 0.183918,
		6.904918, 17.994989, 8.886767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.103406, 17.453350, 8.215633>,  <7.349905, 17.470194, 8.758024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.103406, 17.453350, 8.215633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983793, 17.807671, 8.357584>,  <6.912025, 18.020262, 8.442755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983793, 17.807671, 8.357584>,  <7.103406, 17.453350, 8.215633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.983793, 17.807671, 8.357584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066159, 0.390245, -0.918331,
		-0.951946, -0.251133, -0.175299,
		-0.299033, 0.885800, 0.354877,
		6.894083, 18.073410, 8.464047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.562199, 17.647491, 7.836809>,  <7.103406, 17.453350, 8.215633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.562199, 17.647491, 7.836809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.686090, 17.997877, 7.984730>,  <6.760424, 18.208109, 8.073483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.686090, 17.997877, 7.984730>,  <6.562199, 17.647491, 7.836809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.686090, 17.997877, 7.984730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104501, 0.417934, -0.902447,
		-0.945065, 0.240868, 0.220985,
		0.309728, 0.875965, 0.369804,
		6.779008, 18.260666, 8.095672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.092322, 18.103210, 7.526004>,  <6.562199, 17.647491, 7.836809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.092322, 18.103210, 7.526004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.444176, 18.268024, 7.621057>,  <6.655289, 18.366913, 7.678088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.444176, 18.268024, 7.621057>,  <6.092322, 18.103210, 7.526004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.444176, 18.268024, 7.621057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058810, 0.401544, -0.913949,
		-0.471999, 0.817917, 0.328980,
		0.879635, 0.412036, 0.237631,
		6.708067, 18.391636, 7.692346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.096998, 18.885904, 7.394334>,  <6.092322, 18.103210, 7.526004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.096998, 18.885904, 7.394334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.482555, 18.787043, 7.433984>,  <6.713889, 18.727726, 7.457774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.482555, 18.787043, 7.433984>,  <6.096998, 18.885904, 7.394334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.482555, 18.787043, 7.433984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188265, 0.369235, -0.910067,
		0.188326, 0.895869, 0.402433,
		0.963893, -0.247154, 0.099124,
		6.771723, 18.712896, 7.463721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.603332, 19.458279, 7.105936>,  <6.096998, 18.885904, 7.394334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.603332, 19.458279, 7.105936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.830673, 19.129169, 7.104220>,  <6.967078, 18.931704, 7.103191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.830673, 19.129169, 7.104220>,  <6.603332, 19.458279, 7.105936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.830673, 19.129169, 7.104220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196768, 0.140981, -0.970261,
		0.798910, 0.550608, 0.242023,
		0.568354, -0.822773, -0.004289,
		7.001179, 18.882338, 7.102933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.392506, 19.632061, 6.934556>,  <6.603332, 19.458279, 7.105936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.392506, 19.632061, 6.934556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.238767, 19.282972, 6.814132>,  <7.146523, 19.073519, 6.741878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.238767, 19.282972, 6.814132>,  <7.392506, 19.632061, 6.934556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.238767, 19.282972, 6.814132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051584, 0.305297, -0.950859,
		0.921746, -0.380991, -0.072322,
		-0.384348, -0.872720, -0.301060,
		7.123462, 19.021156, 6.723814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.897770, 19.158854, 6.658336>,  <7.392506, 19.632061, 6.934556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.897770, 19.158854, 6.658336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.536936, 19.156366, 6.485730>,  <7.320436, 19.154875, 6.382166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.536936, 19.156366, 6.485730>,  <7.897770, 19.158854, 6.658336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.536936, 19.156366, 6.485730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383801, 0.445650, -0.808760,
		0.197332, -0.895185, -0.399629,
		-0.902084, -0.006216, -0.431514,
		7.266311, 19.154501, 6.356275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.954038, 18.755802, 6.113265>,  <7.897770, 19.158854, 6.658336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.954038, 18.755802, 6.113265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677761, 19.040035, 6.059567>,  <7.511995, 19.210575, 6.027349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677761, 19.040035, 6.059567>,  <7.954038, 18.755802, 6.113265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.677761, 19.040035, 6.059567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482519, 0.314580, -0.817444,
		-0.538630, -0.629376, -0.560146,
		-0.690691, 0.710581, -0.134244,
		7.470554, 19.253210, 6.019294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.068941, 18.219425, 5.545057>,  <7.954038, 18.755802, 6.113265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.068941, 18.219425, 5.545057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.947247, 18.551388, 5.357996>,  <7.874230, 18.750565, 5.245760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.947247, 18.551388, 5.357996>,  <8.068941, 18.219425, 5.545057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.947247, 18.551388, 5.357996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898107, -0.086234, 0.431240,
		0.317561, 0.551200, 0.771579,
		-0.304236, 0.829905, -0.467652,
		7.855976, 18.800360, 5.217701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.475268, 18.694920, 5.387774>,  <8.068941, 18.219425, 5.545057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.475268, 18.694920, 5.387774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.795777, 18.930893, 5.347894>,  <8.988083, 19.072477, 5.323966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.795777, 18.930893, 5.347894>,  <8.475268, 18.694920, 5.387774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.795777, 18.930893, 5.347894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569154, -0.700203, 0.431022,
		0.184464, -0.402111, -0.896817,
		0.801272, 0.589935, -0.099701,
		9.036159, 19.107874, 5.317984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.926357, 18.377968, 4.970780>,  <8.475268, 18.694920, 5.387774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.926357, 18.377968, 4.970780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053954, 18.614538, 5.267013>,  <9.130512, 18.756481, 5.444752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053954, 18.614538, 5.267013>,  <8.926357, 18.377968, 4.970780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.053954, 18.614538, 5.267013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447087, -0.782899, 0.432646,
		0.835678, 0.193093, -0.514158,
		0.318992, 0.591426, 0.740580,
		9.149652, 18.791965, 5.489187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.696355, 18.345737, 5.155850>,  <8.926357, 18.377968, 4.970780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.696355, 18.345737, 5.155850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.490072, 18.453329, 5.481229>,  <9.366302, 18.517885, 5.676456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.490072, 18.453329, 5.481229>,  <9.696355, 18.345737, 5.155850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.490072, 18.453329, 5.481229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434521, -0.736160, 0.518902,
		0.738402, 0.621061, 0.262765,
		-0.515708, 0.268981, 0.813446,
		9.335360, 18.534023, 5.725263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.092349, 18.507719, 5.779989>,  <9.696355, 18.345737, 5.155850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.092349, 18.507719, 5.779989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731627, 18.362032, 5.873022>,  <9.515195, 18.274620, 5.928841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731627, 18.362032, 5.873022>,  <10.092349, 18.507719, 5.779989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.731627, 18.362032, 5.873022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416451, -0.588729, 0.692796,
		-0.115403, 0.721624, 0.682598,
		-0.901804, -0.364219, 0.232580,
		9.461086, 18.252766, 5.942796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.069037, 18.475161, 6.488452>,  <10.092349, 18.507719, 5.779989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.069037, 18.475161, 6.488452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840727, 18.195307, 6.316533>,  <9.703740, 18.027395, 6.213382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.840727, 18.195307, 6.316533>,  <10.069037, 18.475161, 6.488452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.840727, 18.195307, 6.316533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428648, -0.700339, 0.570777,
		-0.700339, 0.141555, 0.699634,
		-0.570777, -0.699634, -0.429797,
		9.669494, 17.985416, 6.187594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.314979, 18.342949, 6.875885>,  <10.069037, 18.475161, 6.488452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.314979, 18.342949, 6.875885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.997499, 18.499037, 7.062549>,  <8.807012, 18.592690, 7.174546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.997499, 18.499037, 7.062549>,  <9.314979, 18.342949, 6.875885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.997499, 18.499037, 7.062549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453810, -0.890688, -0.027050,
		0.405091, -0.233244, 0.884024,
		-0.793699, 0.390222, 0.466658,
		8.759390, 18.616104, 7.202546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.559317, 18.132074, 7.587349>,  <9.314979, 18.342949, 6.875885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.559317, 18.132074, 7.587349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652779, 18.223427, 7.965396>,  <9.708856, 18.278238, 8.192225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652779, 18.223427, 7.965396>,  <9.559317, 18.132074, 7.587349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.652779, 18.223427, 7.965396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549196, -0.771122, 0.322109,
		0.802364, -0.594318, -0.054752,
		0.233656, 0.228379, 0.945118,
		9.722876, 18.291941, 8.248932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.801792, 17.480867, 7.904461>,  <9.559317, 18.132074, 7.587349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.801792, 17.480867, 7.904461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641173, 17.704336, 8.194743>,  <9.544803, 17.838417, 8.368913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641173, 17.704336, 8.194743>,  <9.801792, 17.480867, 7.904461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641173, 17.704336, 8.194743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485299, -0.801796, 0.348723,
		0.776689, -0.212156, 0.593080,
		-0.401546, 0.558671, 0.725705,
		9.520710, 17.871937, 8.412455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.932375, 17.037405, 8.428009>,  <9.801792, 17.480867, 7.904461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.932375, 17.037405, 8.428009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.642384, 17.290783, 8.536199>,  <9.468389, 17.442810, 8.601112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.642384, 17.290783, 8.536199>,  <9.932375, 17.037405, 8.428009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.642384, 17.290783, 8.536199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539914, -0.766472, 0.347871,
		0.427668, 0.106166, 0.897680,
		-0.724978, 0.633443, 0.270475,
		9.424891, 17.480816, 8.617341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.795220, 16.907049, 9.159869>,  <9.932375, 17.037405, 8.428009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.795220, 16.907049, 9.159869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.471844, 17.106501, 9.034781>,  <9.277818, 17.226171, 8.959727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.471844, 17.106501, 9.034781>,  <9.795220, 16.907049, 9.159869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.471844, 17.106501, 9.034781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587626, -0.713985, 0.380685,
		-0.033459, 0.491525, 0.870221,
		-0.808441, 0.498627, -0.312722,
		9.229311, 17.256088, 8.940964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.478530, 17.126247, 9.771774>,  <9.795220, 16.907049, 9.159869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.478530, 17.126247, 9.771774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216900, 17.111031, 9.469585>,  <9.059922, 17.101900, 9.288272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.216900, 17.111031, 9.469585>,  <9.478530, 17.126247, 9.771774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.216900, 17.111031, 9.469585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596353, -0.588479, 0.545944,
		-0.465349, 0.807617, 0.362223,
		-0.654074, -0.038041, -0.755473,
		9.020678, 17.099619, 9.242944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.901153, 17.313107, 10.070766>,  <9.478530, 17.126247, 9.771774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.901153, 17.313107, 10.070766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.800385, 17.112286, 9.739833>,  <8.739923, 16.991793, 9.541273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.800385, 17.112286, 9.739833>,  <8.901153, 17.313107, 10.070766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.800385, 17.112286, 9.739833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730579, -0.461992, 0.502810,
		-0.634657, 0.731102, -0.250402,
		-0.251921, -0.502050, -0.827334,
		8.724808, 16.961670, 9.491632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.189283, 17.306816, 10.130248>,  <8.901153, 17.313107, 10.070766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.189283, 17.306816, 10.130248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.280949, 17.024805, 9.861794>,  <8.335948, 16.855598, 9.700723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.280949, 17.024805, 9.861794>,  <8.189283, 17.306816, 10.130248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.280949, 17.024805, 9.861794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583754, -0.651277, 0.484841,
		-0.778920, 0.280670, -0.560810,
		0.229162, -0.705027, -0.671134,
		8.349697, 16.813297, 9.660455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.548368, 16.868189, 10.025860>,  <8.189283, 17.306816, 10.130248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.548368, 16.868189, 10.025860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.844599, 16.634495, 9.893066>,  <8.022337, 16.494278, 9.813391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.844599, 16.634495, 9.893066>,  <7.548368, 16.868189, 10.025860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.844599, 16.634495, 9.893066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427721, -0.790882, 0.437676,
		-0.518265, -0.182137, -0.835600,
		0.740578, -0.584236, -0.331983,
		8.066772, 16.459225, 9.793471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.208329, 16.272541, 9.612522>,  <7.548368, 16.868189, 10.025860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.208329, 16.272541, 9.612522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.572794, 16.184361, 9.751768>,  <7.791473, 16.131453, 9.835316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.572794, 16.184361, 9.751768>,  <7.208329, 16.272541, 9.612522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.572794, 16.184361, 9.751768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337507, -0.883948, 0.323612,
		0.236375, -0.412354, -0.879825,
		0.911162, -0.220453, 0.348115,
		7.846143, 16.118225, 9.856203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.213864, 15.588152, 9.495375>,  <7.208329, 16.272541, 9.612522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.213864, 15.588152, 9.495375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.513951, 15.635523, 9.755574>,  <7.694004, 15.663945, 9.911694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.513951, 15.635523, 9.755574>,  <7.213864, 15.588152, 9.495375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.513951, 15.635523, 9.755574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372937, -0.736602, 0.564212,
		0.545977, -0.665877, -0.508446,
		0.750218, 0.118428, 0.650498,
		7.739017, 15.671051, 9.950724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.382983, 14.880559, 9.660487>,  <7.213864, 15.588152, 9.495375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.382983, 14.880559, 9.660487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.491496, 15.118320, 9.963298>,  <7.556604, 15.260977, 10.144984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.491496, 15.118320, 9.963298>,  <7.382983, 14.880559, 9.660487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.491496, 15.118320, 9.963298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342919, -0.675221, 0.653057,
		0.899339, -0.436763, 0.020656,
		0.271283, 0.594404, 0.757027,
		7.572881, 15.296641, 10.190406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.675118, 14.325996, 10.141294>,  <7.382983, 14.880559, 9.660487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.675118, 14.325996, 10.141294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.592894, 14.661253, 10.343388>,  <7.543559, 14.862407, 10.464644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.592894, 14.661253, 10.343388>,  <7.675118, 14.325996, 10.141294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.592894, 14.661253, 10.343388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062052, -0.526385, 0.847979,
		0.976675, 0.142961, 0.160213,
		-0.205561, 0.838142, 0.505236,
		7.531225, 14.912696, 10.494958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.865051, 14.183235, 10.781775>,  <7.675118, 14.325996, 10.141294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.865051, 14.183235, 10.781775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.642448, 14.510163, 10.841487>,  <7.508886, 14.706321, 10.877314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.642448, 14.510163, 10.841487>,  <7.865051, 14.183235, 10.781775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.642448, 14.510163, 10.841487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250643, -0.336453, 0.907732,
		0.792134, 0.467745, 0.392095,
		-0.556509, 0.817321, 0.149279,
		7.475495, 14.755360, 10.886271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.053283, 14.485841, 11.347473>,  <7.865051, 14.183235, 10.781775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.053283, 14.485841, 11.347473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677199, 14.619309, 11.320135>,  <7.451549, 14.699390, 11.303733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677199, 14.619309, 11.320135>,  <8.053283, 14.485841, 11.347473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.677199, 14.619309, 11.320135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202490, -0.386250, 0.899894,
		0.273871, 0.859927, 0.430720,
		-0.940209, 0.333671, -0.068344,
		7.395137, 14.719411, 11.299632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.857299, 15.015330, 11.899899>,  <8.053283, 14.485841, 11.347473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.857299, 15.015330, 11.899899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.521769, 14.844858, 11.764406>,  <7.320450, 14.742575, 11.683110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.521769, 14.844858, 11.764406>,  <7.857299, 15.015330, 11.899899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.521769, 14.844858, 11.764406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255972, -0.240380, 0.936321,
		-0.480466, 0.872117, 0.092547,
		-0.838827, -0.426181, -0.338731,
		7.270121, 14.717004, 11.662786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.362350, 15.120777, 12.371942>,  <7.857299, 15.015330, 11.899899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.362350, 15.120777, 12.371942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.156809, 14.841266, 12.172877>,  <7.033485, 14.673559, 12.053439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.156809, 14.841266, 12.172877>,  <7.362350, 15.120777, 12.371942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.156809, 14.841266, 12.172877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452641, -0.271944, 0.849213,
		-0.728747, 0.661630, -0.176557,
		-0.513851, -0.698779, -0.497660,
		7.002654, 14.631632, 12.023580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.689720, 15.133904, 12.667089>,  <7.362350, 15.120777, 12.371942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.689720, 15.133904, 12.667089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.706358, 14.783583, 12.474742>,  <6.716342, 14.573389, 12.359333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.706358, 14.783583, 12.474742>,  <6.689720, 15.133904, 12.667089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.706358, 14.783583, 12.474742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644620, -0.391243, 0.656806,
		-0.763370, 0.282657, -0.580836,
		0.041597, -0.875805, -0.480870,
		6.718838, 14.520842, 12.330482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.939969, 14.824174, 12.541282>,  <6.689720, 15.133904, 12.667089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.939969, 14.824174, 12.541282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.212728, 14.531828, 12.552969>,  <6.376383, 14.356421, 12.559981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.212728, 14.531828, 12.552969>,  <5.939969, 14.824174, 12.541282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.212728, 14.531828, 12.552969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523031, -0.459284, 0.717982,
		-0.511330, -0.504870, -0.695449,
		0.681895, -0.730866, 0.029217,
		6.417296, 14.312569, 12.561735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.551317, 14.113361, 12.613538>,  <5.939969, 14.824174, 12.541282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.551317, 14.113361, 12.613538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.923949, 14.040986, 12.739662>,  <6.147528, 13.997561, 12.815337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.923949, 14.040986, 12.739662>,  <5.551317, 14.113361, 12.613538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.923949, 14.040986, 12.739662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356065, -0.629079, 0.690998,
		0.073328, -0.755991, -0.650462,
		0.931580, -0.180937, 0.315311,
		6.203423, 13.986705, 12.834255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.616954, 13.401641, 12.768066>,  <5.551317, 14.113361, 12.613538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.616954, 13.401641, 12.768066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.895282, 13.578821, 12.994210>,  <6.062279, 13.685129, 13.129896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.895282, 13.578821, 12.994210>,  <5.616954, 13.401641, 12.768066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.895282, 13.578821, 12.994210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210222, -0.627087, 0.750046,
		0.686762, -0.640747, -0.343222,
		0.695820, 0.442950, 0.565359,
		6.104028, 13.711706, 13.163817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.990059, 12.817551, 12.919632>,  <5.616954, 13.401641, 12.768066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.990059, 12.817551, 12.919632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.048654, 13.113983, 13.181727>,  <6.083811, 13.291842, 13.338984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.048654, 13.113983, 13.181727>,  <5.990059, 12.817551, 12.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.048654, 13.113983, 13.181727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027641, -0.665193, 0.746160,
		0.988826, -0.091191, -0.117927,
		0.146487, 0.741082, 0.655239,
		6.092600, 13.336308, 13.378300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.336507, 12.385506, 13.338233>,  <5.990059, 12.817551, 12.919632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.336507, 12.385506, 13.338233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.723286, 12.462264, 13.405392>,  <6.955353, 12.508319, 13.445687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.723286, 12.462264, 13.405392>,  <6.336507, 12.385506, 13.338233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.723286, 12.462264, 13.405392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024781, -0.584633, 0.810920,
		0.253770, -0.788277, -0.560553,
		0.966947, 0.191895, 0.167897,
		7.013370, 12.519833, 13.455761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.765604, 12.051324, 12.821691>,  <6.336507, 12.385506, 13.338233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.765604, 12.051324, 12.821691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.078781, 12.070150, 12.573565>,  <7.266687, 12.081447, 12.424690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.078781, 12.070150, 12.573565>,  <6.765604, 12.051324, 12.821691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.078781, 12.070150, 12.573565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367225, 0.769900, 0.521919,
		0.502143, -0.636426, 0.585503,
		0.782942, 0.047067, -0.620312,
		7.313663, 12.084270, 12.387472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.382316, 12.079118, 13.222439>,  <6.765604, 12.051324, 12.821691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.382316, 12.079118, 13.222439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.448648, 12.256327, 12.870023>,  <7.488448, 12.362652, 12.658573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.448648, 12.256327, 12.870023>,  <7.382316, 12.079118, 13.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.448648, 12.256327, 12.870023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516076, 0.722319, 0.460348,
		0.840336, -0.531024, -0.108849,
		0.165832, 0.443022, -0.881040,
		7.498398, 12.389234, 12.605711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.113451, 12.075575, 13.168074>,  <7.382316, 12.079118, 13.222439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.113451, 12.075575, 13.168074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.949440, 12.366419, 12.947824>,  <7.851032, 12.540925, 12.815674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.949440, 12.366419, 12.947824>,  <8.113451, 12.075575, 13.168074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.949440, 12.366419, 12.947824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601850, 0.669311, 0.435660,
		0.685312, -0.152760, -0.712048,
		-0.410030, 0.727109, -0.550625,
		7.826431, 12.584552, 12.782636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.679696, 12.412583, 12.711201>,  <8.113451, 12.075575, 13.168074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.679696, 12.412583, 12.711201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.370027, 12.642053, 12.818197>,  <8.184225, 12.779735, 12.882395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.370027, 12.642053, 12.818197>,  <8.679696, 12.412583, 12.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.370027, 12.642053, 12.818197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598112, 0.524700, 0.605765,
		0.207159, 0.628958, -0.749331,
		-0.774175, 0.573674, 0.267491,
		8.137774, 12.814155, 12.898444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.856347, 12.999696, 12.517810>,  <8.679696, 12.412583, 12.711201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.856347, 12.999696, 12.517810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.594823, 13.021955, 12.819654>,  <8.437908, 13.035310, 13.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.594823, 13.021955, 12.819654>,  <8.856347, 12.999696, 12.517810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.594823, 13.021955, 12.819654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558205, 0.708745, 0.431378,
		-0.510821, 0.703267, -0.494448,
		-0.653811, 0.055646, 0.754609,
		8.398680, 13.038649, 13.046036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.786798, 13.758034, 12.590441>,  <8.856347, 12.999696, 12.517810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.786798, 13.758034, 12.590441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.716592, 13.509011, 12.895496>,  <8.674469, 13.359598, 13.078530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.716592, 13.509011, 12.895496>,  <8.786798, 13.758034, 12.590441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.716592, 13.509011, 12.895496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547901, 0.581837, 0.601057,
		-0.817924, 0.523345, 0.238979,
		-0.175514, -0.622556, 0.762640,
		8.663938, 13.322245, 13.124289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.453649, 14.154436, 13.255725>,  <8.786798, 13.758034, 12.590441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.453649, 14.154436, 13.255725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.701340, 13.857265, 13.357400>,  <8.849955, 13.678962, 13.418406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.701340, 13.857265, 13.357400>,  <8.453649, 14.154436, 13.255725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.701340, 13.857265, 13.357400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407667, 0.580853, 0.704569,
		-0.671091, -0.332665, 0.662548,
		0.619229, -0.742929, 0.254189,
		8.887109, 13.634386, 13.433657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.356815, 13.902903, 14.012531>,  <8.453649, 14.154436, 13.255725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.356815, 13.902903, 14.012531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.725118, 13.831617, 13.873709>,  <8.946099, 13.788846, 13.790415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.725118, 13.831617, 13.873709>,  <8.356815, 13.902903, 14.012531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.725118, 13.831617, 13.873709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386201, 0.542411, 0.746083,
		0.055286, -0.820994, 0.568254,
		0.920756, -0.178212, -0.347056,
		9.001345, 13.778153, 13.769592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.732182, 14.060987, 14.567217>,  <8.356815, 13.902903, 14.012531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.732182, 14.060987, 14.567217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.030881, 13.971574, 14.316649>,  <9.210100, 13.917926, 14.166309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.030881, 13.971574, 14.316649>,  <8.732182, 14.060987, 14.567217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.030881, 13.971574, 14.316649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645607, 0.470004, 0.601904,
		0.159873, -0.853890, 0.495290,
		0.746748, -0.223534, -0.626419,
		9.254906, 13.904513, 14.128724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.363737, 13.656049, 14.903535>,  <8.732182, 14.060987, 14.567217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.363737, 13.656049, 14.903535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.495102, 13.878329, 14.598028>,  <9.573920, 14.011698, 14.414724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.495102, 13.878329, 14.598028>,  <9.363737, 13.656049, 14.903535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.495102, 13.878329, 14.598028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683641, 0.418120, 0.598173,
		0.651752, -0.718590, -0.242586,
		0.328411, 0.555702, -0.763768,
		9.593625, 14.045040, 14.368897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.086979, 13.575726, 14.969385>,  <9.363737, 13.656049, 14.903535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.086979, 13.575726, 14.969385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993093, 13.901611, 14.757292>,  <9.936762, 14.097143, 14.630035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.993093, 13.901611, 14.757292>,  <10.086979, 13.575726, 14.969385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.993093, 13.901611, 14.757292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650084, 0.537104, 0.537504,
		0.722704, -0.218537, -0.655699,
		-0.234714, 0.814715, -0.530234,
		9.922679, 14.146026, 14.598222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.670602, 13.867435, 14.871522>,  <10.086979, 13.575726, 14.969385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.670602, 13.867435, 14.871522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427289, 14.178349, 14.807242>,  <10.281301, 14.364897, 14.768675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427289, 14.178349, 14.807242>,  <10.670602, 13.867435, 14.871522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.427289, 14.178349, 14.807242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595198, 0.580638, 0.555517,
		0.525102, 0.242263, -0.815829,
		-0.608282, 0.777283, -0.160700,
		10.244804, 14.411533, 14.759032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.125711, 14.409964, 14.784175>,  <10.670602, 13.867435, 14.871522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.125711, 14.409964, 14.784175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.770618, 14.573427, 14.868958>,  <10.557563, 14.671505, 14.919828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.770618, 14.573427, 14.868958>,  <11.125711, 14.409964, 14.784175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.770618, 14.573427, 14.868958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395678, 0.441983, 0.805040,
		0.235304, 0.798529, -0.554061,
		-0.887734, 0.408659, 0.211960,
		10.504298, 14.696025, 14.932547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274504, 15.007678, 15.054801>,  <11.125711, 14.409964, 14.784175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274504, 15.007678, 15.054801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895555, 14.972945, 15.178055>,  <10.668186, 14.952106, 15.252007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895555, 14.972945, 15.178055>,  <11.274504, 15.007678, 15.054801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.895555, 14.972945, 15.178055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241703, 0.437136, 0.866309,
		-0.209921, 0.895194, -0.393143,
		-0.947371, -0.086833, 0.308135,
		10.611344, 14.946896, 15.270495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.027561, 15.666460, 15.229721>,  <11.274504, 15.007678, 15.054801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.027561, 15.666460, 15.229721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.792583, 15.409336, 15.426376>,  <10.651597, 15.255062, 15.544370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.792583, 15.409336, 15.426376>,  <11.027561, 15.666460, 15.229721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.792583, 15.409336, 15.426376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078127, 0.559626, 0.825055,
		-0.805485, 0.523083, -0.278527,
		-0.587443, -0.642809, 0.491637,
		10.616350, 15.216494, 15.573868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.495152, 16.051317, 15.587059>,  <11.027561, 15.666460, 15.229721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.495152, 16.051317, 15.587059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.524257, 15.697855, 15.772039>,  <10.541719, 15.485778, 15.883027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.524257, 15.697855, 15.772039>,  <10.495152, 16.051317, 15.587059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.524257, 15.697855, 15.772039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276678, 0.463365, 0.841868,
		-0.958204, 0.066693, 0.278203,
		0.072763, -0.883655, 0.462450,
		10.546085, 15.432758, 15.910774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.166525, 16.012497, 16.324305>,  <10.495152, 16.051317, 15.587059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.166525, 16.012497, 16.324305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.434465, 15.715798, 16.337633>,  <10.595230, 15.537779, 16.345631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.434465, 15.715798, 16.337633>,  <10.166525, 16.012497, 16.324305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.434465, 15.715798, 16.337633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341429, 0.347568, 0.873283,
		-0.659337, -0.573593, 0.486073,
		0.669852, -0.741747, 0.033324,
		10.635421, 15.493275, 16.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.158087, 15.968666, 16.963135>,  <10.166525, 16.012497, 16.324305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.158087, 15.968666, 16.963135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.492864, 15.774720, 16.861599>,  <10.693729, 15.658353, 16.800678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.492864, 15.774720, 16.861599>,  <10.158087, 15.968666, 16.963135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.492864, 15.774720, 16.861599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305312, 0.028709, 0.951819,
		-0.454216, -0.874118, 0.172063,
		0.836943, -0.484864, -0.253839,
		10.743946, 15.629261, 16.785448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.159253, 15.525728, 17.453209>,  <10.158087, 15.968666, 16.963135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.159253, 15.525728, 17.453209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.518234, 15.477473, 17.283491>,  <10.733623, 15.448521, 17.181660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.518234, 15.477473, 17.283491>,  <10.159253, 15.525728, 17.453209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.518234, 15.477473, 17.283491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384653, -0.256799, 0.886621,
		-0.215914, -0.958907, -0.184064,
		0.897454, -0.120633, -0.424293,
		10.787470, 15.441282, 17.156202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.443527, 14.875192, 17.549936>,  <10.159253, 15.525728, 17.453209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.443527, 14.875192, 17.549936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.748049, 15.128890, 17.496052>,  <10.930762, 15.281109, 17.463722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.748049, 15.128890, 17.496052>,  <10.443527, 14.875192, 17.549936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.748049, 15.128890, 17.496052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334647, -0.206400, 0.919462,
		0.555361, -0.745071, -0.369382,
		0.761305, 0.634246, -0.134709,
		10.976440, 15.319164, 17.455639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.052527, 14.463912, 17.818981>,  <10.443527, 14.875192, 17.549936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.052527, 14.463912, 17.818981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.172430, 14.845046, 17.799995>,  <11.244371, 15.073727, 17.788605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.172430, 14.845046, 17.799995>,  <11.052527, 14.463912, 17.818981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.172430, 14.845046, 17.799995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334547, -0.058393, 0.940568,
		0.893434, -0.297820, -0.336272,
		0.299756, 0.952835, -0.047464,
		11.262357, 15.130897, 17.785757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699496, 14.403437, 18.118401>,  <11.052527, 14.463912, 17.818981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699496, 14.403437, 18.118401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559353, 14.777944, 18.128620>,  <11.475266, 15.002647, 18.134752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559353, 14.777944, 18.128620>,  <11.699496, 14.403437, 18.118401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.559353, 14.777944, 18.128620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163679, 0.034347, 0.985915,
		0.922203, 0.349606, -0.165281,
		-0.350359, 0.936267, 0.025549,
		11.454246, 15.058824, 18.136284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120461, 14.726542, 18.604731>,  <11.699496, 14.403437, 18.118401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120461, 14.726542, 18.604731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802405, 14.967755, 18.579103>,  <11.611572, 15.112484, 18.563726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802405, 14.967755, 18.579103>,  <12.120461, 14.726542, 18.604731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.802405, 14.967755, 18.579103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051607, 0.037979, 0.997945,
		0.604230, 0.796810, 0.000923,
		-0.795137, 0.603035, -0.064069,
		11.563864, 15.148666, 18.559883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279985, 15.342846, 19.041927>,  <12.120461, 14.726542, 18.604731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279985, 15.342846, 19.041927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881858, 15.370356, 19.014765>,  <11.642982, 15.386862, 18.998468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.881858, 15.370356, 19.014765>,  <12.279985, 15.342846, 19.041927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.881858, 15.370356, 19.014765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060684, 0.102119, 0.992919,
		0.075222, 0.992392, -0.097468,
		-0.995319, 0.068774, -0.067904,
		11.583262, 15.390988, 18.994394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.000502, 15.915747, 19.385149>,  <12.279985, 15.342846, 19.041927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.000502, 15.915747, 19.385149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.652626, 15.718451, 19.392715>,  <11.443900, 15.600075, 19.397255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.652626, 15.718451, 19.392715>,  <12.000502, 15.915747, 19.385149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.652626, 15.718451, 19.392715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202501, 0.391478, 0.897629,
		-0.450148, 0.776829, -0.440345,
		-0.869690, -0.493237, 0.018914,
		11.391719, 15.570480, 19.398390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474843, 16.310518, 19.833889>,  <12.000502, 15.915747, 19.385149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474843, 16.310518, 19.833889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324533, 15.940050, 19.821217>,  <11.234348, 15.717770, 19.813614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324533, 15.940050, 19.821217>,  <11.474843, 16.310518, 19.833889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.324533, 15.940050, 19.821217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393617, 0.128567, 0.910240,
		-0.838964, 0.354513, -0.412868,
		-0.375773, -0.926170, -0.031679,
		11.211802, 15.662199, 19.811712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.798461, 16.361591, 20.057707>,  <11.474843, 16.310518, 19.833889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.798461, 16.361591, 20.057707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.863558, 15.972840, 20.125792>,  <10.902617, 15.739590, 20.166643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.863558, 15.972840, 20.125792>,  <10.798461, 16.361591, 20.057707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.863558, 15.972840, 20.125792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555023, 0.052456, 0.830179,
		-0.815760, -0.229577, -0.530877,
		0.162743, -0.971876, 0.170212,
		10.912380, 15.681277, 20.176855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.220978, 16.111004, 20.415236>,  <10.798461, 16.361591, 20.057707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.220978, 16.111004, 20.415236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489593, 15.824536, 20.491282>,  <10.650762, 15.652657, 20.536909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489593, 15.824536, 20.491282>,  <10.220978, 16.111004, 20.415236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489593, 15.824536, 20.491282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223830, 0.048525, 0.973420,
		-0.706356, -0.696240, -0.127713,
		0.671537, -0.716167, 0.190116,
		10.691053, 15.609686, 20.548317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.942100, 15.642346, 20.889250>,  <10.220978, 16.111004, 20.415236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.942100, 15.642346, 20.889250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333751, 15.574310, 20.933748>,  <10.568742, 15.533488, 20.960447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333751, 15.574310, 20.933748>,  <9.942100, 15.642346, 20.889250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.333751, 15.574310, 20.933748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144902, -0.200402, 0.968939,
		-0.142510, -0.964836, -0.220866,
		0.979129, -0.170088, 0.111247,
		10.627489, 15.523283, 20.967123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062303, 15.003734, 21.363379>,  <9.942100, 15.642346, 20.889250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062303, 15.003734, 21.363379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.405383, 15.209311, 21.369183>,  <10.611232, 15.332657, 21.372665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.405383, 15.209311, 21.369183>,  <10.062303, 15.003734, 21.363379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.405383, 15.209311, 21.369183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044886, 0.046732, 0.997899,
		0.512184, -0.856551, 0.063151,
		0.857703, 0.513942, 0.014512,
		10.662694, 15.363493, 21.373537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452633, 14.759842, 22.008493>,  <10.062303, 15.003734, 21.363379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452633, 14.759842, 22.008493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638704, 15.097198, 21.900940>,  <10.750347, 15.299612, 21.836407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638704, 15.097198, 21.900940>,  <10.452633, 14.759842, 22.008493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638704, 15.097198, 21.900940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000469, 0.303517, 0.952826,
		0.885216, -0.443361, 0.140795,
		0.465180, 0.843391, -0.268886,
		10.778258, 15.350216, 21.820274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.775196, 14.851524, 22.610598>,  <10.452633, 14.759842, 22.008493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.775196, 14.851524, 22.610598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.796415, 15.197452, 22.410889>,  <10.809147, 15.405008, 22.291063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.796415, 15.197452, 22.410889>,  <10.775196, 14.851524, 22.610598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.796415, 15.197452, 22.410889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143769, 0.488155, 0.860834,
		0.988189, -0.117445, -0.098438,
		0.053047, 0.864819, -0.499274,
		10.812329, 15.456897, 22.261106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.303329, 15.147497, 23.020290>,  <10.775196, 14.851524, 22.610598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.303329, 15.147497, 23.020290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.094990, 15.413810, 22.806581>,  <10.969986, 15.573598, 22.678356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.094990, 15.413810, 22.806581>,  <11.303329, 15.147497, 23.020290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.094990, 15.413810, 22.806581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032516, 0.640891, 0.766943,
		0.853029, 0.382090, -0.355457,
		-0.520850, 0.665782, -0.534274,
		10.938735, 15.613544, 22.646299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.645344, 15.836734, 23.031448>,  <11.303329, 15.147497, 23.020290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.645344, 15.836734, 23.031448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.262203, 15.924097, 22.956808>,  <11.032319, 15.976515, 22.912024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.262203, 15.924097, 22.956808>,  <11.645344, 15.836734, 23.031448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.262203, 15.924097, 22.956808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020050, 0.698823, 0.715014,
		0.286566, 0.681135, -0.673747,
		-0.957851, 0.218407, -0.186602,
		10.974848, 15.989619, 22.900827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626791, 16.530609, 23.009886>,  <11.645344, 15.836734, 23.031448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626791, 16.530609, 23.009886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.264260, 16.404896, 23.122881>,  <11.046741, 16.329468, 23.190678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.264260, 16.404896, 23.122881>,  <11.626791, 16.530609, 23.009886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.264260, 16.404896, 23.122881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032690, 0.614336, 0.788367,
		-0.421311, 0.723752, -0.546516,
		-0.906327, -0.314282, 0.282486,
		10.992362, 16.310612, 23.207626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.317213, 17.072948, 23.187069>,  <11.626791, 16.530609, 23.009886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.317213, 17.072948, 23.187069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099607, 16.793308, 23.372675>,  <10.969045, 16.625525, 23.484037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099607, 16.793308, 23.372675>,  <11.317213, 17.072948, 23.187069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099607, 16.793308, 23.372675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189775, 0.436162, 0.879630,
		-0.817334, 0.566588, -0.104606,
		-0.544013, -0.699100, 0.464014,
		10.936403, 16.583578, 23.511879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.908583, 17.465511, 23.686384>,  <11.317213, 17.072948, 23.187069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.908583, 17.465511, 23.686384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.911358, 17.082266, 23.800905>,  <10.913023, 16.852318, 23.869617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.911358, 17.082266, 23.800905>,  <10.908583, 17.465511, 23.686384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.911358, 17.082266, 23.800905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070135, 0.286071, 0.955638,
		-0.997513, 0.013449, 0.069183,
		0.006939, -0.958114, 0.286303,
		10.913440, 16.794832, 23.886797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.386615, 17.513067, 24.273434>,  <10.908583, 17.465511, 23.686384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.386615, 17.513067, 24.273434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612646, 17.184118, 24.299927>,  <10.748265, 16.986748, 24.315823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612646, 17.184118, 24.299927>,  <10.386615, 17.513067, 24.273434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.612646, 17.184118, 24.299927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017863, 0.068064, 0.997521,
		-0.824843, -0.564861, 0.023772,
		0.565079, -0.822374, 0.066232,
		10.782169, 16.937407, 24.319796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.033484, 16.971256, 24.722689>,  <10.386615, 17.513067, 24.273434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.033484, 16.971256, 24.722689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.426689, 16.897963, 24.718473>,  <10.662612, 16.853987, 24.715944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.426689, 16.897963, 24.718473>,  <10.033484, 16.971256, 24.722689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.426689, 16.897963, 24.718473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002678, -0.071729, 0.997421,
		-0.183520, -0.980449, -0.071001,
		0.983012, -0.183236, -0.010538,
		10.721593, 16.842993, 24.715311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081783, 16.618591, 25.322260>,  <10.033484, 16.971256, 24.722689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081783, 16.618591, 25.322260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.460957, 16.721895, 25.247723>,  <10.688460, 16.783878, 25.203001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.460957, 16.721895, 25.247723>,  <10.081783, 16.618591, 25.322260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.460957, 16.721895, 25.247723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195404, -0.009639, 0.980676,
		0.251474, -0.966027, -0.059603,
		0.947934, 0.258261, -0.186341,
		10.745337, 16.799374, 25.191820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.437918, 16.048317, 25.680578>,  <10.081783, 16.618591, 25.322260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.437918, 16.048317, 25.680578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.713778, 16.333630, 25.630602>,  <10.879293, 16.504818, 25.600616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.713778, 16.333630, 25.630602>,  <10.437918, 16.048317, 25.680578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.713778, 16.333630, 25.630602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232340, -0.054543, 0.971104,
		0.685858, -0.698750, -0.203340,
		0.689649, 0.713284, -0.124939,
		10.920672, 16.547615, 25.593121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.047107, 15.778321, 26.084805>,  <10.437918, 16.048317, 25.680578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.047107, 15.778321, 26.084805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.095906, 16.171299, 26.028353>,  <11.125186, 16.407085, 25.994482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.095906, 16.171299, 26.028353>,  <11.047107, 15.778321, 26.084805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.095906, 16.171299, 26.028353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192209, 0.116114, 0.974460,
		0.973741, -0.146008, -0.174669,
		0.121998, 0.982445, -0.141130,
		11.132505, 16.466032, 25.986013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.661232, 15.959145, 26.387186>,  <11.047107, 15.778321, 26.084805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.661232, 15.959145, 26.387186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.430526, 16.285826, 26.379858>,  <11.292102, 16.481834, 26.375462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.430526, 16.285826, 26.379858>,  <11.661232, 15.959145, 26.387186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.430526, 16.285826, 26.379858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139746, 0.120736, 0.982799,
		0.804868, 0.564285, -0.183767,
		-0.576766, 0.816704, -0.018320,
		11.257496, 16.530836, 26.374363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991997, 16.389021, 26.905863>,  <11.661232, 15.959145, 26.387186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991997, 16.389021, 26.905863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631074, 16.551527, 26.848185>,  <11.414520, 16.649031, 26.813578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631074, 16.551527, 26.848185>,  <11.991997, 16.389021, 26.905863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631074, 16.551527, 26.848185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010051, 0.354224, 0.935107,
		0.430979, 0.842303, -0.323702,
		-0.902306, 0.406264, -0.144197,
		11.360382, 16.673407, 26.804926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.019240, 17.092585, 27.114302>,  <11.991997, 16.389021, 26.905863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.019240, 17.092585, 27.114302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635880, 17.006069, 27.188803>,  <11.405865, 16.954161, 27.233503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635880, 17.006069, 27.188803>,  <12.019240, 17.092585, 27.114302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.635880, 17.006069, 27.188803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084480, 0.408354, 0.908906,
		-0.272642, 0.886830, -0.373094,
		-0.958399, -0.216287, 0.186254,
		11.348361, 16.941183, 27.244678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820508, 17.607307, 27.646690>,  <12.019240, 17.092585, 27.114302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820508, 17.607307, 27.646690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.539521, 17.322624, 27.645119>,  <11.370929, 17.151815, 27.644176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.539521, 17.322624, 27.645119>,  <11.820508, 17.607307, 27.646690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.539521, 17.322624, 27.645119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213050, 0.205010, 0.955291,
		-0.679081, 0.671897, -0.295641,
		-0.702467, -0.711706, -0.003929,
		11.328781, 17.109112, 27.643940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.299114, 17.856571, 28.071926>,  <11.820508, 17.607307, 27.646690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.299114, 17.856571, 28.071926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.198800, 17.471277, 28.033381>,  <11.138612, 17.240101, 28.010254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.198800, 17.471277, 28.033381>,  <11.299114, 17.856571, 28.071926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.198800, 17.471277, 28.033381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280633, -0.022928, 0.959541,
		-0.926473, 0.267680, -0.264566,
		-0.250785, -0.963235, -0.096362,
		11.123565, 17.182306, 28.004473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595516, 17.798597, 28.249754>,  <11.299114, 17.856571, 28.071926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595516, 17.798597, 28.249754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.825955, 17.476503, 28.305914>,  <10.964219, 17.283247, 28.339609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.825955, 17.476503, 28.305914>,  <10.595516, 17.798597, 28.249754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.825955, 17.476503, 28.305914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126735, 0.081694, 0.988567,
		-0.807496, -0.587304, -0.054987,
		0.576097, -0.805233, 0.140400,
		10.998785, 17.234934, 28.348034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.493419, 17.758665, 28.911354>,  <10.595516, 17.798597, 28.249754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.493419, 17.758665, 28.911354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759233, 17.465910, 28.851048>,  <10.918722, 17.290257, 28.814863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.759233, 17.465910, 28.851048>,  <10.493419, 17.758665, 28.911354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759233, 17.465910, 28.851048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031241, -0.228799, 0.972972,
		-0.746601, -0.641867, -0.174911,
		0.664538, -0.731887, -0.150769,
		10.958595, 17.246344, 28.805817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.230599, 17.081074, 29.234913>,  <10.493419, 17.758665, 28.911354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.230599, 17.081074, 29.234913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.628287, 17.086117, 29.192261>,  <10.866899, 17.089142, 29.166670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.628287, 17.086117, 29.192261>,  <10.230599, 17.081074, 29.234913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.628287, 17.086117, 29.192261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106360, -0.251670, 0.961951,
		-0.014707, -0.967731, -0.251556,
		0.994219, 0.012608, -0.106629,
		10.926553, 17.089899, 29.160273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.481133, 16.466043, 29.578909>,  <10.230599, 17.081074, 29.234913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.481133, 16.466043, 29.578909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.796088, 16.712378, 29.567844>,  <10.985062, 16.860178, 29.561207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.796088, 16.712378, 29.567844>,  <10.481133, 16.466043, 29.578909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.796088, 16.712378, 29.567844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141995, -0.137521, 0.980268,
		0.599882, -0.775779, -0.195728,
		0.787388, 0.615837, -0.027660,
		11.032305, 16.897129, 29.559546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.125043, 16.030680, 29.615253>,  <10.481133, 16.466043, 29.578909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.125043, 16.030680, 29.615253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059722, 16.392370, 29.773092>,  <11.020530, 16.609385, 29.867796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059722, 16.392370, 29.773092>,  <11.125043, 16.030680, 29.615253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.059722, 16.392370, 29.773092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246303, -0.349936, 0.903814,
		0.955336, 0.244785, -0.165568,
		-0.163302, 0.904226, 0.394598,
		11.010732, 16.663637, 29.891472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.712337, 16.341494, 30.010881>,  <11.125043, 16.030680, 29.615253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.712337, 16.341494, 30.010881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362591, 16.473015, 30.153639>,  <11.152743, 16.551928, 30.239294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362591, 16.473015, 30.153639>,  <11.712337, 16.341494, 30.010881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.362591, 16.473015, 30.153639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212204, -0.402339, 0.890557,
		0.436412, 0.854406, 0.282018,
		-0.874365, 0.328805, 0.356894,
		11.100282, 16.571657, 30.260708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.666329, 16.833462, 30.532232>,  <11.712337, 16.341494, 30.010881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.666329, 16.833462, 30.532232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370696, 16.567371, 30.574623>,  <11.193316, 16.407717, 30.600058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370696, 16.567371, 30.574623>,  <11.666329, 16.833462, 30.532232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.370696, 16.567371, 30.574623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444088, -0.362888, 0.819206,
		-0.506500, 0.652523, 0.563623,
		-0.739083, -0.665226, 0.105975,
		11.148972, 16.367804, 30.606415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213796, 16.280775, 30.655090>,  <11.666329, 16.833462, 30.532232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213796, 16.280775, 30.655090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610176, 16.334204, 30.660379>,  <12.848004, 16.366261, 30.663553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610176, 16.334204, 30.660379>,  <12.213796, 16.280775, 30.655090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.610176, 16.334204, 30.660379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085102, -0.549078, -0.831427,
		-0.103794, 0.825029, -0.555476,
		0.990951, 0.133569, 0.013221,
		12.907461, 16.374275, 30.664345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.424090, 16.810009, 30.060131>,  <12.213796, 16.280775, 30.655090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.424090, 16.810009, 30.060131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.660534, 16.512899, 30.185909>,  <12.802400, 16.334633, 30.261377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.660534, 16.512899, 30.185909>,  <12.424090, 16.810009, 30.060131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.660534, 16.512899, 30.185909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024667, -0.406311, -0.913402,
		0.806215, 0.532162, -0.258496,
		0.591108, -0.742775, 0.314448,
		12.837866, 16.290068, 30.280243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.015022, 16.809305, 29.545242>,  <12.424090, 16.810009, 30.060131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.015022, 16.809305, 29.545242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967789, 16.453381, 29.721558>,  <12.939448, 16.239826, 29.827347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967789, 16.453381, 29.721558>,  <13.015022, 16.809305, 29.545242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.967789, 16.453381, 29.721558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018379, -0.441858, -0.896897,
		0.992833, -0.114011, 0.035823,
		-0.118085, -0.889811, 0.440787,
		12.932364, 16.186438, 29.853794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.465672, 16.241905, 29.308163>,  <13.015022, 16.809305, 29.545242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.465672, 16.241905, 29.308163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145342, 16.052696, 29.455095>,  <12.953144, 15.939171, 29.543255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145342, 16.052696, 29.455095>,  <13.465672, 16.241905, 29.308163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.145342, 16.052696, 29.455095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011871, -0.600684, -0.799398,
		0.598782, -0.644538, 0.475427,
		-0.800824, -0.473021, 0.367330,
		12.905094, 15.910789, 29.565294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.617924, 15.516140, 29.284616>,  <13.465672, 16.241905, 29.308163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.617924, 15.516140, 29.284616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223594, 15.583162, 29.281204>,  <12.986996, 15.623376, 29.279158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223594, 15.583162, 29.281204>,  <13.617924, 15.516140, 29.284616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.223594, 15.583162, 29.281204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105340, -0.657745, -0.745838,
		-0.130580, -0.734368, 0.666072,
		-0.985826, 0.167556, -0.008531,
		12.927846, 15.633429, 29.278645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199217, 15.002477, 29.466982>,  <13.617924, 15.516140, 29.284616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199217, 15.002477, 29.466982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006651, 15.239966, 29.209072>,  <12.891111, 15.382461, 29.054327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006651, 15.239966, 29.209072>,  <13.199217, 15.002477, 29.466982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.006651, 15.239966, 29.209072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041388, -0.719409, -0.693353,
		-0.875515, -0.360476, 0.321760,
		-0.481414, 0.593724, -0.644773,
		12.862226, 15.418083, 29.015640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690702, 14.595111, 29.168852>,  <13.199217, 15.002477, 29.466982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690702, 14.595111, 29.168852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.756156, 14.882024, 28.897934>,  <12.795428, 15.054172, 28.735382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.756156, 14.882024, 28.897934>,  <12.690702, 14.595111, 29.168852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.756156, 14.882024, 28.897934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011424, -0.687883, -0.725732,
		-0.986455, 0.111017, -0.120755,
		0.163634, 0.717281, -0.677297,
		12.805246, 15.097208, 28.694744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261843, 14.393468, 28.682899>,  <12.690702, 14.595111, 29.168852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261843, 14.393468, 28.682899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519905, 14.626758, 28.485466>,  <12.674743, 14.766731, 28.367006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519905, 14.626758, 28.485466>,  <12.261843, 14.393468, 28.682899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519905, 14.626758, 28.485466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023288, -0.630696, -0.775680,
		-0.763696, 0.511929, -0.393316,
		0.645156, 0.583224, -0.493582,
		12.713452, 14.801725, 28.337391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.957342, 14.521899, 28.088491>,  <12.261843, 14.393468, 28.682899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.957342, 14.521899, 28.088491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336493, 14.616398, 28.002966>,  <12.563984, 14.673097, 27.951651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336493, 14.616398, 28.002966>,  <11.957342, 14.521899, 28.088491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.336493, 14.616398, 28.002966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047668, -0.558342, -0.828240,
		-0.315050, 0.795262, -0.517979,
		0.947877, 0.236246, -0.213814,
		12.620856, 14.687272, 27.938822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.978104, 14.758049, 27.406712>,  <11.957342, 14.521899, 28.088491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.978104, 14.758049, 27.406712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.352027, 14.640193, 27.486032>,  <12.576381, 14.569480, 27.533625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.352027, 14.640193, 27.486032>,  <11.978104, 14.758049, 27.406712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.352027, 14.640193, 27.486032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077510, -0.375640, -0.923519,
		0.346595, 0.878682, -0.328313,
		0.934807, -0.294639, 0.198302,
		12.632469, 14.551802, 27.545523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.400120, 15.037784, 26.875996>,  <11.978104, 14.758049, 27.406712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.400120, 15.037784, 26.875996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604764, 14.735738, 27.039976>,  <12.727551, 14.554510, 27.138365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604764, 14.735738, 27.039976>,  <12.400120, 15.037784, 26.875996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604764, 14.735738, 27.039976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180300, -0.372148, -0.910493,
		0.840088, 0.539731, -0.054248,
		0.511610, -0.755113, 0.409950,
		12.758247, 14.509204, 27.162962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982362, 15.021894, 26.434528>,  <12.400120, 15.037784, 26.875996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982362, 15.021894, 26.434528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994379, 14.663992, 26.612745>,  <13.001590, 14.449250, 26.719675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994379, 14.663992, 26.612745>,  <12.982362, 15.021894, 26.434528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994379, 14.663992, 26.612745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347264, -0.408636, -0.844052,
		0.937286, 0.180079, 0.298440,
		0.030043, -0.894756, 0.445544,
		13.003392, 14.395565, 26.746408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693560, 14.817646, 26.376257>,  <12.982362, 15.021894, 26.434528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.693560, 14.817646, 26.376257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466092, 14.494999, 26.440735>,  <13.329612, 14.301411, 26.479422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466092, 14.494999, 26.440735>,  <13.693560, 14.817646, 26.376257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466092, 14.494999, 26.440735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309333, -0.391288, -0.866722,
		0.762187, -0.443014, 0.472026,
		-0.568668, -0.806618, 0.161196,
		13.295491, 14.253014, 26.489094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024224, 14.270041, 26.075964>,  <13.693560, 14.817646, 26.376257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024224, 14.270041, 26.075964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.663362, 14.104071, 26.123205>,  <13.446844, 14.004489, 26.151550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.663362, 14.104071, 26.123205>,  <14.024224, 14.270041, 26.075964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.663362, 14.104071, 26.123205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184495, -0.618545, -0.763782,
		0.389966, -0.667262, 0.634577,
		-0.902157, -0.414925, 0.118105,
		13.392715, 13.979593, 26.158636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138217, 13.581392, 25.896706>,  <14.024224, 14.270041, 26.075964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138217, 13.581392, 25.896706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742543, 13.625294, 25.857788>,  <13.505138, 13.651635, 25.834438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742543, 13.625294, 25.857788>,  <14.138217, 13.581392, 25.896706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742543, 13.625294, 25.857788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008813, -0.706625, -0.707533,
		-0.146405, -0.699024, 0.699950,
		-0.989186, 0.109755, -0.097293,
		13.445787, 13.658220, 25.828600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920113, 12.912683, 25.614475>,  <14.138217, 13.581392, 25.896706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920113, 12.912683, 25.614475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580203, 13.104012, 25.525850>,  <13.376257, 13.218809, 25.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.580203, 13.104012, 25.525850>,  <13.920113, 12.912683, 25.614475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580203, 13.104012, 25.525850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094636, -0.551907, -0.828518,
		-0.518578, -0.683088, 0.514265,
		-0.849777, 0.478319, -0.221562,
		13.325271, 13.247508, 25.459381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386291, 12.457284, 25.339096>,  <13.920113, 12.912683, 25.614475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386291, 12.457284, 25.339096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313236, 12.826255, 25.202993>,  <13.269403, 13.047637, 25.121332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.313236, 12.826255, 25.202993>,  <13.386291, 12.457284, 25.339096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.313236, 12.826255, 25.202993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008391, -0.347526, -0.937633,
		-0.983145, -0.168390, 0.071211,
		-0.182636, 0.922426, -0.340255,
		13.258446, 13.102983, 25.100916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763951, 12.382753, 24.981411>,  <13.386291, 12.457284, 25.339096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.763951, 12.382753, 24.981411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923043, 12.716041, 24.827757>,  <13.018498, 12.916013, 24.735565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923043, 12.716041, 24.827757>,  <12.763951, 12.382753, 24.981411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923043, 12.716041, 24.827757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244894, -0.307078, -0.919636,
		-0.884216, 0.459840, 0.081916,
		0.397730, 0.833217, -0.384135,
		13.042362, 12.966005, 24.712517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.300710, 12.577701, 24.465734>,  <12.763951, 12.382753, 24.981411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.300710, 12.577701, 24.465734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636395, 12.774714, 24.373529>,  <12.837806, 12.892921, 24.318207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636395, 12.774714, 24.373529>,  <12.300710, 12.577701, 24.465734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.636395, 12.774714, 24.373529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215043, -0.088770, -0.972562,
		-0.499480, 0.865756, 0.031419,
		0.839212, 0.492531, -0.230513,
		12.888158, 12.922473, 24.304375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102055, 13.131793, 24.091608>,  <12.300710, 12.577701, 24.465734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102055, 13.131793, 24.091608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.480039, 13.044654, 23.993961>,  <12.706829, 12.992371, 23.935373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.480039, 13.044654, 23.993961>,  <12.102055, 13.131793, 24.091608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.480039, 13.044654, 23.993961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280393, -0.154684, -0.947340,
		0.168615, 0.963647, -0.207254,
		0.944960, -0.217848, -0.244117,
		12.763527, 12.979300, 23.920727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.303339, 13.517023, 23.587856>,  <12.102055, 13.131793, 24.091608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.303339, 13.517023, 23.587856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595062, 13.249667, 23.529390>,  <12.770097, 13.089253, 23.494310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595062, 13.249667, 23.529390>,  <12.303339, 13.517023, 23.587856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.595062, 13.249667, 23.529390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204047, -0.008570, -0.978924,
		0.653049, 0.743763, -0.142633,
		0.729309, -0.668389, -0.146166,
		12.813855, 13.049150, 23.485540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872652, 13.753568, 23.053617>,  <12.303339, 13.517023, 23.587856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.872652, 13.753568, 23.053617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.817109, 13.357714, 23.068254>,  <12.783783, 13.120201, 23.077038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.817109, 13.357714, 23.068254>,  <12.872652, 13.753568, 23.053617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.817109, 13.357714, 23.068254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038964, -0.031464, -0.998745,
		0.989546, -0.140109, -0.034191,
		-0.138858, -0.989636, 0.036594,
		12.775452, 13.060822, 23.079233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.043886, 13.599571, 22.369619>,  <12.872652, 13.753568, 23.053617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.043886, 13.599571, 22.369619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.914226, 13.254066, 22.523939>,  <12.836429, 13.046763, 22.616531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.914226, 13.254066, 22.523939>,  <13.043886, 13.599571, 22.369619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.914226, 13.254066, 22.523939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110004, -0.370639, -0.922240,
		0.939588, -0.341385, 0.025126,
		-0.324152, -0.863761, 0.385802,
		12.816980, 12.994938, 22.639679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373932, 13.157001, 21.981529>,  <13.043886, 13.599571, 22.369619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373932, 13.157001, 21.981529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060624, 12.956181, 22.128191>,  <12.872640, 12.835689, 22.216188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060624, 12.956181, 22.128191>,  <13.373932, 13.157001, 21.981529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.060624, 12.956181, 22.128191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226904, -0.318224, -0.920461,
		0.578795, -0.804164, 0.135338,
		-0.783269, -0.502049, 0.366654,
		12.825644, 12.805566, 22.238188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385143, 12.464934, 21.597691>,  <13.373932, 13.157001, 21.981529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385143, 12.464934, 21.597691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.014886, 12.479739, 21.748323>,  <12.792731, 12.488623, 21.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.014886, 12.479739, 21.748323>,  <13.385143, 12.464934, 21.597691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014886, 12.479739, 21.748323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366143, -0.338801, -0.866691,
		0.095507, -0.940130, 0.327161,
		-0.925645, 0.037013, 0.376580,
		12.737192, 12.490843, 21.861298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106225, 11.866219, 21.369528>,  <13.385143, 12.464934, 21.597691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106225, 11.866219, 21.369528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787435, 12.092181, 21.455046>,  <12.596160, 12.227758, 21.506357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787435, 12.092181, 21.455046>,  <13.106225, 11.866219, 21.369528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.787435, 12.092181, 21.455046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382337, -0.197807, -0.902602,
		-0.467596, -0.801094, 0.373633,
		-0.796977, 0.564907, 0.213794,
		12.548342, 12.261653, 21.519184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.484241, 11.450208, 21.124506>,  <13.106225, 11.866219, 21.369528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.484241, 11.450208, 21.124506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348327, 11.823498, 21.171221>,  <12.266778, 12.047472, 21.199249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348327, 11.823498, 21.171221>,  <12.484241, 11.450208, 21.124506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.348327, 11.823498, 21.171221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454129, -0.054060, -0.889294,
		-0.823597, -0.355205, 0.442173,
		-0.339786, 0.933224, 0.116785,
		12.246391, 12.103465, 21.206257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.913959, 11.409487, 20.823456>,  <12.484241, 11.450208, 21.124506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.913959, 11.409487, 20.823456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935707, 11.807879, 20.851925>,  <11.948756, 12.046915, 20.869005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935707, 11.807879, 20.851925>,  <11.913959, 11.409487, 20.823456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.935707, 11.807879, 20.851925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570763, 0.089484, -0.816225,
		-0.819313, 0.003758, 0.573334,
		0.054372, 0.995981, 0.071170,
		11.952019, 12.106674, 20.873276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.257948, 11.719473, 20.668337>,  <11.913959, 11.409487, 20.823456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.257948, 11.719473, 20.668337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552793, 11.978533, 20.591169>,  <11.729699, 12.133968, 20.544868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552793, 11.978533, 20.591169>,  <11.257948, 11.719473, 20.668337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.552793, 11.978533, 20.591169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222051, -0.037500, -0.974314,
		-0.638249, 0.761015, 0.116169,
		0.737111, 0.647650, -0.192918,
		11.773926, 12.172828, 20.533295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.929968, 12.145876, 20.208826>,  <11.257948, 11.719473, 20.668337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.929968, 12.145876, 20.208826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324606, 12.197479, 20.168856>,  <11.561389, 12.228441, 20.144873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324606, 12.197479, 20.168856>,  <10.929968, 12.145876, 20.208826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.324606, 12.197479, 20.168856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099851, -0.007085, -0.994977,
		-0.129068, 0.991618, 0.005892,
		0.986596, 0.129008, -0.099928,
		11.620584, 12.236182, 20.138878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050816, 12.722126, 19.755037>,  <10.929968, 12.145876, 20.208826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050816, 12.722126, 19.755037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.386617, 12.505123, 19.742903>,  <11.588098, 12.374922, 19.735622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.386617, 12.505123, 19.742903>,  <11.050816, 12.722126, 19.755037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.386617, 12.505123, 19.742903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061358, -0.039180, -0.997347,
		0.539879, 0.839137, -0.066179,
		0.839503, -0.542507, -0.030336,
		11.638468, 12.342371, 19.733803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.511492, 13.078451, 19.334909>,  <11.050816, 12.722126, 19.755037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.511492, 13.078451, 19.334909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633393, 12.697937, 19.316236>,  <11.706534, 12.469628, 19.305033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633393, 12.697937, 19.316236>,  <11.511492, 13.078451, 19.334909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633393, 12.697937, 19.316236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020984, 0.055711, -0.998226,
		0.952200, 0.303234, 0.036940,
		0.304755, -0.951286, -0.046685,
		11.724819, 12.412551, 19.302231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.975427, 13.081930, 18.780071>,  <11.511492, 13.078451, 19.334909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.975427, 13.081930, 18.780071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.872686, 12.699468, 18.836346>,  <11.811043, 12.469990, 18.870110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.872686, 12.699468, 18.836346>,  <11.975427, 13.081930, 18.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872686, 12.699468, 18.836346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097606, -0.119161, -0.988066,
		0.961510, -0.267516, -0.062720,
		-0.256850, -0.956157, 0.140685,
		11.795631, 12.412621, 18.878551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209836, 12.693101, 18.240469>,  <11.975427, 13.081930, 18.780071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209836, 12.693101, 18.240469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926004, 12.438264, 18.360876>,  <11.755706, 12.285361, 18.433121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926004, 12.438264, 18.360876>,  <12.209836, 12.693101, 18.240469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.926004, 12.438264, 18.360876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165986, -0.264045, -0.950120,
		0.684798, -0.724149, 0.081612,
		-0.709578, -0.637094, 0.301016,
		11.713131, 12.247136, 18.451181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.298055, 12.183940, 17.742321>,  <12.209836, 12.693101, 18.240469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.298055, 12.183940, 17.742321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948617, 12.084119, 17.909441>,  <11.738955, 12.024226, 18.009714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948617, 12.084119, 17.909441>,  <12.298055, 12.183940, 17.742321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948617, 12.084119, 17.909441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331154, -0.324271, -0.886107,
		0.356612, -0.912454, 0.200640,
		-0.873593, -0.249553, 0.417802,
		11.686539, 12.009253, 18.034782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.110882, 11.480325, 17.539946>,  <12.298055, 12.183940, 17.742321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.110882, 11.480325, 17.539946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.770746, 11.649746, 17.664862>,  <11.566665, 11.751399, 17.739811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.770746, 11.649746, 17.664862>,  <12.110882, 11.480325, 17.539946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.770746, 11.649746, 17.664862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404657, -0.146911, -0.902591,
		-0.336417, -0.893878, 0.296319,
		-0.850338, 0.423555, 0.312291,
		11.515644, 11.776812, 17.758549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573024, 10.954473, 17.437916>,  <12.110882, 11.480325, 17.539946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.573024, 10.954473, 17.437916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.435102, 11.329781, 17.448975>,  <11.352348, 11.554965, 17.455610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.435102, 11.329781, 17.448975>,  <11.573024, 10.954473, 17.437916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.435102, 11.329781, 17.448975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173524, -0.034767, -0.984216,
		-0.922496, -0.344161, 0.174800,
		-0.344806, 0.938267, 0.027648,
		11.331660, 11.611260, 17.457270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.990142, 10.965520, 16.946800>,  <11.573024, 10.954473, 17.437916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.990142, 10.965520, 16.946800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062091, 11.357396, 16.982248>,  <11.105260, 11.592522, 17.003517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062091, 11.357396, 16.982248>,  <10.990142, 10.965520, 16.946800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.062091, 11.357396, 16.982248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230859, 0.129614, -0.964315,
		-0.956216, 0.152996, 0.249485,
		0.179873, 0.979690, 0.088619,
		11.116053, 11.651303, 17.008835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.405597, 11.378632, 16.650854>,  <10.990142, 10.965520, 16.946800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.405597, 11.378632, 16.650854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724032, 11.620703, 16.650238>,  <10.915093, 11.765945, 16.649868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724032, 11.620703, 16.650238>,  <10.405597, 11.378632, 16.650854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724032, 11.620703, 16.650238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244267, 0.318997, -0.915737,
		-0.553693, 0.729384, 0.401775,
		0.796089, 0.605178, -0.001538,
		10.962859, 11.802256, 16.649776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.226301, 12.011996, 16.227961>,  <10.405597, 11.378632, 16.650854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.226301, 12.011996, 16.227961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.625520, 11.988400, 16.236198>,  <10.865051, 11.974243, 16.241140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.625520, 11.988400, 16.236198>,  <10.226301, 12.011996, 16.227961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.625520, 11.988400, 16.236198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041045, 0.370466, -0.927939,
		0.047109, 0.926971, 0.372163,
		0.998046, -0.058990, 0.020595,
		10.924933, 11.970703, 16.242376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.435883, 12.673327, 15.965652>,  <10.226301, 12.011996, 16.227961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.435883, 12.673327, 15.965652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.752829, 12.430171, 15.945157>,  <10.942996, 12.284277, 15.932859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.752829, 12.430171, 15.945157>,  <10.435883, 12.673327, 15.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.752829, 12.430171, 15.945157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102719, 0.215739, -0.971033,
		0.601337, 0.764150, 0.233386,
		0.792365, -0.607892, -0.051239,
		10.990539, 12.247804, 15.929786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.864968, 13.098093, 15.535813>,  <10.435883, 12.673327, 15.965652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.864968, 13.098093, 15.535813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006167, 12.724072, 15.522723>,  <11.090887, 12.499660, 15.514870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006167, 12.724072, 15.522723>,  <10.864968, 13.098093, 15.535813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.006167, 12.724072, 15.522723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091667, 0.069371, -0.993370,
		0.931123, 0.347658, 0.110201,
		0.352998, -0.935052, -0.032725,
		11.112066, 12.443557, 15.512906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.443972, 13.045771, 15.041862>,  <10.864968, 13.098093, 15.535813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.443972, 13.045771, 15.041862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326061, 12.664253, 15.065139>,  <11.255315, 12.435343, 15.079105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326061, 12.664253, 15.065139>,  <11.443972, 13.045771, 15.041862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.326061, 12.664253, 15.065139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011936, -0.064571, -0.997842,
		0.955492, -0.293446, 0.030418,
		-0.294777, -0.953793, 0.058194,
		11.237628, 12.378116, 15.082597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774895, 12.824989, 14.462863>,  <11.443972, 13.045771, 15.041862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774895, 12.824989, 14.462863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494202, 12.571675, 14.593413>,  <11.325786, 12.419687, 14.671743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.494202, 12.571675, 14.593413>,  <11.774895, 12.824989, 14.462863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494202, 12.571675, 14.593413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443753, 0.030127, -0.895643,
		0.557364, -0.773332, -0.302163,
		-0.701733, -0.633285, 0.326377,
		11.283682, 12.381690, 14.691326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403563, 13.240088, 14.408377>,  <11.774895, 12.824989, 14.462863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403563, 13.240088, 14.408377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785211, 13.225700, 14.289475>,  <13.014199, 13.217068, 14.218135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785211, 13.225700, 14.289475>,  <12.403563, 13.240088, 14.408377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.785211, 13.225700, 14.289475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285341, -0.191621, 0.939075,
		-0.090735, -0.980810, -0.172567,
		0.954121, -0.035967, -0.297252,
		13.071447, 13.214911, 14.200299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746140, 12.582253, 14.671553>,  <12.403563, 13.240088, 14.408377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746140, 12.582253, 14.671553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.990162, 12.893631, 14.612411>,  <13.136575, 13.080458, 14.576925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.990162, 12.893631, 14.612411>,  <12.746140, 12.582253, 14.671553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990162, 12.893631, 14.612411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332671, -0.082272, 0.939447,
		0.719142, -0.622300, -0.309156,
		0.610053, 0.778444, -0.147856,
		13.173178, 13.127164, 14.568053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443586, 12.409273, 14.851299>,  <12.746140, 12.582253, 14.671553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443586, 12.409273, 14.851299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447822, 12.807565, 14.887984>,  <13.450363, 13.046539, 14.909995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447822, 12.807565, 14.887984>,  <13.443586, 12.409273, 14.851299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447822, 12.807565, 14.887984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250861, -0.091429, 0.963696,
		0.967965, 0.012802, -0.250757,
		0.010589, 0.995729, 0.091712,
		13.450998, 13.106283, 14.915498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.969140, 12.552593, 15.252523>,  <13.443586, 12.409273, 14.851299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.969140, 12.552593, 15.252523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814897, 12.921411, 15.266045>,  <13.722350, 13.142701, 15.274158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814897, 12.921411, 15.266045>,  <13.969140, 12.552593, 15.252523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.814897, 12.921411, 15.266045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261260, 0.073980, 0.962429,
		0.884900, 0.379953, -0.269421,
		-0.385610, 0.922043, 0.033802,
		13.699214, 13.198024, 15.276185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521726, 13.007662, 15.374527>,  <13.969140, 12.552593, 15.252523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.521726, 13.007662, 15.374527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.170055, 13.163044, 15.484908>,  <13.959053, 13.256273, 15.551137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.170055, 13.163044, 15.484908>,  <14.521726, 13.007662, 15.374527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.170055, 13.163044, 15.484908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392788, 0.262970, 0.881229,
		0.269752, 0.883147, -0.383778,
		-0.879177, 0.388456, 0.275953,
		13.906302, 13.279581, 15.567694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666889, 13.566791, 15.674868>,  <14.521726, 13.007662, 15.374527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666889, 13.566791, 15.674868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308224, 13.511700, 15.843165>,  <14.093024, 13.478645, 15.944144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.308224, 13.511700, 15.843165>,  <14.666889, 13.566791, 15.674868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.308224, 13.511700, 15.843165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399200, 0.159350, 0.902910,
		-0.191400, 0.977568, -0.087903,
		-0.896664, -0.137727, 0.420744,
		14.039225, 13.470382, 15.969389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597331, 14.141080, 16.092897>,  <14.666889, 13.566791, 15.674868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.597331, 14.141080, 16.092897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315811, 13.892722, 16.230974>,  <14.146899, 13.743708, 16.313820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315811, 13.892722, 16.230974>,  <14.597331, 14.141080, 16.092897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315811, 13.892722, 16.230974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241009, 0.248410, 0.938194,
		-0.668268, 0.743494, -0.025190,
		-0.703799, -0.620893, 0.345193,
		14.104671, 13.706454, 16.334532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201896, 14.540662, 16.551645>,  <14.597331, 14.141080, 16.092897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201896, 14.540662, 16.551645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159414, 14.149323, 16.622698>,  <14.133925, 13.914518, 16.665329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.159414, 14.149323, 16.622698>,  <14.201896, 14.540662, 16.551645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159414, 14.149323, 16.622698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324416, 0.134776, 0.936264,
		-0.939934, 0.157062, 0.303078,
		-0.106204, -0.978349, 0.177634,
		14.127553, 13.855818, 16.675987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.889034, 14.539285, 17.191513>,  <14.201896, 14.540662, 16.551645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.889034, 14.539285, 17.191513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.052367, 14.181582, 17.118223>,  <14.150367, 13.966961, 17.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.052367, 14.181582, 17.118223>,  <13.889034, 14.539285, 17.191513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.052367, 14.181582, 17.118223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278218, -0.069250, 0.958018,
		-0.869401, -0.442167, 0.220521,
		0.408333, -0.894256, -0.183225,
		14.174867, 13.913306, 17.063255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671656, 14.178009, 17.730736>,  <13.889034, 14.539285, 17.191513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.671656, 14.178009, 17.730736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989038, 13.977077, 17.593277>,  <14.179468, 13.856519, 17.510801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989038, 13.977077, 17.593277>,  <13.671656, 14.178009, 17.730736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989038, 13.977077, 17.593277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168457, -0.361308, 0.917103,
		-0.584850, -0.785571, -0.202061,
		0.793456, -0.502329, -0.343646,
		14.227076, 13.826379, 17.490183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.533193, 13.515436, 17.961199>,  <13.671656, 14.178009, 17.730736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.533193, 13.515436, 17.961199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928170, 13.534711, 17.901022>,  <14.165156, 13.546276, 17.864916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928170, 13.534711, 17.901022>,  <13.533193, 13.515436, 17.961199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928170, 13.534711, 17.901022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157008, -0.194458, 0.968264,
		0.017405, -0.979727, -0.199582,
		0.987444, 0.048189, -0.150440,
		14.224403, 13.549167, 17.855890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.766296, 12.951244, 18.317694>,  <13.533193, 13.515436, 17.961199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.766296, 12.951244, 18.317694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075574, 13.197377, 18.256325>,  <14.261141, 13.345057, 18.219503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075574, 13.197377, 18.256325>,  <13.766296, 12.951244, 18.317694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075574, 13.197377, 18.256325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340036, -0.198053, 0.919321,
		0.535300, -0.762983, -0.362368,
		0.773194, 0.615331, -0.153424,
		14.307532, 13.381976, 18.210297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367677, 12.545494, 18.480047>,  <13.766296, 12.951244, 18.317694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367677, 12.545494, 18.480047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447326, 12.934491, 18.528393>,  <14.495115, 13.167890, 18.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447326, 12.934491, 18.528393>,  <14.367677, 12.545494, 18.480047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447326, 12.934491, 18.528393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392819, -0.192202, 0.899306,
		0.897799, -0.131594, -0.420285,
		0.199122, 0.972492, 0.120866,
		14.507063, 13.226239, 18.564653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813351, 12.616993, 19.043921>,  <14.367677, 12.545494, 18.480047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813351, 12.616993, 19.043921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779730, 13.014032, 19.008856>,  <14.759557, 13.252255, 18.987818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779730, 13.014032, 19.008856>,  <14.813351, 12.616993, 19.043921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.779730, 13.014032, 19.008856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271167, 0.107436, 0.956517,
		0.958855, 0.056627, -0.278191,
		-0.084053, 0.992598, -0.087660,
		14.754514, 13.311811, 18.982557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406435, 12.873431, 19.276140>,  <14.813351, 12.616993, 19.043921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406435, 12.873431, 19.276140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126374, 13.149615, 19.348864>,  <14.958338, 13.315326, 19.392498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126374, 13.149615, 19.348864>,  <15.406435, 12.873431, 19.276140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126374, 13.149615, 19.348864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350267, 0.110263, 0.930137,
		0.622175, 0.714918, -0.319046,
		-0.700151, 0.690459, 0.181809,
		14.916329, 13.356753, 19.403406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673943, 13.214743, 19.851624>,  <15.406435, 12.873431, 19.276140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673943, 13.214743, 19.851624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289076, 13.323322, 19.842226>,  <15.058156, 13.388471, 19.836588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289076, 13.323322, 19.842226>,  <15.673943, 13.214743, 19.851624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289076, 13.323322, 19.842226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076041, 0.350330, 0.933535,
		0.261639, 0.896429, -0.357717,
		-0.962166, 0.271450, -0.023495,
		15.000426, 13.404757, 19.835178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.697602, 13.919312, 20.010735>,  <15.673943, 13.214743, 19.851624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.697602, 13.919312, 20.010735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330739, 13.776949, 20.082457>,  <15.110621, 13.691531, 20.125490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330739, 13.776949, 20.082457>,  <15.697602, 13.919312, 20.010735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330739, 13.776949, 20.082457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023387, 0.401085, 0.915742,
		-0.397837, 0.844074, -0.359535,
		-0.917158, -0.355908, 0.179307,
		15.055592, 13.670177, 20.136250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185361, 14.459637, 20.380070>,  <15.697602, 13.919312, 20.010735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185361, 14.459637, 20.380070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000241, 14.108714, 20.430904>,  <14.889170, 13.898161, 20.461405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.000241, 14.108714, 20.430904>,  <15.185361, 14.459637, 20.380070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.000241, 14.108714, 20.430904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187781, 0.237133, 0.953156,
		-0.866346, 0.417255, -0.274486,
		-0.462799, -0.877306, 0.127087,
		14.861402, 13.845522, 20.469030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.459213, 14.608525, 20.692848>,  <15.185361, 14.459637, 20.380070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.459213, 14.608525, 20.692848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.539911, 14.225118, 20.773384>,  <14.588330, 13.995073, 20.821705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.539911, 14.225118, 20.773384>,  <14.459213, 14.608525, 20.692848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.539911, 14.225118, 20.773384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085512, 0.187544, 0.978527,
		-0.975698, -0.214631, -0.044129,
		0.201746, -0.958520, 0.201340,
		14.600435, 13.937562, 20.833786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123711, 14.604734, 21.282516>,  <14.459213, 14.608525, 20.692848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123711, 14.604734, 21.282516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316946, 14.256208, 21.317009>,  <14.432887, 14.047092, 21.337704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316946, 14.256208, 21.317009>,  <14.123711, 14.604734, 21.282516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316946, 14.256208, 21.317009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030297, 0.081790, 0.996189,
		-0.875047, -0.483860, 0.013114,
		0.483089, -0.871315, 0.086229,
		14.461873, 13.994814, 21.342878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788102, 14.280426, 21.781263>,  <14.123711, 14.604734, 21.282516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.788102, 14.280426, 21.781263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.154572, 14.121224, 21.762436>,  <14.374454, 14.025703, 21.751139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.154572, 14.121224, 21.762436>,  <13.788102, 14.280426, 21.781263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154572, 14.121224, 21.762436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135034, 0.195976, 0.971267,
		-0.377345, -0.896206, 0.233292,
		0.916175, -0.398005, -0.047068,
		14.429425, 14.001823, 21.748316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872033, 13.828969, 22.408937>,  <13.788102, 14.280426, 21.781263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872033, 13.828969, 22.408937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.254684, 13.871707, 22.300535>,  <14.484276, 13.897349, 22.235493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.254684, 13.871707, 22.300535>,  <13.872033, 13.828969, 22.408937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.254684, 13.871707, 22.300535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236454, 0.258576, 0.936604,
		0.170146, -0.960064, 0.222098,
		0.956629, 0.106843, -0.271007,
		14.541673, 13.903761, 22.219233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301850, 13.453465, 22.971727>,  <13.872033, 13.828969, 22.408937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301850, 13.453465, 22.971727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532612, 13.715179, 22.776140>,  <14.671069, 13.872209, 22.658787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532612, 13.715179, 22.776140>,  <14.301850, 13.453465, 22.971727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.532612, 13.715179, 22.776140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290859, 0.394837, 0.871496,
		0.763271, -0.644991, 0.037478,
		0.576904, 0.654286, -0.488969,
		14.705683, 13.911466, 22.629450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.982865, 13.336096, 23.134178>,  <14.301850, 13.453465, 22.971727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.982865, 13.336096, 23.134178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955679, 13.718378, 23.019630>,  <14.939367, 13.947747, 22.950901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955679, 13.718378, 23.019630>,  <14.982865, 13.336096, 23.134178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.955679, 13.718378, 23.019630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313367, 0.292958, 0.903314,
		0.947197, -0.028345, -0.319398,
		-0.067966, 0.955705, -0.286371,
		14.935289, 14.005090, 22.933720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564322, 13.570430, 23.406450>,  <14.982865, 13.336096, 23.134178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.564322, 13.570430, 23.406450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.335171, 13.882108, 23.304731>,  <15.197680, 14.069115, 23.243700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.335171, 13.882108, 23.304731>,  <15.564322, 13.570430, 23.406450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.335171, 13.882108, 23.304731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146745, 0.402744, 0.903473,
		0.806398, 0.480262, -0.345066,
		-0.572877, 0.779195, -0.254296,
		15.163307, 14.115867, 23.228443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931639, 14.129373, 23.766445>,  <15.564322, 13.570430, 23.406450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931639, 14.129373, 23.766445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587213, 14.288362, 23.639585>,  <15.380557, 14.383755, 23.563469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587213, 14.288362, 23.639585>,  <15.931639, 14.129373, 23.766445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587213, 14.288362, 23.639585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011999, 0.639412, 0.768771,
		0.508354, 0.658156, -0.555344,
		-0.861064, 0.397471, -0.317150,
		15.328894, 14.407603, 23.544441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057713, 14.840475, 23.577873>,  <15.931639, 14.129373, 23.766445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.057713, 14.840475, 23.577873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685449, 14.772059, 23.707253>,  <15.462090, 14.731009, 23.784880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685449, 14.772059, 23.707253>,  <16.057713, 14.840475, 23.577873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685449, 14.772059, 23.707253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220203, 0.444159, 0.868466,
		-0.292204, 0.879471, -0.375697,
		-0.930660, -0.171040, 0.323447,
		15.406251, 14.720747, 23.804287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874519, 15.431599, 23.862553>,  <16.057713, 14.840475, 23.577873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874519, 15.431599, 23.862553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.576277, 15.215342, 24.018387>,  <15.397331, 15.085588, 24.111887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.576277, 15.215342, 24.018387>,  <15.874519, 15.431599, 23.862553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576277, 15.215342, 24.018387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003462, 0.587760, 0.809028,
		-0.666378, 0.601868, -0.440109,
		-0.745606, -0.540642, 0.389586,
		15.352595, 15.053149, 24.135263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422587, 15.972757, 24.246550>,  <15.874519, 15.431599, 23.862553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422587, 15.972757, 24.246550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.359384, 15.612100, 24.407581>,  <15.321462, 15.395705, 24.504200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.359384, 15.612100, 24.407581>,  <15.422587, 15.972757, 24.246550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359384, 15.612100, 24.407581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031576, 0.402878, 0.914708,
		-0.986933, 0.157244, -0.035188,
		-0.158008, -0.901645, 0.402579,
		15.311981, 15.341606, 24.528355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850183, 16.084774, 24.706593>,  <15.422587, 15.972757, 24.246550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850183, 16.084774, 24.706593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043811, 15.751161, 24.812469>,  <15.159987, 15.550992, 24.875996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.043811, 15.751161, 24.812469>,  <14.850183, 16.084774, 24.706593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043811, 15.751161, 24.812469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042702, 0.324651, 0.944869,
		-0.873987, -0.446079, 0.192768,
		0.484069, -0.834035, 0.264693,
		15.189032, 15.500950, 24.891878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.604221, 16.024607, 25.293070>,  <14.850183, 16.084774, 24.706593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.604221, 16.024607, 25.293070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924594, 15.785151, 25.288305>,  <15.116817, 15.641479, 25.285446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924594, 15.785151, 25.288305>,  <14.604221, 16.024607, 25.293070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924594, 15.785151, 25.288305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234184, 0.294886, 0.926391,
		-0.551061, -0.744764, 0.376375,
		0.800930, -0.598639, -0.011912,
		15.164873, 15.605559, 25.284731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611318, 15.442822, 25.824127>,  <14.604221, 16.024607, 25.293070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611318, 15.442822, 25.824127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.949938, 15.629962, 25.722565>,  <15.153110, 15.742247, 25.661627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.949938, 15.629962, 25.722565>,  <14.611318, 15.442822, 25.824127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949938, 15.629962, 25.722565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006606, 0.486190, 0.873828,
		0.532273, -0.738059, 0.414673,
		0.846547, 0.467855, -0.253910,
		15.203902, 15.770317, 25.646393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246238, 15.309178, 26.259542>,  <14.611318, 15.442822, 25.824127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246238, 15.309178, 26.259542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.294425, 15.679952, 26.117399>,  <15.323338, 15.902416, 26.032112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.294425, 15.679952, 26.117399>,  <15.246238, 15.309178, 26.259542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.294425, 15.679952, 26.117399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020920, 0.360258, 0.932618,
		0.992497, -0.104917, 0.062791,
		0.120468, 0.926934, -0.355360,
		15.330565, 15.958032, 26.010792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894208, 15.754009, 26.508667>,  <15.246238, 15.309178, 26.259542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894208, 15.754009, 26.508667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588081, 16.002844, 26.442577>,  <15.404406, 16.152145, 26.402924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588081, 16.002844, 26.442577>,  <15.894208, 15.754009, 26.508667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588081, 16.002844, 26.442577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112341, 0.381857, 0.917368,
		0.633774, 0.683515, -0.362128,
		-0.765317, 0.622086, -0.165224,
		15.358486, 16.189470, 26.393009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049881, 16.358326, 26.922029>,  <15.894208, 15.754009, 26.508667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.049881, 16.358326, 26.922029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656147, 16.341393, 26.853565>,  <15.419907, 16.331232, 26.812487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656147, 16.341393, 26.853565>,  <16.049881, 16.358326, 26.922029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656147, 16.341393, 26.853565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174688, 0.365855, 0.914130,
		0.023923, 0.929709, -0.367518,
		-0.984333, -0.042332, -0.171162,
		15.360847, 16.328693, 26.802217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.785056, 17.070450, 26.917746>,  <16.049881, 16.358326, 26.922029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.785056, 17.070450, 26.917746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.549816, 16.764578, 27.023127>,  <15.408672, 16.581055, 27.086355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.549816, 16.764578, 27.023127>,  <15.785056, 17.070450, 26.917746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.549816, 16.764578, 27.023127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114752, 0.401331, 0.908716,
		-0.800606, 0.504184, -0.323771,
		-0.588100, -0.764678, 0.263452,
		15.373386, 16.535175, 27.102161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224497, 17.348837, 27.323994>,  <15.785056, 17.070450, 26.917746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224497, 17.348837, 27.323994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236500, 16.970568, 27.453489>,  <15.243701, 16.743607, 27.531187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236500, 16.970568, 27.453489>,  <15.224497, 17.348837, 27.323994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236500, 16.970568, 27.453489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311229, 0.298943, 0.902092,
		-0.949861, -0.127825, -0.285350,
		0.030006, -0.945671, 0.323737,
		15.245502, 16.686867, 27.550610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490634, 17.211969, 27.536982>,  <15.224497, 17.348837, 27.323994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490634, 17.211969, 27.536982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.753496, 16.976364, 27.725113>,  <14.911213, 16.835001, 27.837992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.753496, 16.976364, 27.725113>,  <14.490634, 17.211969, 27.536982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.753496, 16.976364, 27.725113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445712, 0.199540, 0.872653,
		-0.607855, -0.783100, -0.131403,
		0.657155, -0.589015, 0.470329,
		14.950643, 16.799660, 27.866211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.430021, 17.754711, 27.113123>,  <14.490634, 17.211969, 27.536982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.430021, 17.754711, 27.113123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391647, 18.099821, 26.914562>,  <14.368623, 18.306887, 26.795425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391647, 18.099821, 26.914562>,  <14.430021, 17.754711, 27.113123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.391647, 18.099821, 26.914562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599586, -0.448165, -0.663057,
		-0.794540, 0.234027, 0.560302,
		-0.095935, 0.862774, -0.496404,
		14.362866, 18.358654, 26.765640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.732925, 17.711937, 26.913431>,  <14.430021, 17.754711, 27.113123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.732925, 17.711937, 26.913431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.874699, 17.998232, 26.672733>,  <13.959763, 18.170010, 26.528315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.874699, 17.998232, 26.672733>,  <13.732925, 17.711937, 26.913431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.874699, 17.998232, 26.672733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471350, -0.419034, -0.776041,
		-0.807594, 0.558687, 0.188844,
		0.354432, 0.715737, -0.601746,
		13.981029, 18.212954, 26.492210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.155990, 17.930609, 26.423321>,  <13.732925, 17.711937, 26.913431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.155990, 17.930609, 26.423321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494865, 18.049356, 26.247076>,  <13.698191, 18.120605, 26.141329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494865, 18.049356, 26.247076>,  <13.155990, 17.930609, 26.423321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494865, 18.049356, 26.247076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343755, -0.326050, -0.880638,
		-0.405095, 0.897530, -0.174176,
		0.847190, 0.296868, -0.440612,
		13.749022, 18.138416, 26.114893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.919070, 18.335918, 25.805149>,  <13.155990, 17.930609, 26.423321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.919070, 18.335918, 25.805149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.304846, 18.249077, 25.744850>,  <13.536311, 18.196972, 25.708670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.304846, 18.249077, 25.744850>,  <12.919070, 18.335918, 25.805149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304846, 18.249077, 25.744850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173011, -0.087370, -0.981037,
		0.199815, 0.972231, -0.121824,
		0.964438, -0.217103, -0.150748,
		13.594177, 18.183947, 25.699625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.155637, 18.773563, 25.173302>,  <12.919070, 18.335918, 25.805149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.155637, 18.773563, 25.173302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377749, 18.443129, 25.211750>,  <13.511017, 18.244867, 25.234819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377749, 18.443129, 25.211750>,  <13.155637, 18.773563, 25.173302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377749, 18.443129, 25.211750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016323, -0.104731, -0.994367,
		0.831502, 0.553722, -0.044671,
		0.555281, -0.826089, 0.096122,
		13.544333, 18.195301, 25.240587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.696200, 18.901291, 24.706350>,  <13.155637, 18.773563, 25.173302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.696200, 18.901291, 24.706350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.643213, 18.512249, 24.782759>,  <13.611421, 18.278824, 24.828604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.643213, 18.512249, 24.782759>,  <13.696200, 18.901291, 24.706350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.643213, 18.512249, 24.782759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050719, -0.199118, -0.978662,
		0.989889, -0.119953, 0.075706,
		-0.132468, -0.972607, 0.191020,
		13.603473, 18.220467, 24.840065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152255, 18.647831, 24.210520>,  <13.696200, 18.901291, 24.706350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152255, 18.647831, 24.210520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.936756, 18.340748, 24.349298>,  <13.807457, 18.156498, 24.432566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.936756, 18.340748, 24.349298>,  <14.152255, 18.647831, 24.210520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.936756, 18.340748, 24.349298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149749, -0.492532, -0.857314,
		0.829051, -0.409921, 0.380314,
		-0.538748, -0.767709, 0.346949,
		13.775132, 18.110435, 24.453382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478965, 17.921232, 24.043575>,  <14.152255, 18.647831, 24.210520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478965, 17.921232, 24.043575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080874, 17.882244, 24.045492>,  <13.842020, 17.858850, 24.046642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.080874, 17.882244, 24.045492>,  <14.478965, 17.921232, 24.043575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.080874, 17.882244, 24.045492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044796, -0.499909, -0.864918,
		0.086701, -0.860575, 0.501890,
		-0.995227, -0.097471, 0.004793,
		13.782307, 17.853003, 24.046930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469482, 17.234274, 24.004704>,  <14.478965, 17.921232, 24.043575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469482, 17.234274, 24.004704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.118300, 17.387732, 23.890154>,  <13.907591, 17.479807, 23.821424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.118300, 17.387732, 23.890154>,  <14.469482, 17.234274, 24.004704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.118300, 17.387732, 23.890154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033504, -0.547478, -0.836149,
		-0.477567, -0.743697, 0.467808,
		-0.877956, 0.383644, -0.286375,
		13.854914, 17.502825, 23.804241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221786, 16.703108, 23.684906>,  <14.469482, 17.234274, 24.004704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221786, 16.703108, 23.684906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948090, 16.970697, 23.568781>,  <13.783872, 17.131252, 23.499105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948090, 16.970697, 23.568781>,  <14.221786, 16.703108, 23.684906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948090, 16.970697, 23.568781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090009, -0.472527, -0.876708,
		-0.723678, -0.573750, 0.383537,
		-0.684243, 0.668976, -0.290314,
		13.742817, 17.171391, 23.481688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559782, 16.403975, 23.572161>,  <14.221786, 16.703108, 23.684906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559782, 16.403975, 23.572161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565955, 16.733248, 23.345133>,  <13.569659, 16.930811, 23.208916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565955, 16.733248, 23.345133>,  <13.559782, 16.403975, 23.572161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.565955, 16.733248, 23.345133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213070, -0.551891, -0.806237,
		-0.976915, 0.133375, 0.166877,
		0.015434, 0.823182, -0.567569,
		13.570585, 16.980202, 23.174862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982565, 16.354971, 23.129560>,  <13.559782, 16.403975, 23.572161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982565, 16.354971, 23.129560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.192344, 16.644611, 22.950390>,  <13.318211, 16.818396, 22.842888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.192344, 16.644611, 22.950390>,  <12.982565, 16.354971, 23.129560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192344, 16.644611, 22.950390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203492, -0.404237, -0.891731,
		-0.826769, 0.558814, -0.064652,
		0.524446, 0.724099, -0.447925,
		13.349678, 16.861841, 22.816013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.661655, 16.566051, 22.513836>,  <12.982565, 16.354971, 23.129560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.661655, 16.566051, 22.513836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031873, 16.709063, 22.463966>,  <13.254004, 16.794868, 22.434046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031873, 16.709063, 22.463966>,  <12.661655, 16.566051, 22.513836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.031873, 16.709063, 22.463966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038480, -0.238741, -0.970320,
		-0.376681, 0.902871, -0.207208,
		0.925543, 0.357528, -0.124672,
		13.309536, 16.816320, 22.426565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678572, 17.118076, 21.982660>,  <12.661655, 16.566051, 22.513836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678572, 17.118076, 21.982660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057044, 16.989300, 21.995892>,  <13.284127, 16.912033, 22.003830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.057044, 16.989300, 21.995892>,  <12.678572, 17.118076, 21.982660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.057044, 16.989300, 21.995892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004968, -0.116651, -0.993161,
		0.323600, 0.939545, -0.111972,
		0.946181, -0.321943, 0.033080,
		13.340899, 16.892717, 22.005816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989036, 17.491133, 21.417604>,  <12.678572, 17.118076, 21.982660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.989036, 17.491133, 21.417604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236994, 17.188808, 21.501963>,  <13.385769, 17.007414, 21.552578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236994, 17.188808, 21.501963>,  <12.989036, 17.491133, 21.417604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.236994, 17.188808, 21.501963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249978, -0.064546, -0.966098,
		0.743801, 0.651599, 0.148925,
		0.619896, -0.755812, 0.210895,
		13.422962, 16.962065, 21.565231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.670159, 17.657948, 21.114985>,  <12.989036, 17.491133, 21.417604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.670159, 17.657948, 21.114985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.698007, 17.261759, 21.162516>,  <13.714715, 17.024046, 21.191034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.698007, 17.261759, 21.162516>,  <13.670159, 17.657948, 21.114985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.698007, 17.261759, 21.162516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369791, -0.085009, -0.925218,
		0.926503, 0.108354, 0.360349,
		0.069618, -0.990471, 0.118830,
		13.718892, 16.964617, 21.198164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095757, 17.610479, 20.645473>,  <13.670159, 17.657948, 21.114985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095757, 17.610479, 20.645473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981165, 17.240030, 20.743637>,  <13.912410, 17.017761, 20.802534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981165, 17.240030, 20.743637>,  <14.095757, 17.610479, 20.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.981165, 17.240030, 20.743637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220253, -0.312945, -0.923880,
		0.932426, -0.210622, 0.293634,
		-0.286480, -0.926123, 0.245408,
		13.895221, 16.962193, 20.817259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.709317, 17.135113, 20.573599>,  <14.095757, 17.610479, 20.645473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.709317, 17.135113, 20.573599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366479, 16.934431, 20.526817>,  <14.160776, 16.814022, 20.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366479, 16.934431, 20.526817>,  <14.709317, 17.135113, 20.573599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366479, 16.934431, 20.526817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313625, -0.328069, -0.891073,
		0.408687, -0.800414, 0.438534,
		-0.857096, -0.501705, -0.116952,
		14.109350, 16.783920, 20.491732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.940566, 16.550234, 20.402557>,  <14.709317, 17.135113, 20.573599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.940566, 16.550234, 20.402557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559842, 16.528929, 20.281748>,  <14.331408, 16.516146, 20.209261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559842, 16.528929, 20.281748>,  <14.940566, 16.550234, 20.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.559842, 16.528929, 20.281748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290580, -0.471558, -0.832584,
		-0.098078, -0.880225, 0.464310,
		-0.951811, -0.053261, -0.302025,
		14.274299, 16.512951, 20.191141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760040, 15.796186, 20.288954>,  <14.940566, 16.550234, 20.402557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760040, 15.796186, 20.288954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504527, 16.033447, 20.092943>,  <14.351219, 16.175804, 19.975336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504527, 16.033447, 20.092943>,  <14.760040, 15.796186, 20.288954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504527, 16.033447, 20.092943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292562, -0.401803, -0.867734,
		-0.711594, -0.697656, 0.083130,
		-0.638782, 0.593153, -0.490028,
		14.312893, 16.211393, 19.945934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.387129, 15.344387, 19.929270>,  <14.760040, 15.796186, 20.288954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.387129, 15.344387, 19.929270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343204, 15.694292, 19.740492>,  <14.316850, 15.904235, 19.627226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.343204, 15.694292, 19.740492>,  <14.387129, 15.344387, 19.929270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343204, 15.694292, 19.740492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313379, -0.420128, -0.851637,
		-0.943258, -0.241417, -0.227997,
		-0.109812, 0.874763, -0.471944,
		14.310261, 15.956721, 19.598909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137553, 15.157508, 19.205849>,  <14.387129, 15.344387, 19.929270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137553, 15.157508, 19.205849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286537, 15.528724, 19.207346>,  <14.375928, 15.751453, 19.208244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286537, 15.528724, 19.207346>,  <14.137553, 15.157508, 19.205849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286537, 15.528724, 19.207346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351387, -0.137289, -0.926110,
		-0.858953, 0.346255, -0.377236,
		0.372460, 0.928041, 0.003745,
		14.398275, 15.807136, 19.208469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893076, 15.408415, 18.558998>,  <14.137553, 15.157508, 19.205849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893076, 15.408415, 18.558998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198695, 15.625250, 18.698925>,  <14.382067, 15.755351, 18.782881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198695, 15.625250, 18.698925>,  <13.893076, 15.408415, 18.558998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198695, 15.625250, 18.698925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482885, -0.120931, -0.867293,
		-0.427846, 0.831574, -0.354164,
		0.764048, 0.542089, 0.349815,
		14.427910, 15.787876, 18.803869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.094354, 15.853685, 18.006578>,  <13.893076, 15.408415, 18.558998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.094354, 15.853685, 18.006578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417090, 15.848214, 18.242823>,  <14.610732, 15.844932, 18.384569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417090, 15.848214, 18.242823>,  <14.094354, 15.853685, 18.006578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417090, 15.848214, 18.242823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590672, 0.036745, -0.806075,
		-0.010677, 0.999231, 0.037726,
		0.806841, -0.013677, 0.590610,
		14.659142, 15.844111, 18.420006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527584, 16.377132, 17.722782>,  <14.094354, 15.853685, 18.006578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527584, 16.377132, 17.722782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.751183, 16.122084, 17.934805>,  <14.885342, 15.969054, 18.062019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.751183, 16.122084, 17.934805>,  <14.527584, 16.377132, 17.722782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751183, 16.122084, 17.934805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591987, -0.140708, -0.793570,
		0.580580, 0.757390, 0.298808,
		0.558997, -0.637621, 0.530057,
		14.918881, 15.930798, 18.093822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209661, 16.583160, 17.557592>,  <14.527584, 16.377132, 17.722782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209661, 16.583160, 17.557592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258356, 16.221292, 17.720934>,  <15.287573, 16.004171, 17.818939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258356, 16.221292, 17.720934>,  <15.209661, 16.583160, 17.557592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258356, 16.221292, 17.720934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837692, -0.127033, -0.531164,
		0.532402, 0.406737, 0.742370,
		0.121738, -0.904670, 0.408353,
		15.294878, 15.949892, 17.843439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888523, 16.579979, 17.705612>,  <15.209661, 16.583160, 17.557592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888523, 16.579979, 17.705612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794025, 16.191349, 17.711658>,  <15.737327, 15.958171, 17.715286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.794025, 16.191349, 17.711658>,  <15.888523, 16.579979, 17.705612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794025, 16.191349, 17.711658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748918, -0.191971, -0.634246,
		0.619120, -0.138518, 0.772983,
		-0.236245, -0.971576, 0.015114,
		15.723152, 15.899877, 17.716192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.546333, 16.229507, 17.796137>,  <15.888523, 16.579979, 17.705612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.546333, 16.229507, 17.796137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275763, 16.002363, 17.608528>,  <16.113420, 15.866076, 17.495962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275763, 16.002363, 17.608528>,  <16.546333, 16.229507, 17.796137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275763, 16.002363, 17.608528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646677, -0.153134, -0.747234,
		0.352500, -0.808755, 0.470806,
		-0.676426, -0.567860, -0.469024,
		16.072834, 15.832006, 17.467821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870367, 15.517944, 17.687954>,  <16.546333, 16.229507, 17.796137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870367, 15.517944, 17.687954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577263, 15.520542, 17.415771>,  <16.401400, 15.522101, 17.252462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577263, 15.520542, 17.415771>,  <16.870367, 15.517944, 17.687954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.577263, 15.520542, 17.415771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649060, -0.293699, -0.701757,
		-0.204408, -0.955876, 0.210995,
		-0.732762, 0.006496, -0.680455,
		16.357435, 15.522491, 17.211636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015842, 14.887705, 17.325176>,  <16.870367, 15.517944, 17.687954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015842, 14.887705, 17.325176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.776045, 15.101621, 17.086981>,  <16.632166, 15.229970, 16.944063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.776045, 15.101621, 17.086981>,  <17.015842, 14.887705, 17.325176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.776045, 15.101621, 17.086981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601147, -0.190348, -0.776137,
		-0.528420, -0.823267, -0.207375,
		-0.599495, 0.534789, -0.595488,
		16.596197, 15.262057, 16.908335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649025, 14.435507, 16.772297>,  <17.015842, 14.887705, 17.325176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.649025, 14.435507, 16.772297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690393, 14.812217, 16.644318>,  <16.715214, 15.038242, 16.567530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.690393, 14.812217, 16.644318>,  <16.649025, 14.435507, 16.772297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690393, 14.812217, 16.644318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323316, -0.336035, -0.884617,
		-0.940623, -0.011956, -0.339244,
		0.103421, 0.941774, -0.319948,
		16.721420, 15.094748, 16.548334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690685, 14.348119, 16.000637>,  <16.649025, 14.435507, 16.772297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690685, 14.348119, 16.000637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793119, 14.732297, 16.044392>,  <16.854580, 14.962804, 16.070644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793119, 14.732297, 16.044392>,  <16.690685, 14.348119, 16.000637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793119, 14.732297, 16.044392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412378, -0.006200, -0.910992,
		-0.874280, 0.278398, -0.397654,
		0.256084, 0.960446, 0.109384,
		16.869944, 15.020431, 16.077208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448097, 14.676921, 15.397795>,  <16.690685, 14.348119, 16.000637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448097, 14.676921, 15.397795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.714670, 14.933147, 15.550396>,  <16.874615, 15.086884, 15.641956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.714670, 14.933147, 15.550396>,  <16.448097, 14.676921, 15.397795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.714670, 14.933147, 15.550396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353681, 0.178837, -0.918111,
		-0.656337, 0.746789, -0.107373,
		0.666432, 0.640566, 0.381502,
		16.914600, 15.125317, 15.664846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.367861, 15.249082, 14.935038>,  <16.448097, 14.676921, 15.397795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.367861, 15.249082, 14.935038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726784, 15.274292, 15.109793>,  <16.942137, 15.289418, 15.214645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726784, 15.274292, 15.109793>,  <16.367861, 15.249082, 14.935038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726784, 15.274292, 15.109793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400963, 0.297505, -0.866441,
		-0.184585, 0.952638, 0.241682,
		0.897305, 0.063027, 0.436888,
		16.995975, 15.293200, 15.240859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726761, 15.824509, 14.580674>,  <16.367861, 15.249082, 14.935038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726761, 15.824509, 14.580674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.037733, 15.659327, 14.770439>,  <17.224318, 15.560218, 14.884298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.037733, 15.659327, 14.770439>,  <16.726761, 15.824509, 14.580674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037733, 15.659327, 14.770439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563956, 0.123711, -0.816486,
		0.278482, 0.902311, 0.329065,
		0.777433, -0.412954, 0.474412,
		17.270964, 15.535440, 14.912763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284826, 16.366528, 14.547209>,  <16.726761, 15.824509, 14.580674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284826, 16.366528, 14.547209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421623, 15.992704, 14.586490>,  <17.503702, 15.768411, 14.610058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421623, 15.992704, 14.586490>,  <17.284826, 16.366528, 14.547209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421623, 15.992704, 14.586490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592734, 0.133446, -0.794266,
		0.729182, 0.329841, 0.599581,
		0.341994, -0.934557, 0.098201,
		17.524221, 15.712337, 14.615950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013651, 16.344755, 14.669437>,  <17.284826, 16.366528, 14.547209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013651, 16.344755, 14.669437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954973, 15.974037, 14.531144>,  <17.919767, 15.751606, 14.448168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954973, 15.974037, 14.531144>,  <18.013651, 16.344755, 14.669437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954973, 15.974037, 14.531144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765695, 0.114888, -0.632860,
		0.626252, -0.357562, 0.692790,
		-0.146693, -0.926796, -0.345733,
		17.910965, 15.695998, 14.427424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665264, 15.951784, 14.470685>,  <18.013651, 16.344755, 14.669437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665264, 15.951784, 14.470685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.414574, 15.725394, 14.256438>,  <18.264160, 15.589561, 14.127890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.414574, 15.725394, 14.256438>,  <18.665264, 15.951784, 14.470685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.414574, 15.725394, 14.256438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679963, -0.061475, -0.730665,
		0.380611, -0.822127, 0.423370,
		-0.626727, -0.565975, -0.535618,
		18.226555, 15.555602, 14.095753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163105, 15.357811, 14.187508>,  <18.665264, 15.951784, 14.470685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163105, 15.357811, 14.187508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824829, 15.321611, 13.977129>,  <18.621864, 15.299891, 13.850902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824829, 15.321611, 13.977129>,  <19.163105, 15.357811, 14.187508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.824829, 15.321611, 13.977129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510985, -0.421634, -0.749079,
		-0.153965, -0.902239, 0.402815,
		-0.845688, -0.090500, -0.525947,
		18.571123, 15.294461, 13.819345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311502, 14.768732, 13.769514>,  <19.163105, 15.357811, 14.187508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311502, 14.768732, 13.769514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.016651, 14.970612, 13.589771>,  <18.839741, 15.091740, 13.481926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.016651, 14.970612, 13.589771>,  <19.311502, 14.768732, 13.769514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.016651, 14.970612, 13.589771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463160, -0.106874, -0.879807,
		-0.492063, -0.856654, -0.154977,
		-0.737128, 0.504699, -0.449357,
		18.795513, 15.122022, 13.454964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.118319, 14.473980, 13.040550>,  <19.311502, 14.768732, 13.769514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.118319, 14.473980, 13.040550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068838, 14.870559, 13.057191>,  <19.039150, 15.108506, 13.067176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068838, 14.870559, 13.057191>,  <19.118319, 14.473980, 13.040550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068838, 14.870559, 13.057191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588101, 0.107016, -0.801676,
		-0.799272, -0.074702, -0.596309,
		-0.123702, 0.991447, 0.041603,
		19.031727, 15.167993, 13.069672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949387, 14.625849, 12.357739>,  <19.118319, 14.473980, 13.040550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949387, 14.625849, 12.357739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.140932, 14.918091, 12.552431>,  <19.255859, 15.093436, 12.669247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.140932, 14.918091, 12.552431>,  <18.949387, 14.625849, 12.357739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.140932, 14.918091, 12.552431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514274, 0.215882, -0.830011,
		-0.711487, 0.647773, -0.272354,
		0.478863, 0.730606, 0.486730,
		19.284592, 15.137273, 12.698450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010082, 15.358994, 11.873798>,  <18.949387, 14.625849, 12.357739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.010082, 15.358994, 11.873798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311979, 15.348037, 12.135978>,  <19.493118, 15.341463, 12.293285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311979, 15.348037, 12.135978>,  <19.010082, 15.358994, 11.873798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311979, 15.348037, 12.135978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627139, 0.323322, -0.708632,
		-0.192510, 0.945893, 0.261203,
		0.754743, -0.027392, 0.655449,
		19.538403, 15.339819, 12.332612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284948, 16.016802, 11.913869>,  <19.010082, 15.358994, 11.873798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284948, 16.016802, 11.913869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577240, 15.760065, 12.006882>,  <19.752615, 15.606023, 12.062690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577240, 15.760065, 12.006882>,  <19.284948, 16.016802, 11.913869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.577240, 15.760065, 12.006882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612749, 0.466505, -0.637896,
		0.300952, 0.608614, 0.734178,
		0.730730, -0.641843, 0.232532,
		19.796459, 15.567513, 12.076641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.833561, 16.290855, 12.388599>,  <19.284948, 16.016802, 11.913869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.833561, 16.290855, 12.388599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004389, 16.018850, 12.150207>,  <20.106886, 15.855647, 12.007171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004389, 16.018850, 12.150207>,  <19.833561, 16.290855, 12.388599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004389, 16.018850, 12.150207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702867, 0.664308, -0.254309,
		0.568849, -0.310288, 0.761664,
		0.427071, -0.680012, -0.595982,
		20.132509, 15.814847, 11.971412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.587702, 16.179150, 12.600842>,  <19.833561, 16.290855, 12.388599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.587702, 16.179150, 12.600842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.558931, 16.092661, 12.211365>,  <20.541670, 16.040768, 11.977678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.558931, 16.092661, 12.211365>,  <20.587702, 16.179150, 12.600842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558931, 16.092661, 12.211365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866046, 0.470715, -0.168501,
		0.494764, -0.855381, 0.153401,
		-0.071924, -0.216220, -0.973692,
		20.537354, 16.027796, 11.919257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121040, 15.772976, 12.446400>,  <20.587702, 16.179150, 12.600842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121040, 15.772976, 12.446400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008493, 15.994584, 12.132994>,  <20.940966, 16.127548, 11.944950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008493, 15.994584, 12.132994>,  <21.121040, 15.772976, 12.446400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.008493, 15.994584, 12.132994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935609, 0.339821, -0.095698,
		0.213236, -0.759988, -0.613961,
		-0.281367, 0.554021, -0.783514,
		20.924084, 16.160789, 11.897940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536697, 15.666947, 11.912230>,  <21.121040, 15.772976, 12.446400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536697, 15.666947, 11.912230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375446, 16.031771, 11.942265>,  <21.278696, 16.250664, 11.960286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375446, 16.031771, 11.942265>,  <21.536697, 15.666947, 11.912230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375446, 16.031771, 11.942265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915049, 0.402904, 0.018802,
		-0.013105, 0.076290, -0.997000,
		-0.403129, 0.912057, 0.075089,
		21.254507, 16.305387, 11.964791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.234974, 15.370964, 12.127027>,  <21.536697, 15.666947, 11.912230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.234974, 15.370964, 12.127027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.050823, 15.163630, 11.838753>,  <21.940332, 15.039230, 11.665789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.050823, 15.163630, 11.838753>,  <22.234974, 15.370964, 12.127027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.050823, 15.163630, 11.838753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602562, 0.413710, -0.682468,
		0.651901, -0.748448, 0.121867,
		-0.460374, -0.518334, -0.720684,
		21.912710, 15.008130, 11.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717308, 14.939642, 11.714534>,  <22.234974, 15.370964, 12.127027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717308, 14.939642, 11.714534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405025, 15.021020, 11.478193>,  <22.217655, 15.069847, 11.336389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405025, 15.021020, 11.478193>,  <22.717308, 14.939642, 11.714534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405025, 15.021020, 11.478193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618489, 0.386616, -0.684105,
		0.089253, -0.899521, -0.427664,
		-0.780708, 0.203447, -0.590851,
		22.170813, 15.082054, 11.300938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.861900, 14.743313, 11.017907>,  <22.717308, 14.939642, 11.714534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.861900, 14.743313, 11.017907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575411, 15.016416, 10.960121>,  <22.403517, 15.180277, 10.925449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575411, 15.016416, 10.960121>,  <22.861900, 14.743313, 11.017907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575411, 15.016416, 10.960121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529069, 0.396225, -0.750394,
		-0.455095, -0.613881, -0.645010,
		-0.716222, 0.682756, -0.144466,
		22.360544, 15.221242, 10.916781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.895494, 14.862069, 10.334865>,  <22.861900, 14.743313, 11.017907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.895494, 14.862069, 10.334865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.643209, 15.158793, 10.426008>,  <22.491838, 15.336828, 10.480695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.643209, 15.158793, 10.426008>,  <22.895494, 14.862069, 10.334865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.643209, 15.158793, 10.426008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457012, 0.592373, -0.663502,
		-0.627170, -0.314344, -0.712633,
		-0.630712, 0.741810, 0.227859,
		22.453997, 15.381336, 10.494366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696898, 15.149489, 9.759812>,  <22.895494, 14.862069, 10.334865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696898, 15.149489, 9.759812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.622025, 15.445098, 10.018674>,  <22.577101, 15.622463, 10.173991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.622025, 15.445098, 10.018674>,  <22.696898, 15.149489, 9.759812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.622025, 15.445098, 10.018674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367812, 0.663603, -0.651418,
		-0.910866, 0.116096, -0.396037,
		-0.187184, 0.739022, 0.647155,
		22.565870, 15.666804, 10.212820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.341169, 15.565912, 9.324348>,  <22.696898, 15.149489, 9.759812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.341169, 15.565912, 9.324348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.466719, 15.798611, 9.624496>,  <22.542048, 15.938230, 9.804585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.466719, 15.798611, 9.624496>,  <22.341169, 15.565912, 9.324348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.466719, 15.798611, 9.624496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446312, 0.607151, -0.657399,
		-0.838027, 0.541239, -0.069072,
		0.313873, 0.581746, 0.750370,
		22.560881, 15.973135, 9.849607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.136274, 16.219633, 9.116249>,  <22.341169, 15.565912, 9.324348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.136274, 16.219633, 9.116249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427221, 16.292381, 9.380933>,  <22.601789, 16.336029, 9.539743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427221, 16.292381, 9.380933>,  <22.136274, 16.219633, 9.116249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.427221, 16.292381, 9.380933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421934, 0.641929, -0.640234,
		-0.541209, 0.744883, 0.390182,
		0.727368, 0.181869, 0.661709,
		22.645432, 16.346943, 9.579446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.217352, 16.943167, 8.918964>,  <22.136274, 16.219633, 9.116249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.217352, 16.943167, 8.918964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.529791, 16.827257, 9.140203>,  <22.717255, 16.757711, 9.272947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.529791, 16.827257, 9.140203>,  <22.217352, 16.943167, 8.918964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.529791, 16.827257, 9.140203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588010, 0.639374, -0.495424,
		-0.210075, 0.712202, 0.669804,
		0.781097, -0.289775, 0.553099,
		22.764120, 16.740324, 9.306133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.622475, 17.485477, 9.049330>,  <22.217352, 16.943167, 8.918964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.622475, 17.485477, 9.049330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908466, 17.214426, 9.118175>,  <23.080061, 17.051794, 9.159481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908466, 17.214426, 9.118175>,  <22.622475, 17.485477, 9.049330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.908466, 17.214426, 9.118175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633730, 0.524168, -0.568888,
		0.295281, 0.515815, 0.804204,
		0.714979, -0.677630, 0.172111,
		23.122959, 17.011137, 9.169808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.135221, 17.883635, 9.377666>,  <22.622475, 17.485477, 9.049330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.135221, 17.883635, 9.377666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.280499, 17.548746, 9.214128>,  <23.367664, 17.347813, 9.116007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.280499, 17.548746, 9.214128>,  <23.135221, 17.883635, 9.377666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.280499, 17.548746, 9.214128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672558, 0.539257, -0.506821,
		0.644792, -0.090896, 0.758934,
		0.363192, -0.837222, -0.408842,
		23.389456, 17.297579, 9.091475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.806297, 17.911602, 9.429432>,  <23.135221, 17.883635, 9.377666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.806297, 17.911602, 9.429432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.759768, 17.647804, 9.132370>,  <23.731850, 17.489525, 8.954133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.759768, 17.647804, 9.132370>,  <23.806297, 17.911602, 9.429432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.759768, 17.647804, 9.132370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749200, 0.432628, -0.501530,
		0.652049, -0.614737, 0.443769,
		-0.116322, -0.659494, -0.742655,
		23.724871, 17.449957, 8.909574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532017, 17.745052, 9.190450>,  <23.806297, 17.911602, 9.429432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532017, 17.745052, 9.190450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267513, 17.663284, 8.901742>,  <24.108812, 17.614223, 8.728518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267513, 17.663284, 8.901742>,  <24.532017, 17.745052, 9.190450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267513, 17.663284, 8.901742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580064, 0.470767, -0.664758,
		0.475692, -0.858244, -0.192703,
		-0.661243, -0.204440, -0.721777,
		24.069136, 17.601959, 8.685211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870907, 17.884296, 8.689644>,  <24.532017, 17.745052, 9.190450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870907, 17.884296, 8.689644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529305, 17.845987, 8.485096>,  <24.324343, 17.823002, 8.362368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529305, 17.845987, 8.485096>,  <24.870907, 17.884296, 8.689644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529305, 17.845987, 8.485096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385147, 0.544407, -0.745173,
		0.349760, -0.833336, -0.428041,
		-0.854008, -0.095773, -0.511369,
		24.273102, 17.817255, 8.331685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063568, 17.604591, 8.031376>,  <24.870907, 17.884296, 8.689644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063568, 17.604591, 8.031376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724480, 17.812908, 7.991080>,  <24.521027, 17.937899, 7.966903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724480, 17.812908, 7.991080>,  <25.063568, 17.604591, 8.031376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724480, 17.812908, 7.991080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461991, 0.631570, -0.622642,
		-0.260643, -0.574367, -0.775995,
		-0.847720, 0.520790, -0.100738,
		24.470163, 17.969145, 7.960859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052801, 17.619522, 7.308822>,  <25.063568, 17.604591, 8.031376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052801, 17.619522, 7.308822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822718, 17.917673, 7.443610>,  <24.684668, 18.096563, 7.524482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822718, 17.917673, 7.443610>,  <25.052801, 17.619522, 7.308822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822718, 17.917673, 7.443610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278756, 0.565896, -0.775924,
		-0.769045, -0.352386, -0.533286,
		-0.575209, 0.745377, 0.336969,
		24.650154, 18.141287, 7.544701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738197, 17.837297, 6.654239>,  <25.052801, 17.619522, 7.308822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738197, 17.837297, 6.654239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702246, 18.134003, 6.920084>,  <24.680676, 18.312027, 7.079590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702246, 18.134003, 6.920084>,  <24.738197, 17.837297, 6.654239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702246, 18.134003, 6.920084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530337, 0.600480, -0.598470,
		-0.843009, 0.298679, -0.447355,
		-0.089877, 0.741765, 0.664611,
		24.675283, 18.356533, 7.119467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.526632, 18.454897, 6.274008>,  <24.738197, 17.837297, 6.654239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.526632, 18.454897, 6.274008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677027, 18.605007, 6.612901>,  <24.767263, 18.695074, 6.816236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677027, 18.605007, 6.612901>,  <24.526632, 18.454897, 6.274008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677027, 18.605007, 6.612901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408760, 0.753380, -0.515106,
		-0.831595, 0.539987, 0.129862,
		0.375986, 0.375277, 0.847232,
		24.789822, 18.717590, 6.867070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.434971, 19.181866, 6.130922>,  <24.526632, 18.454897, 6.274008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.434971, 19.181866, 6.130922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691622, 19.139853, 6.434838>,  <24.845613, 19.114645, 6.617188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.691622, 19.139853, 6.434838>,  <24.434971, 19.181866, 6.130922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691622, 19.139853, 6.434838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578179, 0.717142, -0.389123,
		-0.504005, 0.688967, 0.520867,
		0.641629, -0.105035, 0.759790,
		24.884109, 19.108341, 6.662775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640100, 19.858747, 6.317932>,  <24.434971, 19.181866, 6.130922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640100, 19.858747, 6.317932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932119, 19.631817, 6.470338>,  <25.107330, 19.495659, 6.561782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.932119, 19.631817, 6.470338>,  <24.640100, 19.858747, 6.317932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.932119, 19.631817, 6.470338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677517, 0.673818, -0.294856,
		-0.089456, 0.473404, 0.876291,
		0.730047, -0.567325, 0.381016,
		25.151133, 19.461618, 6.584643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150230, 20.234638, 6.693666>,  <24.640100, 19.858747, 6.317932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150230, 20.234638, 6.693666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382971, 19.915661, 6.629751>,  <25.522615, 19.724274, 6.591402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382971, 19.915661, 6.629751>,  <25.150230, 20.234638, 6.693666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382971, 19.915661, 6.629751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667783, 0.580583, -0.465822,
		0.464236, 0.164337, 0.870332,
		0.581851, -0.797444, -0.159786,
		25.557526, 19.676428, 6.581815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875658, 20.423075, 6.822180>,  <25.150230, 20.234638, 6.693666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875658, 20.423075, 6.822180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881290, 20.105049, 6.579636>,  <25.884670, 19.914234, 6.434110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881290, 20.105049, 6.579636>,  <25.875658, 20.423075, 6.822180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881290, 20.105049, 6.579636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561082, 0.508229, -0.653368,
		0.827640, -0.331017, 0.453254,
		0.014081, -0.795066, -0.606359,
		25.885515, 19.866529, 6.397728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546116, 20.333679, 6.603566>,  <25.875658, 20.423075, 6.822180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546116, 20.333679, 6.603566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358923, 20.124256, 6.318785>,  <26.246607, 19.998602, 6.147916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358923, 20.124256, 6.318785>,  <26.546116, 20.333679, 6.603566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358923, 20.124256, 6.318785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655130, 0.335162, -0.677105,
		0.593125, -0.783295, 0.186149,
		-0.467983, -0.523560, -0.711953,
		26.218529, 19.967188, 6.105199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582453, 20.968493, 6.149027>,  <26.546116, 20.333679, 6.603566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582453, 20.968493, 6.149027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493561, 20.618080, 5.977828>,  <26.440226, 20.407833, 5.875108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493561, 20.618080, 5.977828>,  <26.582453, 20.968493, 6.149027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493561, 20.618080, 5.977828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952577, -0.101491, -0.286875,
		0.207874, -0.471454, 0.857041,
		-0.222230, -0.876031, -0.427999,
		26.426891, 20.355270, 5.849429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254541, 20.778830, 6.255511>,  <26.582453, 20.968493, 6.149027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254541, 20.778830, 6.255511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119535, 20.509600, 5.992284>,  <27.038532, 20.348061, 5.834348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119535, 20.509600, 5.992284>,  <27.254541, 20.778830, 6.255511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119535, 20.509600, 5.992284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939542, -0.197920, -0.279444,
		0.057842, -0.712598, 0.699184,
		-0.337514, -0.673076, -0.658068,
		27.018282, 20.307676, 5.794864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427309, 20.136036, 6.429266>,  <27.254541, 20.778830, 6.255511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427309, 20.136036, 6.429266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359961, 20.129686, 6.035028>,  <27.319551, 20.125875, 5.798485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359961, 20.129686, 6.035028>,  <27.427309, 20.136036, 6.429266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359961, 20.129686, 6.035028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774349, -0.620831, -0.122282,
		-0.609948, -0.783784, 0.116821,
		-0.168369, -0.015874, -0.985596,
		27.309450, 20.124924, 5.739349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463413, 19.467924, 6.218588>,  <27.427309, 20.136036, 6.429266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463413, 19.467924, 6.218588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524250, 19.707958, 5.904451>,  <27.560751, 19.851978, 5.715969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524250, 19.707958, 5.904451>,  <27.463413, 19.467924, 6.218588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524250, 19.707958, 5.904451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849986, -0.484898, -0.205905,
		-0.504372, -0.636215, -0.583814,
		0.152091, 0.600087, -0.785344,
		27.569878, 19.887983, 5.668848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515593, 19.123440, 5.532660>,  <27.463413, 19.467924, 6.218588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515593, 19.123440, 5.532660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739428, 19.454939, 5.535043>,  <27.873730, 19.653839, 5.536472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739428, 19.454939, 5.535043>,  <27.515593, 19.123440, 5.532660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739428, 19.454939, 5.535043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791236, -0.532094, -0.301365,
		-0.246586, 0.173354, -0.953490,
		0.559590, 0.828748, 0.005957,
		27.907305, 19.703564, 5.536830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225828, 18.907284, 5.608515>,  <27.515593, 19.123440, 5.532660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225828, 18.907284, 5.608515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304104, 18.880112, 5.999839>,  <28.351068, 18.863808, 6.234634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304104, 18.880112, 5.999839>,  <28.225828, 18.907284, 5.608515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304104, 18.880112, 5.999839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186944, -0.981888, -0.030786,
		0.962683, -0.176865, -0.204843,
		0.195688, -0.067931, 0.978310,
		28.362810, 18.859732, 6.293333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591223, 18.325270, 5.757509>,  <28.225828, 18.907284, 5.608515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591223, 18.325270, 5.757509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349874, 18.446474, 6.052569>,  <28.205067, 18.519196, 6.229606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349874, 18.446474, 6.052569>,  <28.591223, 18.325270, 5.757509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349874, 18.446474, 6.052569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549109, -0.828643, -0.108763,
		0.578294, -0.470676, 0.666363,
		-0.603369, 0.303010, 0.737652,
		28.168863, 18.537376, 6.273865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309797, 17.993013, 6.389854>,  <28.591223, 18.325270, 5.757509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309797, 17.993013, 6.389854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483223, 17.632614, 6.383849>,  <28.587278, 17.416374, 6.380246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483223, 17.632614, 6.383849>,  <28.309797, 17.993013, 6.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483223, 17.632614, 6.383849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838167, -0.409333, 0.360447,
		-0.330907, -0.143694, -0.932659,
		0.433562, -0.900999, -0.015012,
		28.613291, 17.362314, 6.379345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740583, 17.449461, 6.161222>,  <28.309797, 17.993013, 6.389854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740583, 17.449461, 6.161222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032129, 17.210430, 6.294883>,  <28.207058, 17.067011, 6.375080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032129, 17.210430, 6.294883>,  <27.740583, 17.449461, 6.161222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032129, 17.210430, 6.294883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679791, -0.689725, 0.249327,
		0.081481, -0.408879, -0.908944,
		0.728866, -0.597576, 0.334152,
		28.250790, 17.031157, 6.395129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677692, 16.800234, 5.816706>,  <27.740583, 17.449461, 6.161222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677692, 16.800234, 5.816706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881741, 16.737606, 6.154999>,  <28.004169, 16.700029, 6.357975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881741, 16.737606, 6.154999>,  <27.677692, 16.800234, 5.816706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881741, 16.737606, 6.154999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549972, -0.815385, 0.180773,
		0.661294, -0.557345, -0.502053,
		0.510120, -0.156571, 0.845733,
		28.034777, 16.690636, 6.408719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756737, 16.108894, 5.880844>,  <27.677692, 16.800234, 5.816706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756737, 16.108894, 5.880844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801311, 16.228231, 6.260016>,  <27.828056, 16.299833, 6.487520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801311, 16.228231, 6.260016>,  <27.756737, 16.108894, 5.880844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801311, 16.228231, 6.260016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745353, -0.605810, 0.278288,
		0.657291, -0.737554, 0.154862,
		0.111435, 0.298343, 0.947931,
		27.834742, 16.317734, 6.544396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657665, 15.491152, 6.299206>,  <27.756737, 16.108894, 5.880844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657665, 15.491152, 6.299206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631426, 15.791633, 6.561928>,  <27.615683, 15.971921, 6.719562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631426, 15.791633, 6.561928>,  <27.657665, 15.491152, 6.299206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631426, 15.791633, 6.561928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589998, -0.560039, 0.581600,
		0.804735, -0.349360, 0.479947,
		-0.065601, 0.751202, 0.656805,
		27.611746, 16.016993, 6.758970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562241, 15.158193, 6.860499>,  <27.657665, 15.491152, 6.299206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562241, 15.158193, 6.860499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446007, 15.525126, 6.969357>,  <27.376266, 15.745285, 7.034672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446007, 15.525126, 6.969357>,  <27.562241, 15.158193, 6.860499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446007, 15.525126, 6.969357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646588, -0.397907, 0.650841,
		0.705326, 0.013160, 0.708761,
		-0.290586, 0.917331, 0.272145,
		27.358831, 15.800325, 7.051001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785675, 15.280338, 7.560121>,  <27.562241, 15.158193, 6.860499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785675, 15.280338, 7.560121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464500, 15.493932, 7.454177>,  <27.271795, 15.622088, 7.390611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464500, 15.493932, 7.454177>,  <27.785675, 15.280338, 7.560121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464500, 15.493932, 7.454177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510986, -0.387867, 0.767107,
		0.306893, 0.751279, 0.584292,
		-0.802938, 0.533984, -0.264859,
		27.223619, 15.654127, 7.374719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633106, 15.584733, 8.181691>,  <27.785675, 15.280338, 7.560121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633106, 15.584733, 8.181691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305956, 15.583351, 7.951537>,  <27.109667, 15.582521, 7.813444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305956, 15.583351, 7.951537>,  <27.633106, 15.584733, 8.181691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305956, 15.583351, 7.951537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572484, -0.095625, 0.814321,
		-0.057835, 0.995411, 0.076231,
		-0.817874, -0.003455, -0.575387,
		27.060595, 15.582314, 7.778921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268398, 15.919269, 8.599787>,  <27.633106, 15.584733, 8.181691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268398, 15.919269, 8.599787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018055, 15.747284, 8.339499>,  <26.867849, 15.644093, 8.183326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018055, 15.747284, 8.339499>,  <27.268398, 15.919269, 8.599787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018055, 15.747284, 8.339499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666454, -0.138578, 0.732554,
		-0.405146, 0.892148, -0.199820,
		-0.625856, -0.429962, -0.650720,
		26.830297, 15.618296, 8.144282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673168, 16.362009, 8.584318>,  <27.268398, 15.919269, 8.599787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673168, 16.362009, 8.584318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544369, 16.003599, 8.462035>,  <26.467089, 15.788553, 8.388665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544369, 16.003599, 8.462035>,  <26.673168, 16.362009, 8.584318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544369, 16.003599, 8.462035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755064, 0.048252, 0.653873,
		-0.571136, 0.441374, -0.692093,
		-0.321997, -0.896025, -0.305708,
		26.447769, 15.734792, 8.370323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914888, 16.364777, 8.657257>,  <26.673168, 16.362009, 8.584318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914888, 16.364777, 8.657257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016491, 15.977917, 8.653110>,  <26.077452, 15.745801, 8.650621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016491, 15.977917, 8.653110>,  <25.914888, 16.364777, 8.657257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016491, 15.977917, 8.653110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702724, -0.191903, 0.685093,
		-0.664576, -0.166730, -0.728382,
		0.254004, -0.967147, -0.010368,
		26.092691, 15.687773, 8.649999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319633, 16.020267, 8.602949>,  <25.914888, 16.364777, 8.657257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319633, 16.020267, 8.602949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561226, 15.718709, 8.706368>,  <25.706181, 15.537773, 8.768420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561226, 15.718709, 8.706368>,  <25.319633, 16.020267, 8.602949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561226, 15.718709, 8.706368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735268, -0.401880, 0.545778,
		-0.307555, -0.519742, -0.797044,
		0.603980, -0.753897, 0.258549,
		25.742420, 15.492539, 8.783933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917261, 15.412322, 8.624911>,  <25.319633, 16.020267, 8.602949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917261, 15.412322, 8.624911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234020, 15.341532, 8.858689>,  <25.424076, 15.299057, 8.998956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234020, 15.341532, 8.858689>,  <24.917261, 15.412322, 8.624911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234020, 15.341532, 8.858689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603893, -0.368973, 0.706521,
		0.090607, -0.912436, -0.399064,
		0.791899, -0.176976, 0.584445,
		25.471590, 15.288439, 9.034022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.808720, 14.715844, 8.899647>,  <24.917261, 15.412322, 8.624911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.808720, 14.715844, 8.899647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075628, 14.882893, 9.146334>,  <25.235773, 14.983122, 9.294346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075628, 14.882893, 9.146334>,  <24.808720, 14.715844, 8.899647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075628, 14.882893, 9.146334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422383, -0.469819, 0.775153,
		0.613467, -0.777729, -0.137100,
		0.667271, 0.417622, 0.616718,
		25.275810, 15.008179, 9.331349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036503, 14.181488, 9.384521>,  <24.808720, 14.715844, 8.899647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036503, 14.181488, 9.384521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144669, 14.526001, 9.556600>,  <25.209568, 14.732709, 9.659847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144669, 14.526001, 9.556600>,  <25.036503, 14.181488, 9.384521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144669, 14.526001, 9.556600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386822, -0.311990, 0.867773,
		0.881615, -0.401068, 0.248797,
		0.270414, 0.861282, 0.430197,
		25.225792, 14.784386, 9.685658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567570, 14.044023, 10.029257>,  <25.036503, 14.181488, 9.384521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567570, 14.044023, 10.029257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368664, 14.389304, 10.064151>,  <25.249321, 14.596473, 10.085087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368664, 14.389304, 10.064151>,  <25.567570, 14.044023, 10.029257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368664, 14.389304, 10.064151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243880, -0.235563, 0.940762,
		0.832618, 0.446531, 0.327655,
		-0.497263, 0.863203, 0.087234,
		25.219484, 14.648265, 10.090322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905203, 14.236850, 10.533720>,  <25.567570, 14.044023, 10.029257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905203, 14.236850, 10.533720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580906, 14.470979, 10.529815>,  <25.386328, 14.611456, 10.527472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580906, 14.470979, 10.529815>,  <25.905203, 14.236850, 10.533720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580906, 14.470979, 10.529815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142933, -0.181751, 0.972901,
		0.567685, 0.790168, 0.231015,
		-0.810743, 0.585321, -0.009763,
		25.337683, 14.646575, 10.526886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967627, 14.538881, 11.210372>,  <25.905203, 14.236850, 10.533720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967627, 14.538881, 11.210372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589643, 14.610802, 11.101029>,  <25.362854, 14.653954, 11.035424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589643, 14.610802, 11.101029>,  <25.967627, 14.538881, 11.210372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589643, 14.610802, 11.101029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289379, -0.069416, 0.954694,
		0.152679, 0.981251, 0.117626,
		-0.944960, 0.179801, -0.273355,
		25.306156, 14.664742, 11.019023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251118, 15.021834, 11.622031>,  <25.967627, 14.538881, 11.210372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251118, 15.021834, 11.622031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534243, 14.768881, 11.496115>,  <26.704117, 14.617108, 11.420565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534243, 14.768881, 11.496115>,  <26.251118, 15.021834, 11.622031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534243, 14.768881, 11.496115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437430, -0.042469, -0.898249,
		0.554670, 0.773490, -0.306684,
		0.707811, -0.632384, -0.314791,
		26.746586, 14.579165, 11.401677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450363, 14.874185, 12.256516>,  <26.251118, 15.021834, 11.622031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450363, 14.874185, 12.256516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299454, 14.591651, 12.496101>,  <26.208908, 14.422131, 12.639853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299454, 14.591651, 12.496101>,  <26.450363, 14.874185, 12.256516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299454, 14.591651, 12.496101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181475, 0.577834, 0.795723,
		-0.908147, 0.408902, -0.089819,
		-0.377273, -0.706334, 0.598964,
		26.186272, 14.379751, 12.675791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875656, 15.036678, 12.453965>,  <26.450363, 14.874185, 12.256516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875656, 15.036678, 12.453965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044201, 14.811599, 12.738450>,  <26.145327, 14.676551, 12.909142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044201, 14.811599, 12.738450>,  <25.875656, 15.036678, 12.453965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044201, 14.811599, 12.738450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168740, 0.721891, 0.671118,
		-0.891057, -0.402793, 0.209226,
		0.421360, -0.562700, 0.711213,
		26.170609, 14.642789, 12.951814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393587, 15.076741, 13.045773>,  <25.875656, 15.036678, 12.453965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393587, 15.076741, 13.045773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771347, 14.992904, 13.147110>,  <25.998003, 14.942601, 13.207912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771347, 14.992904, 13.147110>,  <25.393587, 15.076741, 13.045773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771347, 14.992904, 13.147110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101392, 0.547311, 0.830765,
		-0.312781, -0.810259, 0.495629,
		0.944398, -0.209595, 0.253343,
		26.054667, 14.930025, 13.223113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240757, 15.000574, 13.850332>,  <25.393587, 15.076741, 13.045773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240757, 15.000574, 13.850332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631481, 15.038216, 13.773409>,  <25.865915, 15.060801, 13.727255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631481, 15.038216, 13.773409>,  <25.240757, 15.000574, 13.850332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631481, 15.038216, 13.773409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110494, 0.547780, 0.829294,
		0.183382, -0.831313, 0.524680,
		0.976812, 0.094104, -0.192308,
		25.924524, 15.066447, 13.715716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568689, 14.803509, 14.521118>,  <25.240757, 15.000574, 13.850332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568689, 14.803509, 14.521118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720566, 15.076888, 14.271725>,  <25.811691, 15.240916, 14.122088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720566, 15.076888, 14.271725>,  <25.568689, 14.803509, 14.521118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720566, 15.076888, 14.271725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038306, 0.661762, 0.748735,
		0.924320, -0.308171, 0.225084,
		0.379690, 0.683449, -0.623485,
		25.834473, 15.281922, 14.084680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236284, 14.973804, 14.841084>,  <25.568689, 14.803509, 14.521118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236284, 14.973804, 14.841084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029388, 15.237858, 14.623209>,  <25.905251, 15.396290, 14.492483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029388, 15.237858, 14.623209>,  <26.236284, 14.973804, 14.841084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029388, 15.237858, 14.623209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028865, 0.622620, 0.781992,
		0.855354, 0.420200, -0.302989,
		-0.517240, 0.660134, -0.544689,
		25.874216, 15.435898, 14.459803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895145, 15.205336, 14.707523>,  <26.236284, 14.973804, 14.841084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895145, 15.205336, 14.707523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840899, 14.854854, 14.892509>,  <26.808352, 14.644565, 15.003501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840899, 14.854854, 14.892509>,  <26.895145, 15.205336, 14.707523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840899, 14.854854, 14.892509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927129, 0.052354, 0.371067,
		-0.349342, 0.479088, 0.805255,
		-0.135616, -0.876204, 0.462466,
		26.800213, 14.591992, 15.031249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.288630, 19.711624, 20.731976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.037677, 19.400301, 20.721962>,  <11.887104, 19.213507, 20.715954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.037677, 19.400301, 20.721962>,  <12.288630, 19.711624, 20.731976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.037677, 19.400301, 20.721962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423490, -0.314041, -0.849726,
		0.653486, -0.543707, 0.526630,
		-0.627385, -0.778307, -0.025033,
		11.849462, 19.166809, 20.714453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611917, 19.071077, 20.379669>,  <12.288630, 19.711624, 20.731976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611917, 19.071077, 20.379669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.231932, 18.947092, 20.364212>,  <12.003941, 18.872700, 20.354939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.231932, 18.947092, 20.364212>,  <12.611917, 19.071077, 20.379669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.231932, 18.947092, 20.364212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202894, -0.518245, -0.830817,
		0.237498, -0.797085, 0.555203,
		-0.949963, -0.309965, -0.038642,
		11.946943, 18.854103, 20.352619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631264, 18.415388, 20.133560>,  <12.611917, 19.071077, 20.379669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.631264, 18.415388, 20.133560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.246648, 18.501415, 20.065224>,  <12.015878, 18.553032, 20.024221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.246648, 18.501415, 20.065224>,  <12.631264, 18.415388, 20.133560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.246648, 18.501415, 20.065224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034613, -0.522155, -0.852148,
		-0.272473, -0.825288, 0.494629,
		-0.961541, 0.215067, -0.170839,
		11.958185, 18.565935, 20.013971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410401, 17.823675, 19.639627>,  <12.631264, 18.415388, 20.133560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410401, 17.823675, 19.639627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.104980, 18.080208, 19.609478>,  <11.921728, 18.234127, 19.591389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.104980, 18.080208, 19.609478>,  <12.410401, 17.823675, 19.639627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104980, 18.080208, 19.609478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165071, -0.306696, -0.937384,
		-0.624291, -0.703301, 0.340043,
		-0.763553, 0.641331, -0.075373,
		11.875915, 18.272608, 19.586866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654725, 17.480463, 19.405602>,  <12.410401, 17.823675, 19.639627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654725, 17.480463, 19.405602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.673821, 17.868116, 19.308855>,  <11.685279, 18.100708, 19.250807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.673821, 17.868116, 19.308855>,  <11.654725, 17.480463, 19.405602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673821, 17.868116, 19.308855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071069, -0.238232, -0.968605,
		-0.996328, 0.063431, 0.057502,
		0.047740, 0.969135, -0.241865,
		11.688144, 18.158857, 19.236296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.136542, 17.614838, 19.027430>,  <11.654725, 17.480463, 19.405602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.136542, 17.614838, 19.027430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.385079, 17.904892, 18.908695>,  <11.534202, 18.078924, 18.837456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.385079, 17.904892, 18.908695>,  <11.136542, 17.614838, 19.027430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.385079, 17.904892, 18.908695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000245, -0.379017, -0.925389,
		-0.783539, 0.574911, -0.235677,
		0.621342, 0.725137, -0.296834,
		11.571482, 18.122433, 18.819645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.920684, 17.829100, 18.356413>,  <11.136542, 17.614838, 19.027430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.920684, 17.829100, 18.356413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.308449, 17.917116, 18.399900>,  <11.541108, 17.969927, 18.425993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.308449, 17.917116, 18.399900>,  <10.920684, 17.829100, 18.356413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.308449, 17.917116, 18.399900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171462, -0.290221, -0.941474,
		-0.175612, 0.931318, -0.319073,
		0.969413, 0.220043, 0.108719,
		11.599273, 17.983130, 18.432516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.079881, 18.412966, 17.827406>,  <10.920684, 17.829100, 18.356413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.079881, 18.412966, 17.827406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.450375, 18.293375, 17.919231>,  <11.672671, 18.221621, 17.974327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.450375, 18.293375, 17.919231>,  <11.079881, 18.412966, 17.827406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.450375, 18.293375, 17.919231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265612, 0.085539, -0.960278,
		0.267465, 0.950418, 0.158642,
		0.926236, -0.298978, 0.229563,
		11.728246, 18.203682, 17.988100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.469642, 18.770119, 17.384418>,  <11.079881, 18.412966, 17.827406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.469642, 18.770119, 17.384418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.681378, 18.450974, 17.499807>,  <11.808420, 18.259487, 17.569040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.681378, 18.450974, 17.499807>,  <11.469642, 18.770119, 17.384418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.681378, 18.450974, 17.499807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444482, -0.028817, -0.895324,
		0.722657, 0.602153, 0.339380,
		0.529342, -0.797861, 0.288471,
		11.840181, 18.211615, 17.586349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.850307, 18.674610, 16.884371>,  <11.469642, 18.770119, 17.384418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.850307, 18.674610, 16.884371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.980295, 18.341364, 17.063395>,  <12.058289, 18.141417, 17.170809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.980295, 18.341364, 17.063395>,  <11.850307, 18.674610, 16.884371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.980295, 18.341364, 17.063395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420496, -0.296606, -0.857443,
		0.847099, 0.466841, 0.253934,
		0.324971, -0.833117, 0.447559,
		12.077786, 18.091429, 17.197662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531335, 18.638855, 16.745907>,  <11.850307, 18.674610, 16.884371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531335, 18.638855, 16.745907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.379229, 18.275972, 16.817883>,  <12.287965, 18.058243, 16.861067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.379229, 18.275972, 16.817883>,  <12.531335, 18.638855, 16.745907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.379229, 18.275972, 16.817883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500894, -0.365559, -0.784520,
		0.777498, -0.208196, 0.593423,
		-0.380265, -0.907205, 0.179938,
		12.265149, 18.003811, 16.871864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040682, 18.246058, 16.741062>,  <12.531335, 18.638855, 16.745907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040682, 18.246058, 16.741062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.753937, 17.970072, 16.700943>,  <12.581890, 17.804482, 16.676870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.753937, 17.970072, 16.700943>,  <13.040682, 18.246058, 16.741062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753937, 17.970072, 16.700943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496744, -0.404485, -0.767879,
		0.489239, -0.600286, 0.632694,
		-0.716862, -0.689963, -0.100299,
		12.538878, 17.763083, 16.670853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.400187, 17.650373, 16.614901>,  <13.040682, 18.246058, 16.741062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.400187, 17.650373, 16.614901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.037145, 17.563704, 16.471067>,  <12.819319, 17.511702, 16.384768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.037145, 17.563704, 16.471067>,  <13.400187, 17.650373, 16.614901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.037145, 17.563704, 16.471067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413218, -0.612360, -0.673993,
		-0.074157, -0.760307, 0.645316,
		-0.907607, -0.216675, -0.359584,
		12.764862, 17.498701, 16.363192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.363861, 16.952263, 16.628437>,  <13.400187, 17.650373, 16.614901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.363861, 16.952263, 16.628437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.076432, 17.039421, 16.364262>,  <12.903975, 17.091717, 16.205757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.076432, 17.039421, 16.364262>,  <13.363861, 16.952263, 16.628437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076432, 17.039421, 16.364262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336967, -0.721644, -0.604718,
		-0.608365, -0.657078, 0.445129,
		-0.718572, 0.217896, -0.660436,
		12.860861, 17.104790, 16.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125628, 16.355371, 16.420683>,  <13.363861, 16.952263, 16.628437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125628, 16.355371, 16.420683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.983117, 16.591259, 16.130774>,  <12.897610, 16.732792, 15.956828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.983117, 16.591259, 16.130774>,  <13.125628, 16.355371, 16.420683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.983117, 16.591259, 16.130774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299254, -0.662799, -0.686400,
		-0.885162, -0.461441, 0.059665,
		-0.356279, 0.589720, -0.724773,
		12.876233, 16.768175, 15.913342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.839525, 15.861194, 15.875122>,  <13.125628, 16.355371, 16.420683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.839525, 15.861194, 15.875122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.902987, 16.205509, 15.681682>,  <12.941064, 16.412098, 15.565618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.902987, 16.205509, 15.681682>,  <12.839525, 15.861194, 15.875122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.902987, 16.205509, 15.681682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498536, -0.492622, -0.713292,
		-0.852227, -0.127926, -0.507291,
		0.158655, 0.860789, -0.483601,
		12.950583, 16.463745, 15.536601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.804856, 15.703111, 15.231252>,  <12.839525, 15.861194, 15.875122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.804856, 15.703111, 15.231252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.991020, 16.054518, 15.188172>,  <13.102718, 16.265362, 15.162325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.991020, 16.054518, 15.188172>,  <12.804856, 15.703111, 15.231252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.991020, 16.054518, 15.188172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506864, -0.364295, -0.781267,
		-0.725591, 0.309021, -0.614836,
		0.465410, 0.878519, -0.107698,
		13.130643, 16.318073, 15.155863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671804, 15.979299, 14.454243>,  <12.804856, 15.703111, 15.231252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.671804, 15.979299, 14.454243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.018126, 16.102571, 14.611931>,  <13.225918, 16.176535, 14.706544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.018126, 16.102571, 14.611931>,  <12.671804, 15.979299, 14.454243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.018126, 16.102571, 14.611931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449047, -0.130920, -0.883865,
		-0.220780, 0.942276, -0.251739,
		0.865802, 0.308182, 0.394221,
		13.277866, 16.195026, 14.730197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054569, 16.228123, 13.883014>,  <12.671804, 15.979299, 14.454243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054569, 16.228123, 13.883014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.328094, 16.134432, 14.159430>,  <13.492209, 16.078217, 14.325279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.328094, 16.134432, 14.159430>,  <13.054569, 16.228123, 13.883014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328094, 16.134432, 14.159430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603067, -0.351703, -0.715972,
		0.410742, 0.906334, -0.099244,
		0.683814, -0.234228, 0.691039,
		13.533238, 16.064163, 14.366741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659089, 16.506163, 13.590047>,  <13.054569, 16.228123, 13.883014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659089, 16.506163, 13.590047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.782349, 16.243097, 13.865007>,  <13.856304, 16.085258, 14.029984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.782349, 16.243097, 13.865007>,  <13.659089, 16.506163, 13.590047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782349, 16.243097, 13.865007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704454, -0.327870, -0.629480,
		0.639365, 0.678217, 0.362263,
		0.308149, -0.657665, 0.687401,
		13.874793, 16.045797, 14.071228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.443947, 16.604267, 13.603178>,  <13.659089, 16.506163, 13.590047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.443947, 16.604267, 13.603178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.336807, 16.246939, 13.747529>,  <14.272524, 16.032541, 13.834140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.336807, 16.246939, 13.747529>,  <14.443947, 16.604267, 13.603178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336807, 16.246939, 13.747529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567575, -0.448973, -0.690132,
		0.778535, 0.019976, 0.627284,
		-0.267848, -0.893322, 0.360879,
		14.256453, 15.978942, 13.855793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082443, 16.300581, 13.635100>,  <14.443947, 16.604267, 13.603178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082443, 16.300581, 13.635100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.816744, 16.001663, 13.642275>,  <14.657324, 15.822312, 13.646580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.816744, 16.001663, 13.642275>,  <15.082443, 16.300581, 13.635100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.816744, 16.001663, 13.642275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653493, -0.592185, -0.471449,
		0.362934, -0.301439, 0.881711,
		-0.664249, -0.747297, 0.017936,
		14.617469, 15.777474, 13.647655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723787, 16.041325, 13.600212>,  <15.082443, 16.300581, 13.635100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723787, 16.041325, 13.600212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.021246, 16.307781, 13.577430>,  <16.199722, 16.467655, 13.563761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.021246, 16.307781, 13.577430>,  <15.723787, 16.041325, 13.600212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021246, 16.307781, 13.577430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356741, 0.467406, 0.808868,
		0.565443, -0.581194, 0.585225,
		0.743646, 0.666143, -0.056955,
		16.244341, 16.507624, 13.560344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038355, 16.069244, 14.281713>,  <15.723787, 16.041325, 13.600212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038355, 16.069244, 14.281713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.102892, 16.407722, 14.078570>,  <16.141615, 16.610809, 13.956684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.102892, 16.407722, 14.078570>,  <16.038355, 16.069244, 14.281713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102892, 16.407722, 14.078570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287595, 0.532580, 0.796020,
		0.944064, 0.017625, 0.329290,
		0.161343, 0.846196, -0.507858,
		16.151295, 16.661581, 13.926213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589174, 16.532022, 14.596898>,  <16.038355, 16.069244, 14.281713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589174, 16.532022, 14.596898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.365372, 16.786964, 14.384963>,  <16.231091, 16.939930, 14.257802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.365372, 16.786964, 14.384963>,  <16.589174, 16.532022, 14.596898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365372, 16.786964, 14.384963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045738, 0.662034, 0.748077,
		0.827562, 0.394321, -0.399565,
		-0.559508, 0.637355, -0.529839,
		16.197519, 16.978170, 14.226011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756094, 17.181255, 14.928025>,  <16.589174, 16.532022, 14.596898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756094, 17.181255, 14.928025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.469038, 17.283234, 14.668797>,  <16.296804, 17.344421, 14.513261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.469038, 17.283234, 14.668797>,  <16.756094, 17.181255, 14.928025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469038, 17.283234, 14.668797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171076, 0.837529, 0.518920,
		0.675074, 0.483267, -0.557430,
		-0.717641, 0.254946, -0.648069,
		16.253746, 17.359718, 14.474377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886160, 17.880827, 14.712083>,  <16.756094, 17.181255, 14.928025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886160, 17.880827, 14.712083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.498014, 17.804745, 14.652456>,  <16.265127, 17.759096, 14.616680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.498014, 17.804745, 14.652456>,  <16.886160, 17.880827, 14.712083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498014, 17.804745, 14.652456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241468, 0.787607, 0.566894,
		0.009580, 0.586087, -0.810192,
		-0.970362, -0.190204, -0.149067,
		16.206905, 17.747683, 14.607737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.638069, 18.505791, 14.581311>,  <16.886160, 17.880827, 14.712083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.638069, 18.505791, 14.581311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.331554, 18.286915, 14.716002>,  <16.147646, 18.155590, 14.796817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.331554, 18.286915, 14.716002>,  <16.638069, 18.505791, 14.581311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331554, 18.286915, 14.716002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248887, 0.735980, 0.629594,
		-0.592333, 0.398643, -0.700161,
		-0.766288, -0.547190, 0.336728,
		16.101667, 18.122757, 14.817020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090038, 18.901129, 14.645516>,  <16.638069, 18.505791, 14.581311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090038, 18.901129, 14.645516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.990709, 18.599575, 14.888825>,  <15.931112, 18.418642, 15.034811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.990709, 18.599575, 14.888825>,  <16.090038, 18.901129, 14.645516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990709, 18.599575, 14.888825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225182, 0.655664, 0.720693,
		-0.942141, 0.041992, -0.332577,
		-0.248322, -0.753885, 0.608272,
		15.916213, 18.373409, 15.071307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370470, 19.078999, 14.942735>,  <16.090038, 18.901129, 14.645516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370470, 19.078999, 14.942735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.474472, 18.776449, 15.182833>,  <15.536873, 18.594919, 15.326891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.474472, 18.776449, 15.182833>,  <15.370470, 19.078999, 14.942735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.474472, 18.776449, 15.182833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634542, 0.334722, 0.696648,
		-0.727842, -0.562012, -0.392923,
		0.260004, -0.756376, 0.600245,
		15.552473, 18.549536, 15.362906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.786671, 18.943733, 15.338200>,  <15.370470, 19.078999, 14.942735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.786671, 18.943733, 15.338200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.084065, 18.791010, 15.557817>,  <15.262503, 18.699375, 15.689587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.084065, 18.791010, 15.557817>,  <14.786671, 18.943733, 15.338200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084065, 18.791010, 15.557817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395527, 0.410957, 0.821385,
		-0.539245, -0.827851, 0.154526,
		0.743487, -0.381809, 0.549044,
		15.307112, 18.676468, 15.722529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.443598, 18.650816, 15.894830>,  <14.786671, 18.943733, 15.338200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.443598, 18.650816, 15.894830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.822712, 18.698004, 16.013344>,  <15.050180, 18.726316, 16.084452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.822712, 18.698004, 16.013344>,  <14.443598, 18.650816, 15.894830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822712, 18.698004, 16.013344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311306, 0.543870, 0.779290,
		-0.069207, -0.830836, 0.552197,
		0.947786, 0.117970, 0.296284,
		15.107048, 18.733395, 16.102230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.351970, 18.686625, 16.626055>,  <14.443598, 18.650816, 15.894830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.351970, 18.686625, 16.626055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.730252, 18.807894, 16.579193>,  <14.957222, 18.880655, 16.551077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.730252, 18.807894, 16.579193>,  <14.351970, 18.686625, 16.626055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730252, 18.807894, 16.579193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005172, 0.374443, 0.927236,
		0.324973, -0.876289, 0.355682,
		0.945709, 0.303166, -0.117152,
		15.013965, 18.898846, 16.544046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.877052, 18.339533, 17.005205>,  <14.351970, 18.686625, 16.626055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.877052, 18.339533, 17.005205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.008133, 18.713043, 16.947695>,  <15.086782, 18.937149, 16.913189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.008133, 18.713043, 16.947695>,  <14.877052, 18.339533, 17.005205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.008133, 18.713043, 16.947695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119639, 0.109939, 0.986712,
		0.937175, -0.340549, -0.075689,
		0.327702, 0.933777, -0.143775,
		15.106443, 18.993176, 16.904562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343583, 18.372431, 17.486677>,  <14.877052, 18.339533, 17.005205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343583, 18.372431, 17.486677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.239735, 18.747818, 17.395575>,  <15.177425, 18.973051, 17.340912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.239735, 18.747818, 17.395575>,  <15.343583, 18.372431, 17.486677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239735, 18.747818, 17.395575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094104, 0.210137, 0.973132,
		0.961114, 0.274080, 0.033757,
		-0.259622, 0.938468, -0.227758,
		15.161848, 19.029358, 17.327248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526838, 18.716602, 18.056356>,  <15.343583, 18.372431, 17.486677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526838, 18.716602, 18.056356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.323418, 19.007492, 17.871958>,  <15.201365, 19.182026, 17.761318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.323418, 19.007492, 17.871958>,  <15.526838, 18.716602, 18.056356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323418, 19.007492, 17.871958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279930, 0.366674, 0.887237,
		0.814257, 0.580253, 0.017100,
		-0.508552, 0.727226, -0.460997,
		15.170853, 19.225660, 17.733658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688287, 19.363060, 18.408411>,  <15.526838, 18.716602, 18.056356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688287, 19.363060, 18.408411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338653, 19.426498, 18.224751>,  <15.128872, 19.464561, 18.114553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.338653, 19.426498, 18.224751>,  <15.688287, 19.363060, 18.408411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338653, 19.426498, 18.224751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399153, 0.304218, 0.864944,
		0.276859, 0.939307, -0.202609,
		-0.874086, 0.158596, -0.459153,
		15.076427, 19.474077, 18.087004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582949, 20.026728, 18.500704>,  <15.688287, 19.363060, 18.408411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582949, 20.026728, 18.500704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.248319, 19.815405, 18.442692>,  <15.047541, 19.688612, 18.407885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.248319, 19.815405, 18.442692>,  <15.582949, 20.026728, 18.500704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.248319, 19.815405, 18.442692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390908, 0.390151, 0.833651,
		-0.383841, 0.754104, -0.532910,
		-0.836575, -0.528308, -0.145029,
		14.997346, 19.656912, 18.399183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.088289, 20.445488, 18.788313>,  <15.582949, 20.026728, 18.500704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.088289, 20.445488, 18.788313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.886783, 20.100296, 18.772911>,  <14.765879, 19.893181, 18.763670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.886783, 20.100296, 18.772911>,  <15.088289, 20.445488, 18.788313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886783, 20.100296, 18.772911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523169, 0.269324, 0.808553,
		-0.687395, 0.427468, -0.587161,
		-0.503767, -0.862981, -0.038506,
		14.735652, 19.841402, 18.761358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406672, 20.606329, 18.851671>,  <15.088289, 20.445488, 18.788313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406672, 20.606329, 18.851671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.442206, 20.219778, 18.948193>,  <14.463527, 19.987848, 19.006105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.442206, 20.219778, 18.948193>,  <14.406672, 20.606329, 18.851671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442206, 20.219778, 18.948193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431619, 0.180985, 0.883714,
		-0.897671, -0.182656, -0.401028,
		0.088835, -0.966375, 0.241303,
		14.468857, 19.929865, 19.020584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.808376, 20.473867, 19.224699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.036323, 20.161861, 19.328108>,  <14.173090, 19.974659, 19.390154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.036323, 20.161861, 19.328108>,  <13.808376, 20.473867, 19.224699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.036323, 20.161861, 19.328108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267287, 0.121548, 0.955920,
		-0.777053, -0.613844, -0.139222,
		0.569864, -0.780013, 0.258522,
		14.207282, 19.927858, 19.405664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442008, 19.956282, 19.553043>,  <13.808376, 20.473867, 19.224699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442008, 19.956282, 19.553043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.810732, 19.895557, 19.695717>,  <14.031966, 19.859123, 19.781321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.810732, 19.895557, 19.695717>,  <13.442008, 19.956282, 19.553043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.810732, 19.895557, 19.695717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360448, 0.002901, 0.932775,
		-0.142643, -0.988405, -0.052047,
		0.921808, -0.151814, 0.356682,
		14.087275, 19.850014, 19.802721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293089, 19.529348, 20.144968>,  <13.442008, 19.956282, 19.553043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293089, 19.529348, 20.144968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.666382, 19.665375, 20.191328>,  <13.890358, 19.746990, 20.219145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.666382, 19.665375, 20.191328>,  <13.293089, 19.529348, 20.144968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.666382, 19.665375, 20.191328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154455, 0.088495, 0.984029,
		0.324377, -0.936229, 0.135111,
		0.933233, 0.340065, 0.115900,
		13.946352, 19.767393, 20.226097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582527, 19.212202, 20.787056>,  <13.293089, 19.529348, 20.144968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582527, 19.212202, 20.787056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.791755, 19.546965, 20.722578>,  <13.917292, 19.747822, 20.683891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.791755, 19.546965, 20.722578>,  <13.582527, 19.212202, 20.787056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791755, 19.546965, 20.722578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069787, 0.230551, 0.970555,
		0.849429, -0.496418, 0.178999,
		0.523069, 0.836909, -0.161193,
		13.948675, 19.798037, 20.674221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912663, 19.110573, 21.340525>,  <13.582527, 19.212202, 20.787056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912663, 19.110573, 21.340525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.989470, 19.492449, 21.249577>,  <14.035553, 19.721575, 21.195007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.989470, 19.492449, 21.249577>,  <13.912663, 19.110573, 21.340525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989470, 19.492449, 21.249577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181994, 0.262303, 0.947668,
		0.964369, -0.140587, 0.224114,
		0.192016, 0.954690, -0.227371,
		14.047074, 19.778856, 21.181366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379243, 19.328506, 21.828611>,  <13.912663, 19.110573, 21.340525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379243, 19.328506, 21.828611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.182157, 19.648693, 21.692091>,  <14.063905, 19.840805, 21.610180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.182157, 19.648693, 21.692091>,  <14.379243, 19.328506, 21.828611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182157, 19.648693, 21.692091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303561, 0.209465, 0.929503,
		0.815526, 0.561586, 0.139783,
		-0.492716, 0.800466, -0.341300,
		14.034342, 19.888832, 21.589701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635192, 19.901741, 22.202602>,  <14.379243, 19.328506, 21.828611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635192, 19.901741, 22.202602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.269853, 19.985443, 22.062883>,  <14.050650, 20.035664, 21.979052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.269853, 19.985443, 22.062883>,  <14.635192, 19.901741, 22.202602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.269853, 19.985443, 22.062883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279985, 0.300102, 0.911892,
		0.295642, 0.930673, -0.215509,
		-0.913348, 0.209255, -0.349297,
		13.995849, 20.048220, 21.958094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.526267, 20.598160, 22.492109>,  <14.635192, 19.901741, 22.202602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.526267, 20.598160, 22.492109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.159968, 20.472530, 22.391897>,  <13.940189, 20.397154, 22.331770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.159968, 20.472530, 22.391897>,  <14.526267, 20.598160, 22.492109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159968, 20.472530, 22.391897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348485, 0.310669, 0.884332,
		-0.199911, 0.897131, -0.393944,
		-0.915748, -0.314071, -0.250531,
		13.885244, 20.378309, 22.316738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225813, 21.242050, 22.414537>,  <14.526267, 20.598160, 22.492109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225813, 21.242050, 22.414537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.982720, 20.937460, 22.504711>,  <13.836865, 20.754705, 22.558815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.982720, 20.937460, 22.504711>,  <14.225813, 21.242050, 22.414537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982720, 20.937460, 22.504711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277521, 0.469615, 0.838120,
		-0.744074, 0.446788, -0.496724,
		-0.607731, -0.761474, 0.225435,
		13.800401, 20.709019, 22.572342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.796920, 21.473497, 22.919184>,  <14.225813, 21.242050, 22.414537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.796920, 21.473497, 22.919184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.642514, 21.111919, 22.992809>,  <13.549870, 20.894974, 23.036985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.642514, 21.111919, 22.992809>,  <13.796920, 21.473497, 22.919184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642514, 21.111919, 22.992809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274891, 0.303179, 0.912424,
		-0.880584, 0.301612, -0.365517,
		-0.386015, -0.903943, 0.184065,
		13.526710, 20.840736, 23.048029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255301, 21.589725, 23.256681>,  <13.796920, 21.473497, 22.919184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255301, 21.589725, 23.256681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.289454, 21.209911, 23.377405>,  <13.309947, 20.982023, 23.449839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.289454, 21.209911, 23.377405>,  <13.255301, 21.589725, 23.256681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.289454, 21.209911, 23.377405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091608, 0.294150, 0.951359,
		-0.992128, -0.108880, -0.061869,
		0.085385, -0.949537, 0.301809,
		13.315070, 20.925051, 23.467947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.636531, 21.437180, 23.662525>,  <13.255301, 21.589725, 23.256681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.636531, 21.437180, 23.662525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.928543, 21.187178, 23.773104>,  <13.103750, 21.037176, 23.839451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.928543, 21.187178, 23.773104>,  <12.636531, 21.437180, 23.662525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.928543, 21.187178, 23.773104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206391, 0.183995, 0.961014,
		-0.651504, -0.758626, 0.005327,
		0.730031, -0.625005, 0.276448,
		13.147552, 20.999676, 23.856037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.324714, 21.034136, 24.255102>,  <12.636531, 21.437180, 23.662525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.324714, 21.034136, 24.255102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.721327, 20.995043, 24.289301>,  <12.959295, 20.971586, 24.309820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.721327, 20.995043, 24.289301>,  <12.324714, 21.034136, 24.255102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721327, 20.995043, 24.289301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062777, 0.215588, 0.974464,
		-0.113671, -0.971581, 0.207627,
		0.991533, -0.097734, 0.085499,
		13.018786, 20.965723, 24.314951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.385343, 20.570063, 24.778372>,  <12.324714, 21.034136, 24.255102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.385343, 20.570063, 24.778372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.750602, 20.733009, 24.772552>,  <12.969757, 20.830778, 24.769060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.750602, 20.733009, 24.772552>,  <12.385343, 20.570063, 24.778372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.750602, 20.733009, 24.772552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052678, -0.082542, 0.995194,
		0.404209, -0.909527, -0.096832,
		0.913149, 0.407368, -0.014547,
		13.024547, 20.855219, 24.768188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.743276, 20.149761, 25.198866>,  <12.385343, 20.570063, 24.778372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.743276, 20.149761, 25.198866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.933187, 20.501755, 25.204767>,  <13.047132, 20.712950, 25.208307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.933187, 20.501755, 25.204767>,  <12.743276, 20.149761, 25.198866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.933187, 20.501755, 25.204767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097808, -0.069413, 0.992782,
		0.874655, -0.469906, -0.119025,
		0.474776, 0.879983, 0.014752,
		13.075620, 20.765749, 25.209192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.337162, 20.052204, 25.548449>,  <12.743276, 20.149761, 25.198866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.337162, 20.052204, 25.548449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.280663, 20.447821, 25.565620>,  <13.246764, 20.685190, 25.575924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.280663, 20.447821, 25.565620>,  <13.337162, 20.052204, 25.548449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280663, 20.447821, 25.565620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312224, 0.003355, 0.950003,
		0.939450, 0.147589, -0.309277,
		-0.141247, 0.989043, 0.042929,
		13.238289, 20.744534, 25.578499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.916035, 20.190002, 25.931742>,  <13.337162, 20.052204, 25.548449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.916035, 20.190002, 25.931742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.664701, 20.500757, 25.947933>,  <13.513900, 20.687210, 25.957647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.664701, 20.500757, 25.947933>,  <13.916035, 20.190002, 25.931742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664701, 20.500757, 25.947933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190332, 0.103071, 0.976294,
		0.754300, 0.621144, -0.212630,
		-0.628335, 0.776889, 0.040477,
		13.476200, 20.733824, 25.960075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172031, 20.559784, 26.419296>,  <13.916035, 20.190002, 25.931742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172031, 20.559784, 26.419296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.803084, 20.712460, 26.395462>,  <13.581717, 20.804066, 26.381161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.803084, 20.712460, 26.395462>,  <14.172031, 20.559784, 26.419296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803084, 20.712460, 26.395462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017475, 0.112866, 0.993457,
		0.385919, 0.917373, -0.097434,
		-0.922367, 0.381691, -0.059588,
		13.526374, 20.826967, 26.377586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229712, 21.134544, 26.716211>,  <14.172031, 20.559784, 26.419296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229712, 21.134544, 26.716211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.839904, 21.048538, 26.741743>,  <13.606018, 20.996935, 26.757063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.839904, 21.048538, 26.741743>,  <14.229712, 21.134544, 26.716211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839904, 21.048538, 26.741743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030669, 0.154174, 0.987568,
		-0.222185, 0.964364, -0.143652,
		-0.974522, -0.215017, 0.063832,
		13.547547, 20.984034, 26.760893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.953968, 21.652460, 27.185141>,  <14.229712, 21.134544, 26.716211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.953968, 21.652460, 27.185141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.677414, 21.364037, 27.203285>,  <13.511481, 21.190983, 27.214172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.677414, 21.364037, 27.203285>,  <13.953968, 21.652460, 27.185141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677414, 21.364037, 27.203285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016833, 0.046692, 0.998767,
		-0.722289, 0.691297, -0.020145,
		-0.691386, -0.721060, 0.045362,
		13.469998, 21.147718, 27.216894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.429665, 21.829119, 27.693974>,  <13.953968, 21.652460, 27.185141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.429665, 21.829119, 27.693974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.425435, 21.430462, 27.661497>,  <13.422897, 21.191267, 27.642012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.425435, 21.430462, 27.661497>,  <13.429665, 21.829119, 27.693974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.425435, 21.430462, 27.661497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206942, -0.077258, 0.975298,
		-0.978296, 0.027115, -0.205430,
		-0.010574, -0.996642, -0.081192,
		13.422263, 21.131470, 27.637140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837907, 21.564245, 28.119175>,  <13.429665, 21.829119, 27.693974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837907, 21.564245, 28.119175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.072945, 21.241241, 28.098536>,  <13.213967, 21.047440, 28.086153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.072945, 21.241241, 28.098536>,  <12.837907, 21.564245, 28.119175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072945, 21.241241, 28.098536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150224, -0.171526, 0.973659,
		-0.795089, -0.564365, -0.222095,
		0.587594, -0.807510, -0.051597,
		13.249223, 20.998989, 28.083055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542173, 20.998631, 28.618490>,  <12.837907, 21.564245, 28.119175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.542173, 20.998631, 28.618490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.939066, 20.980539, 28.572134>,  <13.177201, 20.969685, 28.544321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.939066, 20.980539, 28.572134>,  <12.542173, 20.998631, 28.618490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.939066, 20.980539, 28.572134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115607, -0.008799, 0.993256,
		-0.045946, -0.998938, -0.003502,
		0.992232, -0.045231, -0.115888,
		13.236735, 20.966970, 28.537367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.875594, 20.603659, 28.783777>,  <12.542173, 20.998631, 28.618490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.875594, 20.603659, 28.783777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.702205, 20.269341, 28.918562>,  <11.598171, 20.068748, 28.999434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.702205, 20.269341, 28.918562>,  <11.875594, 20.603659, 28.783777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702205, 20.269341, 28.918562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094523, -0.414026, -0.905344,
		0.896195, -0.360592, 0.258471,
		-0.433474, -0.835797, 0.336963,
		11.572163, 20.018602, 29.019651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226762, 20.090855, 28.335188>,  <11.875594, 20.603659, 28.783777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226762, 20.090855, 28.335188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.891348, 19.914623, 28.463406>,  <11.690100, 19.808884, 28.540337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.891348, 19.914623, 28.463406>,  <12.226762, 20.090855, 28.335188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891348, 19.914623, 28.463406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180891, -0.329826, -0.926549,
		0.513943, -0.834927, 0.196873,
		-0.838535, -0.440581, 0.320543,
		11.639788, 19.782450, 28.559568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228569, 19.386356, 28.016590>,  <12.226762, 20.090855, 28.335188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.228569, 19.386356, 28.016590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.864677, 19.517382, 28.118647>,  <11.646342, 19.595997, 28.179880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.864677, 19.517382, 28.118647>,  <12.228569, 19.386356, 28.016590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864677, 19.517382, 28.118647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352515, -0.284662, -0.891460,
		-0.219375, -0.900929, 0.374434,
		-0.909730, 0.327557, 0.255143,
		11.591759, 19.615650, 28.195189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819131, 18.850372, 27.866966>,  <12.228569, 19.386356, 28.016590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.819131, 18.850372, 27.866966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.575497, 19.167587, 27.862801>,  <11.429317, 19.357916, 27.860302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.575497, 19.167587, 27.862801>,  <11.819131, 18.850372, 27.866966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.575497, 19.167587, 27.862801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333411, -0.267944, -0.903904,
		-0.719620, -0.547082, 0.427608,
		-0.609084, 0.793037, -0.010415,
		11.392772, 19.405499, 27.859676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.338616, 18.511944, 27.579823>,  <11.819131, 18.850372, 27.866966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.338616, 18.511944, 27.579823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.274813, 18.903299, 27.527199>,  <11.236530, 19.138113, 27.495625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.274813, 18.903299, 27.527199>,  <11.338616, 18.511944, 27.579823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.274813, 18.903299, 27.527199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169049, -0.158370, -0.972801,
		-0.972614, -0.132931, 0.190658,
		-0.159510, 0.978390, -0.131562,
		11.226960, 19.196817, 27.487730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.767209, 18.587816, 27.189661>,  <11.338616, 18.511944, 27.579823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.767209, 18.587816, 27.189661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.967746, 18.929729, 27.136000>,  <11.088068, 19.134878, 27.103802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.967746, 18.929729, 27.136000>,  <10.767209, 18.587816, 27.189661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.967746, 18.929729, 27.136000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096759, -0.098690, -0.990403,
		-0.859821, 0.509512, 0.033231,
		0.501343, 0.854785, -0.134155,
		11.118149, 19.186165, 27.095753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.531591, 18.633612, 26.575611>,  <10.767209, 18.587816, 27.189661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.531591, 18.633612, 26.575611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.833256, 18.895741, 26.592567>,  <11.014255, 19.053017, 26.602741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.833256, 18.895741, 26.592567>,  <10.531591, 18.633612, 26.575611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.833256, 18.895741, 26.592567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035777, 0.105461, -0.993780,
		-0.655716, 0.747952, 0.102980,
		0.754160, 0.655321, 0.042393,
		11.059504, 19.092337, 26.605286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.372722, 19.142477, 26.062868>,  <10.531591, 18.633612, 26.575611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.372722, 19.142477, 26.062868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.766282, 19.160410, 26.132067>,  <11.002419, 19.171169, 26.173586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.766282, 19.160410, 26.132067>,  <10.372722, 19.142477, 26.062868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.766282, 19.160410, 26.132067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170483, 0.054863, -0.983832,
		-0.053599, 0.997487, 0.046337,
		0.983902, 0.044833, 0.172995,
		11.061453, 19.173861, 26.183966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.658093, 19.588470, 25.694218>,  <10.372722, 19.142477, 26.062868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.658093, 19.588470, 25.694218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.007619, 19.415468, 25.783112>,  <11.217334, 19.311666, 25.836449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.007619, 19.415468, 25.783112>,  <10.658093, 19.588470, 25.694218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.007619, 19.415468, 25.783112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201395, -0.094086, -0.974981,
		0.442594, 0.896709, 0.004891,
		0.873814, -0.432506, 0.222235,
		11.269763, 19.285717, 25.849783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.248705, 19.960136, 25.307911>,  <10.658093, 19.588470, 25.694218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.248705, 19.960136, 25.307911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.396015, 19.598169, 25.393230>,  <11.484402, 19.380989, 25.444422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.396015, 19.598169, 25.393230>,  <11.248705, 19.960136, 25.307911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.396015, 19.598169, 25.393230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269387, -0.115718, -0.956054,
		0.889833, 0.409551, 0.201157,
		0.368276, -0.904918, 0.213297,
		11.506498, 19.326694, 25.457220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946250, 19.950268, 25.053902>,  <11.248705, 19.960136, 25.307911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946250, 19.950268, 25.053902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.853603, 19.561613, 25.072996>,  <11.798016, 19.328421, 25.084454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.853603, 19.561613, 25.072996>,  <11.946250, 19.950268, 25.053902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853603, 19.561613, 25.072996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098183, -0.072169, -0.992548,
		0.967840, -0.225204, 0.112114,
		-0.231617, -0.971635, 0.047737,
		11.784119, 19.270123, 25.087317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.393086, 19.538929, 24.665380>,  <11.946250, 19.950268, 25.053902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.393086, 19.538929, 24.665380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.088729, 19.279818, 24.680458>,  <11.906115, 19.124350, 24.689505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.088729, 19.279818, 24.680458>,  <12.393086, 19.538929, 24.665380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.088729, 19.279818, 24.680458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156694, -0.239809, -0.958091,
		0.629672, -0.723099, 0.283973,
		-0.760894, -0.647780, 0.037695,
		11.860460, 19.085484, 24.691767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.619696, 19.033279, 24.220619>,  <12.393086, 19.538929, 24.665380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.619696, 19.033279, 24.220619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.222294, 18.996029, 24.246769>,  <11.983852, 18.973679, 24.262459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.222294, 18.996029, 24.246769>,  <12.619696, 19.033279, 24.220619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222294, 18.996029, 24.246769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057496, -0.084922, -0.994727,
		0.098187, -0.992026, 0.079016,
		-0.993506, -0.093126, 0.065376,
		11.924242, 18.968090, 24.266382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.418067, 18.432529, 23.791584>,  <12.619696, 19.033279, 24.220619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.418067, 18.432529, 23.791584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.100894, 18.670088, 23.846056>,  <11.910590, 18.812624, 23.878738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.100894, 18.670088, 23.846056>,  <12.418067, 18.432529, 23.791584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.100894, 18.670088, 23.846056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168342, 0.001264, -0.985728,
		-0.585594, -0.804539, 0.098976,
		-0.792931, 0.593898, 0.136178,
		11.863014, 18.848257, 23.886909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.041145, 18.240128, 23.255413>,  <12.418067, 18.432529, 23.791584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.041145, 18.240128, 23.255413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.835202, 18.566105, 23.361839>,  <11.711637, 18.761690, 23.425695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.835202, 18.566105, 23.361839>,  <12.041145, 18.240128, 23.255413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.835202, 18.566105, 23.361839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301572, 0.118354, -0.946069,
		-0.802481, -0.567329, 0.184829,
		-0.514857, 0.814942, 0.266068,
		11.680745, 18.810587, 23.441660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.394898, 18.157804, 22.949198>,  <12.041145, 18.240128, 23.255413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.394898, 18.157804, 22.949198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.405416, 18.555288, 22.992748>,  <11.411726, 18.793777, 23.018879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.405416, 18.555288, 22.992748>,  <11.394898, 18.157804, 22.949198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405416, 18.555288, 22.992748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271258, 0.111917, -0.955978,
		-0.962148, -0.004398, 0.272493,
		0.026292, 0.993708, 0.108874,
		11.413303, 18.853401, 23.025410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.778697, 18.348753, 22.786127>,  <11.394898, 18.157804, 22.949198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.778697, 18.348753, 22.786127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.989573, 18.686787, 22.750561>,  <11.116098, 18.889606, 22.729221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.989573, 18.686787, 22.750561>,  <10.778697, 18.348753, 22.786127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989573, 18.686787, 22.750561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240190, 0.047830, -0.969547,
		-0.815095, 0.532492, 0.228196,
		0.527190, 0.845083, -0.088914,
		11.147730, 18.940311, 22.723886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.390200, 18.814220, 22.305870>,  <10.778697, 18.348753, 22.786127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.390200, 18.814220, 22.305870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.773036, 18.930012, 22.300514>,  <11.002738, 18.999487, 22.297300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.773036, 18.930012, 22.300514>,  <10.390200, 18.814220, 22.305870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.773036, 18.930012, 22.300514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049312, 0.117156, -0.991888,
		-0.285560, 0.949988, 0.126404,
		0.957091, 0.289477, -0.013390,
		11.060163, 19.016855, 22.296497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.393664, 19.227488, 21.777740>,  <10.390200, 18.814220, 22.305870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.393664, 19.227488, 21.777740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.784164, 19.155336, 21.825737>,  <11.018465, 19.112045, 21.854536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.784164, 19.155336, 21.825737>,  <10.393664, 19.227488, 21.777740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784164, 19.155336, 21.825737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139503, 0.099641, -0.985196,
		0.165751, 0.978537, 0.122438,
		0.976251, -0.180378, 0.119993,
		11.077040, 19.101223, 21.861734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815501, 19.775625, 21.317064>,  <10.393664, 19.227488, 21.777740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815501, 19.775625, 21.317064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.108871, 19.513926, 21.390875>,  <11.284892, 19.356905, 21.435162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.108871, 19.513926, 21.390875>,  <10.815501, 19.775625, 21.317064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.108871, 19.513926, 21.390875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354158, 0.136062, -0.925235,
		0.580227, 0.743939, 0.331498,
		0.733423, -0.654249, 0.184526,
		11.328897, 19.317652, 21.446232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.420691, 20.002731, 21.003073>,  <10.815501, 19.775625, 21.317064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.420691, 20.002731, 21.003073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.484020, 19.611219, 21.055117>,  <11.522017, 19.376312, 21.086342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.484020, 19.611219, 21.055117>,  <11.420691, 20.002731, 21.003073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.484020, 19.611219, 21.055117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337821, -0.070122, -0.938595,
		0.927799, 0.192553, 0.319550,
		0.158322, -0.978778, 0.130108,
		11.531517, 19.317587, 21.094149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.906385, 19.796162, 4.478326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.519346, 19.729158, 4.402757>,  <27.287123, 19.688957, 4.357416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.519346, 19.729158, 4.402757>,  <27.906385, 19.796162, 4.478326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519346, 19.729158, 4.402757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245007, -0.442108, -0.862851,
		0.061010, -0.881182, 0.468824,
		-0.967600, -0.167508, -0.188922,
		27.229067, 19.678905, 4.346080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959614, 19.293621, 3.995430>,  <27.906385, 19.796162, 4.478326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959614, 19.293621, 3.995430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.794804, 18.998314, 3.781815>,  <27.695917, 18.821129, 3.653646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.794804, 18.998314, 3.781815>,  <27.959614, 19.293621, 3.995430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794804, 18.998314, 3.781815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221637, -0.649701, 0.727162,
		-0.883806, 0.181245, 0.431320,
		-0.412024, -0.738267, -0.534039,
		27.671196, 18.776834, 3.621603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353062, 18.961252, 4.311798>,  <27.959614, 19.293621, 3.995430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353062, 18.961252, 4.311798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.570759, 18.723440, 4.075041>,  <27.701376, 18.580753, 3.932987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.570759, 18.723440, 4.075041>,  <27.353062, 18.961252, 4.311798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570759, 18.723440, 4.075041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159412, -0.619388, 0.768730,
		-0.823644, -0.512729, -0.242321,
		0.544241, -0.594531, -0.591891,
		27.734032, 18.545080, 3.897474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777243, 18.820131, 3.807044>,  <27.353062, 18.961252, 4.311798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777243, 18.820131, 3.807044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.637707, 18.762236, 3.436668>,  <26.553986, 18.727499, 3.214443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.637707, 18.762236, 3.436668>,  <26.777243, 18.820131, 3.807044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637707, 18.762236, 3.436668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878951, 0.292309, -0.376829,
		0.325202, -0.945307, 0.025250,
		-0.348838, -0.144739, -0.925939,
		26.533054, 18.718815, 3.158886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255161, 19.148626, 4.181391>,  <26.777243, 18.820131, 3.807044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255161, 19.148626, 4.181391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.008230, 19.434038, 4.048859>,  <25.860071, 19.605286, 3.969340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.008230, 19.434038, 4.048859>,  <26.255161, 19.148626, 4.181391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008230, 19.434038, 4.048859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458808, -0.668660, -0.585140,
		-0.639060, -0.209210, 0.740158,
		-0.617331, 0.713530, -0.331326,
		25.823032, 19.648098, 3.949461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024832, 19.758781, 4.492996>,  <26.255161, 19.148626, 4.181391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024832, 19.758781, 4.492996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.365038, 19.927233, 4.366962>,  <26.569160, 20.028303, 4.291343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.365038, 19.927233, 4.366962>,  <26.024832, 19.758781, 4.492996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365038, 19.927233, 4.366962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152830, -0.375338, -0.914201,
		-0.503258, 0.825695, -0.254870,
		0.850514, 0.421127, -0.315083,
		26.620192, 20.053572, 4.272438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820971, 20.492842, 4.879443>,  <26.024832, 19.758781, 4.492996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820971, 20.492842, 4.879443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.152855, 20.310062, 5.007676>,  <26.351986, 20.200394, 5.084616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.152855, 20.310062, 5.007676>,  <25.820971, 20.492842, 4.879443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152855, 20.310062, 5.007676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533423, -0.479907, 0.696527,
		-0.164428, -0.748923, -0.641932,
		0.829713, -0.456950, 0.320583,
		26.401770, 20.172977, 5.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511131, 19.933260, 5.157805>,  <25.820971, 20.492842, 4.879443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511131, 19.933260, 5.157805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.878475, 19.929440, 5.316060>,  <26.098881, 19.927147, 5.411012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.878475, 19.929440, 5.316060>,  <25.511131, 19.933260, 5.157805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878475, 19.929440, 5.316060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335762, -0.547973, 0.766152,
		0.209480, -0.836441, -0.506442,
		0.918358, -0.009551, 0.395635,
		26.153982, 19.926575, 5.434750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667181, 19.239573, 5.285897>,  <25.511131, 19.933260, 5.157805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667181, 19.239573, 5.285897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.885166, 19.455275, 5.542715>,  <26.015957, 19.584696, 5.696805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.885166, 19.455275, 5.542715>,  <25.667181, 19.239573, 5.285897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885166, 19.455275, 5.542715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315710, -0.577413, 0.752942,
		0.776751, -0.613026, -0.144422,
		0.544964, 0.539253, 0.642044,
		26.048655, 19.617050, 5.735328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864393, 18.802742, 5.661328>,  <25.667181, 19.239573, 5.285897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864393, 18.802742, 5.661328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.891504, 19.130110, 5.889574>,  <25.907770, 19.326530, 6.026521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.891504, 19.130110, 5.889574>,  <25.864393, 18.802742, 5.661328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891504, 19.130110, 5.889574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449310, -0.485610, 0.749869,
		0.890801, -0.307207, 0.334809,
		0.067778, 0.818417, 0.570613,
		25.911839, 19.375635, 6.060758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078218, 18.593292, 6.221412>,  <25.864393, 18.802742, 5.661328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078218, 18.593292, 6.221412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.921190, 18.936087, 6.354960>,  <25.826973, 19.141764, 6.435089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.921190, 18.936087, 6.354960>,  <26.078218, 18.593292, 6.221412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921190, 18.936087, 6.354960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544778, -0.509144, 0.666325,
		0.741017, 0.079694, 0.666740,
		-0.392568, 0.856984, 0.333869,
		25.803419, 19.193182, 6.455121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066435, 18.634111, 6.971822>,  <26.078218, 18.593292, 6.221412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066435, 18.634111, 6.971822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.785038, 18.896793, 6.863133>,  <25.616199, 19.054403, 6.797919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.785038, 18.896793, 6.863133>,  <26.066435, 18.634111, 6.971822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785038, 18.896793, 6.863133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633903, -0.406927, 0.657706,
		0.321349, 0.634938, 0.702559,
		-0.703493, 0.656707, -0.271724,
		25.573990, 19.093805, 6.781616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765123, 18.934137, 7.574877>,  <26.066435, 18.634111, 6.971822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765123, 18.934137, 7.574877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508120, 18.984852, 7.272590>,  <25.353918, 19.015282, 7.091218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508120, 18.984852, 7.272590>,  <25.765123, 18.934137, 7.574877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508120, 18.984852, 7.272590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738205, -0.366920, 0.566059,
		-0.205518, 0.921572, 0.329344,
		-0.642507, 0.126788, -0.755718,
		25.315367, 19.022888, 7.045875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194561, 19.126078, 7.980994>,  <25.765123, 18.934137, 7.574877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194561, 19.126078, 7.980994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.065620, 19.021614, 7.617041>,  <24.988256, 18.958937, 7.398669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.065620, 19.021614, 7.617041>,  <25.194561, 19.126078, 7.980994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.065620, 19.021614, 7.617041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777749, -0.474865, 0.411837,
		-0.539626, 0.840417, -0.050042,
		-0.322352, -0.261158, -0.909882,
		24.968914, 18.943266, 7.344076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460878, 19.245750, 8.011452>,  <25.194561, 19.126078, 7.980994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460878, 19.245750, 8.011452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.521454, 18.977242, 7.721221>,  <24.557798, 18.816135, 7.547083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.521454, 18.977242, 7.721221>,  <24.460878, 19.245750, 8.011452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.521454, 18.977242, 7.721221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621055, -0.635678, 0.458481,
		-0.768998, 0.381191, -0.513163,
		0.151438, -0.671273, -0.725575,
		24.566885, 18.775860, 7.503549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805828, 19.041945, 7.973640>,  <24.460878, 19.245750, 8.011452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805828, 19.041945, 7.973640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.026541, 18.754639, 7.804109>,  <24.158968, 18.582254, 7.702390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.026541, 18.754639, 7.804109>,  <23.805828, 19.041945, 7.973640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026541, 18.754639, 7.804109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528395, -0.694268, 0.488662,
		-0.645239, -0.045688, -0.762613,
		0.551784, -0.718265, -0.423828,
		24.192076, 18.539160, 7.676960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329256, 18.545170, 7.758658>,  <23.805828, 19.041945, 7.973640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329256, 18.545170, 7.758658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.679495, 18.358414, 7.808202>,  <23.889639, 18.246361, 7.837929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.679495, 18.358414, 7.808202>,  <23.329256, 18.545170, 7.758658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.679495, 18.358414, 7.808202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469386, -0.761868, 0.446357,
		-0.114033, -0.448968, -0.886241,
		0.875599, -0.466888, 0.123861,
		23.942175, 18.218348, 7.845361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.174337, 17.839865, 7.676023>,  <23.329256, 18.545170, 7.758658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.174337, 17.839865, 7.676023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.517859, 17.850615, 7.880661>,  <23.723972, 17.857063, 8.003445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.517859, 17.850615, 7.880661>,  <23.174337, 17.839865, 7.676023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.517859, 17.850615, 7.880661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319681, -0.752233, 0.576150,
		0.400324, -0.658349, -0.637431,
		0.858804, 0.026872, 0.511598,
		23.775499, 17.858677, 8.034141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.305847, 17.182768, 7.716908>,  <23.174337, 17.839865, 7.676023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.305847, 17.182768, 7.716908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.516098, 17.331877, 8.022785>,  <23.642248, 17.421343, 8.206312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.516098, 17.331877, 8.022785>,  <23.305847, 17.182768, 7.716908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.516098, 17.331877, 8.022785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190804, -0.824324, 0.532994,
		0.829043, -0.426062, -0.362159,
		0.525625, 0.372774, 0.764695,
		23.673786, 17.443708, 8.252193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.607817, 16.600677, 7.974249>,  <23.305847, 17.182768, 7.716908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.607817, 16.600677, 7.974249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.642494, 16.873930, 8.264301>,  <23.663300, 17.037882, 8.438333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.642494, 16.873930, 8.264301>,  <23.607817, 16.600677, 7.974249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.642494, 16.873930, 8.264301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081637, -0.720551, 0.688579,
		0.992885, -0.118892, -0.006698,
		0.086693, 0.683133, 0.725130,
		23.668503, 17.078871, 8.481840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911455, 16.246971, 8.591850>,  <23.607817, 16.600677, 7.974249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911455, 16.246971, 8.591850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775305, 16.573719, 8.778127>,  <23.693615, 16.769768, 8.889893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.775305, 16.573719, 8.778127>,  <23.911455, 16.246971, 8.591850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775305, 16.573719, 8.778127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236070, -0.553641, 0.798595,
		0.910173, 0.161888, 0.381285,
		-0.340377, 0.816869, 0.465692,
		23.673191, 16.818779, 8.917834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.006832, 16.119076, 9.266110>,  <23.911455, 16.246971, 8.591850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.006832, 16.119076, 9.266110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.732792, 16.408571, 9.299197>,  <23.568367, 16.582268, 9.319049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.732792, 16.408571, 9.299197>,  <24.006832, 16.119076, 9.266110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.732792, 16.408571, 9.299197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422124, -0.486980, 0.764631,
		0.593673, 0.488933, 0.639137,
		-0.685101, 0.723737, 0.082716,
		23.527262, 16.625692, 9.324012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.883995, 16.381321, 9.830770>,  <24.006832, 16.119076, 9.266110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.883995, 16.381321, 9.830770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.524685, 16.492020, 9.694235>,  <23.309099, 16.558439, 9.612313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.524685, 16.492020, 9.694235>,  <23.883995, 16.381321, 9.830770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.524685, 16.492020, 9.694235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435065, -0.450844, 0.779396,
		0.061804, 0.848618, 0.525384,
		-0.898276, 0.276746, -0.341340,
		23.255201, 16.575043, 9.591833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563082, 16.731949, 10.397002>,  <23.883995, 16.381321, 9.830770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563082, 16.731949, 10.397002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.272106, 16.598866, 10.156955>,  <23.097521, 16.519016, 10.012926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.272106, 16.598866, 10.156955>,  <23.563082, 16.731949, 10.397002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.272106, 16.598866, 10.156955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407042, -0.494854, 0.767748,
		-0.552406, 0.802761, 0.224549,
		-0.727437, -0.332708, -0.600118,
		23.053875, 16.499054, 9.976919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.963953, 16.783478, 10.803847>,  <23.563082, 16.731949, 10.397002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.963953, 16.783478, 10.803847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852287, 16.531635, 10.513837>,  <22.785288, 16.380529, 10.339830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852287, 16.531635, 10.513837>,  <22.963953, 16.783478, 10.803847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852287, 16.531635, 10.513837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484752, -0.559369, 0.672400,
		-0.828905, 0.539167, -0.149048,
		-0.279163, -0.629607, -0.725026,
		22.768538, 16.342752, 10.296329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278820, 16.714062, 10.963954>,  <22.963953, 16.783478, 10.803847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278820, 16.714062, 10.963954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.355995, 16.398252, 10.730912>,  <22.402300, 16.208767, 10.591087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.355995, 16.398252, 10.730912>,  <22.278820, 16.714062, 10.963954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.355995, 16.398252, 10.730912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571362, -0.573110, 0.587444,
		-0.797698, 0.219540, -0.561677,
		0.192935, -0.789523, -0.582606,
		22.413876, 16.161396, 10.556130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709198, 16.388205, 10.883349>,  <22.278820, 16.714062, 10.963954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709198, 16.388205, 10.883349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.941223, 16.077562, 10.785035>,  <22.080439, 15.891177, 10.726047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.941223, 16.077562, 10.785035>,  <21.709198, 16.388205, 10.883349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.941223, 16.077562, 10.785035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625978, -0.618063, 0.475552,
		-0.521226, -0.121995, -0.844654,
		0.580065, -0.776605, -0.245785,
		22.115242, 15.844581, 10.711300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258490, 15.819856, 10.663630>,  <21.709198, 16.388205, 10.883349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258490, 15.819856, 10.663630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.603371, 15.645560, 10.766967>,  <21.810299, 15.540983, 10.828969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.603371, 15.645560, 10.766967>,  <21.258490, 15.819856, 10.663630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.603371, 15.645560, 10.766967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505209, -0.702393, 0.501406,
		-0.037025, -0.562830, -0.825743,
		0.862202, -0.435738, 0.258341,
		21.862032, 15.514839, 10.844469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121511, 15.036019, 10.486130>,  <21.258490, 15.819856, 10.663630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121511, 15.036019, 10.486130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.428322, 15.064776, 10.741160>,  <21.612408, 15.082030, 10.894179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.428322, 15.064776, 10.741160>,  <21.121511, 15.036019, 10.486130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.428322, 15.064776, 10.741160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412561, -0.705781, 0.575906,
		0.491393, -0.704773, -0.511691,
		0.767025, 0.071892, 0.637577,
		21.658430, 15.086344, 10.932433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127605, 14.401175, 10.709243>,  <21.121511, 15.036019, 10.486130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127605, 14.401175, 10.709243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342939, 14.610678, 10.973326>,  <21.472139, 14.736379, 11.131776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342939, 14.610678, 10.973326>,  <21.127605, 14.401175, 10.709243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342939, 14.610678, 10.973326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261781, -0.640728, 0.721760,
		0.801039, -0.561380, -0.207819,
		0.538337, 0.523755, 0.660207,
		21.504440, 14.767804, 11.171388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.819798, 14.016389, 10.615316>,  <21.127605, 14.401175, 10.709243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.819798, 14.016389, 10.615316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.048248, 13.692133, 10.563655>,  <22.185318, 13.497580, 10.532659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.048248, 13.692133, 10.563655>,  <21.819798, 14.016389, 10.615316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.048248, 13.692133, 10.563655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808005, 0.582916, -0.085655,
		0.144721, -0.055436, 0.987918,
		0.571125, -0.810639, -0.129153,
		22.219585, 13.448941, 10.524909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.299520, 13.675456, 11.173869>,  <21.819798, 14.016389, 10.615316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.299520, 13.675456, 11.173869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.439577, 13.645651, 10.800378>,  <22.523611, 13.627768, 10.576283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.439577, 13.645651, 10.800378>,  <22.299520, 13.675456, 11.173869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.439577, 13.645651, 10.800378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643898, 0.743111, 0.182158,
		0.680290, -0.665007, 0.308173,
		0.350143, -0.074512, -0.933728,
		22.544621, 13.623298, 10.520260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.129288, 13.675828, 11.218872>,  <22.299520, 13.675456, 11.173869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.129288, 13.675828, 11.218872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.965076, 13.821910, 10.884664>,  <22.866550, 13.909559, 10.684138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.965076, 13.821910, 10.884664>,  <23.129288, 13.675828, 11.218872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.965076, 13.821910, 10.884664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676549, 0.736322, -0.010571,
		0.611351, -0.569610, -0.549358,
		-0.410526, 0.365205, -0.835520,
		22.841919, 13.931471, 10.634007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.673176, 13.845621, 10.716227>,  <23.129288, 13.675828, 11.218872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.673176, 13.845621, 10.716227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.340424, 14.055210, 10.643093>,  <23.140772, 14.180964, 10.599213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.340424, 14.055210, 10.643093>,  <23.673176, 13.845621, 10.716227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.340424, 14.055210, 10.643093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504313, 0.851262, 0.144989,
		0.231610, 0.028408, -0.972394,
		-0.831881, 0.523972, -0.182834,
		23.090858, 14.212401, 10.588243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.637924, 14.393458, 10.073564>,  <23.673176, 13.845621, 10.716227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.637924, 14.393458, 10.073564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.457386, 14.456857, 10.424829>,  <23.349064, 14.494896, 10.635588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.457386, 14.456857, 10.424829>,  <23.637924, 14.393458, 10.073564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457386, 14.456857, 10.424829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463873, 0.882358, 0.079161,
		-0.762306, 0.443084, -0.471769,
		-0.451344, 0.158496, 0.878161,
		23.321983, 14.504406, 10.688277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.057909, 14.731007, 10.574106>,  <23.637924, 14.393458, 10.073564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.057909, 14.731007, 10.574106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.431688, 14.723890, 10.716367>,  <24.655956, 14.719621, 10.801723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.431688, 14.723890, 10.716367>,  <24.057909, 14.731007, 10.574106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431688, 14.723890, 10.716367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332160, 0.403541, -0.852540,
		-0.128354, 0.914789, 0.382997,
		0.934449, -0.017790, 0.355652,
		24.712023, 14.718554, 10.823063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.295248, 15.401654, 10.422642>,  <24.057909, 14.731007, 10.574106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.295248, 15.401654, 10.422642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.605822, 15.151588, 10.454436>,  <24.792166, 15.001549, 10.473513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.605822, 15.151588, 10.454436>,  <24.295248, 15.401654, 10.422642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605822, 15.151588, 10.454436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307994, 0.266396, -0.913330,
		0.549806, 0.733623, 0.399387,
		0.776435, -0.625164, 0.079485,
		24.838753, 14.964039, 10.478282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864525, 15.855558, 10.234051>,  <24.295248, 15.401654, 10.422642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864525, 15.855558, 10.234051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974228, 15.471662, 10.209793>,  <25.040051, 15.241323, 10.195239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974228, 15.471662, 10.209793>,  <24.864525, 15.855558, 10.234051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974228, 15.471662, 10.209793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528653, 0.203147, -0.824171,
		0.803311, 0.193978, 0.563085,
		0.274260, -0.959742, -0.060643,
		25.056505, 15.183739, 10.191600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619726, 15.847232, 10.331000>,  <24.864525, 15.855558, 10.234051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619726, 15.847232, 10.331000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.502974, 15.520728, 10.131591>,  <25.432922, 15.324825, 10.011946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.502974, 15.520728, 10.131591>,  <25.619726, 15.847232, 10.331000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502974, 15.520728, 10.131591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652272, 0.211334, -0.727928,
		0.699534, -0.537640, 0.470739,
		-0.291881, -0.816260, -0.498523,
		25.415409, 15.275850, 9.982034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267408, 15.509346, 10.023900>,  <25.619726, 15.847232, 10.331000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267408, 15.509346, 10.023900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.980345, 15.308919, 9.830447>,  <25.808107, 15.188663, 9.714375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.980345, 15.308919, 9.830447>,  <26.267408, 15.509346, 10.023900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980345, 15.308919, 9.830447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553813, 0.010401, -0.832576,
		0.422206, -0.865346, 0.270033,
		-0.717658, -0.501067, -0.483632,
		25.765047, 15.158599, 9.685358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577484, 14.939239, 9.709444>,  <26.267408, 15.509346, 10.023900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577484, 14.939239, 9.709444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.245462, 15.033379, 9.507209>,  <26.046249, 15.089863, 9.385867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.245462, 15.033379, 9.507209>,  <26.577484, 14.939239, 9.709444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245462, 15.033379, 9.507209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542064, 0.127436, -0.830618,
		-0.131056, -0.963520, -0.233354,
		-0.830055, 0.235350, -0.505588,
		25.996447, 15.103983, 9.355533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681835, 14.580391, 8.989300>,  <26.577484, 14.939239, 9.709444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681835, 14.580391, 8.989300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.371754, 14.828906, 8.943581>,  <26.185705, 14.978015, 8.916149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.371754, 14.828906, 8.943581>,  <26.681835, 14.580391, 8.989300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371754, 14.828906, 8.943581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202723, 0.073299, -0.976489,
		-0.598302, -0.780147, -0.182771,
		-0.775202, 0.621287, -0.114299,
		26.139193, 15.015292, 8.909291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303802, 14.397234, 8.408747>,  <26.681835, 14.580391, 8.989300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303802, 14.397234, 8.408747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.235395, 14.784830, 8.480091>,  <26.194351, 15.017387, 8.522898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.235395, 14.784830, 8.480091>,  <26.303802, 14.397234, 8.408747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235395, 14.784830, 8.480091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286644, 0.222128, -0.931930,
		-0.942650, -0.108250, -0.315742,
		-0.171017, 0.968989, 0.178360,
		26.184090, 15.075527, 8.533599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068222, 14.586243, 7.792826>,  <26.303802, 14.397234, 8.408747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068222, 14.586243, 7.792826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.181238, 14.918911, 7.984031>,  <26.249048, 15.118512, 8.098754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.181238, 14.918911, 7.984031>,  <26.068222, 14.586243, 7.792826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181238, 14.918911, 7.984031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549671, 0.268023, -0.791218,
		-0.786150, 0.486302, -0.381417,
		0.282542, 0.831670, 0.478012,
		26.266001, 15.168412, 8.127435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974922, 15.051509, 7.335106>,  <26.068222, 14.586243, 7.792826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974922, 15.051509, 7.335106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.224981, 15.252267, 7.574201>,  <26.375017, 15.372722, 7.717658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.224981, 15.252267, 7.574201>,  <25.974922, 15.051509, 7.335106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224981, 15.252267, 7.574201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448726, 0.395501, -0.801389,
		-0.638619, 0.769207, 0.022033,
		0.625148, 0.501896, 0.597738,
		26.412525, 15.402836, 7.753522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918385, 15.747289, 7.109039>,  <25.974922, 15.051509, 7.335106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918385, 15.747289, 7.109039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.269316, 15.684014, 7.290268>,  <26.479874, 15.646049, 7.399005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.269316, 15.684014, 7.290268>,  <25.918385, 15.747289, 7.109039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269316, 15.684014, 7.290268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473370, 0.440392, -0.762874,
		-0.078852, 0.883760, 0.461249,
		0.877327, -0.158187, 0.453071,
		26.532515, 15.636559, 7.426189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248198, 16.422735, 7.084116>,  <25.918385, 15.747289, 7.109039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248198, 16.422735, 7.084116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.545595, 16.170586, 7.173425>,  <26.724033, 16.019297, 7.227010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.545595, 16.170586, 7.173425>,  <26.248198, 16.422735, 7.084116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545595, 16.170586, 7.173425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662636, 0.649410, -0.373068,
		0.090177, 0.425321, 0.900539,
		0.743493, -0.630372, 0.223270,
		26.768642, 15.981474, 7.240406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745581, 16.936447, 7.107572>,  <26.248198, 16.422735, 7.084116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745581, 16.936447, 7.107572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.943800, 16.589016, 7.108852>,  <27.062731, 16.380558, 7.109620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.943800, 16.589016, 7.108852>,  <26.745581, 16.936447, 7.107572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943800, 16.589016, 7.108852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817029, 0.464881, -0.341101,
		0.294784, 0.171646, 0.940021,
		0.495546, -0.868576, 0.003200,
		27.092464, 16.328444, 7.109812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428572, 17.051466, 7.490853>,  <26.745581, 16.936447, 7.107572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428572, 17.051466, 7.490853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.458830, 16.736856, 7.245689>,  <27.476984, 16.548090, 7.098590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.458830, 16.736856, 7.245689>,  <27.428572, 17.051466, 7.490853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458830, 16.736856, 7.245689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934583, 0.270204, -0.231394,
		0.347608, -0.555311, 0.755512,
		0.075646, -0.786523, -0.612910,
		27.481524, 16.500900, 7.061816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993395, 16.775446, 7.778930>,  <27.428572, 17.051466, 7.490853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993395, 16.775446, 7.778930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.929586, 16.639069, 7.408350>,  <27.891302, 16.557243, 7.186002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.929586, 16.639069, 7.408350>,  <27.993395, 16.775446, 7.778930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929586, 16.639069, 7.408350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836321, 0.451956, -0.310326,
		0.524518, -0.824314, 0.213041,
		-0.159521, -0.340943, -0.926451,
		27.881731, 16.536785, 7.130414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670742, 16.461634, 7.549824>,  <27.993395, 16.775446, 7.778930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670742, 16.461634, 7.549824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.474667, 16.543238, 7.210863>,  <28.357021, 16.592201, 7.007485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.474667, 16.543238, 7.210863>,  <28.670742, 16.461634, 7.549824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474667, 16.543238, 7.210863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830577, 0.404141, -0.383159,
		0.264302, -0.891655, -0.367553,
		-0.490189, 0.204011, -0.847404,
		28.327610, 16.604441, 6.956641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208498, 16.393663, 7.065332>,  <28.670742, 16.461634, 7.549824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208498, 16.393663, 7.065332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.928217, 16.595802, 6.863882>,  <28.760048, 16.717085, 6.743011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.928217, 16.595802, 6.863882>,  <29.208498, 16.393663, 7.065332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928217, 16.595802, 6.863882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711298, 0.549620, -0.438147,
		0.055387, -0.665239, -0.744573,
		-0.700705, 0.505346, -0.503626,
		28.718006, 16.747406, 6.712794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.598700, 20.180584, 16.734343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432758, 19.823183, 16.803106>,  <15.333194, 19.608744, 16.844364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432758, 19.823183, 16.803106>,  <15.598700, 20.180584, 16.734343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432758, 19.823183, 16.803106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346605, -0.329874, -0.878093,
		0.841286, -0.304694, 0.446541,
		-0.414852, -0.893501, 0.171910,
		15.308303, 19.555132, 16.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958555, 19.687714, 16.283827>,  <15.598700, 20.180584, 16.734343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.958555, 19.687714, 16.283827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662765, 19.443796, 16.397898>,  <15.485290, 19.297445, 16.466339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662765, 19.443796, 16.397898>,  <15.958555, 19.687714, 16.283827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662765, 19.443796, 16.397898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312904, -0.686434, -0.656429,
		0.596041, -0.396181, 0.698409,
		-0.739477, -0.609794, 0.285176,
		15.440922, 19.260859, 16.483450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.310303, 18.953651, 16.516783>,  <15.958555, 19.687714, 16.283827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.310303, 18.953651, 16.516783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933872, 18.892508, 16.396111>,  <15.708014, 18.855822, 16.323708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933872, 18.892508, 16.396111>,  <16.310303, 18.953651, 16.516783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933872, 18.892508, 16.396111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317659, -0.705640, -0.633375,
		-0.116060, -0.691885, 0.712618,
		-0.941075, -0.152860, -0.301680,
		15.651549, 18.846649, 16.305607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360321, 18.269274, 16.368155>,  <16.310303, 18.953651, 16.516783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360321, 18.269274, 16.368155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033655, 18.396328, 16.175421>,  <15.837655, 18.472561, 16.059780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033655, 18.396328, 16.175421>,  <16.360321, 18.269274, 16.368155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033655, 18.396328, 16.175421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166911, -0.669231, -0.724065,
		-0.552447, -0.671743, 0.493522,
		-0.816666, 0.317633, -0.481836,
		15.788655, 18.491619, 16.030870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077414, 17.637072, 16.085424>,  <16.360321, 18.269274, 16.368155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077414, 17.637072, 16.085424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902393, 17.931253, 15.878484>,  <15.797381, 18.107763, 15.754319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902393, 17.931253, 15.878484>,  <16.077414, 17.637072, 16.085424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.902393, 17.931253, 15.878484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053225, -0.553159, -0.831374,
		-0.897617, -0.391304, 0.202890,
		-0.437550, 0.735457, -0.517352,
		15.771128, 18.151890, 15.723278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414989, 17.438780, 15.789608>,  <16.077414, 17.637072, 16.085424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.414989, 17.438780, 15.789608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575283, 17.733101, 15.571248>,  <15.671459, 17.909693, 15.440232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575283, 17.733101, 15.571248>,  <15.414989, 17.438780, 15.789608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575283, 17.733101, 15.571248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025909, -0.604696, -0.796035,
		-0.915828, 0.304855, -0.261386,
		0.400734, 0.735803, -0.545899,
		15.695503, 17.953842, 15.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085704, 17.364016, 15.223539>,  <15.414989, 17.438780, 15.789608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085704, 17.364016, 15.223539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382654, 17.599876, 15.096300>,  <15.560824, 17.741394, 15.019957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382654, 17.599876, 15.096300>,  <15.085704, 17.364016, 15.223539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382654, 17.599876, 15.096300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095305, -0.562898, -0.821013,
		-0.663171, 0.579184, -0.474079,
		0.742376, 0.589654, -0.318098,
		15.605367, 17.776773, 15.000871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929794, 17.444633, 14.489265>,  <15.085704, 17.364016, 15.223539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929794, 17.444633, 14.489265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314114, 17.542318, 14.541770>,  <15.544705, 17.600929, 14.573273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314114, 17.542318, 14.541770>,  <14.929794, 17.444633, 14.489265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314114, 17.542318, 14.541770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246745, -0.537279, -0.806504,
		-0.126432, 0.807275, -0.576474,
		0.960797, 0.244210, 0.131262,
		15.602353, 17.615582, 14.581148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166451, 17.536833, 13.724898>,  <14.929794, 17.444633, 14.489265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166451, 17.536833, 13.724898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494864, 17.504284, 13.950920>,  <15.691911, 17.484755, 14.086534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494864, 17.504284, 13.950920>,  <15.166451, 17.536833, 13.724898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494864, 17.504284, 13.950920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495751, -0.389188, -0.776379,
		0.283090, 0.917557, -0.279194,
		0.821030, -0.081375, 0.565055,
		15.741173, 17.479872, 14.120437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.752736, 17.682535, 13.295989>,  <15.166451, 17.536833, 13.724898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.752736, 17.682535, 13.295989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888755, 17.478985, 13.612322>,  <15.970366, 17.356855, 13.802121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888755, 17.478985, 13.612322>,  <15.752736, 17.682535, 13.295989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888755, 17.478985, 13.612322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549662, -0.574791, -0.606207,
		0.763047, 0.640828, 0.084255,
		0.340046, -0.508876, 0.790831,
		15.990768, 17.326323, 13.849571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514685, 17.774025, 13.387907>,  <15.752736, 17.682535, 13.295989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514685, 17.774025, 13.387907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414274, 17.428295, 13.562230>,  <16.354027, 17.220858, 13.666824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414274, 17.428295, 13.562230>,  <16.514685, 17.774025, 13.387907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414274, 17.428295, 13.562230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587496, -0.493859, -0.641055,
		0.769307, 0.095114, 0.631759,
		-0.251027, -0.864324, 0.435808,
		16.338966, 17.168999, 13.692972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140074, 17.430481, 13.579611>,  <16.514685, 17.774025, 13.387907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140074, 17.430481, 13.579611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867174, 17.140089, 13.544997>,  <16.703434, 16.965855, 13.524229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867174, 17.140089, 13.544997>,  <17.140074, 17.430481, 13.579611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.867174, 17.140089, 13.544997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527573, -0.406909, -0.745716,
		0.506162, -0.554419, 0.660621,
		-0.682251, -0.725979, -0.086534,
		16.662498, 16.922295, 13.519037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523876, 16.697552, 13.547130>,  <17.140074, 17.430481, 13.579611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523876, 16.697552, 13.547130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164181, 16.679420, 13.373087>,  <16.948364, 16.668541, 13.268661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164181, 16.679420, 13.373087>,  <17.523876, 16.697552, 13.547130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164181, 16.679420, 13.373087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433279, -0.229489, -0.871553,
		-0.060345, -0.972255, 0.226005,
		-0.899238, -0.045329, -0.435106,
		16.894409, 16.665823, 13.242555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499281, 16.071020, 13.211205>,  <17.523876, 16.697552, 13.547130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499281, 16.071020, 13.211205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277075, 16.321558, 12.992446>,  <17.143751, 16.471882, 12.861191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277075, 16.321558, 12.992446>,  <17.499281, 16.071020, 13.211205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277075, 16.321558, 12.992446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453040, -0.323533, -0.830711,
		-0.697252, -0.709237, -0.104033,
		-0.555513, 0.626346, -0.546897,
		17.110420, 16.509462, 12.828377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841599, 15.765963, 12.706583>,  <17.499281, 16.071020, 13.211205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.841599, 15.765963, 12.706583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119085, 15.566108, 12.914090>,  <18.285578, 15.446195, 13.038594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119085, 15.566108, 12.914090>,  <17.841599, 15.765963, 12.706583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.119085, 15.566108, 12.914090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533527, 0.127382, 0.836136,
		-0.483846, -0.856818, -0.178203,
		0.693716, -0.499637, 0.518768,
		18.327200, 15.416217, 13.069720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538839, 15.284931, 12.993837>,  <17.841599, 15.765963, 12.706583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.538839, 15.284931, 12.993837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842813, 15.301550, 13.253305>,  <18.025198, 15.311521, 13.408986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842813, 15.301550, 13.253305>,  <17.538839, 15.284931, 12.993837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842813, 15.301550, 13.253305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637635, -0.146068, 0.756364,
		0.126175, -0.988402, -0.084510,
		0.759936, 0.041548, 0.648670,
		18.070795, 15.314013, 13.447906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548204, 14.629680, 13.491219>,  <17.538839, 15.284931, 12.993837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548204, 14.629680, 13.491219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736847, 14.942880, 13.653452>,  <17.850033, 15.130799, 13.750792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736847, 14.942880, 13.653452>,  <17.548204, 14.629680, 13.491219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736847, 14.942880, 13.653452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530971, -0.115062, 0.839542,
		0.704028, -0.611287, 0.361487,
		0.471607, 0.783000, 0.405582,
		17.878328, 15.177780, 13.775126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645294, 14.434894, 14.144913>,  <17.548204, 14.629680, 13.491219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645294, 14.434894, 14.144913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734919, 14.822968, 14.181879>,  <17.788692, 15.055812, 14.204059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734919, 14.822968, 14.181879>,  <17.645294, 14.434894, 14.144913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.734919, 14.822968, 14.181879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294452, -0.023005, 0.955389,
		0.929029, -0.241275, 0.280518,
		0.224059, 0.970184, 0.092416,
		17.802135, 15.114022, 14.209604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094555, 14.557021, 14.728361>,  <17.645294, 14.434894, 14.144913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.094555, 14.557021, 14.728361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913652, 14.910889, 14.683059>,  <17.805111, 15.123209, 14.655877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913652, 14.910889, 14.683059>,  <18.094555, 14.557021, 14.728361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913652, 14.910889, 14.683059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216015, 0.014556, 0.976282,
		0.865334, 0.465994, 0.184519,
		-0.452255, 0.884668, -0.113257,
		17.777975, 15.176290, 14.649081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260365, 14.886316, 15.312273>,  <18.094555, 14.557021, 14.728361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260365, 14.886316, 15.312273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942043, 15.088719, 15.179213>,  <17.751051, 15.210161, 15.099377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942043, 15.088719, 15.179213>,  <18.260365, 14.886316, 15.312273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942043, 15.088719, 15.179213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320794, 0.113645, 0.940306,
		0.513607, 0.855009, 0.071886,
		-0.795801, 0.506008, -0.332651,
		17.703302, 15.240521, 15.079417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207727, 15.411851, 15.685720>,  <18.260365, 14.886316, 15.312273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207727, 15.411851, 15.685720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837467, 15.361980, 15.542821>,  <17.615311, 15.332058, 15.457082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837467, 15.361980, 15.542821>,  <18.207727, 15.411851, 15.685720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.837467, 15.361980, 15.542821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371643, 0.122214, 0.920296,
		-0.071079, 0.984642, -0.159462,
		-0.925651, -0.124677, -0.357248,
		17.559772, 15.324577, 15.435646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866346, 15.856358, 16.118258>,  <18.207727, 15.411851, 15.685720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866346, 15.856358, 16.118258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563850, 15.643111, 15.966524>,  <17.382353, 15.515163, 15.875484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563850, 15.643111, 15.966524>,  <17.866346, 15.856358, 16.118258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563850, 15.643111, 15.966524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561950, 0.232254, 0.793896,
		-0.335137, 0.813539, -0.475224,
		-0.756238, -0.533116, -0.379331,
		17.336979, 15.483176, 15.852725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313606, 16.338707, 16.113262>,  <17.866346, 15.856358, 16.118258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313606, 16.338707, 16.113262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.187227, 15.959206, 16.110722>,  <17.111399, 15.731504, 16.109198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.187227, 15.959206, 16.110722>,  <17.313606, 16.338707, 16.113262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187227, 15.959206, 16.110722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658222, 0.214367, 0.721658,
		-0.683315, 0.232188, -0.692221,
		-0.315950, -0.948755, -0.006351,
		17.092442, 15.674580, 16.108816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568354, 16.271896, 16.012211>,  <17.313606, 16.338707, 16.113262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568354, 16.271896, 16.012211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646221, 15.920033, 16.185787>,  <16.692942, 15.708915, 16.289932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646221, 15.920033, 16.185787>,  <16.568354, 16.271896, 16.012211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646221, 15.920033, 16.185787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767477, 0.138894, 0.625849,
		-0.610805, -0.454872, -0.648080,
		0.194667, -0.879659, 0.433942,
		16.704620, 15.656135, 16.315969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863820, 15.994434, 16.154055>,  <16.568354, 16.271896, 16.012211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863820, 15.994434, 16.154055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079760, 15.755203, 16.390991>,  <16.209324, 15.611665, 16.533154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079760, 15.755203, 16.390991>,  <15.863820, 15.994434, 16.154055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079760, 15.755203, 16.390991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737042, 0.004068, 0.675835,
		-0.406612, -0.801427, -0.438613,
		0.539849, -0.598078, 0.592340,
		16.241714, 15.575780, 16.568693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.398287, 15.415188, 16.391119>,  <15.863820, 15.994434, 16.154055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.398287, 15.415188, 16.391119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689677, 15.490489, 16.654598>,  <15.864511, 15.535669, 16.812687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689677, 15.490489, 16.654598>,  <15.398287, 15.415188, 16.391119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689677, 15.490489, 16.654598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678283, 0.063161, 0.732082,
		0.096221, -0.980085, 0.173707,
		0.728474, 0.188264, 0.658698,
		15.908219, 15.546965, 16.852207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.249640, 14.951755, 16.919016>,  <15.398287, 15.415188, 16.391119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.249640, 14.951755, 16.919016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493658, 15.223037, 17.082911>,  <15.640069, 15.385806, 17.181248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493658, 15.223037, 17.082911>,  <15.249640, 14.951755, 16.919016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.493658, 15.223037, 17.082911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591155, 0.045233, 0.805289,
		0.527618, -0.733479, 0.428519,
		0.610045, 0.678206, 0.409734,
		15.676672, 15.426498, 17.205832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.300407, 14.686553, 17.586201>,  <15.249640, 14.951755, 16.919016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.300407, 14.686553, 17.586201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410462, 15.070582, 17.606434>,  <15.476496, 15.301000, 17.618574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410462, 15.070582, 17.606434>,  <15.300407, 14.686553, 17.586201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410462, 15.070582, 17.606434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605455, 0.132160, 0.784830,
		0.746809, -0.246562, 0.617643,
		0.275137, 0.960073, 0.050584,
		15.493004, 15.358604, 17.621609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368577, 14.126299, 18.066303>,  <15.300407, 14.686553, 17.586201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368577, 14.126299, 18.066303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050153, 13.892623, 18.129562>,  <14.859098, 13.752418, 18.167517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050153, 13.892623, 18.129562>,  <15.368577, 14.126299, 18.066303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.050153, 13.892623, 18.129562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180894, -0.019691, -0.983305,
		0.577551, -0.811378, -0.090002,
		-0.796061, -0.584189, 0.158146,
		14.811335, 13.717366, 18.177006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459022, 13.436644, 17.746531>,  <15.368577, 14.126299, 18.066303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459022, 13.436644, 17.746531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068078, 13.512920, 17.783203>,  <14.833512, 13.558686, 17.805206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068078, 13.512920, 17.783203>,  <15.459022, 13.436644, 17.746531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068078, 13.512920, 17.783203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112480, -0.101247, -0.988482,
		-0.179214, -0.976415, 0.120404,
		-0.977359, 0.190693, 0.091682,
		14.774870, 13.570128, 17.810707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.318777, 13.170582, 17.131830>,  <15.459022, 13.436644, 17.746531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.318777, 13.170582, 17.131830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980104, 13.345385, 17.253258>,  <14.776901, 13.450266, 17.326115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980104, 13.345385, 17.253258>,  <15.318777, 13.170582, 17.131830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980104, 13.345385, 17.253258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353084, -0.034614, -0.934951,
		-0.398072, -0.898792, 0.183607,
		-0.846682, 0.437007, 0.303570,
		14.726100, 13.476486, 17.344328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753943, 12.765124, 16.835068>,  <15.318777, 13.170582, 17.131830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.753943, 12.765124, 16.835068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591590, 13.120961, 16.918859>,  <14.494178, 13.334463, 16.969135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591590, 13.120961, 16.918859>,  <14.753943, 12.765124, 16.835068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.591590, 13.120961, 16.918859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393618, 0.036705, -0.918541,
		-0.824817, -0.455276, 0.335262,
		-0.405884, 0.889593, 0.209480,
		14.469825, 13.387839, 16.981703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.033820, 12.562078, 16.792463>,  <14.753943, 12.765124, 16.835068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.033820, 12.562078, 16.792463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.043195, 12.961886, 16.784365>,  <14.048820, 13.201772, 16.779507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.043195, 12.961886, 16.784365>,  <14.033820, 12.562078, 16.792463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043195, 12.961886, 16.784365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649626, -0.000167, -0.760254,
		-0.759893, 0.030969, 0.649310,
		0.023436, 0.999520, -0.020245,
		14.050225, 13.261743, 16.778292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.322824, 12.811655, 16.836731>,  <14.033820, 12.562078, 16.792463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.322824, 12.811655, 16.836731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541041, 13.098285, 16.662878>,  <13.671971, 13.270263, 16.558567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541041, 13.098285, 16.662878>,  <13.322824, 12.811655, 16.836731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.541041, 13.098285, 16.662878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658628, 0.045874, -0.751069,
		-0.518259, 0.696000, 0.496983,
		0.545542, 0.716575, -0.434631,
		13.704704, 13.313257, 16.532488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.854951, 13.227018, 16.383484>,  <13.322824, 12.811655, 16.836731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.854951, 13.227018, 16.383484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.229399, 13.314370, 16.273220>,  <13.454067, 13.366781, 16.207062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.229399, 13.314370, 16.273220>,  <12.854951, 13.227018, 16.383484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.229399, 13.314370, 16.273220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312211, 0.155267, -0.937239,
		-0.161873, 0.963433, 0.213529,
		0.936121, 0.218379, -0.275661,
		13.510235, 13.379884, 16.190521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.752876, 13.771404, 15.979774>,  <12.854951, 13.227018, 16.383484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.752876, 13.771404, 15.979774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111399, 13.623163, 15.882378>,  <13.326512, 13.534219, 15.823940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111399, 13.623163, 15.882378>,  <12.752876, 13.771404, 15.979774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.111399, 13.623163, 15.882378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140451, 0.283563, -0.948612,
		0.420604, 0.884446, 0.202108,
		0.896307, -0.370604, -0.243489,
		13.380291, 13.511982, 15.809331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.019797, 14.283834, 15.503512>,  <12.752876, 13.771404, 15.979774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.019797, 14.283834, 15.503512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225690, 13.950020, 15.424922>,  <13.349226, 13.749732, 15.377768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225690, 13.950020, 15.424922>,  <13.019797, 14.283834, 15.503512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225690, 13.950020, 15.424922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219949, 0.092960, -0.971072,
		0.828657, 0.543057, -0.135706,
		0.514732, -0.834535, -0.196477,
		13.380110, 13.699659, 15.365979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434228, 14.426796, 14.886520>,  <13.019797, 14.283834, 15.503512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434228, 14.426796, 14.886520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.401007, 14.029534, 14.919373>,  <13.381074, 13.791177, 14.939084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.401007, 14.029534, 14.919373>,  <13.434228, 14.426796, 14.886520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.401007, 14.029534, 14.919373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282478, -0.055574, -0.957663,
		0.955672, -0.102738, -0.275929,
		-0.083054, -0.993155, 0.082131,
		13.376090, 13.731588, 14.944012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890897, 14.173892, 14.474636>,  <13.434228, 14.426796, 14.886520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.890897, 14.173892, 14.474636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.586135, 13.918941, 14.520677>,  <13.403277, 13.765969, 14.548301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.586135, 13.918941, 14.520677>,  <13.890897, 14.173892, 14.474636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.586135, 13.918941, 14.520677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322263, 0.218905, -0.920992,
		0.561826, -0.738801, -0.372189,
		-0.761904, -0.637380, 0.115101,
		13.357563, 13.727727, 14.555207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878781, 13.633778, 13.942569>,  <13.890897, 14.173892, 14.474636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.878781, 13.633778, 13.942569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503617, 13.685401, 14.071360>,  <13.278519, 13.716375, 14.148634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503617, 13.685401, 14.071360>,  <13.878781, 13.633778, 13.942569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503617, 13.685401, 14.071360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296464, 0.183674, -0.937216,
		-0.180095, -0.974478, -0.134008,
		-0.937910, 0.129059, 0.321976,
		13.222244, 13.724119, 14.167953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.114161, 14.799850, 23.430159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.502210, 14.706950, 23.458233>,  <14.735039, 14.651210, 23.475077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.502210, 14.706950, 23.458233>,  <14.114161, 14.799850, 23.430159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502210, 14.706950, 23.458233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011968, -0.334735, -0.942236,
		0.242330, 0.913243, -0.327513,
		0.970120, -0.232252, 0.070186,
		14.793245, 14.637275, 23.479288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462756, 15.238239, 22.921625>,  <14.114161, 14.799850, 23.430159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462756, 15.238239, 22.921625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.671149, 14.907867, 23.007805>,  <14.796185, 14.709644, 23.059513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.671149, 14.907867, 23.007805>,  <14.462756, 15.238239, 22.921625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.671149, 14.907867, 23.007805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010118, -0.258368, -0.965993,
		0.853507, 0.501086, -0.142962,
		0.520983, -0.825929, 0.215449,
		14.827444, 14.660089, 23.072439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905911, 15.189441, 22.436892>,  <14.462756, 15.238239, 22.921625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905911, 15.189441, 22.436892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.918420, 14.817974, 22.584728>,  <14.925925, 14.595094, 22.673431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.918420, 14.817974, 22.584728>,  <14.905911, 15.189441, 22.436892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918420, 14.817974, 22.584728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090365, -0.365632, -0.926363,
		0.995418, 0.062367, 0.072485,
		0.031272, -0.928668, 0.369593,
		14.927801, 14.539373, 22.695606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464319, 14.816891, 22.067980>,  <14.905911, 15.189441, 22.436892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464319, 14.816891, 22.067980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.234812, 14.536055, 22.236671>,  <15.097107, 14.367553, 22.337887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.234812, 14.536055, 22.236671>,  <15.464319, 14.816891, 22.067980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234812, 14.536055, 22.236671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068567, -0.554293, -0.829493,
		0.816142, -0.447021, 0.366177,
		-0.573770, -0.702091, 0.421730,
		15.062681, 14.325427, 22.363190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745402, 14.169341, 21.850122>,  <15.464319, 14.816891, 22.067980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745402, 14.169341, 21.850122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.368028, 14.099860, 21.963085>,  <15.141603, 14.058171, 22.030863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.368028, 14.099860, 21.963085>,  <15.745402, 14.169341, 21.850122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.368028, 14.099860, 21.963085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169309, -0.479937, -0.860811,
		0.285062, -0.859935, 0.423381,
		-0.943437, -0.173702, 0.282407,
		15.084996, 14.047750, 22.047808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672139, 13.495538, 21.730303>,  <15.745402, 14.169341, 21.850122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672139, 13.495538, 21.730303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.307895, 13.657718, 21.762299>,  <15.089348, 13.755026, 21.781496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.307895, 13.657718, 21.762299>,  <15.672139, 13.495538, 21.730303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307895, 13.657718, 21.762299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301482, -0.519351, -0.799614,
		-0.282659, -0.752254, 0.595162,
		-0.910611, 0.405449, 0.079992,
		15.034712, 13.779352, 21.786297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320406, 13.012949, 21.360239>,  <15.672139, 13.495538, 21.730303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320406, 13.012949, 21.360239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.035171, 13.292788, 21.378431>,  <14.864029, 13.460690, 21.389347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.035171, 13.292788, 21.378431>,  <15.320406, 13.012949, 21.360239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.035171, 13.292788, 21.378431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312007, -0.258592, -0.914211,
		-0.627819, -0.666103, 0.402679,
		-0.713088, 0.699598, 0.045480,
		14.821244, 13.502666, 21.392075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706232, 12.709326, 21.221167>,  <15.320406, 13.012949, 21.360239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.706232, 12.709326, 21.221167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.705304, 13.085972, 21.086493>,  <14.704747, 13.311959, 21.005688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.705304, 13.085972, 21.086493>,  <14.706232, 12.709326, 21.221167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.705304, 13.085972, 21.086493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155185, -0.332945, -0.930089,
		-0.987883, 0.050089, 0.146897,
		-0.002321, 0.941615, -0.336683,
		14.704608, 13.368456, 20.985487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161886, 12.743152, 20.662582>,  <14.706232, 12.709326, 21.221167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161886, 12.743152, 20.662582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.397024, 13.063056, 20.613884>,  <14.538107, 13.254998, 20.584665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.397024, 13.063056, 20.613884>,  <14.161886, 12.743152, 20.662582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.397024, 13.063056, 20.613884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185882, -0.012935, -0.982487,
		-0.787329, 0.600179, 0.141058,
		0.587844, 0.799761, -0.121747,
		14.573378, 13.302984, 20.577360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741506, 13.200484, 20.206818>,  <14.161886, 12.743152, 20.662582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741506, 13.200484, 20.206818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.121067, 13.322564, 20.174730>,  <14.348804, 13.395812, 20.155478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.121067, 13.322564, 20.174730>,  <13.741506, 13.200484, 20.206818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121067, 13.322564, 20.174730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070399, -0.043065, -0.996589,
		-0.307613, 0.951314, -0.019379,
		0.948904, 0.305199, -0.080219,
		14.405738, 13.414124, 20.150665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742094, 13.738661, 19.765320>,  <13.741506, 13.200484, 20.206818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.742094, 13.738661, 19.765320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.130022, 13.646156, 19.796223>,  <14.362779, 13.590653, 19.814764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.130022, 13.646156, 19.796223>,  <13.742094, 13.738661, 19.765320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130022, 13.646156, 19.796223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079769, 0.001519, -0.996812,
		0.230407, 0.972890, 0.019921,
		0.969819, -0.231261, 0.077257,
		14.420968, 13.576778, 19.819399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047164, 14.268479, 19.497698>,  <13.742094, 13.738661, 19.765320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047164, 14.268479, 19.497698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.329228, 13.990012, 19.443886>,  <14.498467, 13.822932, 19.411598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.329228, 13.990012, 19.443886>,  <14.047164, 14.268479, 19.497698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.329228, 13.990012, 19.443886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062085, 0.128378, -0.989780,
		0.706324, 0.706307, 0.047305,
		0.705161, -0.696168, -0.134528,
		14.540777, 13.781161, 19.403528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.455537, 14.557118, 19.009472>,  <14.047164, 14.268479, 19.497698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.455537, 14.557118, 19.009472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.582235, 14.177936, 18.996502>,  <14.658255, 13.950426, 18.988720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.582235, 14.177936, 18.996502>,  <14.455537, 14.557118, 19.009472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582235, 14.177936, 18.996502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165046, 0.088748, -0.982285,
		0.934041, 0.305783, 0.184567,
		0.316746, -0.947956, -0.032426,
		14.677259, 13.893549, 18.986774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058285, 14.455738, 18.674389>,  <14.455537, 14.557118, 19.009472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058285, 14.455738, 18.674389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.849009, 14.116900, 18.637075>,  <14.723443, 13.913598, 18.614687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.849009, 14.116900, 18.637075>,  <15.058285, 14.455738, 18.674389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849009, 14.116900, 18.637075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066520, 0.149722, -0.986488,
		0.849615, -0.509916, -0.134682,
		-0.523191, -0.847094, -0.093286,
		14.692051, 13.862772, 18.609089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581243, 14.782780, 18.314289>,  <15.058285, 14.455738, 18.674389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581243, 14.782780, 18.314289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.494640, 15.150548, 18.182964>,  <15.442678, 15.371209, 18.104170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.494640, 15.150548, 18.182964>,  <15.581243, 14.782780, 18.314289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494640, 15.150548, 18.182964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569808, 0.154062, 0.807207,
		0.792744, 0.361840, 0.490539,
		-0.216507, 0.919422, -0.328312,
		15.429688, 15.426374, 18.084471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781264, 15.264259, 18.769793>,  <15.581243, 14.782780, 18.314289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781264, 15.264259, 18.769793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.505865, 15.467048, 18.562351>,  <15.340626, 15.588720, 18.437885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.505865, 15.467048, 18.562351>,  <15.781264, 15.264259, 18.769793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505865, 15.467048, 18.562351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363804, 0.377172, 0.851697,
		0.627389, 0.775062, -0.075244,
		-0.688498, 0.506971, -0.518605,
		15.299315, 15.619139, 18.406771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800558, 16.032084, 18.939602>,  <15.781264, 15.264259, 18.769793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800558, 16.032084, 18.939602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.436513, 15.960035, 18.790337>,  <15.218085, 15.916807, 18.700777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.436513, 15.960035, 18.790337>,  <15.800558, 16.032084, 18.939602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.436513, 15.960035, 18.790337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413197, 0.461900, 0.784803,
		0.031006, 0.868450, -0.494807,
		-0.910114, -0.180119, -0.373163,
		15.163479, 15.905999, 18.678389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388731, 16.619007, 19.172697>,  <15.800558, 16.032084, 18.939602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388731, 16.619007, 19.172697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.115827, 16.351503, 19.054523>,  <14.952084, 16.191002, 18.983620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.115827, 16.351503, 19.054523>,  <15.388731, 16.619007, 19.172697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.115827, 16.351503, 19.054523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608733, 0.295813, 0.736164,
		-0.404924, 0.682096, -0.608918,
		-0.682261, -0.668759, -0.295433,
		14.911148, 16.150875, 18.965893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833232, 17.018702, 19.199545>,  <15.388731, 16.619007, 19.172697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833232, 17.018702, 19.199545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.726234, 16.633310, 19.204548>,  <14.662036, 16.402075, 19.207550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.726234, 16.633310, 19.204548>,  <14.833232, 17.018702, 19.199545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726234, 16.633310, 19.204548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740934, 0.213970, 0.636580,
		-0.616007, 0.161016, -0.771109,
		-0.267494, -0.963479, 0.012505,
		14.645987, 16.344267, 19.208300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203179, 17.148630, 19.131971>,  <14.833232, 17.018702, 19.199545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.203179, 17.148630, 19.131971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.214581, 16.768661, 19.256445>,  <14.221422, 16.540680, 19.331129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.214581, 16.768661, 19.256445>,  <14.203179, 17.148630, 19.131971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.214581, 16.768661, 19.256445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699090, 0.203567, 0.685444,
		-0.714465, -0.237085, -0.658278,
		0.028505, -0.949922, 0.311185,
		14.223133, 16.483685, 19.349800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457603, 16.923756, 19.308720>,  <14.203179, 17.148630, 19.131971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457603, 16.923756, 19.308720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.727071, 16.708069, 19.510874>,  <13.888751, 16.578657, 19.632166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.727071, 16.708069, 19.510874>,  <13.457603, 16.923756, 19.308720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.727071, 16.708069, 19.510874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449782, 0.243463, 0.859315,
		-0.586401, -0.806206, -0.078517,
		0.673669, -0.539219, 0.505384,
		13.929172, 16.546303, 19.662489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.044600, 16.572584, 19.711439>,  <13.457603, 16.923756, 19.308720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.044600, 16.572584, 19.711439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.414660, 16.553698, 19.862103>,  <13.636695, 16.542366, 19.952501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.414660, 16.553698, 19.862103>,  <13.044600, 16.572584, 19.711439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414660, 16.553698, 19.862103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368366, 0.127995, 0.920828,
		-0.091689, -0.990650, 0.101021,
		0.925148, -0.047217, 0.376658,
		13.692204, 16.539532, 19.975100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.987828, 16.161722, 20.294733>,  <13.044600, 16.572584, 19.711439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.987828, 16.161722, 20.294733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.338803, 16.343452, 20.356302>,  <13.549389, 16.452490, 20.393244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.338803, 16.343452, 20.356302>,  <12.987828, 16.161722, 20.294733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338803, 16.343452, 20.356302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265144, 0.191946, 0.944910,
		0.399751, -0.869912, 0.288882,
		0.877438, 0.454324, 0.153921,
		13.602035, 16.479750, 20.402479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.245040, 15.851807, 21.017149>,  <12.987828, 16.161722, 20.294733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.245040, 15.851807, 21.017149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.475927, 16.171438, 20.949869>,  <13.614460, 16.363216, 20.909502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.475927, 16.171438, 20.949869>,  <13.245040, 15.851807, 21.017149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.475927, 16.171438, 20.949869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195811, 0.064524, 0.978516,
		0.792765, -0.597753, -0.119224,
		0.577219, 0.799079, -0.168199,
		13.649093, 16.411161, 20.899410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776490, 15.712197, 21.481705>,  <13.245040, 15.851807, 21.017149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776490, 15.712197, 21.481705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.765009, 16.100706, 21.387213>,  <13.758120, 16.333811, 21.330517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.765009, 16.100706, 21.387213>,  <13.776490, 15.712197, 21.481705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765009, 16.100706, 21.387213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273687, 0.234934, 0.932685,
		0.961390, -0.037882, -0.272569,
		-0.028704, 0.971273, -0.236231,
		13.756398, 16.392088, 21.316343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288167, 16.004730, 21.810207>,  <13.776490, 15.712197, 21.481705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288167, 16.004730, 21.810207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.038517, 16.309582, 21.741360>,  <13.888727, 16.492493, 21.700050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.038517, 16.309582, 21.741360>,  <14.288167, 16.004730, 21.810207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038517, 16.309582, 21.741360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063353, 0.268931, 0.961073,
		0.778751, 0.588927, -0.216130,
		-0.624126, 0.762130, -0.172120,
		13.851279, 16.538221, 21.689724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610149, 16.525330, 22.048300>,  <14.288167, 16.004730, 21.810207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610149, 16.525330, 22.048300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.220346, 16.613459, 22.031363>,  <13.986465, 16.666336, 22.021200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.220346, 16.613459, 22.031363>,  <14.610149, 16.525330, 22.048300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.220346, 16.613459, 22.031363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031447, 0.321010, 0.946554,
		0.222139, 0.921092, -0.319755,
		-0.974508, 0.220322, -0.042343,
		13.927994, 16.679556, 22.018660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515399, 17.243670, 22.313326>,  <14.610149, 16.525330, 22.048300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.515399, 17.243670, 22.313326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.154626, 17.073046, 22.340351>,  <13.938162, 16.970671, 22.356567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.154626, 17.073046, 22.340351>,  <14.515399, 17.243670, 22.313326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.154626, 17.073046, 22.340351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075665, 0.310097, 0.947689,
		-0.425199, 0.849639, -0.311962,
		-0.901932, -0.426561, 0.067565,
		13.884047, 16.945078, 22.360620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.715545, 16.139025, 22.799065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.113302, 16.107035, 22.826727>,  <10.351957, 16.087841, 22.843325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.113302, 16.107035, 22.826727>,  <9.715545, 16.139025, 22.799065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.113302, 16.107035, 22.826727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042718, -0.294423, -0.954720,
		0.096717, 0.952323, -0.289356,
		0.994395, -0.079977, 0.069157,
		10.411621, 16.083042, 22.847473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.097531, 16.416552, 22.113838>,  <9.715545, 16.139025, 22.799065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.097531, 16.416552, 22.113838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.374738, 16.184040, 22.284412>,  <10.541061, 16.044533, 22.386757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.374738, 16.184040, 22.284412>,  <10.097531, 16.416552, 22.113838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.374738, 16.184040, 22.284412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326153, -0.274718, -0.904519,
		0.642926, 0.765928, -0.000798,
		0.693015, -0.581278, 0.426433,
		10.582643, 16.009657, 22.412342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.738985, 16.614243, 21.730684>,  <10.097531, 16.416552, 22.113838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.738985, 16.614243, 21.730684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.776715, 16.248510, 21.888218>,  <10.799354, 16.029072, 21.982738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.776715, 16.248510, 21.888218>,  <10.738985, 16.614243, 21.730684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.776715, 16.248510, 21.888218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432010, -0.318816, -0.843637,
		0.896923, 0.249715, 0.364927,
		0.094325, -0.914330, 0.393833,
		10.805013, 15.974212, 22.006369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.418930, 16.410740, 21.572220>,  <10.738985, 16.614243, 21.730684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.418930, 16.410740, 21.572220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.207122, 16.077072, 21.633886>,  <11.080037, 15.876871, 21.670887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.207122, 16.077072, 21.633886>,  <11.418930, 16.410740, 21.572220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.207122, 16.077072, 21.633886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345533, -0.378073, -0.858876,
		0.774735, -0.401522, 0.488431,
		-0.529520, -0.834171, 0.154167,
		11.048265, 15.826821, 21.680136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.868832, 15.924466, 21.359308>,  <11.418930, 16.410740, 21.572220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.868832, 15.924466, 21.359308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.504197, 15.760735, 21.344025>,  <11.285417, 15.662496, 21.334854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.504197, 15.760735, 21.344025>,  <11.868832, 15.924466, 21.359308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.504197, 15.760735, 21.344025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204395, -0.370613, -0.906018,
		0.356699, -0.833723, 0.421511,
		-0.911586, -0.409330, -0.038211,
		11.230721, 15.637936, 21.332561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.853939, 15.171099, 21.169859>,  <11.868832, 15.924466, 21.359308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.853939, 15.171099, 21.169859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.479846, 15.289676, 21.092440>,  <11.255390, 15.360822, 21.045988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.479846, 15.289676, 21.092440>,  <11.853939, 15.171099, 21.169859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.479846, 15.289676, 21.092440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099493, -0.304595, -0.947271,
		-0.339771, -0.905174, 0.255372,
		-0.935231, 0.296447, -0.193551,
		11.199276, 15.378609, 21.034374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600136, 14.689374, 20.753290>,  <11.853939, 15.171099, 21.169859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600136, 14.689374, 20.753290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.328691, 14.980307, 20.712353>,  <11.165825, 15.154866, 20.687790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.328691, 14.980307, 20.712353>,  <11.600136, 14.689374, 20.753290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.328691, 14.980307, 20.712353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030300, -0.111495, -0.993303,
		-0.733872, -0.677167, 0.053624,
		-0.678611, 0.727333, -0.102341,
		11.125108, 15.198506, 20.681650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.016171, 14.367460, 20.349575>,  <11.600136, 14.689374, 20.753290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.016171, 14.367460, 20.349575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.015964, 14.764260, 20.299080>,  <11.015839, 15.002340, 20.268784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.015964, 14.764260, 20.299080>,  <11.016171, 14.367460, 20.349575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.015964, 14.764260, 20.299080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097397, -0.125687, -0.987277,
		-0.995245, 0.011782, 0.096684,
		-0.000520, 0.992000, -0.126237,
		11.015807, 15.061860, 20.261209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.720240, 14.486383, 19.757406>,  <11.016171, 14.367460, 20.349575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.720240, 14.486383, 19.757406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.892200, 14.846908, 19.778666>,  <10.995377, 15.063222, 19.791422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.892200, 14.846908, 19.778666>,  <10.720240, 14.486383, 19.757406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892200, 14.846908, 19.778666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060083, 0.030176, -0.997737,
		-0.900875, 0.432121, -0.041181,
		0.429901, 0.901311, 0.053149,
		11.021171, 15.117301, 19.794611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.377363, 14.786495, 19.234222>,  <10.720240, 14.486383, 19.757406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.377363, 14.786495, 19.234222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.707597, 15.003122, 19.297611>,  <10.905737, 15.133099, 19.335646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.707597, 15.003122, 19.297611>,  <10.377363, 14.786495, 19.234222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.707597, 15.003122, 19.297611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153786, 0.054267, -0.986613,
		-0.542918, 0.838904, -0.038484,
		0.825585, 0.541568, 0.158474,
		10.955273, 15.165592, 19.345154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.288922, 15.492186, 18.941879>,  <10.377363, 14.786495, 19.234222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.288922, 15.492186, 18.941879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.684032, 15.429841, 18.942774>,  <10.921099, 15.392434, 18.943312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.684032, 15.429841, 18.942774>,  <10.288922, 15.492186, 18.941879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.684032, 15.429841, 18.942774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030144, 0.176912, -0.983765,
		0.152935, 0.971807, 0.179448,
		0.987776, -0.155861, 0.002239,
		10.980366, 15.383082, 18.943445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.622278, 16.052189, 18.636133>,  <10.288922, 15.492186, 18.941879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.622278, 16.052189, 18.636133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.896247, 15.763643, 18.595114>,  <11.060628, 15.590516, 18.570503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.896247, 15.763643, 18.595114>,  <10.622278, 16.052189, 18.636133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.896247, 15.763643, 18.595114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146543, 0.274249, -0.950427,
		0.713727, 0.635942, 0.293550,
		0.684922, -0.721363, -0.102546,
		11.101724, 15.547235, 18.564350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112627, 16.361649, 18.082367>,  <10.622278, 16.052189, 18.636133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112627, 16.361649, 18.082367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197588, 15.971820, 18.110929>,  <11.248565, 15.737923, 18.128067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197588, 15.971820, 18.110929>,  <11.112627, 16.361649, 18.082367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.197588, 15.971820, 18.110929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352081, 0.008157, -0.935934,
		0.911550, 0.223936, 0.344860,
		0.212402, -0.974570, 0.071408,
		11.261309, 15.679449, 18.132353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819823, 16.316862, 17.868210>,  <11.112627, 16.361649, 18.082367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.819823, 16.316862, 17.868210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.606826, 15.980267, 17.831661>,  <11.479028, 15.778310, 17.809732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.606826, 15.980267, 17.831661>,  <11.819823, 16.316862, 17.868210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606826, 15.980267, 17.831661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099565, 0.044930, -0.994016,
		0.840558, -0.538404, 0.059858,
		-0.532493, -0.841488, -0.091372,
		11.447078, 15.727820, 17.804249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.302660, 16.921804, 17.702129>,  <11.819823, 16.316862, 17.868210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.302660, 16.921804, 17.702129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.246735, 17.288939, 17.553520>,  <12.213180, 17.509220, 17.464355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.246735, 17.288939, 17.553520>,  <12.302660, 16.921804, 17.702129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.246735, 17.288939, 17.553520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297016, 0.319055, 0.899992,
		0.944581, 0.236179, 0.228004,
		-0.139814, 0.917836, -0.371522,
		12.204791, 17.564289, 17.442064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.656916, 17.328918, 18.060173>,  <12.302660, 16.921804, 17.702129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.656916, 17.328918, 18.060173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.403942, 17.605059, 17.919634>,  <12.252158, 17.770742, 17.835310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.403942, 17.605059, 17.919634>,  <12.656916, 17.328918, 18.060173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.403942, 17.605059, 17.919634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116228, 0.363870, 0.924170,
		0.765846, 0.625312, -0.149886,
		-0.632433, 0.690350, -0.351347,
		12.214212, 17.812164, 17.814230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.946744, 17.968868, 18.220404>,  <12.656916, 17.328918, 18.060173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.946744, 17.968868, 18.220404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.553558, 18.006067, 18.156992>,  <12.317647, 18.028387, 18.118946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.553558, 18.006067, 18.156992>,  <12.946744, 17.968868, 18.220404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553558, 18.006067, 18.156992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111361, 0.384812, 0.916252,
		0.146213, 0.918298, -0.367901,
		-0.982965, 0.092998, -0.158527,
		12.258669, 18.033966, 18.109434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.738864, 18.603241, 18.443861>,  <12.946744, 17.968868, 18.220404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.738864, 18.603241, 18.443861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.383877, 18.419689, 18.426756>,  <12.170884, 18.309559, 18.416492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.383877, 18.419689, 18.426756>,  <12.738864, 18.603241, 18.443861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.383877, 18.419689, 18.426756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302683, 0.510374, 0.804923,
		-0.347538, 0.727288, -0.591836,
		-0.887469, -0.458880, -0.042763,
		12.117636, 18.282024, 18.413927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350279, 19.205317, 18.595814>,  <12.738864, 18.603241, 18.443861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350279, 19.205317, 18.595814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.145225, 18.873173, 18.683186>,  <12.022192, 18.673887, 18.735609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.145225, 18.873173, 18.683186>,  <12.350279, 19.205317, 18.595814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.145225, 18.873173, 18.683186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428659, 0.467938, 0.772843,
		-0.743946, 0.302556, -0.595822,
		-0.512636, -0.830357, 0.218427,
		11.991434, 18.624065, 18.748714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.651630, 19.431128, 18.926254>,  <12.350279, 19.205317, 18.595814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.651630, 19.431128, 18.926254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.667192, 19.044783, 19.028702>,  <11.676528, 18.812975, 19.090170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.667192, 19.044783, 19.028702>,  <11.651630, 19.431128, 18.926254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.667192, 19.044783, 19.028702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265356, 0.237124, 0.934536,
		-0.963365, -0.104320, -0.247073,
		0.038904, -0.965862, 0.256119,
		11.678863, 18.755024, 19.105537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.999142, 19.256655, 19.411674>,  <11.651630, 19.431128, 18.926254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.999142, 19.256655, 19.411674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.254943, 18.954166, 19.467052>,  <11.408423, 18.772673, 19.500278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.254943, 18.954166, 19.467052>,  <10.999142, 19.256655, 19.411674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.254943, 18.954166, 19.467052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202253, 0.008249, 0.979298,
		-0.741708, -0.654264, -0.147673,
		0.639502, -0.756221, 0.138446,
		11.446794, 18.727301, 19.508587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708794, 18.739458, 19.780321>,  <10.999142, 19.256655, 19.411674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708794, 18.739458, 19.780321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.102217, 18.708385, 19.845537>,  <11.338270, 18.689741, 19.884666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.102217, 18.708385, 19.845537>,  <10.708794, 18.739458, 19.780321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.102217, 18.708385, 19.845537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159668, 0.047855, 0.986010,
		-0.084400, -0.995829, 0.034665,
		0.983557, -0.077684, 0.163041,
		11.397284, 18.685081, 19.894449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.690157, 18.528711, 20.426672>,  <10.708794, 18.739458, 19.780321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.690157, 18.528711, 20.426672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.063965, 18.663877, 20.381979>,  <11.288250, 18.744978, 20.355164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.063965, 18.663877, 20.381979>,  <10.690157, 18.528711, 20.426672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063965, 18.663877, 20.381979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043682, 0.202659, 0.978274,
		0.353219, -0.919098, 0.174628,
		0.934520, 0.337917, -0.111731,
		11.344321, 18.765253, 20.348459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.063738, 18.168415, 20.895779>,  <10.690157, 18.528711, 20.426672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.063738, 18.168415, 20.895779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.274468, 18.495674, 20.803617>,  <11.400907, 18.692030, 20.748322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.274468, 18.495674, 20.803617>,  <11.063738, 18.168415, 20.895779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.274468, 18.495674, 20.803617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065709, 0.231056, 0.970719,
		0.847429, -0.526540, 0.067967,
		0.526826, 0.818149, -0.230402,
		11.432516, 18.741119, 20.734497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.637488, 18.052210, 21.242250>,  <11.063738, 18.168415, 20.895779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.637488, 18.052210, 21.242250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.604075, 18.447212, 21.188803>,  <11.584027, 18.684214, 21.156734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.604075, 18.447212, 21.188803>,  <11.637488, 18.052210, 21.242250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604075, 18.447212, 21.188803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035165, 0.131084, 0.990747,
		0.995884, 0.087458, 0.023775,
		-0.083533, 0.987506, -0.133620,
		11.579016, 18.743464, 21.148716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086725, 18.288979, 21.710054>,  <11.637488, 18.052210, 21.242250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086725, 18.288979, 21.710054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.850880, 18.597578, 21.614435>,  <11.709373, 18.782738, 21.557064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.850880, 18.597578, 21.614435>,  <12.086725, 18.288979, 21.710054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.850880, 18.597578, 21.614435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019495, 0.282287, 0.959132,
		0.807449, 0.570179, -0.151401,
		-0.589615, 0.771499, -0.239048,
		11.673995, 18.829027, 21.542721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.354330, 18.830214, 21.988262>,  <12.086725, 18.288979, 21.710054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.354330, 18.830214, 21.988262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.965052, 18.915142, 21.952913>,  <11.731484, 18.966099, 21.931704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.965052, 18.915142, 21.952913>,  <12.354330, 18.830214, 21.988262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.965052, 18.915142, 21.952913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029656, 0.265206, 0.963736,
		0.228057, 0.940525, -0.251801,
		-0.973196, 0.212319, -0.088375,
		11.673093, 18.978838, 21.926401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293151, 19.453079, 22.242735>,  <12.354330, 18.830214, 21.988262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293151, 19.453079, 22.242735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.919729, 19.310123, 22.253662>,  <11.695676, 19.224350, 22.260218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.919729, 19.310123, 22.253662>,  <12.293151, 19.453079, 22.242735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.919729, 19.310123, 22.253662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100609, 0.334424, 0.937037,
		-0.344024, 0.872027, -0.348160,
		-0.933555, -0.357391, 0.027316,
		11.639663, 19.202906, 22.261856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.731528, 20.011322, 22.013893>,  <12.293151, 19.453079, 22.242735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.731528, 20.011322, 22.013893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.093670, 20.158140, 22.099321>,  <13.310955, 20.246231, 22.150579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.093670, 20.158140, 22.099321>,  <12.731528, 20.011322, 22.013893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.093670, 20.158140, 22.099321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276925, -0.129014, -0.952191,
		-0.321944, 0.921213, -0.218447,
		0.905353, 0.367046, 0.213572,
		13.365276, 20.268253, 22.163393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850187, 20.546875, 21.510521>,  <12.731528, 20.011322, 22.013893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850187, 20.546875, 21.510521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.193714, 20.395847, 21.649012>,  <13.399831, 20.305231, 21.732105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.193714, 20.395847, 21.649012>,  <12.850187, 20.546875, 21.510521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.193714, 20.395847, 21.649012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340769, -0.083578, -0.936425,
		0.382502, 0.922202, 0.056885,
		0.858818, -0.377569, 0.346226,
		13.451360, 20.282578, 21.752880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.362104, 20.899872, 21.084381>,  <12.850187, 20.546875, 21.510521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.362104, 20.899872, 21.084381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.577980, 20.612082, 21.259237>,  <13.707505, 20.439407, 21.364151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.577980, 20.612082, 21.259237>,  <13.362104, 20.899872, 21.084381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.577980, 20.612082, 21.259237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541884, -0.100502, -0.834422,
		0.644279, 0.687208, 0.335632,
		0.539690, -0.719475, 0.437139,
		13.739887, 20.396238, 21.390379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092885, 21.027021, 20.954891>,  <13.362104, 20.899872, 21.084381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092885, 21.027021, 20.954891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.103493, 20.629782, 21.000591>,  <14.109858, 20.391438, 21.028011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.103493, 20.629782, 21.000591>,  <14.092885, 21.027021, 20.954891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.103493, 20.629782, 21.000591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541096, -0.081837, -0.836969,
		0.840542, 0.084016, 0.535191,
		0.026521, -0.993098, 0.114248,
		14.111449, 20.331852, 21.034866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743689, 20.815245, 20.610296>,  <14.092885, 21.027021, 20.954891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743689, 20.815245, 20.610296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.505648, 20.494738, 20.635019>,  <14.362823, 20.302433, 20.649853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.505648, 20.494738, 20.635019>,  <14.743689, 20.815245, 20.610296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.505648, 20.494738, 20.635019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317576, -0.305118, -0.897802,
		0.738240, -0.514655, 0.436040,
		-0.595102, -0.801270, 0.061808,
		14.327117, 20.254356, 20.653563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113056, 20.230888, 20.447361>,  <14.743689, 20.815245, 20.610296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113056, 20.230888, 20.447361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.749847, 20.077028, 20.380981>,  <14.531922, 19.984713, 20.341154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.749847, 20.077028, 20.380981>,  <15.113056, 20.230888, 20.447361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.749847, 20.077028, 20.380981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334377, -0.426847, -0.840234,
		0.252364, -0.818440, 0.516205,
		-0.908022, -0.384652, -0.165947,
		14.477441, 19.961632, 20.331198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270123, 19.613306, 20.173809>,  <15.113056, 20.230888, 20.447361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270123, 19.613306, 20.173809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.888300, 19.670761, 20.069361>,  <14.659205, 19.705235, 20.006691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.888300, 19.670761, 20.069361>,  <15.270123, 19.613306, 20.173809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888300, 19.670761, 20.069361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184065, -0.404945, -0.895622,
		-0.234384, -0.902988, 0.360106,
		-0.954560, 0.143636, -0.261121,
		14.601933, 19.713852, 19.991024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878613, 18.947868, 19.911469>,  <15.270123, 19.613306, 20.173809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878613, 18.947868, 19.911469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.692098, 19.257195, 19.739628>,  <14.580189, 19.442791, 19.636524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.692098, 19.257195, 19.739628>,  <14.878613, 18.947868, 19.911469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692098, 19.257195, 19.739628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141317, -0.414275, -0.899114,
		-0.873273, -0.479955, 0.083888,
		-0.466288, 0.773317, -0.429601,
		14.552212, 19.489189, 19.610748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479070, 18.701332, 19.331360>,  <14.878613, 18.947868, 19.911469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479070, 18.701332, 19.331360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.479462, 19.089600, 19.235189>,  <14.479697, 19.322559, 19.177488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.479462, 19.089600, 19.235189>,  <14.479070, 18.701332, 19.331360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.479462, 19.089600, 19.235189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204701, -0.235528, -0.950065,
		-0.978824, -0.048284, -0.198928,
		0.000980, 0.970667, -0.240424,
		14.479755, 19.380800, 19.163063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117287, 18.684221, 18.712769>,  <14.479070, 18.701332, 19.331360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117287, 18.684221, 18.712769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.293570, 19.043098, 18.724243>,  <14.399339, 19.258425, 18.731129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.293570, 19.043098, 18.724243>,  <14.117287, 18.684221, 18.712769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.293570, 19.043098, 18.724243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078173, -0.006525, -0.996918,
		-0.894241, 0.441591, -0.073012,
		0.440707, 0.897192, 0.028686,
		14.425781, 19.312256, 18.732849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773223, 19.190948, 18.203142>,  <14.117287, 18.684221, 18.712769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773223, 19.190948, 18.203142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.146070, 19.321869, 18.265148>,  <14.369779, 19.400421, 18.302351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.146070, 19.321869, 18.265148>,  <13.773223, 19.190948, 18.203142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.146070, 19.321869, 18.265148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197307, -0.100027, -0.975225,
		-0.303686, 0.939611, -0.157816,
		0.932118, 0.327301, 0.155015,
		14.425706, 19.420059, 18.311653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.914632, 19.513041, 17.597330>,  <13.773223, 19.190948, 18.203142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.914632, 19.513041, 17.597330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.281634, 19.516760, 17.756374>,  <14.501836, 19.518991, 17.851801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.281634, 19.516760, 17.756374>,  <13.914632, 19.513041, 17.597330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.281634, 19.516760, 17.756374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374946, -0.353674, -0.856931,
		0.132656, 0.935322, -0.327985,
		0.917506, 0.009299, 0.397612,
		14.556887, 19.519550, 17.875658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201751, 19.962914, 17.171349>,  <13.914632, 19.513041, 17.597330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201751, 19.962914, 17.171349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.475161, 19.727249, 17.343714>,  <14.639207, 19.585850, 17.447132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.475161, 19.727249, 17.343714>,  <14.201751, 19.962914, 17.171349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475161, 19.727249, 17.343714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429181, -0.153128, -0.890144,
		0.590422, 0.793374, 0.148189,
		0.683524, -0.589160, 0.430911,
		14.680218, 19.550501, 17.472986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.906726, 20.212194, 16.950809>,  <14.201751, 19.962914, 17.171349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.906726, 20.212194, 16.950809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.959194, 19.831263, 17.060984>,  <14.990675, 19.602703, 17.127089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.959194, 19.831263, 17.060984>,  <14.906726, 20.212194, 16.950809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.959194, 19.831263, 17.060984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500775, -0.176132, -0.847468,
		0.855581, 0.249093, 0.453799,
		0.131170, -0.952329, 0.275435,
		14.998545, 19.545565, 17.143614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.186215, 15.872632, 5.531400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.857994, 15.945758, 5.314782>,  <6.661061, 15.989634, 5.184812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.857994, 15.945758, 5.314782>,  <7.186215, 15.872632, 5.531400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.857994, 15.945758, 5.314782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570711, 0.313979, -0.758753,
		0.031322, -0.931663, -0.361971,
		-0.820554, 0.182816, -0.541544,
		6.611827, 16.000603, 5.152319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.173117, 15.511978, 4.907172>,  <7.186215, 15.872632, 5.531400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.173117, 15.511978, 4.907172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.969351, 15.854017, 4.868587>,  <6.847092, 16.059240, 4.845436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.969351, 15.854017, 4.868587>,  <7.173117, 15.511978, 4.907172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.969351, 15.854017, 4.868587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486150, 0.193482, -0.852187,
		-0.710040, -0.481011, -0.514268,
		-0.509413, 0.855098, -0.096463,
		6.816527, 16.110546, 4.839648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.767374, 15.394623, 4.289243>,  <7.173117, 15.511978, 4.907172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.767374, 15.394623, 4.289243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.846364, 15.779466, 4.364453>,  <6.893757, 16.010372, 4.409580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.846364, 15.779466, 4.364453>,  <6.767374, 15.394623, 4.289243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.846364, 15.779466, 4.364453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470134, 0.075362, -0.879372,
		-0.860220, 0.262051, -0.437437,
		0.197474, 0.962107, 0.188027,
		6.905606, 16.068098, 4.420861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.558923, 15.860648, 3.735225>,  <6.767374, 15.394623, 4.289243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.558923, 15.860648, 3.735225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.866213, 16.046591, 3.911287>,  <7.050588, 16.158155, 4.016924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.866213, 16.046591, 3.911287>,  <6.558923, 15.860648, 3.735225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.866213, 16.046591, 3.911287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419454, 0.153901, -0.894635,
		-0.483617, 0.871908, -0.076755,
		0.768227, 0.464856, 0.440155,
		7.096682, 16.186049, 4.043334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.228552, 16.279385, 4.298853>,  <6.558923, 15.860648, 3.735225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.228552, 16.279385, 4.298853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.162982, 15.901217, 4.186203>,  <6.123640, 15.674317, 4.118612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.162982, 15.901217, 4.186203>,  <6.228552, 16.279385, 4.298853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.162982, 15.901217, 4.186203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404915, 0.195843, -0.893134,
		0.899540, -0.260442, 0.350711,
		-0.163926, -0.945418, -0.281626,
		6.113804, 15.617592, 4.101715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.640767, 16.964956, 4.403049>,  <6.228552, 16.279385, 4.298853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.640767, 16.964956, 4.403049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.020384, 17.074566, 4.465310>,  <7.248154, 17.140331, 4.502666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.020384, 17.074566, 4.465310>,  <6.640767, 16.964956, 4.403049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.020384, 17.074566, 4.465310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233460, 0.279554, 0.931314,
		0.211686, -0.920197, 0.329282,
		0.949044, 0.274021, 0.155651,
		7.305097, 17.156773, 4.512004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.915575, 16.697924, 5.072341>,  <6.640767, 16.964956, 4.403049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.915575, 16.697924, 5.072341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.092448, 17.038401, 4.959242>,  <7.198572, 17.242687, 4.891383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.092448, 17.038401, 4.959242>,  <6.915575, 16.697924, 5.072341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.092448, 17.038401, 4.959242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146163, 0.379411, 0.913610,
		0.884935, -0.362655, 0.292182,
		0.442183, 0.851192, -0.282748,
		7.225102, 17.293758, 4.874418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.155272, 16.905487, 5.686869>,  <6.915575, 16.697924, 5.072341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.155272, 16.905487, 5.686869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.167796, 17.221334, 5.441749>,  <7.175310, 17.410843, 5.294677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.167796, 17.221334, 5.441749>,  <7.155272, 16.905487, 5.686869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.167796, 17.221334, 5.441749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385755, 0.575145, 0.721389,
		0.922070, 0.213806, 0.322605,
		0.031308, 0.789617, -0.612800,
		7.177188, 17.458220, 5.257909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.217151, 17.387165, 6.150301>,  <7.155272, 16.905487, 5.686869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.217151, 17.387165, 6.150301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.095669, 17.546659, 5.804173>,  <7.022780, 17.642355, 5.596497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.095669, 17.546659, 5.804173>,  <7.217151, 17.387165, 6.150301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.095669, 17.546659, 5.804173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583595, 0.640046, 0.499757,
		0.753113, 0.656774, 0.038314,
		-0.303705, 0.398734, -0.865318,
		7.004558, 17.666279, 5.544578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.450916, 17.788609, 6.791895>,  <7.217151, 17.387165, 6.150301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.450916, 17.788609, 6.791895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.444625, 18.188559, 6.792969>,  <7.440850, 18.428528, 6.793612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.444625, 18.188559, 6.792969>,  <7.450916, 17.788609, 6.791895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.444625, 18.188559, 6.792969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163435, -0.005218, 0.986540,
		0.986429, 0.015077, 0.163497,
		-0.015727, 0.999873, 0.002683,
		7.439907, 18.488520, 6.793774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.846078, 17.923370, 7.254310>,  <7.450916, 17.788609, 6.791895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.846078, 17.923370, 7.254310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.578408, 18.213129, 7.188035>,  <7.417807, 18.386984, 7.148270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.578408, 18.213129, 7.188035>,  <7.846078, 17.923370, 7.254310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.578408, 18.213129, 7.188035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256798, -0.016197, 0.966330,
		0.697324, 0.689191, 0.196863,
		-0.669174, 0.724399, -0.165688,
		7.377656, 18.430449, 7.138328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.004397, 18.484587, 7.735317>,  <7.846078, 17.923370, 7.254310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.004397, 18.484587, 7.735317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.619833, 18.542572, 7.641784>,  <7.389095, 18.577364, 7.585664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.619833, 18.542572, 7.641784>,  <8.004397, 18.484587, 7.735317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.619833, 18.542572, 7.641784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244117, -0.057503, 0.968039,
		0.126886, 0.987764, 0.090673,
		-0.961409, 0.144965, -0.233833,
		7.331411, 18.586061, 7.571634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.799119, 19.069593, 8.100969>,  <8.004397, 18.484587, 7.735317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.799119, 19.069593, 8.100969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.481520, 18.845987, 8.005414>,  <7.290960, 18.711824, 7.948081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.481520, 18.845987, 8.005414>,  <7.799119, 19.069593, 8.100969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.481520, 18.845987, 8.005414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308124, 0.031320, 0.950831,
		-0.524046, 0.828566, -0.197114,
		-0.794000, -0.559014, -0.238888,
		7.243320, 18.678284, 7.933748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.313471, 19.220119, 8.668722>,  <7.799119, 19.069593, 8.100969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.313471, 19.220119, 8.668722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.126964, 18.925512, 8.472708>,  <7.015060, 18.748747, 8.355100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.126964, 18.925512, 8.472708>,  <7.313471, 19.220119, 8.668722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.126964, 18.925512, 8.472708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265153, -0.412114, 0.871697,
		-0.843972, 0.536378, -0.003135,
		-0.466267, -0.736519, -0.490035,
		6.987084, 18.704557, 8.325697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.667363, 19.292778, 8.975924>,  <7.313471, 19.220119, 8.668722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.667363, 19.292778, 8.975924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.734592, 18.931465, 8.818024>,  <6.774930, 18.714678, 8.723283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.734592, 18.931465, 8.818024>,  <6.667363, 19.292778, 8.975924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.734592, 18.931465, 8.818024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223232, -0.424922, 0.877273,
		-0.960166, -0.059325, -0.273060,
		0.168074, -0.903284, -0.394753,
		6.785015, 18.660480, 8.699598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.023341, 18.943169, 9.130748>,  <6.667363, 19.292778, 8.975924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.023341, 18.943169, 9.130748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.301794, 18.663067, 9.067448>,  <6.468865, 18.495007, 9.029468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.301794, 18.663067, 9.067448>,  <6.023341, 18.943169, 9.130748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.301794, 18.663067, 9.067448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219661, -0.417617, 0.881672,
		-0.683484, -0.578997, -0.444535,
		0.696131, -0.700256, -0.158251,
		6.510633, 18.452990, 9.019973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.710824, 18.281015, 9.318184>,  <6.023341, 18.943169, 9.130748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.710824, 18.281015, 9.318184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.104397, 18.214191, 9.343379>,  <6.340541, 18.174097, 9.358496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.104397, 18.214191, 9.343379>,  <5.710824, 18.281015, 9.318184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.104397, 18.214191, 9.343379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138041, -0.488087, 0.861809,
		-0.113230, -0.856658, -0.503306,
		0.983933, -0.167060, 0.062987,
		6.399577, 18.164074, 9.362275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.766741, 17.733917, 9.630915>,  <5.710824, 18.281015, 9.318184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.766741, 17.733917, 9.630915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.138483, 17.870575, 9.686884>,  <6.361527, 17.952570, 9.720466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.138483, 17.870575, 9.686884>,  <5.766741, 17.733917, 9.630915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.138483, 17.870575, 9.686884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012638, -0.408218, 0.912797,
		0.368972, -0.846543, -0.383697,
		0.929355, 0.341646, 0.139923,
		6.417289, 17.973068, 9.728861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.902322, 17.153454, 9.849598>,  <5.766741, 17.733917, 9.630915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.902322, 17.153454, 9.849598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.193563, 17.405628, 9.957238>,  <6.368308, 17.556932, 10.021822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.193563, 17.405628, 9.957238>,  <5.902322, 17.153454, 9.849598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.193563, 17.405628, 9.957238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070248, -0.459139, 0.885583,
		0.681858, -0.625892, -0.378588,
		0.728103, 0.630437, 0.269100,
		6.411994, 17.594759, 10.037969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.470353, 16.713985, 10.085291>,  <5.902322, 17.153454, 9.849598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.470353, 16.713985, 10.085291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.501927, 17.072058, 10.260755>,  <6.520872, 17.286901, 10.366033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.501927, 17.072058, 10.260755>,  <6.470353, 16.713985, 10.085291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.501927, 17.072058, 10.260755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015219, -0.441063, 0.897347,
		0.996764, -0.064157, -0.048440,
		0.078936, 0.895180, 0.438659,
		6.525608, 17.340612, 10.392352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.901009, 16.543861, 10.641777>,  <6.470353, 16.713985, 10.085291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.901009, 16.543861, 10.641777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.739202, 16.896561, 10.738840>,  <6.642118, 17.108181, 10.797078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.739202, 16.896561, 10.738840>,  <6.901009, 16.543861, 10.641777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.739202, 16.896561, 10.738840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023684, -0.275349, 0.961053,
		0.914223, 0.383016, 0.132267,
		-0.404518, 0.881749, 0.242659,
		6.617846, 17.161085, 10.811638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.276851, 16.753666, 11.260815>,  <6.901009, 16.543861, 10.641777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.276851, 16.753666, 11.260815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.921479, 16.936865, 11.272996>,  <6.708255, 17.046785, 11.280305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.921479, 16.936865, 11.272996>,  <7.276851, 16.753666, 11.260815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.921479, 16.936865, 11.272996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001416, -0.063610, 0.997974,
		0.459009, 0.886674, 0.055865,
		-0.888431, 0.457999, 0.030454,
		6.654950, 17.074265, 11.282132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.451835, 17.180912, 11.769035>,  <7.276851, 16.753666, 11.260815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.451835, 17.180912, 11.769035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.052327, 17.167645, 11.754275>,  <6.812623, 17.159683, 11.745420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.052327, 17.167645, 11.754275>,  <7.451835, 17.180912, 11.769035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.052327, 17.167645, 11.754275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034371, -0.073790, 0.996681,
		-0.035783, 0.996722, 0.072559,
		-0.998768, -0.033170, -0.036899,
		6.752697, 17.157694, 11.743206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.096589, 17.684511, 12.269869>,  <7.451835, 17.180912, 11.769035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.096589, 17.684511, 12.269869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.758145, 17.474407, 12.233651>,  <6.555079, 17.348345, 12.211921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.758145, 17.474407, 12.233651>,  <7.096589, 17.684511, 12.269869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.758145, 17.474407, 12.233651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101698, -0.007664, 0.994786,
		-0.523217, 0.850906, -0.046934,
		-0.846110, -0.525262, -0.090545,
		6.504312, 17.316828, 12.206488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.716341, 17.942202, 12.869357>,  <7.096589, 17.684511, 12.269869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.716341, 17.942202, 12.869357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.535748, 17.608025, 12.744009>,  <6.427392, 17.407518, 12.668800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.535748, 17.608025, 12.744009>,  <6.716341, 17.942202, 12.869357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.535748, 17.608025, 12.744009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126113, -0.287930, 0.949311,
		-0.883322, 0.468119, 0.024636,
		-0.451484, -0.835441, -0.313371,
		6.400302, 17.357393, 12.649998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.092275, 17.805731, 13.251977>,  <6.716341, 17.942202, 12.869357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.092275, 17.805731, 13.251977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.180930, 17.445473, 13.102465>,  <6.234123, 17.229317, 13.012757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.180930, 17.445473, 13.102465>,  <6.092275, 17.805731, 13.251977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.180930, 17.445473, 13.102465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124728, -0.406350, 0.905164,
		-0.967119, -0.153997, -0.202398,
		0.221637, -0.900647, -0.373781,
		6.247421, 17.175280, 12.990331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.810089, 17.372292, 13.670448>,  <6.092275, 17.805731, 13.251977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.810089, 17.372292, 13.670448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.049892, 17.091782, 13.516147>,  <6.193775, 16.923475, 13.423566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.049892, 17.091782, 13.516147>,  <5.810089, 17.372292, 13.670448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.049892, 17.091782, 13.516147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079711, -0.531888, 0.843055,
		-0.796389, -0.474669, -0.374770,
		0.599508, -0.701273, -0.385753,
		6.229745, 16.881399, 13.400421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.544028, 16.705818, 13.870751>,  <5.810089, 17.372292, 13.670448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.544028, 16.705818, 13.870751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.923358, 16.617744, 13.779366>,  <6.150957, 16.564899, 13.724536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.923358, 16.617744, 13.779366>,  <5.544028, 16.705818, 13.870751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.923358, 16.617744, 13.779366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051130, -0.604572, 0.794907,
		-0.313149, -0.765513, -0.562074,
		0.948326, -0.220185, -0.228462,
		6.207856, 16.551689, 13.710828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.621745, 15.925035, 13.923372>,  <5.544028, 16.705818, 13.870751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.621745, 15.925035, 13.923372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.991407, 16.076651, 13.942402>,  <6.213205, 16.167620, 13.953820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.991407, 16.076651, 13.942402>,  <5.621745, 15.925035, 13.923372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.991407, 16.076651, 13.942402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150461, -0.475628, 0.866683,
		0.351136, -0.793792, -0.496585,
		0.924156, 0.379041, 0.047575,
		6.268654, 16.190363, 13.956675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.051641, 15.331962, 13.915785>,  <5.621745, 15.925035, 13.923372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.051641, 15.331962, 13.915785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.258430, 15.634679, 14.075787>,  <6.382503, 15.816309, 14.171788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.258430, 15.634679, 14.075787>,  <6.051641, 15.331962, 13.915785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.258430, 15.634679, 14.075787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138883, -0.535258, 0.833193,
		0.844662, -0.375182, -0.381818,
		0.516971, 0.756794, 0.400005,
		6.413521, 15.861717, 14.195788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.670053, 15.037349, 14.137497>,  <6.051641, 15.331962, 13.915785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.670053, 15.037349, 14.137497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.592671, 15.373919, 14.339319>,  <6.546241, 15.575862, 14.460412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.592671, 15.373919, 14.339319>,  <6.670053, 15.037349, 14.137497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.592671, 15.373919, 14.339319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184314, -0.473945, 0.861049,
		0.963641, 0.259572, -0.063399,
		-0.193456, 0.841427, 0.504555,
		6.534634, 15.626348, 14.490685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.529932, 14.266225, 14.165202>,  <6.670053, 15.037349, 14.137497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.529932, 14.266225, 14.165202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.415884, 13.968846, 13.923212>,  <6.347456, 13.790420, 13.778018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.415884, 13.968846, 13.923212>,  <6.529932, 14.266225, 14.165202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.415884, 13.968846, 13.923212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369211, 0.497280, -0.785109,
		0.884528, -0.447213, 0.132704,
		-0.285119, -0.743447, -0.604974,
		6.330348, 13.745812, 13.741720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.150216, 14.120059, 13.864775>,  <6.529932, 14.266225, 14.165202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.150216, 14.120059, 13.864775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.853141, 13.971643, 13.641797>,  <6.674896, 13.882594, 13.508010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.853141, 13.971643, 13.641797>,  <7.150216, 14.120059, 13.864775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.853141, 13.971643, 13.641797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405061, 0.413966, -0.815204,
		0.533237, -0.831241, -0.157153,
		-0.742687, -0.371040, -0.557445,
		6.630334, 13.860332, 13.474564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.441924, 13.850684, 13.158489>,  <7.150216, 14.120059, 13.864775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.441924, 13.850684, 13.158489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.055147, 13.858651, 13.056804>,  <6.823081, 13.863432, 12.995792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.055147, 13.858651, 13.056804>,  <7.441924, 13.850684, 13.158489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.055147, 13.858651, 13.056804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249442, 0.280795, -0.926786,
		0.052922, -0.959561, -0.276482,
		-0.966943, 0.019919, -0.254215,
		6.765064, 13.864627, 12.980539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.316709, 13.413873, 12.477821>,  <7.441924, 13.850684, 13.158489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.316709, 13.413873, 12.477821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.035061, 13.696884, 12.501893>,  <6.866073, 13.866691, 12.516335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.035061, 13.696884, 12.501893>,  <7.316709, 13.413873, 12.477821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.035061, 13.696884, 12.501893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177519, 0.257452, -0.949845,
		-0.687535, -0.658120, -0.306876,
		-0.704118, 0.707528, 0.060179,
		6.823826, 13.909142, 12.519947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.938373, 13.347219, 11.836557>,  <7.316709, 13.413873, 12.477821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.938373, 13.347219, 11.836557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.842139, 13.705989, 11.984960>,  <6.784398, 13.921250, 12.074001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.842139, 13.705989, 11.984960>,  <6.938373, 13.347219, 11.836557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.842139, 13.705989, 11.984960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020154, 0.377534, -0.925776,
		-0.970419, -0.230205, -0.072753,
		-0.240585, 0.896925, 0.371006,
		6.769963, 13.975066, 12.096261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.599452, 13.696374, 11.339125>,  <6.938373, 13.347219, 11.836557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.599452, 13.696374, 11.339125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.688738, 14.024632, 11.549540>,  <6.742310, 14.221587, 11.675789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.688738, 14.024632, 11.549540>,  <6.599452, 13.696374, 11.339125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.688738, 14.024632, 11.549540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113161, 0.514189, -0.850179,
		-0.968178, 0.249301, 0.021910,
		0.223216, 0.820645, 0.526038,
		6.755703, 14.270826, 11.707351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.142353, 14.369896, 11.139289>,  <6.599452, 13.696374, 11.339125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.142353, 14.369896, 11.139289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.478865, 14.489270, 11.319593>,  <6.680772, 14.560895, 11.427776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.478865, 14.489270, 11.319593>,  <6.142353, 14.369896, 11.139289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.478865, 14.489270, 11.319593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176231, 0.636866, -0.750562,
		-0.511069, 0.710871, 0.483189,
		0.841279, 0.298436, 0.450760,
		6.731248, 14.578801, 11.454822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.153130, 15.110187, 11.040288>,  <6.142353, 14.369896, 11.139289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.153130, 15.110187, 11.040288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.519656, 14.968725, 11.115434>,  <6.739572, 14.883848, 11.160522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.519656, 14.968725, 11.115434>,  <6.153130, 15.110187, 11.040288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.519656, 14.968725, 11.115434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380208, 0.621031, -0.685392,
		0.125722, 0.699463, 0.703523,
		0.916317, -0.353654, 0.187864,
		6.794551, 14.862629, 11.171793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.653434, 15.738970, 10.981835>,  <6.153130, 15.110187, 11.040288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.653434, 15.738970, 10.981835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.920840, 15.441791, 10.995187>,  <7.081284, 15.263483, 11.003198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.920840, 15.441791, 10.995187>,  <6.653434, 15.738970, 10.981835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.920840, 15.441791, 10.995187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626090, 0.538007, -0.564411,
		0.401370, 0.398216, 0.824819,
		0.668516, -0.742948, 0.033379,
		7.121395, 15.218906, 11.005200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.310706, 15.976472, 11.149836>,  <6.653434, 15.738970, 10.981835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.310706, 15.976472, 11.149836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.400088, 15.640525, 10.951970>,  <7.453718, 15.438957, 10.833251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.400088, 15.640525, 10.951970>,  <7.310706, 15.976472, 11.149836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.400088, 15.640525, 10.951970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723708, 0.482913, -0.492994,
		0.652928, -0.247830, 0.715727,
		0.223455, -0.839867, -0.494664,
		7.467125, 15.388565, 10.803571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.074074, 15.990322, 11.180790>,  <7.310706, 15.976472, 11.149836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.074074, 15.990322, 11.180790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.944047, 15.765232, 10.876771>,  <7.866032, 15.630178, 10.694360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.944047, 15.765232, 10.876771>,  <8.074074, 15.990322, 11.180790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.944047, 15.765232, 10.876771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499643, 0.580171, -0.643240,
		0.802925, -0.588848, 0.092569,
		-0.325065, -0.562725, -0.760048,
		7.846528, 15.596415, 10.648757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.644561, 15.772107, 10.819135>,  <8.074074, 15.990322, 11.180790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.644561, 15.772107, 10.819135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.336300, 15.760855, 10.564482>,  <8.151343, 15.754104, 10.411690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.336300, 15.760855, 10.564482>,  <8.644561, 15.772107, 10.819135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.336300, 15.760855, 10.564482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511544, 0.568453, -0.644348,
		0.380022, -0.822235, -0.423690,
		-0.770653, -0.028130, -0.636633,
		8.105103, 15.752416, 10.373491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.065347, 15.807289, 10.181043>,  <8.644561, 15.772107, 10.819135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.065347, 15.807289, 10.181043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.688058, 15.871984, 10.064993>,  <8.461684, 15.910802, 9.995363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.688058, 15.871984, 10.064993>,  <9.065347, 15.807289, 10.181043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.688058, 15.871984, 10.064993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313882, 0.719767, -0.619205,
		0.108673, -0.675113, -0.729666,
		-0.943223, 0.161738, -0.290125,
		8.405091, 15.920506, 9.977956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.007153, 15.731340, 9.374869>,  <9.065347, 15.807289, 10.181043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.007153, 15.731340, 9.374869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.716436, 15.968591, 9.513421>,  <8.542007, 16.110941, 9.596552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.716436, 15.968591, 9.513421>,  <9.007153, 15.731340, 9.374869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.716436, 15.968591, 9.513421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194595, 0.661439, -0.724314,
		-0.658719, -0.459020, -0.596146,
		-0.726789, 0.593126, 0.346379,
		8.498400, 16.146528, 9.617334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.693563, 16.004469, 8.748387>,  <9.007153, 15.731340, 9.374869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.693563, 16.004469, 8.748387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.587241, 16.260017, 9.037162>,  <8.523449, 16.413347, 9.210426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.587241, 16.260017, 9.037162>,  <8.693563, 16.004469, 8.748387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.587241, 16.260017, 9.037162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325724, 0.764351, -0.556482,
		-0.907333, 0.087237, -0.411263,
		-0.265803, 0.638872, 0.721936,
		8.507501, 16.451679, 9.253742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.279550, 16.395447, 8.434156>,  <8.693563, 16.004469, 8.748387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.279550, 16.395447, 8.434156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.408886, 16.607481, 8.747706>,  <8.486487, 16.734701, 8.935836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.408886, 16.607481, 8.747706>,  <8.279550, 16.395447, 8.434156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.408886, 16.607481, 8.747706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216190, 0.765083, -0.606556,
		-0.921256, 0.365590, 0.132782,
		0.323340, 0.530087, 0.783874,
		8.505888, 16.766508, 8.982869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087752, 17.135216, 8.332088>,  <8.279550, 16.395447, 8.434156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087752, 17.135216, 8.332088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.381245, 17.141121, 8.603799>,  <8.557341, 17.144665, 8.766826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.381245, 17.141121, 8.603799>,  <8.087752, 17.135216, 8.332088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.381245, 17.141121, 8.603799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309088, 0.883071, -0.353058,
		-0.605064, 0.469007, 0.643374,
		0.733731, 0.014764, 0.679279,
		8.601364, 17.145550, 8.807583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.158197, 17.805725, 8.582060>,  <8.087752, 17.135216, 8.332088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.158197, 17.805725, 8.582060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.506796, 17.637653, 8.683210>,  <8.715955, 17.536810, 8.743900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.506796, 17.637653, 8.683210>,  <8.158197, 17.805725, 8.582060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.506796, 17.637653, 8.683210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445494, 0.893885, -0.050046,
		-0.205014, 0.156270, 0.966203,
		0.871495, -0.420178, 0.252877,
		8.768245, 17.511600, 8.759073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.503211, 18.324497, 9.012990>,  <8.158197, 17.805725, 8.582060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.503211, 18.324497, 9.012990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.787631, 18.076134, 8.881001>,  <8.958282, 17.927116, 8.801807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.787631, 18.076134, 8.881001>,  <8.503211, 18.324497, 9.012990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.787631, 18.076134, 8.881001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651076, 0.758617, -0.024501,
		0.265536, -0.197416, 0.943672,
		0.711049, -0.620908, -0.329973,
		9.000946, 17.889862, 8.782008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.130871, 18.525064, 9.416711>,  <8.503211, 18.324497, 9.012990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.130871, 18.525064, 9.416711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.211512, 18.333900, 9.074726>,  <9.259896, 18.219202, 8.869535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.211512, 18.333900, 9.074726>,  <9.130871, 18.525064, 9.416711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.211512, 18.333900, 9.074726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542709, 0.781144, -0.308675,
		0.815367, -0.401766, 0.416847,
		0.201603, -0.477910, -0.854961,
		9.271993, 18.190527, 8.818237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.905979, 18.597635, 9.381718>,  <9.130871, 18.525064, 9.416711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.905979, 18.597635, 9.381718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.762778, 18.530245, 9.014359>,  <9.676858, 18.489811, 8.793944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.762778, 18.530245, 9.014359>,  <9.905979, 18.597635, 9.381718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.762778, 18.530245, 9.014359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775295, 0.494491, -0.392933,
		0.520338, -0.852698, -0.046409,
		-0.358001, -0.168477, -0.918395,
		9.655377, 18.479702, 8.738841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.014265, 17.762518, 22.254274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.814248, 17.460018, 22.423056>,  <13.694238, 17.278519, 22.524324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.814248, 17.460018, 22.423056>,  <14.014265, 17.762518, 22.254274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.814248, 17.460018, 22.423056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193177, 0.572375, 0.796912,
		-0.844180, 0.316978, -0.432302,
		-0.500043, -0.756248, 0.421955,
		13.664235, 17.233143, 22.549643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.488235, 18.137768, 22.587297>,  <14.014265, 17.762518, 22.254274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.488235, 18.137768, 22.587297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.535822, 17.773783, 22.746202>,  <13.564374, 17.555391, 22.841545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.535822, 17.773783, 22.746202>,  <13.488235, 18.137768, 22.587297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.535822, 17.773783, 22.746202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192429, 0.371388, 0.908318,
		-0.974073, -0.184504, -0.130921,
		0.118966, -0.909961, 0.397263,
		13.571511, 17.500793, 22.865381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.883098, 17.979952, 22.971691>,  <13.488235, 18.137768, 22.587297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.883098, 17.979952, 22.971691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.175665, 17.758698, 23.131226>,  <13.351206, 17.625946, 23.226946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.175665, 17.758698, 23.131226>,  <12.883098, 17.979952, 22.971691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.175665, 17.758698, 23.131226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231759, 0.348420, 0.908235,
		-0.641338, -0.756734, 0.126647,
		0.731419, -0.553134, 0.398834,
		13.395091, 17.592758, 23.250875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.556328, 17.708513, 23.481148>,  <12.883098, 17.979952, 22.971691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.556328, 17.708513, 23.481148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.943401, 17.685709, 23.579401>,  <13.175646, 17.672026, 23.638353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.943401, 17.685709, 23.579401>,  <12.556328, 17.708513, 23.481148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943401, 17.685709, 23.579401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230971, 0.190478, 0.954133,
		-0.101185, -0.980034, 0.171155,
		0.967685, -0.057012, 0.245633,
		13.233706, 17.668606, 23.653091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.572091, 17.550774, 24.239408>,  <12.556328, 17.708513, 23.481148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.572091, 17.550774, 24.239408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.963525, 17.622204, 24.198456>,  <13.198385, 17.665062, 24.173883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.963525, 17.622204, 24.198456>,  <12.572091, 17.550774, 24.239408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963525, 17.622204, 24.198456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099921, 0.022743, 0.994735,
		0.179965, -0.983663, 0.004412,
		0.978585, 0.178576, -0.102381,
		13.257100, 17.675776, 24.167742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.878511, 17.221035, 24.807549>,  <12.572091, 17.550774, 24.239408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.878511, 17.221035, 24.807549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.186796, 17.456102, 24.709040>,  <13.371767, 17.597143, 24.649935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.186796, 17.456102, 24.709040>,  <12.878511, 17.221035, 24.807549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186796, 17.456102, 24.709040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201363, 0.142061, 0.969160,
		0.604531, -0.796532, -0.008847,
		0.770711, 0.587669, -0.246272,
		13.418010, 17.632402, 24.635159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.467289, 16.978168, 25.149536>,  <12.878511, 17.221035, 24.807549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.467289, 16.978168, 25.149536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.519093, 17.363092, 25.053881>,  <13.550175, 17.594048, 24.996489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.519093, 17.363092, 25.053881>,  <13.467289, 16.978168, 25.149536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519093, 17.363092, 25.053881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325940, 0.186453, 0.926822,
		0.936478, -0.197975, -0.289509,
		0.129508, 0.962310, -0.239137,
		13.557945, 17.651785, 24.982140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.195872, 17.064486, 25.295084>,  <13.467289, 16.978168, 25.149536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.195872, 17.064486, 25.295084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.030318, 17.428585, 25.290318>,  <13.930985, 17.647045, 25.287458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.030318, 17.428585, 25.290318>,  <14.195872, 17.064486, 25.295084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030318, 17.428585, 25.290318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504325, 0.240170, 0.829443,
		0.757863, 0.337286, -0.558465,
		-0.413885, 0.910251, -0.011914,
		13.906153, 17.701660, 25.286743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755757, 17.649437, 25.493662>,  <14.195872, 17.064486, 25.295084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.755757, 17.649437, 25.493662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.394836, 17.812250, 25.550474>,  <14.178284, 17.909939, 25.584562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.394836, 17.812250, 25.550474>,  <14.755757, 17.649437, 25.493662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394836, 17.812250, 25.550474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308895, 0.380604, 0.871622,
		0.300720, 0.830340, -0.469150,
		-0.902303, 0.407032, 0.142032,
		14.124146, 17.934361, 25.593084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849745, 18.368668, 25.538666>,  <14.755757, 17.649437, 25.493662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.849745, 18.368668, 25.538666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.507937, 18.277084, 25.725161>,  <14.302853, 18.222134, 25.837057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.507937, 18.277084, 25.725161>,  <14.849745, 18.368668, 25.538666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507937, 18.277084, 25.725161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335088, 0.442849, 0.831625,
		-0.396881, 0.866869, -0.301701,
		-0.854518, -0.228960, 0.466236,
		14.251582, 18.208397, 25.865032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630549, 18.987240, 25.716692>,  <14.849745, 18.368668, 25.538666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.630549, 18.987240, 25.716692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.409250, 18.765945, 25.965801>,  <14.276471, 18.633169, 26.115267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.409250, 18.765945, 25.965801>,  <14.630549, 18.987240, 25.716692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409250, 18.765945, 25.965801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319440, 0.549557, 0.771975,
		-0.769334, 0.626032, -0.127315,
		-0.553248, -0.553237, 0.622773,
		14.243276, 18.599974, 26.152634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177107, 19.395050, 26.071297>,  <14.630549, 18.987240, 25.716692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.177107, 19.395050, 26.071297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.230433, 19.072357, 26.301569>,  <14.262428, 18.878740, 26.439732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.230433, 19.072357, 26.301569>,  <14.177107, 19.395050, 26.071297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230433, 19.072357, 26.301569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204321, 0.590760, 0.780548,
		-0.969783, 0.013566, 0.243589,
		0.133314, -0.806733, 0.575681,
		14.270427, 18.830338, 26.474274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852860, 19.423254, 26.720749>,  <14.177107, 19.395050, 26.071297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852860, 19.423254, 26.720749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.173117, 19.192223, 26.784468>,  <14.365271, 19.053604, 26.822699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.173117, 19.192223, 26.784468>,  <13.852860, 19.423254, 26.720749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173117, 19.192223, 26.784468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294008, 0.610407, 0.735502,
		-0.522047, -0.542039, 0.658530,
		0.800641, -0.577579, 0.159297,
		14.413309, 19.018950, 26.832256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919734, 19.228985, 27.528793>,  <13.852860, 19.423254, 26.720749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919734, 19.228985, 27.528793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.270225, 19.212891, 27.336706>,  <14.480518, 19.203234, 27.221455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.270225, 19.212891, 27.336706>,  <13.919734, 19.228985, 27.528793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270225, 19.212891, 27.336706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440011, 0.473167, 0.763219,
		0.196515, -0.880053, 0.432306,
		0.876226, -0.040236, -0.480218,
		14.533092, 19.200821, 27.192640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.871544, 19.925406, 27.801764>,  <13.919734, 19.228985, 27.528793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.871544, 19.925406, 27.801764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.655085, 20.244568, 27.907972>,  <13.525209, 20.436066, 27.971697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.655085, 20.244568, 27.907972>,  <13.871544, 19.925406, 27.801764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.655085, 20.244568, 27.907972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032717, 0.335487, -0.941477,
		-0.840291, -0.500790, -0.207653,
		-0.541147, 0.797908, 0.265523,
		13.492741, 20.483940, 27.987629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320001, 19.921537, 27.265614>,  <13.871544, 19.925406, 27.801764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320001, 19.921537, 27.265614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.339902, 20.283098, 27.435549>,  <13.351843, 20.500034, 27.537510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.339902, 20.283098, 27.435549>,  <13.320001, 19.921537, 27.265614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339902, 20.283098, 27.435549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199222, 0.425796, -0.882614,
		-0.978691, -0.040725, 0.201262,
		0.049752, 0.903902, 0.424836,
		13.354828, 20.554270, 27.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648181, 20.207195, 27.162302>,  <13.320001, 19.921537, 27.265614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648181, 20.207195, 27.162302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.911580, 20.507771, 27.178911>,  <13.069619, 20.688116, 27.188877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.911580, 20.507771, 27.178911>,  <12.648181, 20.207195, 27.162302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911580, 20.507771, 27.178911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112443, 0.152790, -0.981841,
		-0.744135, 0.641871, 0.185106,
		0.658497, 0.751437, 0.041523,
		13.109129, 20.733202, 27.191368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262808, 20.843164, 26.847040>,  <12.648181, 20.207195, 27.162302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262808, 20.843164, 26.847040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.661777, 20.859446, 26.823397>,  <12.901157, 20.869213, 26.809210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.661777, 20.859446, 26.823397>,  <12.262808, 20.843164, 26.847040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.661777, 20.859446, 26.823397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069222, 0.328156, -0.942084,
		-0.018946, 0.943746, 0.330127,
		0.997421, 0.040701, -0.059110,
		12.961003, 20.871656, 26.805664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282897, 21.230505, 26.193583>,  <12.262808, 20.843164, 26.847040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282897, 21.230505, 26.193583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.665871, 21.150007, 26.276356>,  <12.895655, 21.101709, 26.326019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.665871, 21.150007, 26.276356>,  <12.282897, 21.230505, 26.193583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665871, 21.150007, 26.276356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254950, 0.253414, -0.933157,
		0.135352, 0.946194, 0.293934,
		0.957434, -0.201243, 0.206932,
		12.953101, 21.089634, 26.338436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.651581, 21.721601, 25.952776>,  <12.282897, 21.230505, 26.193583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.651581, 21.721601, 25.952776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.912146, 21.418232, 25.961302>,  <13.068484, 21.236210, 25.966417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.912146, 21.418232, 25.961302>,  <12.651581, 21.721601, 25.952776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.912146, 21.418232, 25.961302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180601, 0.127712, -0.975230,
		0.736915, 0.639127, 0.220166,
		0.651413, -0.758424, 0.021314,
		13.107570, 21.190704, 25.967695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131224, 22.049381, 25.456926>,  <12.651581, 21.721601, 25.952776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131224, 22.049381, 25.456926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.169773, 21.653687, 25.500971>,  <13.192903, 21.416269, 25.527397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.169773, 21.653687, 25.500971>,  <13.131224, 22.049381, 25.456926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.169773, 21.653687, 25.500971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332488, -0.072277, -0.940334,
		0.938170, 0.127235, 0.321944,
		0.096375, -0.989236, 0.110112,
		13.198686, 21.356916, 25.534004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.712470, 21.867643, 25.129000>,  <13.131224, 22.049381, 25.456926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.712470, 21.867643, 25.129000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.528148, 21.513733, 25.156801>,  <13.417555, 21.301386, 25.173483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.528148, 21.513733, 25.156801>,  <13.712470, 21.867643, 25.129000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528148, 21.513733, 25.156801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166426, -0.163071, -0.972476,
		0.871758, -0.436555, 0.222394,
		-0.460805, -0.884776, 0.069504,
		13.389906, 21.248301, 25.177652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.193256, 21.415016, 24.793489>,  <13.712470, 21.867643, 25.129000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.193256, 21.415016, 24.793489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.824093, 21.261127, 24.787439>,  <13.602594, 21.168795, 24.783810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.824093, 21.261127, 24.787439>,  <14.193256, 21.415016, 24.793489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824093, 21.261127, 24.787439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099640, -0.200718, -0.974569,
		0.371902, -0.900945, 0.223578,
		-0.922908, -0.384721, -0.015123,
		13.547220, 21.145712, 24.782902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261687, 20.735466, 24.421448>,  <14.193256, 21.415016, 24.793489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.261687, 20.735466, 24.421448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.871368, 20.821455, 24.405424>,  <13.637177, 20.873049, 24.395809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.871368, 20.821455, 24.405424>,  <14.261687, 20.735466, 24.421448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.871368, 20.821455, 24.405424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028158, -0.305195, -0.951874,
		-0.216849, -0.927709, 0.303862,
		-0.975799, 0.214969, -0.040059,
		13.578629, 20.885946, 24.393406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044429, 20.134884, 24.175325>,  <14.261687, 20.735466, 24.421448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044429, 20.134884, 24.175325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.770390, 20.413885, 24.091295>,  <13.605966, 20.581285, 24.040876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.770390, 20.413885, 24.091295>,  <14.044429, 20.134884, 24.175325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770390, 20.413885, 24.091295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073713, -0.353287, -0.932606,
		-0.724711, -0.623442, 0.293451,
		-0.685098, 0.697501, -0.210075,
		13.564860, 20.623137, 24.028273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638840, 19.681843, 23.685415>,  <14.044429, 20.134884, 24.175325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.638840, 19.681843, 23.685415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.525707, 20.061489, 23.630011>,  <13.457828, 20.289276, 23.596767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.525707, 20.061489, 23.630011>,  <13.638840, 19.681843, 23.685415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.525707, 20.061489, 23.630011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004893, -0.142978, -0.989714,
		-0.959157, -0.280599, 0.035795,
		-0.282830, 0.949116, -0.138511,
		13.440858, 20.346224, 23.588457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.028575, 19.658020, 23.329563>,  <13.638840, 19.681843, 23.685415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.028575, 19.658020, 23.329563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.180822, 20.016748, 23.239370>,  <13.272171, 20.231985, 23.185255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.180822, 20.016748, 23.239370>,  <13.028575, 19.658020, 23.329563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.180822, 20.016748, 23.239370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142770, -0.183921, -0.972517,
		-0.913644, 0.402351, 0.058035,
		0.380619, 0.896820, -0.225482,
		13.295008, 20.285795, 23.171726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.698673, 19.918663, 22.796019>,  <13.028575, 19.658020, 23.329563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.698673, 19.918663, 22.796019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.017121, 20.151667, 22.730444>,  <13.208190, 20.291470, 22.691099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.017121, 20.151667, 22.730444>,  <12.698673, 19.918663, 22.796019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.017121, 20.151667, 22.730444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262344, 0.088105, -0.960944,
		-0.545315, 0.808035, 0.222960,
		0.796120, 0.582509, -0.163938,
		13.255958, 20.326420, 22.681263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.914054, 19.983389, 22.682974>,  <12.698673, 19.918663, 22.796019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.914054, 19.983389, 22.682974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.681472, 19.658148, 22.671827>,  <11.541923, 19.463003, 22.665140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.681472, 19.658148, 22.671827>,  <11.914054, 19.983389, 22.682974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.681472, 19.658148, 22.671827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085526, -0.095151, 0.991782,
		-0.809070, 0.574295, 0.124868,
		-0.581456, -0.813100, -0.027867,
		11.507035, 19.414217, 22.663467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.497502, 20.098017, 23.249222>,  <11.914054, 19.983389, 22.682974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.497502, 20.098017, 23.249222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.486515, 19.705982, 23.170555>,  <11.479923, 19.470762, 23.123356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.486515, 19.705982, 23.170555>,  <11.497502, 20.098017, 23.249222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486515, 19.705982, 23.170555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029921, -0.197459, 0.979855,
		-0.999175, 0.021030, 0.034749,
		-0.027468, -0.980086, -0.196667,
		11.478274, 19.411957, 23.111555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101228, 19.939484, 23.760124>,  <11.497502, 20.098017, 23.249222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101228, 19.939484, 23.760124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.265992, 19.590685, 23.654331>,  <11.364851, 19.381405, 23.590857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.265992, 19.590685, 23.654331>,  <11.101228, 19.939484, 23.760124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.265992, 19.590685, 23.654331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068221, -0.259923, 0.963217,
		-0.908667, -0.414803, -0.047576,
		0.411911, -0.871997, -0.264482,
		11.389565, 19.329086, 23.574987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728769, 19.458693, 24.093437>,  <11.101228, 19.939484, 23.760124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728769, 19.458693, 24.093437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.075099, 19.271202, 24.023415>,  <11.282897, 19.158709, 23.981401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.075099, 19.271202, 24.023415>,  <10.728769, 19.458693, 24.093437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.075099, 19.271202, 24.023415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017789, -0.320811, 0.946976,
		-0.500034, -0.823028, -0.269427,
		0.865823, -0.468727, -0.175057,
		11.334846, 19.130585, 23.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.635134, 18.742151, 24.298738>,  <10.728769, 19.458693, 24.093437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.635134, 18.742151, 24.298738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.026267, 18.825731, 24.304178>,  <11.260947, 18.875879, 24.307442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.026267, 18.825731, 24.304178>,  <10.635134, 18.742151, 24.298738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026267, 18.825731, 24.304178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050522, -0.298459, 0.953084,
		0.203204, -0.931269, -0.302400,
		0.977832, 0.208949, 0.013598,
		11.319616, 18.888416, 24.308258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.845956, 18.328762, 24.855078>,  <10.635134, 18.742151, 24.298738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.845956, 18.328762, 24.855078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.171161, 18.555494, 24.801838>,  <11.366283, 18.691534, 24.769894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.171161, 18.555494, 24.801838>,  <10.845956, 18.328762, 24.855078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.171161, 18.555494, 24.801838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155654, 0.008684, 0.987773,
		0.561056, -0.823789, -0.081169,
		0.813012, 0.566830, -0.133099,
		11.415065, 18.725544, 24.761908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.408738, 18.028418, 25.206106>,  <10.845956, 18.328762, 24.855078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.408738, 18.028418, 25.206106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.511584, 18.412001, 25.158293>,  <11.573292, 18.642151, 25.129604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.511584, 18.412001, 25.158293>,  <11.408738, 18.028418, 25.206106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.511584, 18.412001, 25.158293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237704, 0.057134, 0.969656,
		0.936690, -0.277727, -0.213258,
		0.257115, 0.958960, -0.119533,
		11.588718, 18.699688, 25.122433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.800682, 17.422930, 25.396748>,  <11.408738, 18.028418, 25.206106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.800682, 17.422930, 25.396748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.491168, 17.180368, 25.469997>,  <11.305460, 17.034832, 25.513947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.491168, 17.180368, 25.469997>,  <11.800682, 17.422930, 25.396748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.491168, 17.180368, 25.469997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113026, -0.152278, -0.981853,
		0.623283, -0.780441, 0.049292,
		-0.773785, -0.606402, 0.183122,
		11.259032, 16.998447, 25.524935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981962, 16.972906, 24.843393>,  <11.800682, 17.422930, 25.396748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.981962, 16.972906, 24.843393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.612749, 16.902193, 24.980074>,  <11.391221, 16.859766, 25.062082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.612749, 16.902193, 24.980074>,  <11.981962, 16.972906, 24.843393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.612749, 16.902193, 24.980074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284880, -0.282862, -0.915878,
		0.258565, -0.942729, 0.210729,
		-0.923032, -0.176781, 0.341702,
		11.335839, 16.849159, 25.082584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.957102, 16.305504, 24.696928>,  <11.981962, 16.972906, 24.843393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.957102, 16.305504, 24.696928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.596010, 16.477587, 24.697222>,  <11.379355, 16.580837, 24.697397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.596010, 16.477587, 24.697222>,  <11.957102, 16.305504, 24.696928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.596010, 16.477587, 24.697222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191476, -0.400254, -0.896177,
		-0.385243, -0.809149, 0.443696,
		-0.902732, 0.430203, 0.000738,
		11.325191, 16.606649, 24.697443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.510904, 15.851451, 24.340799>,  <11.957102, 16.305504, 24.696928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.510904, 15.851451, 24.340799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.319708, 16.202770, 24.336506>,  <11.204990, 16.413563, 24.333929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.319708, 16.202770, 24.336506>,  <11.510904, 15.851451, 24.340799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.319708, 16.202770, 24.336506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338925, -0.195697, -0.920235,
		-0.810342, -0.436227, 0.391219,
		-0.477991, 0.878299, -0.010733,
		11.176311, 16.466259, 24.333286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.780846, 15.564760, 24.335243>,  <11.510904, 15.851451, 24.340799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.780846, 15.564760, 24.335243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.842889, 15.939455, 24.209724>,  <10.880115, 16.164272, 24.134413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.842889, 15.939455, 24.209724>,  <10.780846, 15.564760, 24.335243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.842889, 15.939455, 24.209724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638104, -0.147489, -0.755692,
		-0.754166, 0.317447, 0.574858,
		0.155107, 0.936736, -0.313796,
		10.889421, 16.220476, 24.115585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.275124, 15.625188, 24.061228>,  <10.780846, 15.564760, 24.335243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.275124, 15.625188, 24.061228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.478241, 15.928125, 23.896996>,  <10.600111, 16.109888, 23.798456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.478241, 15.928125, 23.896996>,  <10.275124, 15.625188, 24.061228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.478241, 15.928125, 23.896996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321305, -0.275711, -0.905951,
		-0.799318, 0.591957, 0.103334,
		0.507793, 0.757344, -0.410579,
		10.630579, 16.155329, 23.773821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.785305, 15.920511, 23.574213>,  <10.275124, 15.625188, 24.061228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.785305, 15.920511, 23.574213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.153213, 16.013243, 23.447544>,  <10.373958, 16.068882, 23.371544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.153213, 16.013243, 23.447544>,  <9.785305, 15.920511, 23.574213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.153213, 16.013243, 23.447544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183568, -0.459052, -0.869237,
		-0.346882, 0.857629, -0.379666,
		0.919769, 0.231828, -0.316670,
		10.429143, 16.082790, 23.352543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.176592, 17.853354, 24.282381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.413929, 17.641527, 24.524870>,  <18.556332, 17.514431, 24.670362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.413929, 17.641527, 24.524870>,  <18.176592, 17.853354, 24.282381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413929, 17.641527, 24.524870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574308, -0.249191, -0.779791,
		0.564017, 0.810840, 0.156279,
		0.593343, -0.529567, 0.606220,
		18.591932, 17.482656, 24.706736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264912, 17.928852, 24.980824>,  <18.176592, 17.853354, 24.282381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264912, 17.928852, 24.980824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.017515, 17.864731, 25.288530>,  <17.869078, 17.826258, 25.473154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.017515, 17.864731, 25.288530>,  <18.264912, 17.928852, 24.980824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.017515, 17.864731, 25.288530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020511, 0.981931, 0.188125,
		-0.785526, 0.100575, -0.610602,
		-0.618489, -0.160302, 0.769269,
		17.831968, 17.816641, 25.519312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072834, 17.192123, 25.362848>,  <18.264912, 17.928852, 24.980824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072834, 17.192123, 25.362848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.020144, 16.811079, 25.253174>,  <17.988529, 16.582453, 25.187368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.020144, 16.811079, 25.253174>,  <18.072834, 17.192123, 25.362848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020144, 16.811079, 25.253174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946798, 0.038976, 0.319459,
		-0.293634, 0.301681, -0.907066,
		-0.131729, -0.952612, -0.274186,
		17.980625, 16.525295, 25.170918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531845, 17.221197, 24.849823>,  <18.072834, 17.192123, 25.362848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531845, 17.221197, 24.849823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.576376, 16.921164, 25.110586>,  <17.603094, 16.741144, 25.267044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.576376, 16.921164, 25.110586>,  <17.531845, 17.221197, 24.849823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576376, 16.921164, 25.110586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956112, 0.098061, 0.276103,
		-0.271027, -0.654033, -0.706247,
		0.111325, -0.750083, 0.651906,
		17.609774, 16.696138, 25.306158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.919788, 16.754759, 24.842207>,  <17.531845, 17.221197, 24.849823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.919788, 16.754759, 24.842207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.102415, 16.715439, 25.195904>,  <17.211992, 16.691847, 25.408121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.102415, 16.715439, 25.195904>,  <16.919788, 16.754759, 24.842207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102415, 16.715439, 25.195904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883292, 0.068878, 0.463735,
		-0.106491, -0.992770, -0.055383,
		0.456568, -0.098303, 0.884241,
		17.239386, 16.685949, 25.461176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709974, 16.086836, 25.243847>,  <16.919788, 16.754759, 24.842207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709974, 16.086836, 25.243847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.817677, 16.380344, 25.493351>,  <16.882298, 16.556450, 25.643053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.817677, 16.380344, 25.493351>,  <16.709974, 16.086836, 25.243847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817677, 16.380344, 25.493351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910391, -0.017344, 0.413386,
		0.314149, -0.679174, 0.663349,
		0.269256, 0.733772, 0.623762,
		16.898453, 16.600475, 25.680479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483969, 15.412490, 25.302780>,  <16.709974, 16.086836, 25.243847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483969, 15.412490, 25.302780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.112707, 15.467170, 25.441254>,  <15.889950, 15.499978, 25.524338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.112707, 15.467170, 25.441254>,  <16.483969, 15.412490, 25.302780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112707, 15.467170, 25.441254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354413, -0.608659, -0.709877,
		0.113667, -0.781567, 0.613378,
		-0.928155, 0.136700, 0.346182,
		15.834261, 15.508180, 25.545109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190128, 14.769137, 25.466978>,  <16.483969, 15.412490, 25.302780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190128, 14.769137, 25.466978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.873317, 15.012626, 25.448433>,  <15.683230, 15.158719, 25.437305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.873317, 15.012626, 25.448433>,  <16.190128, 14.769137, 25.466978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873317, 15.012626, 25.448433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464348, -0.649998, -0.601568,
		-0.396325, -0.454930, 0.797475,
		-0.792028, 0.608722, -0.046365,
		15.635709, 15.195242, 25.434523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619678, 14.363948, 25.366117>,  <16.190128, 14.769137, 25.466978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619678, 14.363948, 25.366117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.486388, 14.708258, 25.212219>,  <15.406415, 14.914844, 25.119881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.486388, 14.708258, 25.212219>,  <15.619678, 14.363948, 25.366117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486388, 14.708258, 25.212219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326319, -0.488136, -0.809469,
		-0.884578, -0.144183, 0.443545,
		-0.333222, 0.860775, -0.384745,
		15.386421, 14.966491, 25.096796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080478, 14.197742, 24.997890>,  <15.619678, 14.363948, 25.366117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080478, 14.197742, 24.997890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.172940, 14.564161, 24.866787>,  <15.228417, 14.784013, 24.788124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.172940, 14.564161, 24.866787>,  <15.080478, 14.197742, 24.997890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.172940, 14.564161, 24.866787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206641, -0.282969, -0.936605,
		-0.950719, 0.284231, 0.123882,
		0.231157, 0.916047, -0.327758,
		15.242288, 14.838975, 24.768459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475286, 14.388542, 24.725447>,  <15.080478, 14.197742, 24.997890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475286, 14.388542, 24.725447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.752898, 14.602072, 24.532219>,  <14.919465, 14.730189, 24.416283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.752898, 14.602072, 24.532219>,  <14.475286, 14.388542, 24.725447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752898, 14.602072, 24.532219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349380, -0.336941, -0.874302,
		-0.629489, 0.775566, -0.047339,
		0.694029, 0.533825, -0.483068,
		14.961107, 14.762219, 24.387299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163708, 14.584465, 24.122486>,  <14.475286, 14.388542, 24.725447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163708, 14.584465, 24.122486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.550941, 14.627209, 24.031803>,  <14.783280, 14.652855, 23.977392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.550941, 14.627209, 24.031803>,  <14.163708, 14.584465, 24.122486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550941, 14.627209, 24.031803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166843, -0.400240, -0.901095,
		-0.187028, 0.910159, -0.369637,
		0.968083, 0.106859, -0.226710,
		14.841365, 14.659266, 23.963791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618360, 14.066259, 24.350090>,  <14.163708, 14.584465, 24.122486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618360, 14.066259, 24.350090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.423409, 13.730393, 24.445944>,  <13.306437, 13.528873, 24.503456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.423409, 13.730393, 24.445944>,  <13.618360, 14.066259, 24.350090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.423409, 13.730393, 24.445944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154488, 0.353023, 0.922772,
		-0.859416, 0.412719, -0.301774,
		-0.487378, -0.839666, 0.239633,
		13.277195, 13.478494, 24.517834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.952125, 14.252336, 24.623295>,  <13.618360, 14.066259, 24.350090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.952125, 14.252336, 24.623295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.048482, 13.886945, 24.754461>,  <13.106297, 13.667710, 24.833162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.048482, 13.886945, 24.754461>,  <12.952125, 14.252336, 24.623295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.048482, 13.886945, 24.754461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069954, 0.320647, 0.944612,
		-0.968027, -0.250491, 0.013340,
		0.240894, -0.913477, 0.327918,
		13.120750, 13.612902, 24.852837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.480780, 14.169118, 25.170305>,  <12.952125, 14.252336, 24.623295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.480780, 14.169118, 25.170305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.716123, 13.860814, 25.268093>,  <12.857328, 13.675832, 25.326765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.716123, 13.860814, 25.268093>,  <12.480780, 14.169118, 25.170305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.716123, 13.860814, 25.268093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054669, 0.263728, 0.963047,
		-0.806751, -0.579980, 0.113030,
		0.588357, -0.770760, 0.244470,
		12.892630, 13.629586, 25.341434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.143216, 13.704127, 25.628195>,  <12.480780, 14.169118, 25.170305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.143216, 13.704127, 25.628195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.534634, 13.722089, 25.708630>,  <12.769485, 13.732865, 25.756889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.534634, 13.722089, 25.708630>,  <12.143216, 13.704127, 25.628195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.534634, 13.722089, 25.708630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201278, 0.416913, 0.886381,
		-0.044035, -0.907837, 0.417006,
		0.978544, 0.044902, 0.201086,
		12.828197, 13.735559, 25.768955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.152917, 13.567658, 26.332958>,  <12.143216, 13.704127, 25.628195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.152917, 13.567658, 26.332958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.531676, 13.678429, 26.267605>,  <12.758932, 13.744891, 26.228394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.531676, 13.678429, 26.267605>,  <12.152917, 13.567658, 26.332958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531676, 13.678429, 26.267605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096712, 0.239305, 0.966116,
		0.306643, -0.930615, 0.199816,
		0.946898, 0.276928, -0.163383,
		12.815746, 13.761506, 26.218590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628422, 13.149477, 26.680401>,  <12.152917, 13.567658, 26.332958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.628422, 13.149477, 26.680401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.833169, 13.489418, 26.630219>,  <12.956017, 13.693383, 26.600109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.833169, 13.489418, 26.630219>,  <12.628422, 13.149477, 26.680401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.833169, 13.489418, 26.630219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137071, 0.063368, 0.988532,
		0.848058, -0.523195, -0.084054,
		0.511869, 0.849854, -0.125455,
		12.986730, 13.744374, 26.592583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062631, 13.213884, 27.298937>,  <12.628422, 13.149477, 26.680401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062631, 13.213884, 27.298937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.040234, 13.578630, 27.136274>,  <13.026795, 13.797478, 27.038677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.040234, 13.578630, 27.136274>,  <13.062631, 13.213884, 27.298937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.040234, 13.578630, 27.136274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096140, 0.410326, 0.906857,
		0.993792, 0.011681, -0.110641,
		-0.055992, 0.911864, -0.406656,
		13.023437, 13.852190, 27.014278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.663625, 13.648807, 27.593075>,  <13.062631, 13.213884, 27.298937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.663625, 13.648807, 27.593075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.367058, 13.888362, 27.471991>,  <13.189117, 14.032095, 27.399340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.367058, 13.888362, 27.471991>,  <13.663625, 13.648807, 27.593075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.367058, 13.888362, 27.471991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236234, 0.655169, 0.717598,
		0.628087, 0.460529, -0.627231,
		-0.741417, 0.598888, -0.302711,
		13.144632, 14.068028, 27.381178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877893, 14.198597, 27.845573>,  <13.663625, 13.648807, 27.593075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877893, 14.198597, 27.845573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.500507, 14.289275, 27.748842>,  <13.274076, 14.343682, 27.690804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.500507, 14.289275, 27.748842>,  <13.877893, 14.198597, 27.845573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500507, 14.289275, 27.748842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022680, 0.683707, 0.729404,
		0.330694, 0.693652, -0.639913,
		-0.943466, 0.226696, -0.241830,
		13.217467, 14.357284, 27.676292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891260, 14.907959, 27.731253>,  <13.877893, 14.198597, 27.845573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891260, 14.907959, 27.731253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.505549, 14.821220, 27.792114>,  <13.274123, 14.769177, 27.828630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.505549, 14.821220, 27.792114>,  <13.891260, 14.907959, 27.731253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505549, 14.821220, 27.792114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064814, 0.750052, 0.658196,
		-0.256849, 0.624820, -0.737311,
		-0.964276, -0.216845, 0.152153,
		13.216267, 14.756166, 27.837761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544256, 15.609036, 27.692047>,  <13.891260, 14.907959, 27.731253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544256, 15.609036, 27.692047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.263190, 15.392628, 27.876898>,  <13.094551, 15.262782, 27.987808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.263190, 15.392628, 27.876898>,  <13.544256, 15.609036, 27.692047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.263190, 15.392628, 27.876898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313182, 0.818358, 0.481878,
		-0.638890, 0.193869, -0.744469,
		-0.702664, -0.541022, 0.462124,
		13.052391, 15.230321, 28.015535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964094, 16.114731, 27.876770>,  <13.544256, 15.609036, 27.692047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964094, 16.114731, 27.876770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.924362, 15.792850, 28.110895>,  <12.900523, 15.599723, 28.251369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.924362, 15.792850, 28.110895>,  <12.964094, 16.114731, 27.876770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924362, 15.792850, 28.110895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297950, 0.585286, 0.754099,
		-0.949399, -0.099489, -0.297897,
		-0.099331, -0.804700, 0.585313,
		12.894563, 15.551440, 28.286489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.289941, 16.071268, 28.112772>,  <12.964094, 16.114731, 27.876770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.289941, 16.071268, 28.112772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.503377, 15.880499, 28.392149>,  <12.631438, 15.766037, 28.559776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.503377, 15.880499, 28.392149>,  <12.289941, 16.071268, 28.112772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.503377, 15.880499, 28.392149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303962, 0.662512, 0.684606,
		-0.789233, -0.577600, 0.208543,
		0.533591, -0.476924, 0.698445,
		12.663454, 15.737422, 28.601683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.839809, 16.085091, 28.767241>,  <12.289941, 16.071268, 28.112772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.839809, 16.085091, 28.767241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.228364, 16.034611, 28.847719>,  <12.461496, 16.004322, 28.896008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.228364, 16.034611, 28.847719>,  <11.839809, 16.085091, 28.767241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.228364, 16.034611, 28.847719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098240, 0.557766, 0.824163,
		-0.216233, -0.820347, 0.529409,
		0.971386, -0.126202, 0.201199,
		12.519780, 15.996750, 28.908079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190895, 16.086823, 28.359640>,  <11.839809, 16.085091, 28.767241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190895, 16.086823, 28.359640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.058549, 16.463968, 28.343962>,  <10.979141, 16.690256, 28.334555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.058549, 16.463968, 28.343962>,  <11.190895, 16.086823, 28.359640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.058549, 16.463968, 28.343962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069968, -0.016912, -0.997406,
		-0.941081, -0.332749, -0.060375,
		-0.330865, 0.942864, -0.039197,
		10.959290, 16.746828, 28.332203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.787760, 15.925345, 27.841248>,  <11.190895, 16.086823, 28.359640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.787760, 15.925345, 27.841248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.868368, 16.314280, 27.888494>,  <10.916734, 16.547640, 27.916842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.868368, 16.314280, 27.888494>,  <10.787760, 15.925345, 27.841248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.868368, 16.314280, 27.888494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012389, 0.123111, -0.992316,
		-0.979406, 0.198510, 0.036855,
		0.201522, 0.972336, 0.118116,
		10.928824, 16.605980, 27.923929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.202072, 16.315565, 27.573454>,  <10.787760, 15.925345, 27.841248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.202072, 16.315565, 27.573454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.517925, 16.560181, 27.593447>,  <10.707438, 16.706951, 27.605442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.517925, 16.560181, 27.593447>,  <10.202072, 16.315565, 27.573454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517925, 16.560181, 27.593447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029965, 0.119795, -0.992346,
		-0.612848, 0.782091, 0.112919,
		0.789632, 0.611541, 0.049981,
		10.754815, 16.743643, 27.608440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.072828, 16.779140, 27.190825>,  <10.202072, 16.315565, 27.573454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.072828, 16.779140, 27.190825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.469419, 16.828770, 27.206745>,  <10.707373, 16.858547, 27.216297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.469419, 16.828770, 27.206745>,  <10.072828, 16.779140, 27.190825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.469419, 16.828770, 27.206745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026271, 0.108843, -0.993712,
		-0.127625, 0.986285, 0.104655,
		0.991475, 0.124073, 0.039802,
		10.766861, 16.865992, 27.218685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.229115, 17.297388, 26.760134>,  <10.072828, 16.779140, 27.190825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.229115, 17.297388, 26.760134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.576462, 17.100765, 26.786392>,  <10.784870, 16.982792, 26.802147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.576462, 17.100765, 26.786392>,  <10.229115, 17.297388, 26.760134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.576462, 17.100765, 26.786392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108361, 0.058901, -0.992365,
		0.483940, 0.868850, 0.104414,
		0.868366, -0.491559, 0.065645,
		10.836971, 16.953297, 26.806086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.749166, 17.676920, 26.301430>,  <10.229115, 17.297388, 26.760134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.749166, 17.676920, 26.301430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.890729, 17.303627, 26.326174>,  <10.975666, 17.079651, 26.341021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.890729, 17.303627, 26.326174>,  <10.749166, 17.676920, 26.301430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.890729, 17.303627, 26.326174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205515, 0.013073, -0.978567,
		0.912422, 0.359033, 0.196420,
		0.353906, -0.933233, 0.061859,
		10.996901, 17.023657, 26.344732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.338984, 17.851229, 25.900351>,  <10.749166, 17.676920, 26.301430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.338984, 17.851229, 25.900351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.278073, 17.456347, 25.919279>,  <11.241527, 17.219418, 25.930637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.278073, 17.456347, 25.919279>,  <11.338984, 17.851229, 25.900351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278073, 17.456347, 25.919279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008166, -0.046623, -0.998879,
		0.988304, -0.152493, -0.000962,
		-0.152278, -0.987204, 0.047323,
		11.232390, 17.160185, 25.933475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970427, 18.153233, 25.719662>,  <11.338984, 17.851229, 25.900351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970427, 18.153233, 25.719662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.829205, 18.519289, 25.641825>,  <11.744472, 18.738924, 25.595123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.829205, 18.519289, 25.641825>,  <11.970427, 18.153233, 25.719662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829205, 18.519289, 25.641825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020159, 0.215377, 0.976323,
		0.935385, 0.340773, -0.094489,
		-0.353055, 0.915143, -0.194590,
		11.723288, 18.793833, 25.583448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197232, 18.495441, 26.312883>,  <11.970427, 18.153233, 25.719662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197232, 18.495441, 26.312883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.939821, 18.766438, 26.170404>,  <11.785375, 18.929035, 26.084917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.939821, 18.766438, 26.170404>,  <12.197232, 18.495441, 26.312883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.939821, 18.766438, 26.170404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116749, 0.373035, 0.920442,
		0.756467, 0.633915, -0.160961,
		-0.643527, 0.677492, -0.356198,
		11.746763, 18.969685, 26.063545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.344614, 19.243221, 26.569462>,  <12.197232, 18.495441, 26.312883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.344614, 19.243221, 26.569462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.961149, 19.233297, 26.456078>,  <11.731071, 19.227343, 26.388046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.961149, 19.233297, 26.456078>,  <12.344614, 19.243221, 26.569462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961149, 19.233297, 26.456078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272044, 0.371937, 0.887499,
		0.083411, 0.927926, -0.363312,
		-0.958663, -0.024809, -0.283461,
		11.673551, 19.225855, 26.371040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.031706, 19.936020, 26.582850>,  <12.344614, 19.243221, 26.569462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.031706, 19.936020, 26.582850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.725101, 19.681160, 26.615097>,  <11.541139, 19.528244, 26.634445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.725101, 19.681160, 26.615097>,  <12.031706, 19.936020, 26.582850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725101, 19.681160, 26.615097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291893, 0.457438, 0.839970,
		-0.572067, 0.620313, -0.536611,
		-0.766511, -0.637151, 0.080620,
		11.495149, 19.490015, 26.639282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.554379, 20.385490, 27.026165>,  <12.031706, 19.936020, 26.582850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.554379, 20.385490, 27.026165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.407225, 20.013586, 27.031879>,  <11.318933, 19.790443, 27.035309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.407225, 20.013586, 27.031879>,  <11.554379, 20.385490, 27.026165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.407225, 20.013586, 27.031879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034282, 0.028916, 0.998994,
		-0.929239, 0.367026, -0.042512,
		-0.367886, -0.929761, 0.014288,
		11.296859, 19.734657, 27.036165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.920633, 20.460501, 27.323652>,  <11.554379, 20.385490, 27.026165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.920633, 20.460501, 27.323652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.027583, 20.079988, 27.385073>,  <11.091753, 19.851681, 27.421925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.027583, 20.079988, 27.385073>,  <10.920633, 20.460501, 27.323652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.027583, 20.079988, 27.385073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191718, 0.103647, 0.975962,
		-0.944328, -0.290386, -0.154665,
		0.267375, -0.951280, 0.153549,
		11.107796, 19.794605, 27.431137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.454288, 20.226591, 27.788958>,  <10.920633, 20.460501, 27.323652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.454288, 20.226591, 27.788958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.765587, 19.978006, 27.824991>,  <10.952366, 19.828856, 27.846611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.765587, 19.978006, 27.824991>,  <10.454288, 20.226591, 27.788958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.765587, 19.978006, 27.824991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099675, 0.019382, 0.994831,
		-0.619998, -0.783203, -0.046860,
		0.778247, -0.621464, 0.090083,
		10.999061, 19.791567, 27.852016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.391778, 19.975559, 28.598232>,  <10.454288, 20.226591, 27.788958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.391778, 19.975559, 28.598232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.750914, 19.852423, 28.472300>,  <10.966395, 19.778542, 28.396740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.750914, 19.852423, 28.472300>,  <10.391778, 19.975559, 28.598232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.750914, 19.852423, 28.472300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319765, -0.035704, 0.946824,
		-0.302711, -0.950768, 0.066380,
		0.897840, -0.307840, -0.314830,
		11.020266, 19.760071, 28.377851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.438626, 19.378403, 28.918959>,  <10.391778, 19.975559, 28.598232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.438626, 19.378403, 28.918959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.804352, 19.502529, 28.814857>,  <11.023787, 19.577005, 28.752396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.804352, 19.502529, 28.814857>,  <10.438626, 19.378403, 28.918959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.804352, 19.502529, 28.814857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268960, 0.015208, 0.963031,
		0.302803, -0.950511, -0.069558,
		0.914315, 0.310317, -0.260254,
		11.078647, 19.595625, 28.736782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.585198, 14.886708, 13.690619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910380, 15.118312, 13.715446>,  <14.105490, 15.257274, 13.730343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910380, 15.118312, 13.715446>,  <13.585198, 14.886708, 13.690619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910380, 15.118312, 13.715446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395520, 0.470793, 0.788617,
		0.427391, -0.665663, 0.611743,
		0.812958, 0.579005, 0.062071,
		14.154267, 15.292014, 13.734066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920626, 14.883702, 14.483165>,  <13.585198, 14.886708, 13.690619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920626, 14.883702, 14.483165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048767, 15.217095, 14.303085>,  <14.125652, 15.417131, 14.195038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048767, 15.217095, 14.303085>,  <13.920626, 14.883702, 14.483165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.048767, 15.217095, 14.303085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410406, 0.550443, 0.727035,
		0.853780, -0.048144, 0.518403,
		0.320354, 0.833484, -0.450199,
		14.144874, 15.467140, 14.168026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.337113, 15.260064, 15.045877>,  <13.920626, 14.883702, 14.483165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.337113, 15.260064, 15.045877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.207520, 15.500793, 14.753893>,  <14.129765, 15.645231, 14.578702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.207520, 15.500793, 14.753893>,  <14.337113, 15.260064, 15.045877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.207520, 15.500793, 14.753893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397127, 0.613797, 0.682308,
		0.858677, 0.510943, 0.040142,
		-0.323981, 0.601823, -0.729962,
		14.110326, 15.681340, 14.534904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.503797, 16.024029, 15.228723>,  <14.337113, 15.260064, 15.045877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.503797, 16.024029, 15.228723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.209830, 16.009342, 14.957857>,  <14.033450, 16.000530, 14.795338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.209830, 16.009342, 14.957857>,  <14.503797, 16.024029, 15.228723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.209830, 16.009342, 14.957857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538431, 0.638668, 0.549723,
		0.412299, 0.768606, -0.489136,
		-0.734916, -0.036715, -0.677164,
		13.989355, 15.998327, 14.754708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321562, 16.706089, 15.257351>,  <14.503797, 16.024029, 15.228723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321562, 16.706089, 15.257351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.000681, 16.538342, 15.087363>,  <13.808152, 16.437693, 14.985371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.000681, 16.538342, 15.087363>,  <14.321562, 16.706089, 15.257351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000681, 16.538342, 15.087363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571704, 0.744741, 0.344261,
		0.172119, 0.519124, -0.837189,
		-0.802203, -0.419371, -0.424970,
		13.760020, 16.412531, 14.959872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931918, 17.315914, 15.111048>,  <14.321562, 16.706089, 15.257351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.931918, 17.315914, 15.111048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685691, 17.000700, 15.114598>,  <13.537954, 16.811571, 15.116729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685691, 17.000700, 15.114598>,  <13.931918, 17.315914, 15.111048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685691, 17.000700, 15.114598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692821, 0.546494, 0.470472,
		-0.375598, 0.283458, -0.882371,
		-0.615569, -0.788033, 0.008876,
		13.501020, 16.764290, 15.117261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.297050, 17.621397, 15.045805>,  <13.931918, 17.315914, 15.111048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.297050, 17.621397, 15.045805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.177450, 17.267159, 15.187971>,  <13.105690, 17.054615, 15.273271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.177450, 17.267159, 15.187971>,  <13.297050, 17.621397, 15.045805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.177450, 17.267159, 15.187971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694198, 0.457419, 0.555750,
		-0.654742, -0.080558, -0.751547,
		-0.299002, -0.885595, 0.355414,
		13.087749, 17.001480, 15.294596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.533327, 17.570913, 14.939166>,  <13.297050, 17.621397, 15.045805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.533327, 17.570913, 14.939166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.643991, 17.336637, 15.243909>,  <12.710388, 17.196072, 15.426755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.643991, 17.336637, 15.243909>,  <12.533327, 17.570913, 14.939166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.643991, 17.336637, 15.243909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619832, 0.497081, 0.607223,
		-0.734349, -0.640216, -0.225509,
		0.276657, -0.585692, 0.761857,
		12.726988, 17.160931, 15.472466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.992982, 17.541346, 15.285149>,  <12.533327, 17.570913, 14.939166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.992982, 17.541346, 15.285149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.259902, 17.418451, 15.556536>,  <12.420053, 17.344715, 15.719368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.259902, 17.418451, 15.556536>,  <11.992982, 17.541346, 15.285149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.259902, 17.418451, 15.556536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595307, 0.327402, 0.733769,
		-0.447572, -0.893540, 0.035575,
		0.667299, -0.307236, 0.678467,
		12.460092, 17.326281, 15.760076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.581589, 17.239326, 15.862820>,  <11.992982, 17.541346, 15.285149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.581589, 17.239326, 15.862820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948866, 17.297705, 16.010126>,  <12.169232, 17.332731, 16.098511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948866, 17.297705, 16.010126>,  <11.581589, 17.239326, 15.862820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948866, 17.297705, 16.010126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393061, 0.220147, 0.892770,
		0.049221, -0.964487, 0.259503,
		0.918194, 0.145944, 0.368267,
		12.224324, 17.341488, 16.120605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.511639, 16.970350, 16.483280>,  <11.581589, 17.239326, 15.862820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.511639, 16.970350, 16.483280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.830471, 17.210772, 16.506599>,  <12.021770, 17.355024, 16.520592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.830471, 17.210772, 16.506599>,  <11.511639, 16.970350, 16.483280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.830471, 17.210772, 16.506599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188482, 0.155904, 0.969623,
		0.573706, -0.783855, 0.237556,
		0.797080, 0.601054, 0.058299,
		12.069595, 17.391087, 16.524090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.696947, 16.824247, 17.091526>,  <11.511639, 16.970350, 16.483280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.696947, 16.824247, 17.091526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.867052, 17.180805, 17.028835>,  <11.969115, 17.394741, 16.991220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.867052, 17.180805, 17.028835>,  <11.696947, 16.824247, 17.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.867052, 17.180805, 17.028835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164228, 0.246292, 0.955181,
		0.890045, -0.380464, 0.251131,
		0.425263, 0.891396, -0.156728,
		11.994631, 17.448225, 16.981817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986533, 16.047094, 17.132965>,  <11.696947, 16.824247, 17.091526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986533, 16.047094, 17.132965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671607, 15.824935, 17.240047>,  <11.482652, 15.691639, 17.304296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671607, 15.824935, 17.240047>,  <11.986533, 16.047094, 17.132965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.671607, 15.824935, 17.240047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244725, -0.117020, -0.962505,
		0.565903, -0.823308, -0.043789,
		-0.787314, -0.555401, 0.267707,
		11.435412, 15.658315, 17.320360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.019053, 15.487851, 16.724627>,  <11.986533, 16.047094, 17.132965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.019053, 15.487851, 16.724627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.646416, 15.476156, 16.869558>,  <11.422833, 15.469139, 16.956518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.646416, 15.476156, 16.869558>,  <12.019053, 15.487851, 16.724627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.646416, 15.476156, 16.869558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340152, -0.281421, -0.897273,
		0.128201, -0.959139, 0.252224,
		-0.931591, -0.029236, 0.362331,
		11.366939, 15.467385, 16.978258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820283, 14.899625, 16.435078>,  <12.019053, 15.487851, 16.724627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820283, 14.899625, 16.435078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.496348, 15.109006, 16.541031>,  <11.301988, 15.234634, 16.604603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.496348, 15.109006, 16.541031>,  <11.820283, 14.899625, 16.435078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.496348, 15.109006, 16.541031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507564, -0.398751, -0.763791,
		-0.294183, -0.752992, 0.588608,
		-0.809836, 0.523451, 0.264886,
		11.253398, 15.266042, 16.620497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.353971, 14.433130, 16.529404>,  <11.820283, 14.899625, 16.435078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.353971, 14.433130, 16.529404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.160877, 14.772818, 16.443804>,  <11.045021, 14.976630, 16.392445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.160877, 14.772818, 16.443804>,  <11.353971, 14.433130, 16.529404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.160877, 14.772818, 16.443804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471195, -0.457828, -0.753902,
		-0.738204, -0.263097, 0.621156,
		-0.482732, 0.849219, -0.214001,
		11.016057, 15.027583, 16.379604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.612638, 14.294106, 16.517063>,  <11.353971, 14.433130, 16.529404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.612638, 14.294106, 16.517063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642133, 14.625357, 16.294794>,  <10.659830, 14.824106, 16.161432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.642133, 14.625357, 16.294794>,  <10.612638, 14.294106, 16.517063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.642133, 14.625357, 16.294794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747471, -0.322961, -0.580502,
		-0.660189, 0.458155, 0.595185,
		0.073738, 0.828124, -0.555673,
		10.664254, 14.873794, 16.128092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.826289, 14.460658, 16.339365>,  <10.612638, 14.294106, 16.517063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.826289, 14.460658, 16.339365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070113, 14.669011, 16.100328>,  <10.216408, 14.794023, 15.956906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070113, 14.669011, 16.100328>,  <9.826289, 14.460658, 16.339365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.070113, 14.669011, 16.100328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579106, -0.222206, -0.784386,
		-0.541361, 0.824201, 0.166198,
		0.609561, 0.520882, -0.597593,
		10.252981, 14.825275, 15.921051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.451145, 14.724388, 15.815763>,  <9.826289, 14.460658, 16.339365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.451145, 14.724388, 15.815763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.798232, 14.812787, 15.637672>,  <10.006484, 14.865827, 15.530818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.798232, 14.812787, 15.637672>,  <9.451145, 14.724388, 15.815763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.798232, 14.812787, 15.637672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391678, -0.247475, -0.886197,
		-0.306029, 0.943354, -0.128179,
		0.867718, 0.220997, -0.445225,
		10.058548, 14.879086, 15.504105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.308414, 15.045865, 15.233566>,  <9.451145, 14.724388, 15.815763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.308414, 15.045865, 15.233566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.686259, 14.937508, 15.159463>,  <9.912967, 14.872493, 15.115001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.686259, 14.937508, 15.159463>,  <9.308414, 15.045865, 15.233566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.686259, 14.937508, 15.159463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270416, -0.322612, -0.907081,
		0.185957, 0.906938, -0.377998,
		0.944614, -0.270895, -0.185259,
		9.969644, 14.856239, 15.103885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.409432, 15.425463, 14.579629>,  <9.308414, 15.045865, 15.233566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.409432, 15.425463, 14.579629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.650928, 15.109689, 14.623978>,  <9.795826, 14.920224, 14.650587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.650928, 15.109689, 14.623978>,  <9.409432, 15.425463, 14.579629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.650928, 15.109689, 14.623978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432451, -0.441168, -0.786357,
		0.669690, 0.426808, -0.607742,
		0.603740, -0.789434, 0.110872,
		9.832050, 14.872859, 14.657239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.751099, 15.312208, 13.932915>,  <9.409432, 15.425463, 14.579629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.751099, 15.312208, 13.932915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794436, 14.966218, 14.128907>,  <9.820437, 14.758624, 14.246503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794436, 14.966218, 14.128907>,  <9.751099, 15.312208, 13.932915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.794436, 14.966218, 14.128907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345206, -0.494946, -0.797409,
		0.932253, -0.082752, -0.352218,
		0.108342, -0.864975, 0.489981,
		9.826938, 14.706726, 14.275902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.951376, 14.868103, 13.448912>,  <9.751099, 15.312208, 13.932915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.951376, 14.868103, 13.448912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.862730, 14.600239, 13.732444>,  <9.809543, 14.439520, 13.902563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.862730, 14.600239, 13.732444>,  <9.951376, 14.868103, 13.448912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.862730, 14.600239, 13.732444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370639, -0.614505, -0.696426,
		0.901950, -0.417059, -0.112019,
		-0.221615, -0.669660, 0.708831,
		9.796246, 14.399341, 13.945093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.144413, 14.189239, 13.207335>,  <9.951376, 14.868103, 13.448912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.144413, 14.189239, 13.207335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.881177, 14.099544, 13.494843>,  <9.723235, 14.045727, 13.667349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.881177, 14.099544, 13.494843>,  <10.144413, 14.189239, 13.207335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.881177, 14.099544, 13.494843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342485, -0.760999, -0.550984,
		0.670537, -0.608767, 0.424009,
		-0.658091, -0.224239, 0.718772,
		9.683749, 14.032272, 13.710475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.182096, 13.526625, 13.405534>,  <10.144413, 14.189239, 13.207335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.182096, 13.526625, 13.405534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.807493, 13.590400, 13.530457>,  <9.582731, 13.628665, 13.605410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.807493, 13.590400, 13.530457>,  <10.182096, 13.526625, 13.405534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.807493, 13.590400, 13.530457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306022, -0.806449, -0.505955,
		0.171190, -0.569403, 0.804036,
		-0.936506, 0.159438, 0.312306,
		9.526542, 13.638231, 13.624148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928440, 12.956523, 13.812492>,  <10.182096, 13.526625, 13.405534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928440, 12.956523, 13.812492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.604757, 13.138869, 13.664239>,  <9.410547, 13.248277, 13.575287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.604757, 13.138869, 13.664239>,  <9.928440, 12.956523, 13.812492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.604757, 13.138869, 13.664239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306675, -0.865819, -0.395357,
		-0.501132, -0.206262, 0.840430,
		-0.809208, 0.455865, -0.370634,
		9.361995, 13.275629, 13.553048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.634892, 12.777024, 14.158744>,  <9.928440, 12.956523, 13.812492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.634892, 12.777024, 14.158744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506350, 12.403601, 14.095246>,  <10.429224, 12.179546, 14.057148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.506350, 12.403601, 14.095246>,  <10.634892, 12.777024, 14.158744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.506350, 12.403601, 14.095246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395574, -0.284649, 0.873210,
		-0.860379, 0.217817, 0.460765,
		-0.321356, -0.933558, -0.158743,
		10.409943, 12.123533, 14.047624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.169209, 12.335397, 14.811841>,  <10.634892, 12.777024, 14.158744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.169209, 12.335397, 14.811841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445693, 12.147748, 14.591967>,  <10.611583, 12.035159, 14.460042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.445693, 12.147748, 14.591967>,  <10.169209, 12.335397, 14.811841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.445693, 12.147748, 14.591967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473077, -0.281265, 0.834918,
		-0.546286, -0.837147, 0.027518,
		0.691209, -0.469122, -0.549686,
		10.653056, 12.007011, 14.427061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.218823, 11.579451, 14.993624>,  <10.169209, 12.335397, 14.811841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.218823, 11.579451, 14.993624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556998, 11.760557, 14.880318>,  <10.759903, 11.869222, 14.812334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.556998, 11.760557, 14.880318>,  <10.218823, 11.579451, 14.993624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.556998, 11.760557, 14.880318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372228, -0.119180, 0.920458,
		0.382993, -0.883628, -0.269291,
		0.845436, 0.452767, -0.283266,
		10.810629, 11.896387, 14.795338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.902972, 11.155943, 15.153863>,  <10.218823, 11.579451, 14.993624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.902972, 11.155943, 15.153863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999756, 11.542516, 15.119307>,  <11.057826, 11.774460, 15.098573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999756, 11.542516, 15.119307>,  <10.902972, 11.155943, 15.153863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.999756, 11.542516, 15.119307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448459, -0.032431, 0.893215,
		0.860430, -0.254865, -0.441252,
		0.241960, 0.966433, -0.086392,
		11.072344, 11.832445, 15.093390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.529830, 11.113577, 15.478838>,  <10.902972, 11.155943, 15.153863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.529830, 11.113577, 15.478838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.417895, 11.497518, 15.471100>,  <11.350735, 11.727882, 15.466457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.417895, 11.497518, 15.471100>,  <11.529830, 11.113577, 15.478838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.417895, 11.497518, 15.471100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294528, 0.105010, 0.949856,
		0.913753, 0.260107, -0.312089,
		-0.279836, 0.959853, -0.019345,
		11.333944, 11.785474, 15.465297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.053015, 11.530492, 15.805026>,  <11.529830, 11.113577, 15.478838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.053015, 11.530492, 15.805026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719495, 11.749967, 15.829428>,  <11.519383, 11.881652, 15.844069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719495, 11.749967, 15.829428>,  <12.053015, 11.530492, 15.805026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719495, 11.749967, 15.829428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137494, 0.099368, 0.985506,
		0.534672, 0.830102, -0.158294,
		-0.833799, 0.548687, 0.061004,
		11.469355, 11.914573, 15.847729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214590, 11.926229, 16.431198>,  <12.053015, 11.530492, 15.805026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214590, 11.926229, 16.431198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820621, 11.930388, 16.362125>,  <11.584239, 11.932884, 16.320683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820621, 11.930388, 16.362125>,  <12.214590, 11.926229, 16.431198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820621, 11.930388, 16.362125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170458, 0.111947, 0.978985,
		0.029511, 0.993660, -0.108486,
		-0.984923, 0.010399, -0.172681,
		11.525144, 11.933508, 16.310322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.008512, 12.541473, 16.805719>,  <12.214590, 11.926229, 16.431198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.008512, 12.541473, 16.805719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681316, 12.321247, 16.739061>,  <11.484999, 12.189112, 16.699066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681316, 12.321247, 16.739061>,  <12.008512, 12.541473, 16.805719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.681316, 12.321247, 16.739061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235714, 0.056555, 0.970175,
		-0.524720, 0.832874, -0.176037,
		-0.817990, -0.550565, -0.166645,
		11.435920, 12.156077, 16.689068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429667, 12.875372, 17.145494>,  <12.008512, 12.541473, 16.805719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429667, 12.875372, 17.145494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.344802, 12.487241, 17.099102>,  <11.293882, 12.254362, 17.071266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.344802, 12.487241, 17.099102>,  <11.429667, 12.875372, 17.145494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.344802, 12.487241, 17.099102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185667, -0.076497, 0.979631,
		-0.959434, 0.229377, -0.163928,
		-0.212165, -0.970327, -0.115982,
		11.281153, 12.196143, 17.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.836213, 12.814717, 17.567890>,  <11.429667, 12.875372, 17.145494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.836213, 12.814717, 17.567890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.994816, 12.449398, 17.530647>,  <11.089977, 12.230206, 17.508303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.994816, 12.449398, 17.530647>,  <10.836213, 12.814717, 17.567890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.994816, 12.449398, 17.530647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136717, -0.159032, 0.977761,
		-0.907795, -0.374959, -0.187920,
		0.396505, -0.913299, -0.093105,
		11.113768, 12.175408, 17.502716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.463721, 12.501576, 18.077545>,  <10.836213, 12.814717, 17.567890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.463721, 12.501576, 18.077545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762233, 12.257192, 17.971870>,  <10.941339, 12.110560, 17.908466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762233, 12.257192, 17.971870>,  <10.463721, 12.501576, 18.077545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.762233, 12.257192, 17.971870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094752, -0.295346, 0.950680,
		-0.658857, -0.734503, -0.162521,
		0.746278, -0.610963, -0.264187,
		10.986116, 12.073903, 17.892614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.474301, 11.694784, 18.401756>,  <10.463721, 12.501576, 18.077545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.474301, 11.694784, 18.401756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839870, 11.829301, 18.310850>,  <11.059212, 11.910011, 18.256306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839870, 11.829301, 18.310850>,  <10.474301, 11.694784, 18.401756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.839870, 11.829301, 18.310850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254896, -0.039792, 0.966149,
		0.315866, -0.940916, -0.122087,
		0.913924, 0.336293, -0.227267,
		11.114048, 11.930189, 18.242670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.810479, 11.420240, 18.924389>,  <10.474301, 11.694784, 18.401756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.810479, 11.420240, 18.924389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.102274, 11.652891, 18.780411>,  <11.277350, 11.792481, 18.694025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.102274, 11.652891, 18.780411>,  <10.810479, 11.420240, 18.924389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.102274, 11.652891, 18.780411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419799, 0.034754, 0.906952,
		0.540018, -0.812712, -0.218814,
		0.729486, 0.581628, -0.359944,
		11.321119, 11.827379, 18.672428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.439642, 11.152506, 19.163013>,  <10.810479, 11.420240, 18.924389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.439642, 11.152506, 19.163013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536598, 11.529102, 19.069340>,  <11.594771, 11.755060, 19.013136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536598, 11.529102, 19.069340>,  <11.439642, 11.152506, 19.163013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536598, 11.529102, 19.069340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507675, 0.082608, 0.857579,
		0.826748, -0.326757, -0.457948,
		0.242390, 0.941491, -0.234182,
		11.609315, 11.811550, 18.999084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.180682, 11.216801, 19.389732>,  <11.439642, 11.152506, 19.163013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.180682, 11.216801, 19.389732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049244, 11.592337, 19.348537>,  <11.970381, 11.817658, 19.323820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049244, 11.592337, 19.348537>,  <12.180682, 11.216801, 19.389732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.049244, 11.592337, 19.348537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408053, 0.239462, 0.880994,
		0.851774, 0.247466, -0.461782,
		-0.328595, 0.938839, -0.102988,
		11.950665, 11.873988, 19.317640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.800380, 11.683722, 19.637701>,  <12.180682, 11.216801, 19.389732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.800380, 11.683722, 19.637701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461837, 11.894467, 19.668926>,  <12.258711, 12.020915, 19.687662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461837, 11.894467, 19.668926>,  <12.800380, 11.683722, 19.637701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.461837, 11.894467, 19.668926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254849, 0.271897, 0.927968,
		0.467687, 0.805287, -0.364393,
		-0.846357, 0.526864, 0.078063,
		12.207930, 12.052526, 19.692345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.929031, 12.240812, 20.010668>,  <12.800380, 11.683722, 19.637701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.929031, 12.240812, 20.010668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531621, 12.261942, 20.050896>,  <12.293175, 12.274620, 20.075033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531621, 12.261942, 20.050896>,  <12.929031, 12.240812, 20.010668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531621, 12.261942, 20.050896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113526, 0.429740, 0.895788,
		0.004099, 0.901407, -0.432955,
		-0.993527, 0.052824, 0.100572,
		12.233563, 12.277789, 20.081068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765820, 12.932188, 20.218781>,  <12.929031, 12.240812, 20.010668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765820, 12.932188, 20.218781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461555, 12.700397, 20.335812>,  <12.278997, 12.561323, 20.406031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.461555, 12.700397, 20.335812>,  <12.765820, 12.932188, 20.218781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.461555, 12.700397, 20.335812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143780, 0.289122, 0.946433,
		-0.633027, 0.761981, -0.136607,
		-0.760660, -0.579476, 0.292579,
		12.233357, 12.526554, 20.423586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471711, 13.270882, 20.720058>,  <12.765820, 12.932188, 20.218781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.471711, 13.270882, 20.720058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306633, 12.909267, 20.764601>,  <12.207586, 12.692299, 20.791327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306633, 12.909267, 20.764601>,  <12.471711, 13.270882, 20.720058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306633, 12.909267, 20.764601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040108, 0.140171, 0.989315,
		-0.909986, 0.403819, -0.094107,
		-0.412696, -0.904037, 0.111357,
		12.182824, 12.638057, 20.798008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927341, 13.384000, 21.308828>,  <12.471711, 13.270882, 20.720058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927341, 13.384000, 21.308828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013675, 12.994266, 21.283264>,  <12.065475, 12.760425, 21.267925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013675, 12.994266, 21.283264>,  <11.927341, 13.384000, 21.308828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013675, 12.994266, 21.283264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008939, -0.063477, 0.997944,
		-0.976389, -0.215962, -0.004991,
		0.215835, -0.974337, -0.063908,
		12.078425, 12.701964, 21.264091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.550686, 13.033895, 21.857775>,  <11.927341, 13.384000, 21.308828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.550686, 13.033895, 21.857775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.835163, 12.768850, 21.763838>,  <12.005850, 12.609824, 21.707476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.835163, 12.768850, 21.763838>,  <11.550686, 13.033895, 21.857775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.835163, 12.768850, 21.763838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211715, -0.116672, 0.970342,
		-0.670359, -0.739821, 0.057308,
		0.711193, -0.662610, -0.234843,
		12.048521, 12.570067, 21.693384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.496986, 12.462480, 22.285662>,  <11.550686, 13.033895, 21.857775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.496986, 12.462480, 22.285662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.880149, 12.474214, 22.171432>,  <12.110046, 12.481254, 22.102894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.880149, 12.474214, 22.171432>,  <11.496986, 12.462480, 22.285662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.880149, 12.474214, 22.171432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286618, -0.041478, 0.957147,
		0.016234, -0.998709, -0.048140,
		0.957907, 0.029336, -0.285574,
		12.167521, 12.483014, 22.085760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836376, 12.128544, 22.781786>,  <11.496986, 12.462480, 22.285662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836376, 12.128544, 22.781786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.133527, 12.348113, 22.628519>,  <12.311817, 12.479855, 22.536558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.133527, 12.348113, 22.628519>,  <11.836376, 12.128544, 22.781786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.133527, 12.348113, 22.628519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343761, 0.178344, 0.921966,
		0.574423, -0.816626, -0.056210,
		0.742877, 0.548922, -0.383169,
		12.356390, 12.512790, 22.513569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.490104, 11.824977, 23.104305>,  <11.836376, 12.128544, 22.781786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.490104, 11.824977, 23.104305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567468, 12.198853, 22.985008>,  <12.613886, 12.423178, 22.913429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567468, 12.198853, 22.985008>,  <12.490104, 11.824977, 23.104305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567468, 12.198853, 22.985008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505756, 0.165499, 0.846653,
		0.840716, -0.314590, -0.440715,
		0.193411, 0.934689, -0.298243,
		12.625491, 12.479259, 22.895535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.188556, 11.906575, 23.210423>,  <12.490104, 11.824977, 23.104305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.188556, 11.906575, 23.210423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023549, 12.270857, 23.201967>,  <12.924545, 12.489426, 23.196894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023549, 12.270857, 23.201967>,  <13.188556, 11.906575, 23.210423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023549, 12.270857, 23.201967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460435, 0.228471, 0.857788,
		0.786020, 0.344120, -0.513569,
		-0.412518, 0.910704, -0.021138,
		12.899794, 12.544068, 23.195625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729038, 12.237135, 23.384912>,  <13.188556, 11.906575, 23.210423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729038, 12.237135, 23.384912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409228, 12.475352, 23.416124>,  <13.217342, 12.618282, 23.434851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.409228, 12.475352, 23.416124>,  <13.729038, 12.237135, 23.384912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.409228, 12.475352, 23.416124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363374, 0.376165, 0.852325,
		0.478244, 0.709809, -0.517158,
		-0.799525, 0.595542, 0.078028,
		13.169371, 12.654015, 23.439533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.013670, 12.817730, 23.555302>,  <13.729038, 12.237135, 23.384912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.013670, 12.817730, 23.555302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631576, 12.864926, 23.663822>,  <13.402319, 12.893244, 23.728933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631576, 12.864926, 23.663822>,  <14.013670, 12.817730, 23.555302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631576, 12.864926, 23.663822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290266, 0.551060, 0.782354,
		-0.057193, 0.826082, -0.560641,
		-0.955235, 0.117990, 0.271300,
		13.345005, 12.900323, 23.745213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049008, 13.402956, 23.957308>,  <14.013670, 12.817730, 23.555302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049008, 13.402956, 23.957308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.687723, 13.269539, 24.065350>,  <13.470952, 13.189488, 24.130175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.687723, 13.269539, 24.065350>,  <14.049008, 13.402956, 23.957308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.687723, 13.269539, 24.065350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128535, 0.390231, 0.911701,
		-0.409494, 0.858178, -0.309590,
		-0.903213, -0.333542, 0.270103,
		13.416759, 13.169477, 24.146381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
