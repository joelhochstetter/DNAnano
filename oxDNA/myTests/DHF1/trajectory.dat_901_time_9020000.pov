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
	<2.170197, 4.019756, 0.010722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.859604, 3.792747, -0.098818>,  <1.673248, 3.656542, -0.164542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.859604, 3.792747, -0.098818>,  <2.170197, 4.019756, 0.010722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.859604, 3.792747, -0.098818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563059, 0.429763, 0.705881,
		-0.282912, 0.702299, -0.653251,
		-0.776482, -0.567521, -0.273850,
		1.626659, 3.622491, -0.180973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.571038, 4.456798, -0.126108>,  <2.170197, 4.019756, 0.010722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.571038, 4.456798, -0.126108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448349, 4.093803, -0.011292>,  <1.374736, 3.876007, 0.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.448349, 4.093803, -0.011292>,  <1.571038, 4.456798, -0.126108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.448349, 4.093803, -0.011292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617375, 0.419218, 0.665661,
		-0.724410, 0.026961, -0.688842,
		-0.306722, -0.907485, 0.287041,
		1.356332, 3.821558, 0.074821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.833613, 4.415974, -0.104943>,  <1.571038, 4.456798, -0.126108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.833613, 4.415974, -0.104943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.989288, 4.157566, 0.157717>,  <1.082694, 4.002521, 0.315313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.989288, 4.157566, 0.157717>,  <0.833613, 4.415974, -0.104943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.989288, 4.157566, 0.157717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576071, 0.385563, 0.720752,
		-0.718800, -0.658786, -0.222097,
		0.389189, -0.646020, 0.656650,
		1.106045, 3.963760, 0.354712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.381199, 3.892842, 0.279223>,  <0.833613, 4.415974, -0.104943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.381199, 3.892842, 0.279223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683899, 4.040867, 0.494772>,  <0.865519, 4.129682, 0.624102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683899, 4.040867, 0.494772>,  <0.381199, 3.892842, 0.279223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.683899, 4.040867, 0.494772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652762, 0.472030, 0.592528,
		-0.035093, -0.800151, 0.598771,
		0.756750, 0.370062, 0.538873,
		0.910924, 4.151886, 0.656434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.233820, 3.830385, 0.964359>,  <0.381199, 3.892842, 0.279223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.233820, 3.830385, 0.964359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.477219, 4.143345, 0.911320>,  <0.623258, 4.331121, 0.879496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.477219, 4.143345, 0.911320>,  <0.233820, 3.830385, 0.964359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.477219, 4.143345, 0.911320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623884, 0.574929, 0.529363,
		0.490407, -0.239391, 0.837969,
		0.608498, 0.782399, -0.132597,
		0.659768, 4.378065, 0.871540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.285961, 4.033957, 1.621545>,  <0.233820, 3.830385, 0.964359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.285961, 4.033957, 1.621545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.382607, 4.347488, 1.392727>,  <0.440594, 4.535607, 1.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.382607, 4.347488, 1.392727>,  <0.285961, 4.033957, 1.621545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.382607, 4.347488, 1.392727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503836, 0.605154, 0.616392,
		0.829321, 0.139289, 0.541133,
		0.241612, 0.783829, -0.572046,
		0.455090, 4.582637, 1.221113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.271865, 4.630256, 2.027122>,  <0.285961, 4.033957, 1.621545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.271865, 4.630256, 2.027122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.296623, 4.825180, 1.678709>,  <0.311478, 4.942135, 1.469661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.296623, 4.825180, 1.678709>,  <0.271865, 4.630256, 2.027122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.296623, 4.825180, 1.678709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355824, 0.826136, 0.436908,
		0.932501, 0.282891, 0.224532,
		0.061897, 0.487311, -0.871032,
		0.315192, 4.971373, 1.417399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.502484, 5.287845, 2.182895>,  <0.271865, 4.630256, 2.027122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.502484, 5.287845, 2.182895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.338585, 5.325333, 1.819946>,  <0.240245, 5.347826, 1.602177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.338585, 5.325333, 1.819946>,  <0.502484, 5.287845, 2.182895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.338585, 5.325333, 1.819946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473041, 0.828679, 0.299206,
		0.779961, 0.551823, -0.295216,
		-0.409748, 0.093720, -0.907372,
		0.215661, 5.353448, 1.547735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.809009, 0.435888, 2.454548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.796928, 0.709019, 2.162565>,  <-0.789680, 0.872897, 1.987376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.796928, 0.709019, 2.162565>,  <-0.809009, 0.435888, 2.454548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.796928, 0.709019, 2.162565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379767, -0.683365, -0.623530,
		-0.924589, -0.258381, -0.279953,
		0.030202, 0.682826, -0.729956,
		-0.787868, 0.913867, 1.943578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.058069, 0.122212, 1.795445>,  <-0.809009, 0.435888, 2.454548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.058069, 0.122212, 1.795445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.836327, 0.441780, 1.702137>,  <-0.703281, 0.633521, 1.646152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.836327, 0.441780, 1.702137>,  <-1.058069, 0.122212, 1.795445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.836327, 0.441780, 1.702137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436676, -0.517800, -0.735661,
		-0.708523, 0.305955, -0.635915,
		0.554356, 0.798921, -0.233270,
		-0.670020, 0.681457, 1.632156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.870656, 0.166475, 1.071002>,  <-1.058069, 0.122212, 1.795445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.870656, 0.166475, 1.071002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.591415, 0.417675, 1.208563>,  <-0.423871, 0.568395, 1.291099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.591415, 0.417675, 1.208563>,  <-0.870656, 0.166475, 1.071002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.591415, 0.417675, 1.208563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673778, -0.413701, -0.612270,
		-0.242233, 0.659141, -0.711938,
		0.698102, 0.628000, 0.343903,
		-0.381985, 0.606075, 1.311734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.490918, 0.418109, 0.440711>,  <-0.870656, 0.166475, 1.071002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.490918, 0.418109, 0.440711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.259331, 0.395676, 0.766079>,  <-0.120379, 0.382216, 0.961300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.259331, 0.395676, 0.766079>,  <-0.490918, 0.418109, 0.440711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.259331, 0.395676, 0.766079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643143, -0.581790, -0.497883,
		0.501162, 0.811403, -0.300768,
		0.578967, -0.056084, 0.813419,
		-0.085640, 0.378851, 1.010105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.243868, 0.578975, 0.300629>,  <-0.490918, 0.418109, 0.440711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.243868, 0.578975, 0.300629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257263, 0.371323, 0.642244>,  <0.265300, 0.246731, 0.847214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257263, 0.371323, 0.642244>,  <0.243868, 0.578975, 0.300629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.257263, 0.371323, 0.642244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748536, -0.553193, -0.365611,
		0.662248, 0.651522, 0.370063,
		0.033487, -0.519130, 0.854039,
		0.267309, 0.215584, 0.898456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.873626, 0.576978, 0.527561>,  <0.243868, 0.578975, 0.300629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.873626, 0.576978, 0.527561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745560, 0.277420, 0.759647>,  <0.668720, 0.097686, 0.898899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745560, 0.277420, 0.759647>,  <0.873626, 0.576978, 0.527561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.745560, 0.277420, 0.759647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706401, -0.596821, -0.380529,
		0.631261, 0.288033, 0.720101,
		-0.320166, -0.748894, 0.580217,
		0.649510, 0.052752, 0.933712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.463234, 0.372053, 0.843762>,  <0.873626, 0.576978, 0.527561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.463234, 0.372053, 0.843762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.208748, 0.064121, 0.864132>,  <1.056056, -0.120638, 0.876354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.208748, 0.064121, 0.864132>,  <1.463234, 0.372053, 0.843762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.208748, 0.064121, 0.864132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731493, -0.622881, -0.277377,
		0.245253, -0.139220, 0.959411,
		-0.636215, -0.769829, 0.050925,
		1.017883, -0.166828, 0.879409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.795991, -0.170604, 1.243112>,  <1.463234, 0.372053, 0.843762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.795991, -0.170604, 1.243112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.547989, -0.312679, 0.963274>,  <1.399188, -0.397925, 0.795371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.547989, -0.312679, 0.963274>,  <1.795991, -0.170604, 1.243112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.547989, -0.312679, 0.963274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691368, -0.668894, -0.273112,
		-0.370949, -0.653009, 0.660285,
		-0.620005, -0.355189, -0.699596,
		1.361987, -0.419236, 0.753395>
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
