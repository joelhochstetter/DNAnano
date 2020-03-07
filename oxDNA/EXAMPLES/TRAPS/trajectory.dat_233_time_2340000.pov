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
	<36.485298, 53.284775, 49.528633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486847, 53.242577, 49.926399>,  <36.487774, 53.217258, 50.165058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486847, 53.242577, 49.926399>,  <36.485298, 53.284775, 49.528633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486847, 53.242577, 49.926399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260725, 0.960131, 0.100847,
		-0.965405, 0.258878, 0.031222,
		0.003870, -0.105499, 0.994412,
		36.488007, 53.210926, 50.224724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253651, 53.992481, 49.835373>,  <36.485298, 53.284775, 49.528633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253651, 53.992481, 49.835373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499950, 53.790310, 50.077164>,  <36.647732, 53.669006, 50.222237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499950, 53.790310, 50.077164>,  <36.253651, 53.992481, 49.835373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499950, 53.790310, 50.077164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473719, 0.850495, 0.228582,
		-0.629633, 0.145600, 0.763127,
		0.615753, -0.505430, 0.604473,
		36.684677, 53.638680, 50.258507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066845, 54.288555, 50.594971>,  <36.253651, 53.992481, 49.835373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066845, 54.288555, 50.594971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314816, 54.365875, 50.899162>,  <36.463600, 54.412266, 51.081676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314816, 54.365875, 50.899162>,  <36.066845, 54.288555, 50.594971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314816, 54.365875, 50.899162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478518, 0.674963, -0.561646,
		-0.621860, 0.712082, 0.325930,
		0.619928, 0.193301, 0.760476,
		36.500793, 54.423866, 51.127304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076710, 54.989563, 50.676037>,  <36.066845, 54.288555, 50.594971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076710, 54.989563, 50.676037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415684, 54.809956, 50.789345>,  <36.619068, 54.702190, 50.857330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415684, 54.809956, 50.789345>,  <36.076710, 54.989563, 50.676037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415684, 54.809956, 50.789345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516311, 0.572769, -0.636678,
		0.123631, 0.685797, 0.717215,
		0.847431, -0.449019, 0.283272,
		36.669914, 54.675251, 50.874325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557961, 55.523792, 50.657574>,  <36.076710, 54.989563, 50.676037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557961, 55.523792, 50.657574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676712, 55.147713, 50.590759>,  <36.747963, 54.922066, 50.550671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676712, 55.147713, 50.590759>,  <36.557961, 55.523792, 50.657574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676712, 55.147713, 50.590759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463738, 0.294856, -0.835468,
		0.834753, 0.170571, 0.523539,
		0.296875, -0.940194, -0.167032,
		36.765774, 54.865654, 50.540649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269989, 55.503746, 50.530212>,  <36.557961, 55.523792, 50.657574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269989, 55.503746, 50.530212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087685, 55.203735, 50.338486>,  <36.978302, 55.023731, 50.223450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087685, 55.203735, 50.338486>,  <37.269989, 55.503746, 50.530212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087685, 55.203735, 50.338486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450042, 0.270420, -0.851079,
		0.767946, -0.603602, 0.214295,
		-0.455763, -0.750025, -0.479315,
		36.950954, 54.978729, 50.194691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375954, 55.706421, 51.162971>,  <37.269989, 55.503746, 50.530212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375954, 55.706421, 51.162971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597549, 55.614250, 50.842972>,  <37.730507, 55.558949, 50.650970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597549, 55.614250, 50.842972>,  <37.375954, 55.706421, 51.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597549, 55.614250, 50.842972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823343, 0.009314, 0.567468,
		-0.123309, -0.973045, 0.194880,
		0.553987, -0.230427, -0.800001,
		37.763744, 55.545120, 50.602970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787102, 55.091145, 51.319233>,  <37.375954, 55.706421, 51.162971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787102, 55.091145, 51.319233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963146, 55.298210, 51.025749>,  <38.068771, 55.422451, 50.849659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963146, 55.298210, 51.025749>,  <37.787102, 55.091145, 51.319233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963146, 55.298210, 51.025749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870977, -0.047360, 0.489036,
		0.218408, -0.854272, -0.471718,
		0.440111, 0.517664, -0.733707,
		38.095181, 55.453510, 50.805637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386456, 54.765766, 50.858925>,  <37.787102, 55.091145, 51.319233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386456, 54.765766, 50.858925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404804, 55.149101, 50.971695>,  <38.415813, 55.379105, 51.039356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404804, 55.149101, 50.971695>,  <38.386456, 54.765766, 50.858925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404804, 55.149101, 50.971695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827007, -0.194728, 0.527390,
		0.560317, 0.208963, -0.801486,
		0.045867, 0.958340, 0.281923,
		38.418564, 55.436604, 51.056271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049408, 55.083668, 50.595959>,  <38.386456, 54.765766, 50.858925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049408, 55.083668, 50.595959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903233, 55.224178, 50.940762>,  <38.815525, 55.308487, 51.147644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903233, 55.224178, 50.940762>,  <39.049408, 55.083668, 50.595959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903233, 55.224178, 50.940762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912549, -0.047448, 0.406205,
		0.183591, 0.935068, -0.303220,
		-0.365442, 0.351279, 0.862007,
		38.793598, 55.329563, 51.199364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472408, 55.670570, 50.827251>,  <39.049408, 55.083668, 50.595959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472408, 55.670570, 50.827251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282440, 55.489758, 51.129276>,  <39.168461, 55.381271, 51.310490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282440, 55.489758, 51.129276>,  <39.472408, 55.670570, 50.827251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282440, 55.489758, 51.129276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880018, -0.248241, 0.404900,
		0.004409, 0.856763, 0.515692,
		-0.474919, -0.452033, 0.755062,
		39.139965, 55.354149, 51.355793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719864, 55.950264, 51.348309>,  <39.472408, 55.670570, 50.827251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719864, 55.950264, 51.348309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576344, 55.587109, 51.435024>,  <39.490231, 55.369213, 51.487053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576344, 55.587109, 51.435024>,  <39.719864, 55.950264, 51.348309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576344, 55.587109, 51.435024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901219, -0.276474, 0.333716,
		-0.243041, 0.315110, 0.917407,
		-0.358797, -0.907892, 0.216789,
		39.468704, 55.314739, 51.500061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902939, 55.759357, 52.024212>,  <39.719864, 55.950264, 51.348309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902939, 55.759357, 52.024212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886585, 55.413132, 51.824562>,  <39.876774, 55.205399, 51.704773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886585, 55.413132, 51.824562>,  <39.902939, 55.759357, 52.024212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886585, 55.413132, 51.824562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956692, -0.178011, 0.230333,
		-0.288218, -0.468096, 0.835354,
		-0.040885, -0.865562, -0.499129,
		39.874321, 55.153461, 51.674824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973923, 55.205162, 52.458900>,  <39.902939, 55.759357, 52.024212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973923, 55.205162, 52.458900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107670, 55.129784, 52.089535>,  <40.187920, 55.084557, 51.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107670, 55.129784, 52.089535>,  <39.973923, 55.205162, 52.458900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107670, 55.129784, 52.089535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928464, -0.102268, 0.357066,
		-0.161723, -0.976744, 0.140771,
		0.334366, -0.188447, -0.923410,
		40.207981, 55.073250, 51.812511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431499, 54.669670, 52.586510>,  <39.973923, 55.205162, 52.458900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431499, 54.669670, 52.586510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513351, 54.796780, 52.216183>,  <40.562462, 54.873047, 51.993984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513351, 54.796780, 52.216183>,  <40.431499, 54.669670, 52.586510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513351, 54.796780, 52.216183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934757, -0.344089, 0.088502,
		-0.290440, -0.883527, -0.367457,
		0.204632, 0.317778, -0.925820,
		40.574741, 54.892113, 51.938438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921322, 54.173401, 52.333786>,  <40.431499, 54.669670, 52.586510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921322, 54.173401, 52.333786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963398, 54.523396, 52.144753>,  <40.988644, 54.733391, 52.031334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963398, 54.523396, 52.144753>,  <40.921322, 54.173401, 52.333786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963398, 54.523396, 52.144753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990882, -0.132453, -0.024689,
		-0.084198, -0.465677, -0.880940,
		0.105186, 0.874986, -0.472583,
		40.994953, 54.785892, 52.002979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289639, 54.139454, 51.640469>,  <40.921322, 54.173401, 52.333786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289639, 54.139454, 51.640469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339359, 54.497772, 51.811165>,  <41.369190, 54.712761, 51.913582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339359, 54.497772, 51.811165>,  <41.289639, 54.139454, 51.640469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339359, 54.497772, 51.811165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992233, -0.114290, -0.049104,
		0.004785, 0.429527, -0.903042,
		0.124300, 0.895793, 0.426737,
		41.376648, 54.766510, 51.939186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725235, 54.583752, 51.282589>,  <41.289639, 54.139454, 51.640469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725235, 54.583752, 51.282589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759377, 54.672573, 51.671104>,  <41.779861, 54.725868, 51.904213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759377, 54.672573, 51.671104>,  <41.725235, 54.583752, 51.282589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759377, 54.672573, 51.671104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986822, -0.153341, -0.051657,
		0.137468, 0.962900, -0.232219,
		0.085350, 0.222058, 0.971291,
		41.784981, 54.739189, 51.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290070, 54.997444, 51.493408>,  <41.725235, 54.583752, 51.282589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290070, 54.997444, 51.493408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188892, 54.759541, 51.798637>,  <42.128185, 54.616798, 51.981777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188892, 54.759541, 51.798637>,  <42.290070, 54.997444, 51.493408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188892, 54.759541, 51.798637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929953, -0.367007, 0.022208,
		0.266846, 0.715241, 0.645929,
		-0.252944, -0.594757, 0.763075,
		42.113010, 54.581112, 52.027561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809364, 55.058968, 52.068905>,  <42.290070, 54.997444, 51.493408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809364, 55.058968, 52.068905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604134, 54.715775, 52.059006>,  <42.480995, 54.509857, 52.053066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604134, 54.715775, 52.059006>,  <42.809364, 55.058968, 52.068905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604134, 54.715775, 52.059006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856616, -0.510001, -0.078152,
		0.054431, -0.061299, 0.996634,
		-0.513075, -0.857987, -0.024750,
		42.450211, 54.458378, 52.051582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089977, 55.385098, 52.725578>,  <42.809364, 55.058968, 52.068905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089977, 55.385098, 52.725578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199902, 55.008141, 52.649292>,  <43.265858, 54.781967, 52.603519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199902, 55.008141, 52.649292>,  <43.089977, 55.385098, 52.725578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199902, 55.008141, 52.649292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916565, -0.316695, 0.244157,
		-0.290490, 0.107705, -0.950797,
		0.274816, -0.942392, -0.190716,
		43.282345, 54.725422, 52.592075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508568, 55.362694, 52.023426>,  <43.089977, 55.385098, 52.725578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508568, 55.362694, 52.023426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434647, 55.244858, 51.648392>,  <43.390293, 55.174156, 51.423370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434647, 55.244858, 51.648392>,  <43.508568, 55.362694, 52.023426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434647, 55.244858, 51.648392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893743, 0.346407, -0.285002,
		0.408745, -0.890627, 0.199276,
		-0.184800, -0.294595, -0.937584,
		43.379208, 55.156479, 51.367115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951046, 54.772446, 51.857998>,  <43.508568, 55.362694, 52.023426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951046, 54.772446, 51.857998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848930, 55.015091, 51.556839>,  <43.787659, 55.160679, 51.376144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848930, 55.015091, 51.556839>,  <43.951046, 54.772446, 51.857998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848930, 55.015091, 51.556839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964470, 0.214531, -0.154185,
		0.067988, -0.765506, -0.639827,
		-0.255293, 0.606611, -0.752893,
		43.772343, 55.197075, 51.330971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442574, 54.752296, 51.378887>,  <43.951046, 54.772446, 51.857998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442574, 54.752296, 51.378887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261768, 55.098469, 51.292435>,  <44.153286, 55.306171, 51.240562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261768, 55.098469, 51.292435>,  <44.442574, 54.752296, 51.378887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261768, 55.098469, 51.292435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887047, 0.461630, -0.006677,
		0.093996, -0.194740, -0.976341,
		-0.452009, 0.865433, -0.216135,
		44.126167, 55.358097, 51.227592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631371, 55.150810, 50.756874>,  <44.442574, 54.752296, 51.378887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631371, 55.150810, 50.756874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513790, 55.418915, 51.029442>,  <44.443241, 55.579777, 51.192982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513790, 55.418915, 51.029442>,  <44.631371, 55.150810, 50.756874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513790, 55.418915, 51.029442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930010, 0.365121, 0.042042,
		-0.220623, 0.646089, -0.730680,
		-0.293950, 0.670265, 0.681424,
		44.425606, 55.619995, 51.233868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060196, 55.425949, 51.324306>,  <44.631371, 55.150810, 50.756874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060196, 55.425949, 51.324306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425941, 55.355598, 51.178425>,  <45.645390, 55.313389, 51.090897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425941, 55.355598, 51.178425>,  <45.060196, 55.425949, 51.324306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425941, 55.355598, 51.178425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307490, 0.887634, 0.342866,
		0.263421, -0.425646, 0.865699,
		0.914363, -0.175875, -0.364703,
		45.700249, 55.302837, 51.069016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507011, 55.800732, 51.743507>,  <45.060196, 55.425949, 51.324306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507011, 55.800732, 51.743507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702255, 55.737778, 51.400116>,  <45.819401, 55.700005, 51.194080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702255, 55.737778, 51.400116>,  <45.507011, 55.800732, 51.743507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702255, 55.737778, 51.400116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460688, 0.881881, 0.100259,
		0.741296, -0.444427, 0.502956,
		0.488105, -0.157384, -0.858477,
		45.848686, 55.690563, 51.142574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313595, 55.780666, 51.750290>,  <45.507011, 55.800732, 51.743507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313595, 55.780666, 51.750290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211018, 55.879665, 51.376556>,  <46.149471, 55.939064, 51.152317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211018, 55.879665, 51.376556>,  <46.313595, 55.780666, 51.750290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211018, 55.879665, 51.376556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642250, 0.766032, 0.026638,
		0.722323, -0.593246, -0.355400,
		-0.256445, 0.247497, -0.934335,
		46.134083, 55.953915, 51.096256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633759, 55.815517, 52.496159>,  <46.313595, 55.780666, 51.750290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633759, 55.815517, 52.496159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608784, 56.213539, 52.527065>,  <46.593800, 56.452351, 52.545609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608784, 56.213539, 52.527065>,  <46.633759, 55.815517, 52.496159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608784, 56.213539, 52.527065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554710, 0.098955, -0.826139,
		-0.829698, -0.008726, -0.558144,
		-0.062440, 0.995054, 0.077263,
		46.590054, 56.512054, 52.550243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893005, 56.084839, 53.110737>,  <46.633759, 55.815517, 52.496159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893005, 56.084839, 53.110737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940681, 55.783775, 53.369751>,  <46.969288, 55.603138, 53.525158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940681, 55.783775, 53.369751>,  <46.893005, 56.084839, 53.110737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940681, 55.783775, 53.369751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947494, 0.281137, 0.152371,
		-0.296729, 0.595373, 0.746648,
		0.119193, -0.752658, 0.647533,
		46.976440, 55.557980, 53.564011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426476, 56.080723, 53.699959>,  <46.893005, 56.084839, 53.110737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426476, 56.080723, 53.699959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556545, 56.337673, 53.977554>,  <47.634586, 56.491844, 54.144112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556545, 56.337673, 53.977554>,  <47.426476, 56.080723, 53.699959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.556545, 56.337673, 53.977554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840138, -0.533110, 0.099809,
		0.434087, 0.550589, -0.713036,
		0.325173, 0.642374, 0.693987,
		47.654099, 56.530384, 54.185749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.042030, 56.402760, 53.492725>,  <47.426476, 56.080723, 53.699959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.042030, 56.402760, 53.492725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.062561, 56.395611, 53.892136>,  <48.074879, 56.391323, 54.131783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.062561, 56.395611, 53.892136>,  <48.042030, 56.402760, 53.492725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.062561, 56.395611, 53.892136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939193, -0.339062, -0.054344,
		0.339532, 0.940594, -0.000617,
		0.051325, -0.017872, 0.998522,
		48.077957, 56.390251, 54.191692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.838360, 56.374039, 53.584141>,  <48.042030, 56.402760, 53.492725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.838360, 56.374039, 53.584141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.662170, 56.265545, 53.926468>,  <48.556458, 56.200447, 54.131863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.662170, 56.265545, 53.926468>,  <48.838360, 56.374039, 53.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.662170, 56.265545, 53.926468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801220, -0.548812, 0.238437,
		0.405009, 0.790720, 0.459054,
		-0.440471, -0.271233, 0.855814,
		48.530029, 56.184174, 54.183212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.355515, 56.565407, 54.054577>,  <48.838360, 56.374039, 53.584141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.355515, 56.565407, 54.054577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.273373, 56.637207, 54.439411>,  <49.224087, 56.680286, 54.670311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.273373, 56.637207, 54.439411>,  <49.355515, 56.565407, 54.054577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.273373, 56.637207, 54.439411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847365, -0.459262, 0.266556,
		0.489697, 0.869975, -0.057794,
		-0.205354, 0.179504, 0.962085,
		49.211765, 56.691059, 54.728035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.964771, 56.776890, 54.402546>,  <49.355515, 56.565407, 54.054577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.964771, 56.776890, 54.402546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.737225, 56.619656, 54.691509>,  <49.600697, 56.525314, 54.864887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.737225, 56.619656, 54.691509>,  <49.964771, 56.776890, 54.402546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.737225, 56.619656, 54.691509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815138, -0.386205, 0.431737,
		0.109287, 0.834462, 0.540120,
		-0.568865, -0.393089, 0.722408,
		49.566566, 56.501728, 54.908234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.135429, 57.009903, 55.121658>,  <49.964771, 56.776890, 54.402546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.135429, 57.009903, 55.121658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.991600, 56.638004, 55.153328>,  <49.905300, 56.414864, 55.172329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.991600, 56.638004, 55.153328>,  <50.135429, 57.009903, 55.121658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.991600, 56.638004, 55.153328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749493, -0.237231, 0.618046,
		-0.555845, 0.281579, 0.782144,
		-0.359577, -0.929750, 0.079178,
		49.883728, 56.359077, 55.177082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.651169, 57.640896, 55.472851>,  <50.135429, 57.009903, 55.121658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.651169, 57.640896, 55.472851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.699657, 58.032288, 55.539650>,  <49.728748, 58.267124, 55.579727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.699657, 58.032288, 55.539650>,  <49.651169, 57.640896, 55.472851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.699657, 58.032288, 55.539650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555058, -0.206290, 0.805826,
		0.822932, -0.004988, -0.568118,
		0.121217, 0.978478, 0.166994,
		49.736023, 58.325832, 55.589748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.358307, 57.703674, 55.508053>,  <49.651169, 57.640896, 55.472851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.358307, 57.703674, 55.508053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.112320, 57.940491, 55.716400>,  <49.964729, 58.082581, 55.841408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.112320, 57.940491, 55.716400>,  <50.358307, 57.703674, 55.508053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.112320, 57.940491, 55.716400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436405, -0.294638, 0.850141,
		0.656784, 0.750119, -0.077176,
		-0.614968, 0.592039, 0.520869,
		49.927830, 58.118103, 55.872662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.794140, 58.204987, 55.857510>,  <50.358307, 57.703674, 55.508053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.794140, 58.204987, 55.857510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.462307, 58.099930, 56.054611>,  <50.263206, 58.036896, 56.172871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.462307, 58.099930, 56.054611>,  <50.794140, 58.204987, 55.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.462307, 58.099930, 56.054611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551967, -0.252395, 0.794751,
		-0.084371, 0.931297, 0.354356,
		-0.829586, -0.262647, 0.492751,
		50.213432, 58.021137, 56.202435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.524731, 58.672184, 56.349701>,  <50.794140, 58.204987, 55.857510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.524731, 58.672184, 56.349701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.479141, 58.293011, 56.468658>,  <50.451790, 58.065506, 56.540031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.479141, 58.293011, 56.468658>,  <50.524731, 58.672184, 56.349701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.479141, 58.293011, 56.468658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628163, 0.163154, 0.760783,
		-0.769689, 0.273518, 0.576859,
		-0.113971, -0.947929, 0.297392,
		50.444950, 58.008633, 56.557877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.181690, 58.541836, 57.085842>,  <50.524731, 58.672184, 56.349701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.181690, 58.541836, 57.085842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.476391, 58.293320, 56.979111>,  <50.653210, 58.144211, 56.915073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.476391, 58.293320, 56.979111>,  <50.181690, 58.541836, 57.085842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.476391, 58.293320, 56.979111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446811, 0.151148, 0.881768,
		-0.507503, -0.768865, 0.388957,
		0.736750, -0.621290, -0.266830,
		50.697414, 58.106934, 56.899063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.287018, 58.044376, 57.593361>,  <50.181690, 58.541836, 57.085842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.287018, 58.044376, 57.593361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.641479, 58.027527, 57.408775>,  <50.854156, 58.017418, 57.298023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.641479, 58.027527, 57.408775>,  <50.287018, 58.044376, 57.593361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.641479, 58.027527, 57.408775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462169, 0.008232, 0.886754,
		-0.033552, -0.999079, 0.026762,
		0.886157, -0.042121, -0.461467,
		50.907326, 58.014889, 57.270336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.828014, 57.365871, 57.522278>,  <50.287018, 58.044376, 57.593361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.828014, 57.365871, 57.522278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.031658, 57.710152, 57.521980>,  <51.153843, 57.916721, 57.521801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.031658, 57.710152, 57.521980>,  <50.828014, 57.365871, 57.522278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.031658, 57.710152, 57.521980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403528, -0.237923, 0.883492,
		0.760244, -0.450096, -0.468446,
		0.509110, 0.860701, -0.000747,
		51.184391, 57.968361, 57.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.558281, 57.186710, 57.607132>,  <50.828014, 57.365871, 57.522278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.558281, 57.186710, 57.607132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.457981, 57.539894, 57.765884>,  <51.397800, 57.751804, 57.861137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.457981, 57.539894, 57.765884>,  <51.558281, 57.186710, 57.607132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.457981, 57.539894, 57.765884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461305, -0.251453, 0.850864,
		0.851072, 0.396437, -0.344260,
		-0.250748, 0.882955, 0.396883,
		51.382755, 57.804779, 57.884949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.086666, 57.322445, 57.973263>,  <51.558281, 57.186710, 57.607132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.086666, 57.322445, 57.973263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.784008, 57.535912, 58.124359>,  <51.602413, 57.663990, 58.215019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.784008, 57.535912, 58.124359>,  <52.086666, 57.322445, 57.973263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.784008, 57.535912, 58.124359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463277, 0.029919, 0.885708,
		0.461369, 0.845167, -0.269872,
		-0.756646, 0.533664, 0.377743,
		51.557014, 57.696011, 58.237682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.155460, 57.825756, 57.370399>,  <52.086666, 57.322445, 57.973263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.155460, 57.825756, 57.370399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.318840, 58.186554, 57.314430>,  <52.416866, 58.403034, 57.280849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.318840, 58.186554, 57.314430>,  <52.155460, 57.825756, 57.370399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.318840, 58.186554, 57.314430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886533, -0.428511, -0.174465,
		-0.217323, -0.052783, -0.974671,
		0.408449, 0.901994, -0.139919,
		52.441376, 58.457153, 57.272453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.419708, 57.926979, 56.688862>,  <52.155460, 57.825756, 57.370399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.419708, 57.926979, 56.688862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.661446, 58.136883, 56.928665>,  <52.806488, 58.262825, 57.072548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.661446, 58.136883, 56.928665>,  <52.419708, 57.926979, 56.688862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.661446, 58.136883, 56.928665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786394, -0.513677, -0.343104,
		0.127905, 0.678797, -0.723100,
		0.604339, 0.524757, 0.599504,
		52.842747, 58.294312, 57.108517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.099361, 58.079166, 56.324112>,  <52.419708, 57.926979, 56.688862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.099361, 58.079166, 56.324112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.201641, 58.113060, 56.709328>,  <53.263008, 58.133396, 56.940456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.201641, 58.113060, 56.709328>,  <53.099361, 58.079166, 56.324112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.201641, 58.113060, 56.709328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734343, -0.664916, -0.136478,
		0.628774, 0.742096, -0.232242,
		0.255701, 0.084731, 0.963036,
		53.278351, 58.138481, 56.998238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.848221, 58.193703, 56.378109>,  <53.099361, 58.079166, 56.324112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.848221, 58.193703, 56.378109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.705322, 57.985435, 56.688278>,  <53.619583, 57.860477, 56.874382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.705322, 57.985435, 56.688278>,  <53.848221, 58.193703, 56.378109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.705322, 57.985435, 56.688278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620077, -0.753070, -0.219979,
		0.698484, 0.402236, 0.591883,
		-0.357246, -0.520665, 0.775425,
		53.598148, 57.829235, 56.920906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.377628, 57.848061, 56.808842>,  <53.848221, 58.193703, 56.378109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.377628, 57.848061, 56.808842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.048531, 57.647327, 56.915619>,  <53.851074, 57.526886, 56.979683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.048531, 57.647327, 56.915619>,  <54.377628, 57.848061, 56.808842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.048531, 57.647327, 56.915619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531162, -0.845983, 0.046687,
		0.202397, 0.180200, 0.962582,
		-0.822741, -0.501837, 0.266939,
		53.801708, 57.496777, 56.995701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.977116, 58.041328, 57.493130>,  <54.377628, 57.848061, 56.808842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.977116, 58.041328, 57.493130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.860458, 58.225292, 57.828613>,  <53.790466, 58.335670, 58.029903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.860458, 58.225292, 57.828613>,  <53.977116, 58.041328, 57.493130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.860458, 58.225292, 57.828613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812261, -0.343986, 0.471069,
		0.505151, 0.818633, -0.273244,
		-0.291640, 0.459906, 0.838709,
		53.772964, 58.363262, 58.080227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.417603, 58.699810, 57.792316>,  <53.977116, 58.041328, 57.493130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.417603, 58.699810, 57.792316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.240189, 58.420425, 58.016968>,  <54.133739, 58.252796, 58.151760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.240189, 58.420425, 58.016968>,  <54.417603, 58.699810, 57.792316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.240189, 58.420425, 58.016968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894328, -0.303783, 0.328471,
		-0.058810, 0.647971, 0.759391,
		-0.443530, -0.698462, 0.561633,
		54.107128, 58.210888, 58.185459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.727757, 58.707016, 58.458920>,  <54.417603, 58.699810, 57.792316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.727757, 58.707016, 58.458920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.589737, 58.332478, 58.433014>,  <54.506924, 58.107754, 58.417469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.589737, 58.332478, 58.433014>,  <54.727757, 58.707016, 58.458920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.589737, 58.332478, 58.433014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923498, -0.351016, 0.154724,
		-0.167610, -0.006423, 0.985832,
		-0.345049, -0.936348, -0.064766,
		54.486221, 58.051575, 58.413586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.792263, 58.273327, 59.048195>,  <54.727757, 58.707016, 58.458920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.792263, 58.273327, 59.048195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.828201, 58.089832, 58.694588>,  <54.849762, 57.979736, 58.482422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.828201, 58.089832, 58.694588>,  <54.792263, 58.273327, 59.048195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.828201, 58.089832, 58.694588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934258, -0.268737, 0.234398,
		-0.345095, -0.846962, 0.404431,
		0.089841, -0.458732, -0.884021,
		54.855152, 57.952213, 58.429382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.896595, 57.546932, 59.215431>,  <54.792263, 58.273327, 59.048195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.896595, 57.546932, 59.215431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.111481, 57.709534, 58.919823>,  <55.240414, 57.807095, 58.742458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.111481, 57.709534, 58.919823>,  <54.896595, 57.546932, 59.215431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.111481, 57.709534, 58.919823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823268, -0.443218, 0.354664,
		-0.183376, -0.798945, -0.572765,
		0.537217, 0.406503, -0.739022,
		55.272644, 57.831486, 58.698116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.349209, 57.029720, 58.879250>,  <54.896595, 57.546932, 59.215431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.349209, 57.029720, 58.879250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.494431, 57.398556, 58.825676>,  <55.581562, 57.619858, 58.793533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.494431, 57.398556, 58.825676>,  <55.349209, 57.029720, 58.879250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.494431, 57.398556, 58.825676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919545, -0.331362, 0.211274,
		0.150433, -0.199861, -0.968207,
		0.363052, 0.922093, -0.133934,
		55.603348, 57.675182, 58.785496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.926636, 57.104156, 58.409546>,  <55.349209, 57.029720, 58.879250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.926636, 57.104156, 58.409546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.962357, 57.419239, 58.653366>,  <55.983788, 57.608288, 58.799656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.962357, 57.419239, 58.653366>,  <55.926636, 57.104156, 58.409546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.962357, 57.419239, 58.653366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927935, -0.288160, 0.236433,
		0.361886, 0.544506, -0.756671,
		0.089303, 0.787704, 0.609547,
		55.989147, 57.655552, 58.836231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.508266, 57.460468, 58.207706>,  <55.926636, 57.104156, 58.409546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.508266, 57.460468, 58.207706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.458763, 57.530411, 58.598419>,  <56.429062, 57.572376, 58.832848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.458763, 57.530411, 58.598419>,  <56.508266, 57.460468, 58.207706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.458763, 57.530411, 58.598419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966088, -0.203576, 0.158845,
		0.226625, 0.963318, -0.143733,
		-0.123757, 0.174857, 0.976785,
		56.421635, 57.582867, 58.891457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.060570, 57.925823, 58.469887>,  <56.508266, 57.460468, 58.207706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.060570, 57.925823, 58.469887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.933800, 57.726547, 58.792717>,  <56.857738, 57.606983, 58.986416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.933800, 57.726547, 58.792717>,  <57.060570, 57.925823, 58.469887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.933800, 57.726547, 58.792717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930588, -0.327700, 0.163150,
		0.183198, 0.802758, 0.567467,
		-0.316929, -0.498189, 0.807071,
		56.838722, 57.577091, 59.034840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.436245, 58.094833, 59.126846>,  <57.060570, 57.925823, 58.469887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.436245, 58.094833, 59.126846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278450, 57.731541, 59.182686>,  <57.183773, 57.513565, 59.216190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.278450, 57.731541, 59.182686>,  <57.436245, 58.094833, 59.126846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.278450, 57.731541, 59.182686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884357, -0.333988, 0.326136,
		-0.249586, 0.252108, 0.934959,
		-0.394487, -0.908236, 0.139595,
		57.160103, 57.459068, 59.224564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.997269, 58.519424, 58.762966>,  <57.436245, 58.094833, 59.126846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.997269, 58.519424, 58.762966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.929039, 58.490425, 59.156036>,  <57.888100, 58.473026, 59.391880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.929039, 58.490425, 59.156036>,  <57.997269, 58.519424, 58.762966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.929039, 58.490425, 59.156036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247428, -0.968487, -0.028508,
		0.953774, 0.238278, 0.183136,
		-0.170572, -0.072503, 0.982674,
		57.877869, 58.468674, 59.450840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.453587, 58.123959, 58.984642>,  <57.997269, 58.519424, 58.762966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.453587, 58.123959, 58.984642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.166969, 58.075516, 59.259422>,  <57.994999, 58.046448, 59.424290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.166969, 58.075516, 59.259422>,  <58.453587, 58.123959, 58.984642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.166969, 58.075516, 59.259422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287943, -0.948345, 0.133153,
		0.635338, 0.293212, 0.714404,
		-0.716544, -0.121111, 0.686948,
		57.952007, 58.039181, 59.465508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.001305, 58.212238, 59.447575>,  <58.453587, 58.123959, 58.984642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.001305, 58.212238, 59.447575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.987686, 58.610374, 59.483665>,  <58.979515, 58.849255, 59.505318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.987686, 58.610374, 59.483665>,  <59.001305, 58.212238, 59.447575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.987686, 58.610374, 59.483665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992573, 0.023128, 0.119431,
		0.116788, 0.093621, -0.988734,
		-0.034049, 0.995339, 0.090225,
		58.977470, 58.908978, 59.510735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.423386, 58.490437, 58.907021>,  <59.001305, 58.212238, 59.447575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.423386, 58.490437, 58.907021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.425545, 58.733917, 59.224373>,  <59.426842, 58.880005, 59.414783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.425545, 58.733917, 59.224373>,  <59.423386, 58.490437, 58.907021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.425545, 58.733917, 59.224373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996290, 0.064868, -0.056549,
		-0.085887, 0.790746, -0.606089,
		0.005400, 0.608698, 0.793384,
		59.427166, 58.916527, 59.462387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.019623, 58.842739, 58.790035>,  <59.423386, 58.490437, 58.907021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.019623, 58.842739, 58.790035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.956558, 58.866997, 59.184288>,  <59.918720, 58.881550, 59.420837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.956558, 58.866997, 59.184288>,  <60.019623, 58.842739, 58.790035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.956558, 58.866997, 59.184288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974525, -0.151674, 0.165213,
		0.159514, 0.986568, -0.035187,
		-0.157657, 0.060645, 0.985630,
		59.909260, 58.885189, 59.479977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.503941, 59.280884, 59.152027>,  <60.019623, 58.842739, 58.790035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.503941, 59.280884, 59.152027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.390694, 58.961815, 59.365028>,  <60.322746, 58.770374, 59.492828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.390694, 58.961815, 59.365028>,  <60.503941, 59.280884, 59.152027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.390694, 58.961815, 59.365028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957202, -0.200230, 0.208979,
		-0.060073, 0.568881, 0.820223,
		-0.283117, -0.797673, 0.532505,
		60.305759, 58.722511, 59.524780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.775604, 59.331810, 59.832760>,  <60.503941, 59.280884, 59.152027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.775604, 59.331810, 59.832760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.740654, 58.936539, 59.782379>,  <60.719685, 58.699375, 59.752151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.740654, 58.936539, 59.782379>,  <60.775604, 59.331810, 59.832760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.740654, 58.936539, 59.782379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972870, -0.111839, 0.202523,
		-0.214216, -0.104843, 0.971143,
		-0.087379, -0.988180, -0.125956,
		60.714439, 58.640083, 59.744591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.104538, 58.712357, 60.147373>,  <60.775604, 59.331810, 59.832760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.104538, 58.712357, 60.147373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.208282, 58.422199, 60.402412>,  <61.270527, 58.248104, 60.555435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.208282, 58.422199, 60.402412>,  <61.104538, 58.712357, 60.147373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.208282, 58.422199, 60.402412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637610, -0.624471, -0.451099,
		0.725387, -0.289542, -0.624483,
		0.259360, -0.725398, 0.637598,
		61.286091, 58.204578, 60.593693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.607315, 59.213730, 60.146328>,  <61.104538, 58.712357, 60.147373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.607315, 59.213730, 60.146328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.924622, 59.318779, 60.366058>,  <62.115005, 59.381809, 60.497898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.924622, 59.318779, 60.366058>,  <61.607315, 59.213730, 60.146328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.924622, 59.318779, 60.366058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330438, 0.943466, 0.026118,
		-0.511414, -0.202237, 0.835198,
		0.793263, 0.262624, 0.549329,
		62.162601, 59.397568, 60.530857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.925465, 59.462688, 59.585487>,  <61.607315, 59.213730, 60.146328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.925465, 59.462688, 59.585487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.703308, 59.794922, 59.601822>,  <61.570015, 59.994263, 59.611622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.703308, 59.794922, 59.601822>,  <61.925465, 59.462688, 59.585487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.703308, 59.794922, 59.601822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681134, 0.482535, -0.550652,
		-0.477068, -0.278013, -0.833736,
		-0.555395, 0.830584, 0.040838,
		61.536690, 60.044098, 59.614075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.606922, 59.832706, 59.657066>,  <61.925465, 59.462688, 59.585487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.606922, 59.832706, 59.657066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.002228, 59.799744, 59.605621>,  <63.239410, 59.779964, 59.574753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.002228, 59.799744, 59.605621>,  <62.606922, 59.832706, 59.657066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.002228, 59.799744, 59.605621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054150, -0.976312, 0.209481,
		-0.142830, -0.200058, -0.969317,
		0.988265, -0.082409, -0.128613,
		63.298706, 59.775021, 59.567036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.840221, 59.350121, 59.201836>,  <62.606922, 59.832706, 59.657066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.840221, 59.350121, 59.201836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.171425, 59.367992, 59.425407>,  <63.370148, 59.378716, 59.559551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.171425, 59.367992, 59.425407>,  <62.840221, 59.350121, 59.201836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.171425, 59.367992, 59.425407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093752, -0.993819, -0.059446,
		0.552817, 0.101623, -0.827083,
		0.828012, 0.044678, 0.558928,
		63.419830, 59.381397, 59.593086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.235844, 58.887268, 58.903973>,  <62.840221, 59.350121, 59.201836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.235844, 58.887268, 58.903973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.398666, 58.883625, 59.269318>,  <63.496361, 58.881439, 59.488525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.398666, 58.883625, 59.269318>,  <63.235844, 58.887268, 58.903973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.398666, 58.883625, 59.269318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282831, -0.949548, -0.135517,
		0.868513, 0.313489, -0.383940,
		0.407053, -0.009108, 0.913359,
		63.520782, 58.880894, 59.543324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.082024, 58.465740, 59.536800>,  <63.235844, 58.887268, 58.903973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.082024, 58.465740, 59.536800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.454475, 58.319881, 59.538773>,  <63.677948, 58.232365, 59.539955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.454475, 58.319881, 59.538773>,  <63.082024, 58.465740, 59.536800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.454475, 58.319881, 59.538773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360025, 0.921304, 0.146903,
		-0.058112, -0.135010, 0.989139,
		0.931131, -0.364651, 0.004932,
		63.733814, 58.210487, 59.540253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.472755, 58.512337, 60.192760>,  <63.082024, 58.465740, 59.536800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.472755, 58.512337, 60.192760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.707344, 58.564560, 59.873009>,  <63.848099, 58.595894, 59.681160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.707344, 58.564560, 59.873009>,  <63.472755, 58.512337, 60.192760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.707344, 58.564560, 59.873009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183329, 0.939916, 0.288009,
		0.788947, -0.315458, 0.527302,
		0.586475, 0.130554, -0.799376,
		63.883286, 58.603725, 59.633194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.142937, 58.817715, 60.389282>,  <63.472755, 58.512337, 60.192760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.142937, 58.817715, 60.389282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.022652, 58.897587, 60.016251>,  <63.950478, 58.945511, 59.792431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.022652, 58.897587, 60.016251>,  <64.142937, 58.817715, 60.389282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.022652, 58.897587, 60.016251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015196, 0.978716, 0.204656,
		0.953592, 0.047372, -0.297352,
		-0.300718, 0.199677, -0.932576,
		63.932438, 58.957489, 59.736477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.533340, 59.299351, 60.260670>,  <64.142937, 58.817715, 60.389282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.533340, 59.299351, 60.260670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.184814, 59.301926, 60.064400>,  <63.975697, 59.303471, 59.946636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.184814, 59.301926, 60.064400>,  <64.533340, 59.299351, 60.260670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.184814, 59.301926, 60.064400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186302, 0.920707, 0.342914,
		0.453976, 0.390202, -0.801030,
		-0.871319, 0.006442, -0.490674,
		63.923420, 59.303860, 59.917198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.555786, 59.889069, 59.830044>,  <64.533340, 59.299351, 60.260670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.555786, 59.889069, 59.830044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.182022, 59.782482, 59.924591>,  <63.957764, 59.718529, 59.981319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.182022, 59.782482, 59.924591>,  <64.555786, 59.889069, 59.830044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.182022, 59.782482, 59.924591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180947, 0.926695, 0.329386,
		-0.306813, 0.265012, -0.914130,
		-0.934411, -0.266469, 0.236369,
		63.901699, 59.702541, 59.995502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.026642, 60.222694, 59.219761>,  <64.555786, 59.889069, 59.830044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.026642, 60.222694, 59.219761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.002937, 60.407021, 59.573967>,  <64.988716, 60.517616, 59.786491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.002937, 60.407021, 59.573967>,  <65.026642, 60.222694, 59.219761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.002937, 60.407021, 59.573967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819876, -0.483584, 0.306513,
		0.569467, 0.744175, -0.349157,
		-0.059252, 0.460815, 0.885516,
		64.985161, 60.545265, 59.839622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.624580, 60.772999, 59.268826>,  <65.026642, 60.222694, 59.219761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.624580, 60.772999, 59.268826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.491203, 60.519783, 59.548279>,  <65.411179, 60.367855, 59.715950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.491203, 60.519783, 59.548279>,  <65.624580, 60.772999, 59.268826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.491203, 60.519783, 59.548279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921606, -0.375011, 0.100051,
		0.198658, 0.677223, 0.708452,
		-0.333434, -0.633037, 0.698631,
		65.391174, 60.329872, 59.757870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.894585, 60.871868, 59.859730>,  <65.624580, 60.772999, 59.268826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.894585, 60.871868, 59.859730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.814415, 60.481224, 59.890877>,  <65.766312, 60.246838, 59.909565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.814415, 60.481224, 59.890877>,  <65.894585, 60.871868, 59.859730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.814415, 60.481224, 59.890877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974379, -0.190429, 0.119673,
		-0.102047, 0.099856, 0.989755,
		-0.200428, -0.976609, 0.077865,
		65.754288, 60.188240, 59.914238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.209091, 60.696602, 60.534340>,  <65.894585, 60.871868, 59.859730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.209091, 60.696602, 60.534340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.163788, 60.392426, 60.278557>,  <66.136604, 60.209919, 60.125088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.163788, 60.392426, 60.278557>,  <66.209091, 60.696602, 60.534340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.163788, 60.392426, 60.278557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962833, -0.242832, 0.118256,
		-0.245207, -0.602296, 0.759679,
		-0.113249, -0.760442, -0.639455,
		66.129814, 60.164291, 60.086720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.412003, 60.084122, 60.869625>,  <66.209091, 60.696602, 60.534340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.412003, 60.084122, 60.869625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.452499, 60.096855, 60.471886>,  <66.476799, 60.104496, 60.233242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.452499, 60.096855, 60.471886>,  <66.412003, 60.084122, 60.869625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.452499, 60.096855, 60.471886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952801, -0.290651, 0.087704,
		-0.286217, -0.956300, -0.059759,
		0.101241, 0.031836, -0.994353,
		66.482872, 60.106407, 60.173580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.724365, 59.517605, 60.609905>,  <66.412003, 60.084122, 60.869625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.724365, 59.517605, 60.609905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.817055, 59.789131, 60.331192>,  <66.872665, 59.952049, 60.163963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.817055, 59.789131, 60.331192>,  <66.724365, 59.517605, 60.609905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.817055, 59.789131, 60.331192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972715, -0.153191, 0.174237,
		0.011534, -0.718147, -0.695795,
		0.231717, 0.678820, -0.696786,
		66.886566, 59.992779, 60.122158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.119156, 59.253597, 60.018833>,  <66.724365, 59.517605, 60.609905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.119156, 59.253597, 60.018833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.190063, 59.645813, 60.052597>,  <67.232613, 59.881142, 60.072857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.190063, 59.645813, 60.052597>,  <67.119156, 59.253597, 60.018833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.190063, 59.645813, 60.052597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977137, -0.185590, 0.103731,
		0.117378, 0.064092, -0.991017,
		0.177275, 0.980535, 0.084411,
		67.243248, 59.939972, 60.077919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.496109, 59.429848, 59.464676>,  <67.119156, 59.253597, 60.018833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.496109, 59.429848, 59.464676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.569000, 59.681419, 59.766998>,  <67.612740, 59.832363, 59.948391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.569000, 59.681419, 59.766998>,  <67.496109, 59.429848, 59.464676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.569000, 59.681419, 59.766998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964346, -0.264347, -0.012543,
		0.191906, 0.731144, -0.654676,
		0.182233, 0.628927, 0.755805,
		67.623672, 59.870098, 59.993740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.182007, 59.750668, 59.326302>,  <67.496109, 59.429848, 59.464676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.182007, 59.750668, 59.326302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.092537, 59.736809, 59.715919>,  <68.038857, 59.728493, 59.949692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.092537, 59.736809, 59.715919>,  <68.182007, 59.750668, 59.326302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.092537, 59.736809, 59.715919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878746, -0.439488, 0.186158,
		0.421633, 0.897580, 0.128746,
		-0.223674, -0.034644, 0.974048,
		68.025436, 59.726414, 60.008133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.696533, 60.122311, 59.755390>,  <68.182007, 59.750668, 59.326302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.696533, 60.122311, 59.755390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.527626, 59.811169, 59.941566>,  <68.426285, 59.624481, 60.053272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.527626, 59.811169, 59.941566>,  <68.696533, 60.122311, 59.755390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.527626, 59.811169, 59.941566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845903, -0.522679, -0.106087,
		0.325796, 0.348921, 0.878699,
		-0.422261, -0.777857, 0.465440,
		68.400948, 59.577812, 60.081200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.228386, 59.729851, 60.285690>,  <68.696533, 60.122311, 59.755390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.228386, 59.729851, 60.285690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.953369, 59.474831, 60.146652>,  <68.788361, 59.321819, 60.063229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.953369, 59.474831, 60.146652>,  <69.228386, 59.729851, 60.285690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.953369, 59.474831, 60.146652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723774, -0.640352, -0.257102,
		-0.058669, -0.428348, 0.901707,
		-0.687539, -0.637548, -0.347595,
		68.747108, 59.283566, 60.042374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.443588, 59.058697, 60.573139>,  <69.228386, 59.729851, 60.285690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.443588, 59.058697, 60.573139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.222061, 59.022106, 60.242104>,  <69.089142, 59.000153, 60.043480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.222061, 59.022106, 60.242104>,  <69.443588, 59.058697, 60.573139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.222061, 59.022106, 60.242104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682510, -0.619197, -0.388298,
		-0.476923, -0.779890, 0.405360,
		-0.553827, -0.091474, -0.827592,
		69.055916, 58.994663, 59.993828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.263451, 58.279957, 60.400108>,  <69.443588, 59.058697, 60.573139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.263451, 58.279957, 60.400108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.304001, 58.487740, 60.060722>,  <69.328331, 58.612411, 59.857090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.304001, 58.487740, 60.060722>,  <69.263451, 58.279957, 60.400108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.304001, 58.487740, 60.060722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665916, -0.669044, -0.330055,
		-0.739108, -0.531547, -0.413736,
		0.101368, 0.519459, -0.848461,
		69.334412, 58.643578, 59.806183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.329468, 57.762272, 59.759315>,  <69.263451, 58.279957, 60.400108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.329468, 57.762272, 59.759315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.539696, 58.099888, 59.716675>,  <69.665833, 58.302456, 59.691090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.539696, 58.099888, 59.716675>,  <69.329468, 57.762272, 59.759315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.539696, 58.099888, 59.716675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802269, -0.533417, -0.268011,
		-0.283078, 0.055333, -0.957500,
		0.525577, 0.844040, -0.106606,
		69.697372, 58.353100, 59.684692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.823830, 57.526882, 59.253216>,  <69.329468, 57.762272, 59.759315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.823830, 57.526882, 59.253216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.963043, 57.870747, 59.402802>,  <70.046570, 58.077065, 59.492554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.963043, 57.870747, 59.402802>,  <69.823830, 57.526882, 59.253216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.963043, 57.870747, 59.402802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936260, -0.298375, -0.185443,
		-0.047837, 0.414667, -0.908715,
		0.348035, 0.859665, 0.373963,
		70.067451, 58.128647, 59.514992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.433037, 57.373104, 59.046280>,  <69.823830, 57.526882, 59.253216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.433037, 57.373104, 59.046280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.516457, 57.685509, 59.281746>,  <70.566505, 57.872952, 59.423027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.516457, 57.685509, 59.281746>,  <70.433037, 57.373104, 59.046280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.516457, 57.685509, 59.281746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947216, -0.311149, 0.077253,
		0.243499, 0.541483, -0.804677,
		0.208543, 0.781014, 0.588666,
		70.579018, 57.919811, 59.458347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.010323, 57.099350, 59.582058>,  <70.433037, 57.373104, 59.046280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.010323, 57.099350, 59.582058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.364281, 57.105865, 59.395859>,  <71.576653, 57.109776, 59.284138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.364281, 57.105865, 59.395859>,  <71.010323, 57.099350, 59.582058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.364281, 57.105865, 59.395859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192777, 0.922582, -0.334185,
		0.424021, 0.385457, 0.819530,
		0.884897, 0.016285, -0.465502,
		71.629753, 57.110752, 59.256207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.711220, 56.760693, 59.939552>,  <71.010323, 57.099350, 59.582058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.711220, 56.760693, 59.939552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.971336, 56.894005, 60.212624>,  <72.127403, 56.973991, 60.376469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.971336, 56.894005, 60.212624>,  <71.711220, 56.760693, 59.939552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.971336, 56.894005, 60.212624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750972, 0.417751, 0.511395,
		-0.114754, -0.845228, 0.521940,
		0.650286, 0.333278, 0.682682,
		72.166420, 56.993988, 60.417427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.910393, 57.433689, 59.655071>,  <71.711220, 56.760693, 59.939552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.910393, 57.433689, 59.655071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.774643, 57.809780, 59.666382>,  <71.693192, 58.035435, 59.673168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.774643, 57.809780, 59.666382>,  <71.910393, 57.433689, 59.655071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.774643, 57.809780, 59.666382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366686, -0.159922, 0.916497,
		0.866235, 0.300672, 0.399041,
		-0.339381, 0.940224, 0.028278,
		71.672829, 58.091846, 59.674866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.236092, 58.117477, 59.908112>,  <71.910393, 57.433689, 59.655071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.236092, 58.117477, 59.908112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.191940, 57.862843, 60.213417>,  <72.165451, 57.710060, 60.396599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.191940, 57.862843, 60.213417>,  <72.236092, 58.117477, 59.908112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.191940, 57.862843, 60.213417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836923, -0.473742, -0.274096,
		0.536077, 0.608542, 0.585063,
		-0.110370, -0.636589, 0.763265,
		72.158829, 57.671867, 60.442398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.972458, 57.956455, 60.234131>,  <72.236092, 58.117477, 59.908112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.972458, 57.956455, 60.234131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.721260, 57.667465, 60.349823>,  <72.570541, 57.494072, 60.419239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.721260, 57.667465, 60.349823>,  <72.972458, 57.956455, 60.234131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.721260, 57.667465, 60.349823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735648, -0.672357, -0.082215,
		0.253861, 0.161138, 0.953724,
		-0.627995, -0.722476, 0.289226,
		72.532860, 57.450722, 60.436592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.101952, 57.680019, 60.941772>,  <72.972458, 57.956455, 60.234131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.101952, 57.680019, 60.941772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.950485, 57.412643, 60.685715>,  <72.859604, 57.252216, 60.532078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.950485, 57.412643, 60.685715>,  <73.101952, 57.680019, 60.941772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.950485, 57.412643, 60.685715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806603, -0.577527, 0.125916,
		-0.453870, -0.468664, 0.757863,
		-0.378674, -0.668444, -0.640148,
		72.836884, 57.212109, 60.493671>
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
