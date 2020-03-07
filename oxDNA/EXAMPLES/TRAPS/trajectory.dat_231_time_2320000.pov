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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.408222, 53.200405, 49.676365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036552, 53.322376, 49.592785>,  <35.813553, 53.395557, 49.542637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036552, 53.322376, 49.592785>,  <36.408222, 53.200405, 49.676365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036552, 53.322376, 49.592785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278746, -0.206730, 0.937850,
		0.242781, 0.929667, 0.277085,
		-0.929171, 0.304928, -0.208951,
		35.757801, 53.413857, 49.530098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183693, 53.694626, 50.219357>,  <36.408222, 53.200405, 49.676365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183693, 53.694626, 50.219357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877563, 53.487679, 50.066200>,  <35.693886, 53.363510, 49.974304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877563, 53.487679, 50.066200>,  <36.183693, 53.694626, 50.219357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877563, 53.487679, 50.066200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406104, -0.073385, 0.910876,
		-0.499359, 0.852609, -0.153943,
		-0.765324, -0.517370, -0.382893,
		35.647964, 53.332466, 49.951332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316822, 53.282104, 50.756550>,  <36.183693, 53.694626, 50.219357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316822, 53.282104, 50.756550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707619, 53.294685, 50.672173>,  <36.942097, 53.302235, 50.621544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707619, 53.294685, 50.672173>,  <36.316822, 53.282104, 50.756550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707619, 53.294685, 50.672173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192653, -0.554482, 0.809590,
		-0.091501, -0.831602, -0.547783,
		0.976992, 0.031454, -0.210946,
		37.000717, 53.304123, 50.608891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560699, 52.596375, 50.684937>,  <36.316822, 53.282104, 50.756550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560699, 52.596375, 50.684937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848484, 52.853874, 50.789215>,  <37.021152, 53.008373, 50.851784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848484, 52.853874, 50.789215>,  <36.560699, 52.596375, 50.684937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848484, 52.853874, 50.789215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153381, -0.513353, 0.844359,
		0.677387, -0.567496, -0.468076,
		0.719459, 0.643752, 0.260695,
		37.064323, 53.047001, 50.867424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192158, 52.217926, 50.842766>,  <36.560699, 52.596375, 50.684937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192158, 52.217926, 50.842766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123074, 52.554012, 51.048374>,  <37.081623, 52.755665, 51.171738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123074, 52.554012, 51.048374>,  <37.192158, 52.217926, 50.842766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123074, 52.554012, 51.048374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046979, -0.514241, 0.856358,
		0.983852, 0.172047, 0.049340,
		-0.172706, 0.840212, 0.514019,
		37.071262, 52.806076, 51.202579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848999, 52.263531, 51.285694>,  <37.192158, 52.217926, 50.842766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848999, 52.263531, 51.285694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517384, 52.457161, 51.397671>,  <37.318413, 52.573338, 51.464855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517384, 52.457161, 51.397671>,  <37.848999, 52.263531, 51.285694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517384, 52.457161, 51.397671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103307, -0.359409, 0.927444,
		0.549564, 0.797808, 0.247956,
		-0.829040, 0.484074, 0.279937,
		37.268673, 52.602383, 51.481651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552402, 51.935215, 51.458038>,  <37.848999, 52.263531, 51.285694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552402, 51.935215, 51.458038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694447, 51.910782, 51.084908>,  <38.779675, 51.896122, 50.861031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694447, 51.910782, 51.084908>,  <38.552402, 51.935215, 51.458038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694447, 51.910782, 51.084908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906418, 0.266624, 0.327595,
		0.228702, -0.961863, 0.150052,
		0.355109, -0.061088, -0.932826,
		38.800980, 51.892456, 50.805061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262306, 52.054226, 51.444344>,  <38.552402, 51.935215, 51.458038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262306, 52.054226, 51.444344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277946, 52.078217, 51.045372>,  <39.287331, 52.092609, 50.805988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277946, 52.078217, 51.045372>,  <39.262306, 52.054226, 51.444344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277946, 52.078217, 51.045372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902583, 0.426171, 0.061011,
		0.428737, -0.902652, -0.037470,
		0.039103, 0.059977, -0.997434,
		39.289677, 52.096210, 50.746143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973866, 51.985504, 51.229412>,  <39.262306, 52.054226, 51.444344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973866, 51.985504, 51.229412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835091, 52.168381, 50.901848>,  <39.751827, 52.278107, 50.705311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835091, 52.168381, 50.901848>,  <39.973866, 51.985504, 51.229412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835091, 52.168381, 50.901848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842648, 0.535318, -0.058125,
		0.411802, -0.710219, -0.570971,
		-0.346933, 0.457192, -0.818910,
		39.731010, 52.305538, 50.656174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487637, 52.394882, 51.218281>,  <39.973866, 51.985504, 51.229412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487637, 52.394882, 51.218281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305386, 52.453278, 50.867035>,  <40.196033, 52.488316, 50.656288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305386, 52.453278, 50.867035>,  <40.487637, 52.394882, 51.218281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305386, 52.453278, 50.867035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737624, 0.614132, -0.280631,
		0.498312, -0.775584, -0.387498,
		-0.455628, 0.145986, -0.878118,
		40.168697, 52.497074, 50.603600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984077, 52.313107, 50.670193>,  <40.487637, 52.394882, 51.218281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984077, 52.313107, 50.670193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696072, 52.551544, 50.528061>,  <40.523270, 52.694607, 50.442783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696072, 52.551544, 50.528061>,  <40.984077, 52.313107, 50.670193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696072, 52.551544, 50.528061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693858, 0.627272, -0.353682,
		0.012062, -0.501203, -0.865245,
		-0.720011, 0.596091, -0.355330,
		40.480068, 52.730373, 50.421463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202007, 52.375122, 50.040112>,  <40.984077, 52.313107, 50.670193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202007, 52.375122, 50.040112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018700, 52.700909, 50.182449>,  <40.908714, 52.896381, 50.267853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018700, 52.700909, 50.182449>,  <41.202007, 52.375122, 50.040112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018700, 52.700909, 50.182449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865444, 0.500101, -0.030098,
		-0.202474, 0.294172, -0.934060,
		-0.458270, 0.814470, 0.355847,
		40.881218, 52.945251, 50.289204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576813, 52.964706, 49.794277>,  <41.202007, 52.375122, 50.040112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576813, 52.964706, 49.794277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366871, 53.106178, 50.103970>,  <41.240906, 53.191063, 50.289783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366871, 53.106178, 50.103970>,  <41.576813, 52.964706, 49.794277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366871, 53.106178, 50.103970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743893, 0.632677, 0.215273,
		-0.413700, 0.688932, -0.595168,
		-0.524858, 0.353683, 0.774230,
		41.209415, 53.212284, 50.336239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578106, 53.748161, 49.750984>,  <41.576813, 52.964706, 49.794277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578106, 53.748161, 49.750984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516758, 53.599995, 50.117432>,  <41.479950, 53.511093, 50.337299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516758, 53.599995, 50.117432>,  <41.578106, 53.748161, 49.750984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516758, 53.599995, 50.117432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745845, 0.564760, 0.353216,
		-0.648224, 0.737452, 0.189661,
		-0.153367, -0.370420, 0.916116,
		41.470749, 53.488869, 50.392265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390331, 54.311344, 50.154167>,  <41.578106, 53.748161, 49.750984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390331, 54.311344, 50.154167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538746, 54.029305, 50.395885>,  <41.627796, 53.860081, 50.540916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538746, 54.029305, 50.395885>,  <41.390331, 54.311344, 50.154167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538746, 54.029305, 50.395885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472772, 0.703528, 0.530599,
		-0.799260, 0.088819, 0.594386,
		0.371040, -0.705095, 0.604293,
		41.650059, 53.817776, 50.577175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415375, 54.579288, 50.826702>,  <41.390331, 54.311344, 50.154167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415375, 54.579288, 50.826702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684063, 54.296997, 50.736599>,  <41.845276, 54.127621, 50.682537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684063, 54.296997, 50.736599>,  <41.415375, 54.579288, 50.826702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684063, 54.296997, 50.736599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662891, 0.436866, 0.608050,
		-0.330712, -0.557758, 0.761272,
		0.671718, -0.705729, -0.225256,
		41.885578, 54.085278, 50.669022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742489, 54.133656, 51.400833>,  <41.415375, 54.579288, 50.826702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742489, 54.133656, 51.400833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950470, 54.237461, 51.075306>,  <42.075260, 54.299744, 50.879990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950470, 54.237461, 51.075306>,  <41.742489, 54.133656, 51.400833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950470, 54.237461, 51.075306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616927, 0.544871, 0.567905,
		0.590804, -0.797352, 0.123209,
		0.519954, 0.259510, -0.813820,
		42.106457, 54.315315, 50.831161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454975, 54.154278, 51.542049>,  <41.742489, 54.133656, 51.400833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454975, 54.154278, 51.542049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473766, 54.328289, 51.182373>,  <42.485043, 54.432697, 50.966568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473766, 54.328289, 51.182373>,  <42.454975, 54.154278, 51.542049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473766, 54.328289, 51.182373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844373, 0.463658, 0.268431,
		0.533692, -0.771863, -0.345544,
		0.046978, 0.435027, -0.899191,
		42.487862, 54.458797, 50.912617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178112, 54.076595, 51.357594>,  <42.454975, 54.154278, 51.542049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178112, 54.076595, 51.357594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007797, 54.380257, 51.160660>,  <42.905609, 54.562454, 51.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007797, 54.380257, 51.160660>,  <43.178112, 54.076595, 51.357594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007797, 54.380257, 51.160660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669555, 0.630341, 0.392894,
		0.608605, -0.162356, -0.776685,
		-0.425788, 0.759151, -0.492335,
		42.880062, 54.608002, 51.012959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571457, 54.427921, 50.828785>,  <43.178112, 54.076595, 51.357594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571457, 54.427921, 50.828785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319950, 54.680862, 51.009796>,  <43.169044, 54.832626, 51.118404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319950, 54.680862, 51.009796>,  <43.571457, 54.427921, 50.828785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319950, 54.680862, 51.009796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770400, 0.585562, 0.252191,
		-0.105510, 0.507197, -0.855347,
		-0.628769, 0.632351, 0.452528,
		43.131321, 54.870567, 51.145554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184994, 55.067944, 50.515701>,  <43.571457, 54.427921, 50.828785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184994, 55.067944, 50.515701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945484, 55.126869, 50.200798>,  <42.801781, 55.162224, 50.011856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945484, 55.126869, 50.200798>,  <43.184994, 55.067944, 50.515701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945484, 55.126869, 50.200798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798858, 0.039337, -0.600232,
		-0.057455, -0.988307, -0.141238,
		-0.598770, 0.147315, -0.787256,
		42.765854, 55.171062, 49.964622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230614, 54.542446, 49.901630>,  <43.184994, 55.067944, 50.515701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230614, 54.542446, 49.901630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121037, 54.902802, 49.766960>,  <43.055290, 55.119015, 49.686157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121037, 54.902802, 49.766960>,  <43.230614, 54.542446, 49.901630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121037, 54.902802, 49.766960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803310, 0.021845, -0.595160,
		-0.528819, -0.433497, -0.729678,
		-0.273940, 0.900890, -0.336680,
		43.038853, 55.173069, 49.665955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580666, 54.466812, 49.322685>,  <43.230614, 54.542446, 49.901630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580666, 54.466812, 49.322685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480522, 54.853706, 49.339558>,  <43.420437, 55.085842, 49.349682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480522, 54.853706, 49.339558>,  <43.580666, 54.466812, 49.322685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480522, 54.853706, 49.339558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589258, 0.186802, -0.786054,
		-0.768176, -0.171943, -0.616718,
		-0.250360, 0.967234, 0.042178,
		43.405415, 55.143875, 49.352211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113400, 54.819321, 48.779034>,  <43.580666, 54.466812, 49.322685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113400, 54.819321, 48.779034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464348, 54.976013, 48.889862>,  <43.674915, 55.070026, 48.956360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464348, 54.976013, 48.889862>,  <43.113400, 54.819321, 48.779034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464348, 54.976013, 48.889862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264304, 0.087371, -0.960474,
		-0.400452, 0.915924, -0.026878,
		0.877372, 0.391727, 0.277070,
		43.727558, 55.093533, 48.972984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206287, 55.352543, 48.281849>,  <43.113400, 54.819321, 48.779034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206287, 55.352543, 48.281849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552341, 55.242256, 48.449429>,  <43.759975, 55.176083, 48.549976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552341, 55.242256, 48.449429>,  <43.206287, 55.352543, 48.281849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552341, 55.242256, 48.449429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451836, 0.065909, -0.889663,
		0.217684, 0.958976, 0.181599,
		0.865135, -0.275719, 0.418952,
		43.811882, 55.159542, 48.575115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694843, 55.973557, 48.284565>,  <43.206287, 55.352543, 48.281849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694843, 55.973557, 48.284565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908276, 55.635262, 48.286354>,  <44.036335, 55.432285, 48.287430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908276, 55.635262, 48.286354>,  <43.694843, 55.973557, 48.284565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908276, 55.635262, 48.286354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658271, 0.411970, -0.630048,
		0.531011, 0.339128, 0.776543,
		0.533579, -0.845738, 0.004477,
		44.068348, 55.381538, 48.287697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528980, 55.976429, 48.514896>,  <43.694843, 55.973557, 48.284565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528980, 55.976429, 48.514896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376381, 55.731983, 48.237480>,  <44.284821, 55.585316, 48.071030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376381, 55.731983, 48.237480>,  <44.528980, 55.976429, 48.514896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376381, 55.731983, 48.237480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657380, 0.348105, -0.668337,
		0.649856, -0.710888, 0.268934,
		-0.381495, -0.611115, -0.693542,
		44.261932, 55.548649, 48.029419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087364, 55.577129, 48.309685>,  <44.528980, 55.976429, 48.514896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087364, 55.577129, 48.309685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784645, 55.632206, 48.054092>,  <44.603012, 55.665253, 47.900738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784645, 55.632206, 48.054092>,  <45.087364, 55.577129, 48.309685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784645, 55.632206, 48.054092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620493, 0.458720, -0.636054,
		0.205537, -0.877848, -0.432593,
		-0.756798, 0.137688, -0.638983,
		44.557606, 55.673512, 47.862396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587418, 55.154274, 48.671345>,  <45.087364, 55.577129, 48.309685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587418, 55.154274, 48.671345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345184, 54.871414, 48.525352>,  <45.199844, 54.701698, 48.437759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345184, 54.871414, 48.525352>,  <45.587418, 55.154274, 48.671345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.345184, 54.871414, 48.525352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766529, 0.395150, 0.506251,
		-0.213774, 0.586343, -0.781347,
		-0.605586, -0.707148, -0.364976,
		45.163509, 54.659271, 48.415859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098072, 54.590881, 48.601250>,  <45.587418, 55.154274, 48.671345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098072, 54.590881, 48.601250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276348, 54.274563, 48.769066>,  <46.383312, 54.084774, 48.869755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276348, 54.274563, 48.769066>,  <46.098072, 54.590881, 48.601250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276348, 54.274563, 48.769066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000627, -0.468382, -0.883526,
		0.895189, 0.394038, -0.208256,
		0.445686, -0.790792, 0.419537,
		46.410053, 54.037327, 48.894928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129837, 55.157497, 48.045597>,  <46.098072, 54.590881, 48.601250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129837, 55.157497, 48.045597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499268, 55.238461, 47.915344>,  <46.720924, 55.287037, 47.837193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499268, 55.238461, 47.915344>,  <46.129837, 55.157497, 48.045597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499268, 55.238461, 47.915344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327020, 0.859226, -0.393433,
		0.200159, 0.469854, 0.859752,
		0.923577, 0.202407, -0.325633,
		46.776340, 55.299183, 47.817654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407825, 55.759075, 48.258278>,  <46.129837, 55.157497, 48.045597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407825, 55.759075, 48.258278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529419, 55.704826, 47.881088>,  <46.602375, 55.672279, 47.654774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529419, 55.704826, 47.881088>,  <46.407825, 55.759075, 48.258278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529419, 55.704826, 47.881088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413879, 0.872729, -0.258938,
		0.858077, 0.468991, 0.209167,
		0.303985, -0.135619, -0.942974,
		46.620613, 55.664143, 47.598194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806347, 56.390602, 47.992050>,  <46.407825, 55.759075, 48.258278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806347, 56.390602, 47.992050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589180, 56.193398, 47.720116>,  <46.458878, 56.075073, 47.556953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589180, 56.193398, 47.720116>,  <46.806347, 56.390602, 47.992050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589180, 56.193398, 47.720116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421792, 0.860105, -0.286898,
		0.726174, 0.130986, -0.674918,
		-0.542921, -0.493013, -0.679835,
		46.426304, 56.045494, 47.516167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239712, 56.375671, 48.597931>,  <46.806347, 56.390602, 47.992050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239712, 56.375671, 48.597931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339199, 56.762878, 48.611130>,  <47.398891, 56.995201, 48.619049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.339199, 56.762878, 48.611130>,  <47.239712, 56.375671, 48.597931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.339199, 56.762878, 48.611130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602314, -0.181259, 0.777408,
		0.758522, -0.173481, -0.628131,
		0.248720, 0.968013, 0.032999,
		47.413815, 57.053284, 48.621029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.883705, 56.516796, 48.845280>,  <47.239712, 56.375671, 48.597931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.883705, 56.516796, 48.845280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763515, 56.887978, 48.933479>,  <47.691402, 57.110687, 48.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763515, 56.887978, 48.933479>,  <47.883705, 56.516796, 48.845280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.763515, 56.887978, 48.933479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582831, -0.004363, 0.812582,
		0.754997, 0.372678, -0.539527,
		-0.300478, 0.927950, 0.220502,
		47.673370, 57.166363, 48.999630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.378223, 56.816929, 49.260780>,  <47.883705, 56.516796, 48.845280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.378223, 56.816929, 49.260780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.109894, 57.105473, 49.329647>,  <47.948898, 57.278599, 49.370968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.109894, 57.105473, 49.329647>,  <48.378223, 56.816929, 49.260780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.109894, 57.105473, 49.329647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490373, 0.257284, 0.832670,
		0.556359, 0.642997, -0.526326,
		-0.670820, 0.721359, 0.172166,
		47.908649, 57.321880, 49.381298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.678791, 57.468803, 49.060394>,  <48.378223, 56.816929, 49.260780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.678791, 57.468803, 49.060394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.416649, 57.526100, 49.357040>,  <48.259365, 57.560478, 49.535027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.416649, 57.526100, 49.357040>,  <48.678791, 57.468803, 49.060394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.416649, 57.526100, 49.357040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750548, 0.013290, 0.660682,
		0.084784, 0.989598, -0.116222,
		-0.655354, 0.143246, 0.741614,
		48.220043, 57.569073, 49.579525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.038101, 57.940556, 49.498993>,  <48.678791, 57.468803, 49.060394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.038101, 57.940556, 49.498993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.726326, 57.809990, 49.712883>,  <48.539261, 57.731651, 49.841217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.726326, 57.809990, 49.712883>,  <49.038101, 57.940556, 49.498993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.726326, 57.809990, 49.712883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520594, 0.137339, 0.842686,
		-0.348500, 0.935197, 0.062879,
		-0.779442, -0.326411, 0.534720,
		48.492493, 57.712067, 49.873299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.002251, 58.397652, 50.064201>,  <49.038101, 57.940556, 49.498993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.002251, 58.397652, 50.064201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.853954, 58.032272, 50.131325>,  <48.764977, 57.813046, 50.171600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.853954, 58.032272, 50.131325>,  <49.002251, 58.397652, 50.064201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.853954, 58.032272, 50.131325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520512, -0.054717, 0.852099,
		-0.769169, 0.403254, 0.495748,
		-0.370738, -0.913451, 0.167812,
		48.742733, 57.758236, 50.181667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.749123, 58.336430, 50.753071>,  <49.002251, 58.397652, 50.064201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.749123, 58.336430, 50.753071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897530, 57.985863, 50.630280>,  <48.986572, 57.775520, 50.556606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897530, 57.985863, 50.630280>,  <48.749123, 58.336430, 50.753071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.897530, 57.985863, 50.630280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546828, -0.060987, 0.835021,
		-0.750550, -0.477670, 0.456624,
		0.371016, -0.876420, -0.306977,
		49.008835, 57.722939, 50.538185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.604568, 57.821873, 51.290432>,  <48.749123, 58.336430, 50.753071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.604568, 57.821873, 51.290432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.922550, 57.783436, 51.050827>,  <49.113338, 57.760372, 50.907066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.922550, 57.783436, 51.050827>,  <48.604568, 57.821873, 51.290432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.922550, 57.783436, 51.050827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606426, 0.153653, 0.780153,
		0.017071, -0.983441, 0.180421,
		0.794956, -0.096094, -0.599008,
		49.161037, 57.754608, 50.871124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.056446, 57.480511, 51.736839>,  <48.604568, 57.821873, 51.290432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.056446, 57.480511, 51.736839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.246017, 57.650700, 51.428459>,  <49.359760, 57.752811, 51.243431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.246017, 57.650700, 51.428459>,  <49.056446, 57.480511, 51.736839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.246017, 57.650700, 51.428459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826917, 0.085873, 0.555728,
		0.302649, -0.900889, -0.311131,
		0.473931, 0.425470, -0.770950,
		49.388195, 57.778339, 51.197174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.774582, 57.098137, 51.481121>,  <49.056446, 57.480511, 51.736839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.774582, 57.098137, 51.481121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.779064, 57.485676, 51.382156>,  <49.781754, 57.718201, 51.322777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.779064, 57.485676, 51.382156>,  <49.774582, 57.098137, 51.481121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.779064, 57.485676, 51.382156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915197, 0.089745, 0.392887,
		0.402851, -0.230829, -0.885680,
		0.011204, 0.968846, -0.247408,
		49.782425, 57.776329, 51.307934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.408813, 57.293701, 51.260872>,  <49.774582, 57.098137, 51.481121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.408813, 57.293701, 51.260872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.252888, 57.618355, 51.434902>,  <50.159332, 57.813148, 51.539322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.252888, 57.618355, 51.434902>,  <50.408813, 57.293701, 51.260872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.252888, 57.618355, 51.434902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760154, 0.016913, 0.649523,
		0.519817, 0.583920, -0.623561,
		-0.389816, 0.811635, 0.435077,
		50.135944, 57.861847, 51.565426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.912090, 57.925369, 51.394268>,  <50.408813, 57.293701, 51.260872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.912090, 57.925369, 51.394268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.636482, 57.902588, 51.683266>,  <50.471115, 57.888920, 51.856667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.636482, 57.902588, 51.683266>,  <50.912090, 57.925369, 51.394268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.636482, 57.902588, 51.683266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723802, -0.003371, 0.690000,
		-0.036864, 0.998371, 0.043547,
		-0.689023, -0.056956, 0.722498,
		50.429775, 57.885502, 51.900017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.157532, 58.570545, 51.154263>,  <50.912090, 57.925369, 51.394268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.157532, 58.570545, 51.154263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.239510, 58.774590, 50.820129>,  <51.288696, 58.897015, 50.619648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.239510, 58.774590, 50.820129>,  <51.157532, 58.570545, 51.154263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.239510, 58.774590, 50.820129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978774, -0.106375, 0.175175,
		0.000500, -0.853504, -0.521085,
		0.204943, 0.510112, -0.835334,
		51.300991, 58.927624, 50.569530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.547749, 58.321293, 50.525845>,  <51.157532, 58.570545, 51.154263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.547749, 58.321293, 50.525845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.610466, 58.704472, 50.621979>,  <51.648094, 58.934380, 50.679657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.610466, 58.704472, 50.621979>,  <51.547749, 58.321293, 50.525845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.610466, 58.704472, 50.621979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970039, -0.195094, 0.144782,
		0.185581, 0.210432, -0.959832,
		0.156791, 0.957944, 0.240333,
		51.657505, 58.991856, 50.694080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.011314, 58.694790, 50.024632>,  <51.547749, 58.321293, 50.525845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.011314, 58.694790, 50.024632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.027084, 58.805779, 50.408600>,  <52.036545, 58.872372, 50.638981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.027084, 58.805779, 50.408600>,  <52.011314, 58.694790, 50.024632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.027084, 58.805779, 50.408600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908874, -0.409141, 0.080938,
		0.415203, 0.869261, -0.268313,
		0.039421, 0.277469, 0.959926,
		52.038910, 58.889019, 50.696579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.698658, 58.509434, 50.225525>,  <52.011314, 58.694790, 50.024632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.698658, 58.509434, 50.225525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.538078, 58.597298, 50.581184>,  <52.441730, 58.650017, 50.794582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.538078, 58.597298, 50.581184>,  <52.698658, 58.509434, 50.225525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.538078, 58.597298, 50.581184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727076, -0.513928, 0.455234,
		0.556956, 0.829233, 0.046606,
		-0.401447, 0.219659, 0.889151,
		52.417645, 58.663197, 50.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.977814, 59.014729, 50.765297>,  <52.698658, 58.509434, 50.225525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.977814, 59.014729, 50.765297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.834789, 58.683792, 50.938568>,  <52.748974, 58.485229, 51.042530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.834789, 58.683792, 50.938568>,  <52.977814, 59.014729, 50.765297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.834789, 58.683792, 50.938568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933495, -0.303178, 0.191495,
		-0.027102, 0.472845, 0.880729,
		-0.357566, -0.827346, 0.433181,
		52.727520, 58.435589, 51.068523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.600182, 58.650234, 50.974079>,  <52.977814, 59.014729, 50.765297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.600182, 58.650234, 50.974079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.354393, 58.358833, 50.852943>,  <53.206921, 58.183994, 50.780262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.354393, 58.358833, 50.852943>,  <53.600182, 58.650234, 50.974079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.354393, 58.358833, 50.852943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426006, 0.016703, -0.904566,
		0.664034, -0.684843, 0.300082,
		-0.614473, -0.728500, -0.302839,
		53.170052, 58.140282, 50.762093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.950760, 58.144085, 50.639671>,  <53.600182, 58.650234, 50.974079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.950760, 58.144085, 50.639671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.585148, 58.127102, 50.478298>,  <53.365780, 58.116913, 50.381474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.585148, 58.127102, 50.478298>,  <53.950760, 58.144085, 50.639671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.585148, 58.127102, 50.478298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401132, 0.053528, -0.914455,
		0.060427, -0.997663, -0.031891,
		-0.914025, -0.042465, -0.403429,
		53.310940, 58.114365, 50.357269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.759918, 58.070541, 50.731857>,  <53.950760, 58.144085, 50.639671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.759918, 58.070541, 50.731857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.086502, 58.272125, 50.844589>,  <55.282452, 58.393074, 50.912228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.086502, 58.272125, 50.844589>,  <54.759918, 58.070541, 50.731857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.086502, 58.272125, 50.844589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012104, -0.473044, 0.880955,
		0.577281, -0.722673, -0.380120,
		0.816456, 0.503958, 0.281827,
		55.331440, 58.423313, 50.929138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.938068, 57.778633, 51.429729>,  <54.759918, 58.070541, 50.731857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.938068, 57.778633, 51.429729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.190643, 58.088436, 51.444839>,  <55.342190, 58.274319, 51.453907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.190643, 58.088436, 51.444839>,  <54.938068, 57.778633, 51.429729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.190643, 58.088436, 51.444839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113801, -0.140750, 0.983483,
		0.767030, -0.616710, -0.177014,
		0.631439, 0.774505, 0.037777,
		55.380074, 58.320789, 51.456173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.648907, 57.591610, 51.606815>,  <54.938068, 57.778633, 51.429729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.648907, 57.591610, 51.606815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.509888, 57.942871, 51.738304>,  <55.426476, 58.153629, 51.817196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.509888, 57.942871, 51.738304>,  <55.648907, 57.591610, 51.606815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.509888, 57.942871, 51.738304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138339, -0.298714, 0.944263,
		0.927400, 0.373654, -0.017665,
		-0.347550, 0.878153, 0.328719,
		55.405624, 58.206318, 51.836918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.093910, 57.846210, 52.180573>,  <55.648907, 57.591610, 51.606815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.093910, 57.846210, 52.180573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.729965, 58.010796, 52.201950>,  <55.511600, 58.109547, 52.214775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.729965, 58.010796, 52.201950>,  <56.093910, 57.846210, 52.180573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.729965, 58.010796, 52.201950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073495, -0.286585, 0.955232,
		0.408354, 0.865200, 0.290992,
		-0.909860, 0.411459, 0.053441,
		55.457008, 58.134232, 52.217983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.296513, 58.021484, 52.949081>,  <56.093910, 57.846210, 52.180573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.296513, 58.021484, 52.949081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.652771, 58.154552, 53.073074>,  <56.866524, 58.234394, 53.147469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.652771, 58.154552, 53.073074>,  <56.296513, 58.021484, 52.949081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.652771, 58.154552, 53.073074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317733, -0.942988, 0.099090,
		0.325270, 0.010236, -0.945566,
		0.890643, 0.332668, 0.309978,
		56.919964, 58.254353, 53.166069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.854111, 57.763077, 52.473797>,  <56.296513, 58.021484, 52.949081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.854111, 57.763077, 52.473797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.977417, 57.845047, 52.845383>,  <57.051399, 57.894230, 53.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.977417, 57.845047, 52.845383>,  <56.854111, 57.763077, 52.473797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.977417, 57.845047, 52.845383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407904, -0.910670, 0.065529,
		0.859411, 0.358729, -0.364316,
		0.308265, 0.204923, 0.928967,
		57.069897, 57.906525, 53.124073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.424644, 57.712646, 52.669861>,  <56.854111, 57.763077, 52.473797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.424644, 57.712646, 52.669861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.291153, 57.645798, 53.040955>,  <57.211056, 57.605690, 53.263611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.291153, 57.645798, 53.040955>,  <57.424644, 57.712646, 52.669861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.291153, 57.645798, 53.040955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620456, -0.779868, 0.082712,
		0.709688, 0.603222, 0.363958,
		-0.333733, -0.167120, 0.927736,
		57.191032, 57.595661, 53.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.951149, 57.541908, 53.062843>,  <57.424644, 57.712646, 52.669861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.951149, 57.541908, 53.062843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.660263, 57.397919, 53.296623>,  <57.485733, 57.311523, 53.436890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.660263, 57.397919, 53.296623>,  <57.951149, 57.541908, 53.062843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.660263, 57.397919, 53.296623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653811, -0.622542, 0.430084,
		0.209025, 0.694882, 0.688075,
		-0.727214, -0.359973, 0.584449,
		57.442101, 57.289928, 53.471958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.635578, 57.395248, 53.175892>,  <57.951149, 57.541908, 53.062843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.635578, 57.395248, 53.175892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.961250, 57.597225, 53.061256>,  <59.156654, 57.718410, 52.992474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.961250, 57.597225, 53.061256>,  <58.635578, 57.395248, 53.175892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.961250, 57.597225, 53.061256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576510, -0.761618, 0.295930,
		-0.068845, -0.406165, -0.911203,
		0.814185, 0.504944, -0.286591,
		59.205505, 57.748707, 52.975281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.219391, 57.074837, 52.622559>,  <58.635578, 57.395248, 53.175892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.219391, 57.074837, 52.622559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.337868, 57.271152, 52.950314>,  <59.408955, 57.388943, 53.146969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.337868, 57.271152, 52.950314>,  <59.219391, 57.074837, 52.622559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.337868, 57.271152, 52.950314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621603, -0.750393, 0.224766,
		0.725177, 0.442763, -0.527332,
		0.296189, 0.490786, 0.819391,
		59.426723, 57.418388, 53.196133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.803436, 56.806583, 52.744831>,  <59.219391, 57.074837, 52.622559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.803436, 56.806583, 52.744831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.797783, 57.000164, 53.094826>,  <59.794392, 57.116310, 53.304821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.797783, 57.000164, 53.094826>,  <59.803436, 56.806583, 52.744831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.797783, 57.000164, 53.094826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673258, -0.642374, 0.366168,
		0.739272, 0.594264, -0.316745,
		-0.014131, 0.483949, 0.874982,
		59.793545, 57.145348, 53.357319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.483555, 57.152187, 52.750748>,  <59.803436, 56.806583, 52.744831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.483555, 57.152187, 52.750748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.293480, 57.009224, 53.072357>,  <60.179436, 56.923447, 53.265324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.293480, 57.009224, 53.072357>,  <60.483555, 57.152187, 52.750748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.293480, 57.009224, 53.072357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778552, -0.596527, 0.194967,
		0.409939, 0.718620, 0.561725,
		-0.475191, -0.357407, 0.804023,
		60.150921, 56.902000, 53.313564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.897007, 57.093224, 53.331783>,  <60.483555, 57.152187, 52.750748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.897007, 57.093224, 53.331783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.608635, 56.828697, 53.414658>,  <60.435612, 56.669983, 53.464382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.608635, 56.828697, 53.414658>,  <60.897007, 57.093224, 53.331783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.608635, 56.828697, 53.414658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679127, -0.614628, 0.401272,
		-0.138028, 0.429991, 0.892220,
		-0.720926, -0.661317, 0.207182,
		60.392357, 56.630302, 53.476810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.030537, 56.962227, 54.012699>,  <60.897007, 57.093224, 53.331783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.030537, 56.962227, 54.012699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.796707, 56.661224, 53.891369>,  <60.656410, 56.480621, 53.818569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.796707, 56.661224, 53.891369>,  <61.030537, 56.962227, 54.012699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.796707, 56.661224, 53.891369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623798, -0.655910, 0.425039,
		-0.518802, 0.059250, 0.852839,
		-0.584569, -0.752510, -0.303328,
		60.621338, 56.435471, 53.800369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.834862, 56.324524, 54.503601>,  <61.030537, 56.962227, 54.012699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.834862, 56.324524, 54.503601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.881866, 56.229843, 54.117821>,  <60.910069, 56.173035, 53.886353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.881866, 56.229843, 54.117821>,  <60.834862, 56.324524, 54.503601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.881866, 56.229843, 54.117821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617394, -0.743265, 0.257645,
		-0.777827, -0.625722, 0.058792,
		0.117516, -0.236702, -0.964449,
		60.917122, 56.158833, 53.828487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.868649, 55.626053, 54.363861>,  <60.834862, 56.324524, 54.503601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.868649, 55.626053, 54.363861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.099533, 55.805374, 54.090847>,  <61.238064, 55.912968, 53.927036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.099533, 55.805374, 54.090847>,  <60.868649, 55.626053, 54.363861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.099533, 55.805374, 54.090847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717111, -0.678092, 0.161068,
		-0.390616, -0.582425, -0.712882,
		0.577209, 0.448300, -0.682537,
		61.272697, 55.939865, 53.886086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.106159, 55.598217, 55.022182>,  <60.868649, 55.626053, 54.363861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.106159, 55.598217, 55.022182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.080940, 55.874718, 55.310127>,  <61.065811, 56.040619, 55.482895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.080940, 55.874718, 55.310127>,  <61.106159, 55.598217, 55.022182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.080940, 55.874718, 55.310127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707420, -0.477832, 0.520800,
		0.703976, 0.542076, -0.458881,
		-0.063045, 0.691253, 0.719858,
		61.062027, 56.082092, 55.526085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.736317, 55.777927, 55.317047>,  <61.106159, 55.598217, 55.022182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.736317, 55.777927, 55.317047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.491211, 55.883820, 55.614891>,  <61.344147, 55.947353, 55.793598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.491211, 55.883820, 55.614891>,  <61.736317, 55.777927, 55.317047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.491211, 55.883820, 55.614891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678145, -0.307639, 0.667440,
		0.405763, 0.913934, 0.008983,
		-0.612760, 0.264731, 0.744609,
		61.307384, 55.963238, 55.838272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.326408, 55.415791, 55.751514>,  <61.736317, 55.777927, 55.317047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.326408, 55.415791, 55.751514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.625870, 55.594791, 55.555862>,  <62.805546, 55.702190, 55.438469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.625870, 55.594791, 55.555862>,  <62.326408, 55.415791, 55.751514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.625870, 55.594791, 55.555862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266419, -0.878693, -0.396130,
		-0.607068, 0.166251, -0.777064,
		0.748658, 0.447503, -0.489134,
		62.850468, 55.729042, 55.409122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.432808, 55.147911, 55.043819>,  <62.326408, 55.415791, 55.751514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.432808, 55.147911, 55.043819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.769714, 55.305748, 55.190727>,  <62.971859, 55.400452, 55.278870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.769714, 55.305748, 55.190727>,  <62.432808, 55.147911, 55.043819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.769714, 55.305748, 55.190727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504813, -0.816346, -0.280610,
		0.189089, 0.421749, -0.886777,
		0.842264, 0.394597, 0.367266,
		63.022392, 55.424126, 55.300907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.935650, 55.117573, 54.601730>,  <62.432808, 55.147911, 55.043819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.935650, 55.117573, 54.601730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.135132, 55.103760, 54.948162>,  <63.254822, 55.095474, 55.156021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.135132, 55.103760, 54.948162>,  <62.935650, 55.117573, 54.601730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.135132, 55.103760, 54.948162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516712, -0.790405, -0.329043,
		0.695919, 0.611611, -0.376337,
		0.498705, -0.034530, 0.866084,
		63.284744, 55.093399, 55.207989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.359581, 54.544857, 54.957169>,  <62.935650, 55.117573, 54.601730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.359581, 54.544857, 54.957169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.727043, 54.645687, 55.078842>,  <63.947521, 54.706184, 55.151848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.727043, 54.645687, 55.078842>,  <63.359581, 54.544857, 54.957169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.727043, 54.645687, 55.078842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335766, 0.903907, 0.264977,
		-0.208164, -0.345559, 0.915018,
		0.918656, 0.252073, 0.304187,
		64.002640, 54.721310, 55.170097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.408886, 54.720997, 55.738327>,  <63.359581, 54.544857, 54.957169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.408886, 54.720997, 55.738327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.665405, 54.911892, 55.498001>,  <63.819317, 55.026428, 55.353806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.665405, 54.911892, 55.498001>,  <63.408886, 54.720997, 55.738327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.665405, 54.911892, 55.498001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459106, 0.866061, 0.197889,
		0.614783, 0.148931, 0.774507,
		0.641299, 0.477240, -0.600815,
		63.857796, 55.055065, 55.317757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.846130, 55.209320, 56.117996>,  <63.408886, 54.720997, 55.738327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.846130, 55.209320, 56.117996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.772758, 55.295902, 55.734436>,  <63.728733, 55.347851, 55.504299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.772758, 55.295902, 55.734436>,  <63.846130, 55.209320, 56.117996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.772758, 55.295902, 55.734436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495870, 0.821886, 0.280386,
		0.848802, 0.526924, -0.043426,
		-0.183433, 0.216459, -0.958905,
		63.717728, 55.360840, 55.446766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.009064, 55.896820, 55.987957>,  <63.846130, 55.209320, 56.117996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.009064, 55.896820, 55.987957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.729691, 55.757576, 55.737831>,  <63.562069, 55.674030, 55.587757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.729691, 55.757576, 55.737831>,  <64.009064, 55.896820, 55.987957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.729691, 55.757576, 55.737831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494474, 0.866371, 0.069984,
		0.517392, 0.358080, -0.777229,
		-0.698428, -0.348110, -0.625314,
		63.520161, 55.653145, 55.550236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.914486, 56.423901, 55.465748>,  <64.009064, 55.896820, 55.987957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.914486, 56.423901, 55.465748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.579239, 56.206299, 55.481812>,  <63.378090, 56.075737, 55.491451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.579239, 56.206299, 55.481812>,  <63.914486, 56.423901, 55.465748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.579239, 56.206299, 55.481812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522083, 0.821314, 0.229941,
		-0.158077, 0.171749, -0.972375,
		-0.838118, -0.544009, 0.040163,
		63.327805, 56.043095, 55.493862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.368233, 56.953957, 55.795189>,  <63.914486, 56.423901, 55.465748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.368233, 56.953957, 55.795189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.423431, 56.780426, 55.439041>,  <64.456551, 56.676308, 55.225353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.423431, 56.780426, 55.439041>,  <64.368233, 56.953957, 55.795189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.423431, 56.780426, 55.439041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229850, 0.860398, -0.454846,
		0.963393, 0.267418, 0.019018,
		0.137997, -0.433824, -0.890367,
		64.464828, 56.650280, 55.171932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.477776, 57.717430, 55.832092>,  <64.368233, 56.953957, 55.795189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.477776, 57.717430, 55.832092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.666573, 57.505890, 56.114243>,  <64.779846, 57.378967, 56.283531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.666573, 57.505890, 56.114243>,  <64.477776, 57.717430, 55.832092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.666573, 57.505890, 56.114243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881603, 0.284797, -0.376386,
		-0.001837, 0.799507, 0.600653,
		0.471988, -0.528846, 0.705371,
		64.808167, 57.347237, 56.325855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.950294, 58.049698, 56.400921>,  <64.477776, 57.717430, 55.832092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.950294, 58.049698, 56.400921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.044182, 57.690258, 56.252632>,  <65.100510, 57.474594, 56.163658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.044182, 57.690258, 56.252632>,  <64.950294, 58.049698, 56.400921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.044182, 57.690258, 56.252632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872324, 0.362983, -0.327557,
		0.428907, -0.246504, 0.869065,
		0.234711, -0.898598, -0.370717,
		65.114594, 57.420677, 56.141418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.544670, 57.544495, 56.794430>,  <64.950294, 58.049698, 56.400921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.544670, 57.544495, 56.794430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.512978, 57.524834, 56.396172>,  <65.493965, 57.513039, 56.157219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.512978, 57.524834, 56.396172>,  <65.544670, 57.544495, 56.794430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.512978, 57.524834, 56.396172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883937, 0.458272, -0.092966,
		0.460845, -0.887452, 0.007137,
		-0.079232, -0.049152, -0.995643,
		65.489204, 57.510090, 56.097477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.972366, 57.030640, 56.395615>,  <65.544670, 57.544495, 56.794430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.972366, 57.030640, 56.395615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.911171, 57.350037, 56.162720>,  <65.874451, 57.541676, 56.022984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.911171, 57.350037, 56.162720>,  <65.972366, 57.030640, 56.395615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.911171, 57.350037, 56.162720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978208, 0.206052, 0.025545,
		0.140369, -0.565644, -0.812616,
		-0.152992, 0.798492, -0.582240,
		65.865273, 57.589584, 55.988049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.567085, 56.948238, 55.905853>,  <65.972366, 57.030640, 56.395615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.567085, 56.948238, 55.905853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.425972, 57.309643, 56.003189>,  <66.341301, 57.526485, 56.061592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.425972, 57.309643, 56.003189>,  <66.567085, 56.948238, 55.905853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.425972, 57.309643, 56.003189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930417, 0.311109, 0.193741,
		0.099342, 0.294754, -0.950395,
		-0.352782, 0.903511, 0.243338,
		66.320137, 57.580696, 56.076191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.042664, 57.443344, 55.591396>,  <66.567085, 56.948238, 55.905853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.042664, 57.443344, 55.591396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.854744, 57.620483, 55.896858>,  <66.741989, 57.726765, 56.080135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.854744, 57.620483, 55.896858>,  <67.042664, 57.443344, 55.591396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.854744, 57.620483, 55.896858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878306, 0.321368, 0.353978,
		-0.088657, 0.837025, -0.539934,
		-0.469806, 0.442844, 0.763656,
		66.713799, 57.753338, 56.125954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.290970, 58.169270, 55.702663>,  <67.042664, 57.443344, 55.591396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.290970, 58.169270, 55.702663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.132401, 58.032578, 56.043503>,  <67.037262, 57.950562, 56.248005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.132401, 58.032578, 56.043503>,  <67.290970, 58.169270, 55.702663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.132401, 58.032578, 56.043503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830530, 0.262046, 0.491480,
		-0.391242, 0.902526, 0.179936,
		-0.396422, -0.341730, 0.852098,
		67.013474, 57.930058, 56.299133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.174294, 58.611248, 56.192860>,  <67.290970, 58.169270, 55.702663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.174294, 58.611248, 56.192860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.309357, 58.283211, 56.377655>,  <67.390396, 58.086388, 56.488533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.309357, 58.283211, 56.377655>,  <67.174294, 58.611248, 56.192860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.309357, 58.283211, 56.377655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867772, 0.461350, 0.184737,
		-0.364642, 0.338527, 0.867430,
		0.337650, -0.820095, 0.461992,
		67.410652, 58.037182, 56.516254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.261047, 58.637398, 56.955673>,  <67.174294, 58.611248, 56.192860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.261047, 58.637398, 56.955673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.541634, 58.411015, 56.782402>,  <67.709984, 58.275185, 56.678440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.541634, 58.411015, 56.782402>,  <67.261047, 58.637398, 56.955673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.541634, 58.411015, 56.782402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711962, 0.528636, 0.462228,
		-0.032607, -0.632643, 0.773757,
		0.701461, -0.565957, -0.433180,
		67.752075, 58.241226, 56.652447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.675819, 58.529369, 57.408554>,  <67.261047, 58.637398, 56.955673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.675819, 58.529369, 57.408554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.869728, 58.471016, 57.063599>,  <67.986076, 58.436005, 56.856625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.869728, 58.471016, 57.063599>,  <67.675819, 58.529369, 57.408554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.869728, 58.471016, 57.063599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829346, 0.389841, 0.400262,
		0.277801, -0.909254, 0.309975,
		0.484780, -0.145883, -0.862384,
		68.015160, 58.427250, 56.804882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.265045, 58.234253, 57.570114>,  <67.675819, 58.529369, 57.408554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.265045, 58.234253, 57.570114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.312714, 58.452488, 57.238297>,  <68.341316, 58.583427, 57.039207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.312714, 58.452488, 57.238297>,  <68.265045, 58.234253, 57.570114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.312714, 58.452488, 57.238297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674102, 0.568958, 0.471033,
		0.728963, -0.615325, -0.299981,
		0.119162, 0.545583, -0.829542,
		68.348465, 58.616161, 56.989433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.030067, 58.152687, 57.306828>,  <68.265045, 58.234253, 57.570114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.030067, 58.152687, 57.306828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.844902, 58.495152, 57.215004>,  <68.733803, 58.700630, 57.159908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.844902, 58.495152, 57.215004>,  <69.030067, 58.152687, 57.306828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.844902, 58.495152, 57.215004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599888, 0.493258, 0.629945,
		0.652565, 0.153904, -0.741938,
		-0.462918, 0.856160, -0.229557,
		68.706024, 58.751999, 57.146137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.463303, 58.848240, 57.391735>,  <69.030067, 58.152687, 57.306828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.463303, 58.848240, 57.391735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.858635, 58.904770, 57.414406>,  <70.095833, 58.938686, 57.428009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.858635, 58.904770, 57.414406>,  <69.463303, 58.848240, 57.391735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.858635, 58.904770, 57.414406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089212, 0.235804, 0.967697,
		0.123396, -0.961469, 0.245662,
		0.988340, 0.141326, 0.056677,
		70.155136, 58.947166, 57.431408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.882027, 58.368057, 57.893387>,  <69.463303, 58.848240, 57.391735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.882027, 58.368057, 57.893387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.106689, 58.695213, 57.843437>,  <70.241486, 58.891506, 57.813465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.106689, 58.695213, 57.843437>,  <69.882027, 58.368057, 57.893387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.106689, 58.695213, 57.843437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079837, 0.203806, 0.975751,
		0.823506, -0.538072, 0.179768,
		0.561662, 0.817889, -0.124877,
		70.275185, 58.940578, 57.805973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.462975, 58.425293, 58.461060>,  <69.882027, 58.368057, 57.893387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.462975, 58.425293, 58.461060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.312912, 58.766441, 58.315804>,  <70.222878, 58.971130, 58.228649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.312912, 58.766441, 58.315804>,  <70.462975, 58.425293, 58.461060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.312912, 58.766441, 58.315804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280882, 0.268745, 0.921348,
		0.883384, 0.447644, 0.138737,
		-0.375151, 0.852872, -0.363140,
		70.200363, 59.022305, 58.206863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.096954, 58.051704, 58.287792>,  <70.462975, 58.425293, 58.461060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.096954, 58.051704, 58.287792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.463081, 57.926212, 58.388809>,  <71.682755, 57.850918, 58.449421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.463081, 57.926212, 58.388809>,  <71.096954, 58.051704, 58.287792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.463081, 57.926212, 58.388809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175180, 0.874757, 0.451787,
		-0.362654, -0.369286, 0.855634,
		0.915311, -0.313733, 0.252543,
		71.737671, 57.832092, 58.464573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.118034, 58.081249, 58.964352>,  <71.096954, 58.051704, 58.287792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.118034, 58.081249, 58.964352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.490364, 58.120991, 58.823677>,  <71.713760, 58.144836, 58.739273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.490364, 58.120991, 58.823677>,  <71.118034, 58.081249, 58.964352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.490364, 58.120991, 58.823677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040093, 0.928762, 0.368503,
		0.363243, -0.357114, 0.860537,
		0.930831, 0.099354, -0.351683,
		71.769615, 58.150799, 58.718170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.865891, 57.726818, 59.128948>,  <71.118034, 58.081249, 58.964352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.865891, 57.726818, 59.128948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.493164, 57.636086, 59.242287>,  <71.269531, 57.581646, 59.310291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.493164, 57.636086, 59.242287>,  <71.865891, 57.726818, 59.128948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.493164, 57.636086, 59.242287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332928, -0.845066, 0.418356,
		0.144552, 0.484161, 0.862956,
		-0.931807, -0.226828, 0.283346,
		71.213623, 57.568039, 59.327290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.581314, 57.740818, 59.053814>,  <71.865891, 57.726818, 59.128948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.581314, 57.740818, 59.053814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.941956, 57.744831, 59.226791>,  <73.158340, 57.747238, 59.330578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.941956, 57.744831, 59.226791>,  <72.581314, 57.740818, 59.053814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.941956, 57.744831, 59.226791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405186, 0.369594, 0.836196,
		-0.151443, -0.929139, 0.337291,
		0.901604, 0.010029, 0.432447,
		73.212440, 57.747841, 59.356525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.509438, 57.440716, 59.793224>,  <72.581314, 57.740818, 59.053814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.509438, 57.440716, 59.793224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.806122, 57.694256, 59.705490>,  <72.984131, 57.846378, 59.652847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.806122, 57.694256, 59.705490>,  <72.509438, 57.440716, 59.793224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.806122, 57.694256, 59.705490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380942, 0.667247, 0.640050,
		0.552048, -0.391173, 0.736360,
		0.741705, 0.633850, -0.219338,
		73.028633, 57.884411, 59.639687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.923782, 57.646805, 60.415634>,  <72.509438, 57.440716, 59.793224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.923782, 57.646805, 60.415634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.893120, 57.928719, 60.133530>,  <72.874725, 58.097866, 59.964268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.893120, 57.928719, 60.133530>,  <72.923782, 57.646805, 60.415634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.893120, 57.928719, 60.133530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468945, 0.598743, 0.649305,
		0.879895, 0.380501, 0.284612,
		-0.076651, 0.704788, -0.705265,
		72.870125, 58.140156, 59.921951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
