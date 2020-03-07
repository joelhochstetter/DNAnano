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
	<0.678276, 2.251986, 2.874225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.345947, 2.330083, 3.082692>,  <0.146550, 2.376941, 3.207772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.345947, 2.330083, 3.082692>,  <0.678276, 2.251986, 2.874225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.345947, 2.330083, 3.082692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055815, 0.960954, -0.271022,
		-0.553732, -0.196082, -0.809279,
		-0.830822, 0.195243, 0.521167,
		0.096701, 2.388656, 3.239042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.186778, 2.517382, 2.420404>,  <0.678276, 2.251986, 2.874225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.186778, 2.517382, 2.420404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.148315, 2.649600, 2.795956>,  <0.125238, 2.728930, 3.021287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.148315, 2.649600, 2.795956>,  <0.186778, 2.517382, 2.420404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.148315, 2.649600, 2.795956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025630, 0.943760, -0.329637,
		-0.995036, -0.007633, -0.099220,
		-0.096156, 0.330544, 0.938879,
		0.119469, 2.748763, 3.077620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.415243, 3.027837, 2.548126>,  <0.186778, 2.517382, 2.420404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.415243, 3.027837, 2.548126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.047909, 3.037275, 2.706165>,  <0.172492, 3.042937, 2.800989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.047909, 3.037275, 2.706165>,  <-0.415243, 3.027837, 2.548126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.047909, 3.037275, 2.706165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185247, 0.856520, -0.481722,
		-0.349775, 0.515573, 0.782203,
		0.918336, 0.023594, 0.395098,
		0.227592, 3.044353, 2.824695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.238849, 3.735880, 2.540284>,  <-0.415243, 3.027837, 2.548126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.238849, 3.735880, 2.540284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.115273, 3.560766, 2.602999>,  <0.327745, 3.455698, 2.640628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.115273, 3.560766, 2.602999>,  <-0.238849, 3.735880, 2.540284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.115273, 3.560766, 2.602999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456387, 0.753359, -0.473455,
		0.089155, 0.490707, 0.866751,
		0.885303, -0.437785, 0.156787,
		0.380864, 3.429431, 2.650035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.224191, 4.216043, 2.969826>,  <-0.238849, 3.735880, 2.540284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.224191, 4.216043, 2.969826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.408264, 3.960817, 2.722891>,  <0.518708, 3.807682, 2.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.408264, 3.960817, 2.722891>,  <0.224191, 4.216043, 2.969826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.408264, 3.960817, 2.722891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351746, 0.769468, -0.533099,
		0.815172, 0.028178, 0.578533,
		0.460184, -0.638064, -0.617337,
		0.546319, 3.769398, 2.537690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.858297, 4.347706, 2.979176>,  <0.224191, 4.216043, 2.969826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.858297, 4.347706, 2.979176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.780659, 4.175294, 2.626690>,  <0.734076, 4.071847, 2.415198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.780659, 4.175294, 2.626690>,  <0.858297, 4.347706, 2.979176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.780659, 4.175294, 2.626690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465828, 0.750062, -0.469481,
		0.863326, -0.501619, 0.055201,
		-0.194096, -0.431029, -0.881216,
		0.722430, 4.045986, 2.362325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.409997, 4.404054, 2.566111>,  <0.858297, 4.347706, 2.979176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.409997, 4.404054, 2.566111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.136303, 4.336885, 2.282245>,  <0.972086, 4.296584, 2.111926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.136303, 4.336885, 2.282245>,  <1.409997, 4.404054, 2.566111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.136303, 4.336885, 2.282245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409934, 0.716264, -0.564730,
		0.603137, -0.677325, -0.421256,
		-0.684236, -0.167922, -0.709664,
		0.931032, 4.286508, 2.069346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.788430, 4.343428, 1.916775>,  <1.409997, 4.404054, 2.566111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.788430, 4.343428, 1.916775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.412842, 4.471812, 1.867270>,  <1.187489, 4.548843, 1.837567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.412842, 4.471812, 1.867270>,  <1.788430, 4.343428, 1.916775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.412842, 4.471812, 1.867270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332419, 0.754063, -0.566468,
		-0.088489, -0.573038, -0.814738,
		-0.938971, 0.320961, -0.123763,
		1.131150, 4.568100, 1.830141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.384028, 5.837264, 1.401856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192215, 5.655679, 1.101465>,  <1.077127, 5.546728, 0.921231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192215, 5.655679, 1.101465>,  <1.384028, 5.837264, 1.401856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.192215, 5.655679, 1.101465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189356, -0.782098, 0.593689,
		-0.856850, 0.426896, 0.289082,
		-0.479534, -0.453963, -0.750976,
		1.048355, 5.519490, 0.876172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.764867, 5.540938, 1.646644>,  <1.384028, 5.837264, 1.401856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.764867, 5.540938, 1.646644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887756, 5.329636, 1.330023>,  <0.961490, 5.202854, 1.140050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887756, 5.329636, 1.330023>,  <0.764867, 5.540938, 1.646644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.887756, 5.329636, 1.330023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033157, -0.837218, 0.545863,
		-0.951060, -0.141456, -0.274729,
		0.307224, -0.528257, -0.791554,
		0.979924, 5.171158, 1.092557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.245232, 5.134132, 1.463747>,  <0.764867, 5.540938, 1.646644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.245232, 5.134132, 1.463747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.587769, 4.948758, 1.372614>,  <0.793290, 4.837534, 1.317934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.587769, 4.948758, 1.372614>,  <0.245232, 5.134132, 1.463747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.587769, 4.948758, 1.372614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322895, -0.824821, 0.464121,
		-0.403011, -0.323880, -0.855970,
		0.856341, -0.463434, -0.227833,
		0.844671, 4.809728, 1.304264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.086825, 4.476470, 1.110123>,  <0.245232, 5.134132, 1.463747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.086825, 4.476470, 1.110123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.447266, 4.415100, 1.272346>,  <0.663530, 4.378278, 1.369680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.447266, 4.415100, 1.272346>,  <0.086825, 4.476470, 1.110123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.447266, 4.415100, 1.272346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330342, -0.848763, 0.412887,
		0.280875, -0.506026, -0.815504,
		0.901101, -0.153426, 0.405558,
		0.717596, 4.369072, 1.394014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.155580, 3.782040, 1.241892>,  <0.086825, 4.476470, 1.110123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.155580, 3.782040, 1.241892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438942, 3.937051, 1.477854>,  <0.608959, 4.030057, 1.619431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.438942, 3.937051, 1.477854>,  <0.155580, 3.782040, 1.241892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.438942, 3.937051, 1.477854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162717, -0.723604, 0.670761,
		0.686794, -0.571157, -0.449547,
		0.708404, 0.387526, 0.589904,
		0.651463, 4.053309, 1.654825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.573729, 3.226922, 1.341429>,  <0.155580, 3.782040, 1.241892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.573729, 3.226922, 1.341429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.627304, 3.490011, 1.637932>,  <0.659449, 3.647865, 1.815833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.627304, 3.490011, 1.637932>,  <0.573729, 3.226922, 1.341429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.627304, 3.490011, 1.637932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197568, -0.715258, 0.670353,
		0.971096, -0.236235, 0.034144,
		0.133939, 0.657723, 0.741256,
		0.667486, 3.687328, 1.860309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.012894, 2.865785, 1.713477>,  <0.573729, 3.226922, 1.341429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.012894, 2.865785, 1.713477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843651, 3.139719, 1.950788>,  <0.742105, 3.304080, 2.093175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843651, 3.139719, 1.950788>,  <1.012894, 2.865785, 1.713477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.843651, 3.139719, 1.950788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398676, -0.728697, 0.556828,
		0.813657, -0.000928, 0.581345,
		-0.423108, 0.684835, 0.593279,
		0.716718, 3.345170, 2.128772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.319743, 2.770553, 2.282846>,  <1.012894, 2.865785, 1.713477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.319743, 2.770553, 2.282846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.962158, 2.939129, 2.343798>,  <0.747607, 3.040275, 2.380369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.962158, 2.939129, 2.343798>,  <1.319743, 2.770553, 2.282846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.962158, 2.939129, 2.343798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195729, -0.673057, 0.713221,
		0.403140, 0.607768, 0.684176,
		-0.893962, 0.421441, 0.152379,
		0.693970, 3.065561, 2.389511>
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
