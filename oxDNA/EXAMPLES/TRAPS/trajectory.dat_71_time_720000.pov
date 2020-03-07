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
	<36.455406, 53.353802, 49.854485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439873, 53.190475, 50.219292>,  <36.430553, 53.092480, 50.438175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439873, 53.190475, 50.219292>,  <36.455406, 53.353802, 49.854485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439873, 53.190475, 50.219292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873743, 0.428968, 0.229257,
		-0.484834, 0.805772, 0.340099,
		-0.038837, -0.408311, 0.912016,
		36.428223, 53.067982, 50.492897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540409, 53.823872, 50.488754>,  <36.455406, 53.353802, 49.854485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540409, 53.823872, 50.488754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696613, 53.475266, 50.607391>,  <36.790337, 53.266102, 50.678574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696613, 53.475266, 50.607391>,  <36.540409, 53.823872, 50.488754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696613, 53.475266, 50.607391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872868, 0.452914, 0.181577,
		-0.292577, 0.187978, 0.937584,
		0.390512, -0.871512, 0.296592,
		36.813766, 53.213810, 50.696369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066685, 53.693714, 51.047115>,  <36.540409, 53.823872, 50.488754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066685, 53.693714, 51.047115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152008, 53.402523, 50.786484>,  <37.203201, 53.227810, 50.630104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152008, 53.402523, 50.786484>,  <37.066685, 53.693714, 51.047115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152008, 53.402523, 50.786484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943642, 0.326264, -0.055601,
		0.253063, -0.602995, 0.756543,
		0.213306, -0.727976, -0.651576,
		37.216000, 53.184132, 50.591011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741890, 53.226036, 51.181473>,  <37.066685, 53.693714, 51.047115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741890, 53.226036, 51.181473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808411, 53.217358, 50.787140>,  <37.848324, 53.212151, 50.550541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808411, 53.217358, 50.787140>,  <37.741890, 53.226036, 51.181473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808411, 53.217358, 50.787140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970389, 0.181215, 0.159707,
		0.175182, -0.983204, 0.051193,
		0.166302, -0.021699, -0.985836,
		37.858299, 53.210850, 50.491390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442814, 53.060562, 51.158066>,  <37.741890, 53.226036, 51.181473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442814, 53.060562, 51.158066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357784, 53.261898, 50.823051>,  <38.306767, 53.382702, 50.622044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357784, 53.261898, 50.823051>,  <38.442814, 53.060562, 51.158066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357784, 53.261898, 50.823051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888924, 0.455518, 0.048145,
		0.405745, -0.734268, -0.544262,
		-0.212570, 0.503342, -0.837533,
		38.294014, 53.412899, 50.571793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790867, 52.786800, 50.579796>,  <38.442814, 53.060562, 51.158066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790867, 52.786800, 50.579796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700676, 53.176285, 50.592781>,  <38.646561, 53.409973, 50.600571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700676, 53.176285, 50.592781>,  <38.790867, 52.786800, 50.579796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700676, 53.176285, 50.592781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966051, 0.219144, 0.136823,
		0.126112, 0.062208, -0.990063,
		-0.225478, 0.973707, 0.032460,
		38.633034, 53.468395, 50.602520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462673, 53.091385, 50.492611>,  <38.790867, 52.786800, 50.579796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462673, 53.091385, 50.492611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256790, 53.428658, 50.554737>,  <39.133263, 53.631020, 50.592014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256790, 53.428658, 50.554737>,  <39.462673, 53.091385, 50.492611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256790, 53.428658, 50.554737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847655, 0.527645, -0.055434,
		-0.128695, 0.103125, -0.986308,
		-0.514703, 0.843182, 0.155320,
		39.102379, 53.681614, 50.601334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790539, 53.605705, 50.132523>,  <39.462673, 53.091385, 50.492611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790539, 53.605705, 50.132523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597599, 53.813812, 50.414421>,  <39.481834, 53.938675, 50.583561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597599, 53.813812, 50.414421>,  <39.790539, 53.605705, 50.132523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597599, 53.813812, 50.414421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827207, 0.535233, 0.171040,
		-0.288216, 0.665470, -0.688536,
		-0.482349, 0.520265, 0.704744,
		39.452896, 53.969891, 50.625843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944035, 54.342560, 49.944393>,  <39.790539, 53.605705, 50.132523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944035, 54.342560, 49.944393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901649, 54.144943, 50.289574>,  <39.876217, 54.026375, 50.496681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901649, 54.144943, 50.289574>,  <39.944035, 54.342560, 49.944393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901649, 54.144943, 50.289574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980500, 0.092526, 0.173372,
		-0.165500, 0.864500, 0.474604,
		-0.105967, -0.494043, 0.862956,
		39.869858, 53.996731, 50.548462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387741, 54.534996, 50.443096>,  <39.944035, 54.342560, 49.944393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387741, 54.534996, 50.443096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309067, 54.155205, 50.540913>,  <40.261864, 53.927330, 50.599602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309067, 54.155205, 50.540913>,  <40.387741, 54.534996, 50.443096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309067, 54.155205, 50.540913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967850, -0.148135, 0.203278,
		-0.156783, 0.276664, 0.948091,
		-0.196685, -0.949480, 0.244544,
		40.250061, 53.870361, 50.614277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581715, 54.389275, 51.124290>,  <40.387741, 54.534996, 50.443096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581715, 54.389275, 51.124290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594772, 54.056355, 50.902946>,  <40.602608, 53.856602, 50.770142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594772, 54.056355, 50.902946>,  <40.581715, 54.389275, 51.124290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594772, 54.056355, 50.902946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949566, -0.146930, 0.277013,
		-0.311864, -0.534494, 0.785530,
		0.032644, -0.832303, -0.553359,
		40.604565, 53.806664, 50.736938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923878, 53.715797, 51.445503>,  <40.581715, 54.389275, 51.124290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923878, 53.715797, 51.445503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975143, 53.735008, 51.049267>,  <41.005901, 53.746532, 50.811523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975143, 53.735008, 51.049267>,  <40.923878, 53.715797, 51.445503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975143, 53.735008, 51.049267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988477, -0.087307, 0.123657,
		-0.080547, -0.995023, -0.058660,
		0.128163, 0.048024, -0.990589,
		41.013592, 53.749416, 50.752090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393520, 53.081627, 51.260284>,  <40.923878, 53.715797, 51.445503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393520, 53.081627, 51.260284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413845, 53.392830, 51.009808>,  <41.426041, 53.579552, 50.859520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413845, 53.392830, 51.009808>,  <41.393520, 53.081627, 51.260284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413845, 53.392830, 51.009808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985282, 0.063415, 0.158741,
		0.163213, -0.625046, -0.763335,
		0.050813, 0.778008, -0.626196,
		41.429089, 53.626232, 50.821949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874298, 52.908783, 50.663479>,  <41.393520, 53.081627, 51.260284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874298, 52.908783, 50.663479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848602, 53.289108, 50.784691>,  <41.833187, 53.517303, 50.857418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848602, 53.289108, 50.784691>,  <41.874298, 52.908783, 50.663479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848602, 53.289108, 50.784691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994881, 0.037279, 0.093923,
		0.078006, 0.307515, -0.948340,
		-0.064236, 0.950813, 0.303033,
		41.829330, 53.574352, 50.875599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156624, 53.417030, 50.110416>,  <41.874298, 52.908783, 50.663479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156624, 53.417030, 50.110416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236053, 53.501698, 50.493198>,  <42.283710, 53.552498, 50.722870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236053, 53.501698, 50.493198>,  <42.156624, 53.417030, 50.110416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236053, 53.501698, 50.493198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972937, 0.075144, -0.218512,
		-0.118160, 0.974449, -0.191014,
		0.198575, 0.211664, 0.956957,
		42.295628, 53.565197, 50.780285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554306, 53.998840, 50.257076>,  <42.156624, 53.417030, 50.110416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554306, 53.998840, 50.257076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646587, 53.770847, 50.572517>,  <42.701958, 53.634052, 50.761784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646587, 53.770847, 50.572517>,  <42.554306, 53.998840, 50.257076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646587, 53.770847, 50.572517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972950, 0.145125, -0.179744,
		-0.011995, 0.808739, 0.588046,
		0.230706, -0.569983, 0.788603,
		42.715797, 53.599854, 50.809097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078449, 54.391373, 50.763119>,  <42.554306, 53.998840, 50.257076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078449, 54.391373, 50.763119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100456, 53.996391, 50.822334>,  <43.113663, 53.759403, 50.857864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100456, 53.996391, 50.822334>,  <43.078449, 54.391373, 50.763119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100456, 53.996391, 50.822334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950825, 0.006556, -0.309658,
		0.304801, 0.157796, 0.939253,
		0.055021, -0.987450, 0.148039,
		43.116962, 53.700157, 50.866745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720535, 54.045761, 51.231110>,  <43.078449, 54.391373, 50.763119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720535, 54.045761, 51.231110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606354, 53.795464, 50.940742>,  <43.537846, 53.645287, 50.766521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606354, 53.795464, 50.940742>,  <43.720535, 54.045761, 51.231110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606354, 53.795464, 50.940742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952195, -0.099184, -0.288941,
		0.108802, -0.773700, 0.624140,
		-0.285458, -0.625741, -0.725922,
		43.520718, 53.607742, 50.722965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396488, 54.309776, 51.628517>,  <43.720535, 54.045761, 51.231110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396488, 54.309776, 51.628517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130890, 54.375931, 51.920204>,  <43.971531, 54.415623, 52.095215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130890, 54.375931, 51.920204>,  <44.396488, 54.309776, 51.628517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130890, 54.375931, 51.920204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747733, 0.143797, 0.648242,
		0.002350, 0.975690, -0.219143,
		-0.663995, 0.165384, 0.729218,
		43.931690, 54.425545, 52.138969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292999, 55.000641, 51.945377>,  <44.396488, 54.309776, 51.628517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292999, 55.000641, 51.945377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264748, 54.664219, 52.159908>,  <44.247799, 54.462368, 52.288628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264748, 54.664219, 52.159908>,  <44.292999, 55.000641, 51.945377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264748, 54.664219, 52.159908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760348, 0.302630, 0.574705,
		-0.645665, 0.448380, 0.618120,
		-0.070624, -0.841053, 0.536323,
		44.243561, 54.411903, 52.320805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201553, 55.121761, 52.657959>,  <44.292999, 55.000641, 51.945377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201553, 55.121761, 52.657959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387527, 54.769119, 52.625462>,  <44.499111, 54.557533, 52.605961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387527, 54.769119, 52.625462>,  <44.201553, 55.121761, 52.657959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387527, 54.769119, 52.625462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754078, 0.346244, 0.558105,
		-0.463899, -0.320750, 0.825783,
		0.464935, -0.881609, -0.081248,
		44.527008, 54.504635, 52.601086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437618, 54.892010, 53.301865>,  <44.201553, 55.121761, 52.657959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437618, 54.892010, 53.301865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647938, 54.696701, 53.023262>,  <44.774128, 54.579514, 52.856098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647938, 54.696701, 53.023262>,  <44.437618, 54.892010, 53.301865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647938, 54.696701, 53.023262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849937, 0.268981, 0.453051,
		-0.033866, -0.830203, 0.556432,
		0.525794, -0.488276, -0.696511,
		44.805676, 54.550217, 52.814308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138031, 54.994431, 53.618458>,  <44.437618, 54.892010, 53.301865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138031, 54.994431, 53.618458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181873, 54.755859, 53.300400>,  <45.208179, 54.612717, 53.109566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181873, 54.755859, 53.300400>,  <45.138031, 54.994431, 53.618458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181873, 54.755859, 53.300400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923141, -0.235498, 0.303894,
		-0.368507, -0.767344, 0.524772,
		0.109609, -0.596425, -0.795149,
		45.214756, 54.576931, 53.061855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549175, 54.588871, 53.858334>,  <45.138031, 54.994431, 53.618458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549175, 54.588871, 53.858334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590313, 54.509426, 53.468468>,  <45.614994, 54.461761, 53.234547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590313, 54.509426, 53.468468>,  <45.549175, 54.588871, 53.858334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590313, 54.509426, 53.468468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993761, -0.022008, 0.109340,
		-0.043167, -0.979831, 0.195107,
		0.102841, -0.198610, -0.974668,
		45.621166, 54.449844, 53.176067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817688, 53.930435, 53.777355>,  <45.549175, 54.588871, 53.858334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817688, 53.930435, 53.777355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889198, 54.230804, 53.523064>,  <45.932106, 54.411026, 53.370487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889198, 54.230804, 53.523064>,  <45.817688, 53.930435, 53.777355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889198, 54.230804, 53.523064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966203, -0.012029, 0.257503,
		0.185718, -0.660283, -0.727692,
		0.178778, 0.750921, -0.635733,
		45.942833, 54.456081, 53.332344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338978, 53.734703, 53.254784>,  <45.817688, 53.930435, 53.777355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338978, 53.734703, 53.254784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331722, 54.131382, 53.305702>,  <46.327370, 54.369389, 53.336254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331722, 54.131382, 53.305702>,  <46.338978, 53.734703, 53.254784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331722, 54.131382, 53.305702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970415, -0.013192, 0.241083,
		0.240761, 0.127906, -0.962120,
		-0.018143, 0.991699, 0.127298,
		46.326279, 54.428890, 53.343891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801128, 54.096558, 52.752884>,  <46.338978, 53.734703, 53.254784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801128, 54.096558, 52.752884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792141, 54.318466, 53.085564>,  <46.786747, 54.451611, 53.285172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792141, 54.318466, 53.085564>,  <46.801128, 54.096558, 52.752884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792141, 54.318466, 53.085564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999584, -0.002569, 0.028721,
		0.018070, 0.831997, -0.554485,
		-0.022472, 0.554774, 0.831698,
		46.785400, 54.484898, 53.335072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200542, 54.657139, 52.699406>,  <46.801128, 54.096558, 52.752884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200542, 54.657139, 52.699406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199352, 54.553940, 53.085861>,  <47.198639, 54.492020, 53.317734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199352, 54.553940, 53.085861>,  <47.200542, 54.657139, 52.699406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199352, 54.553940, 53.085861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995145, -0.095812, -0.022524,
		0.098379, 0.961383, 0.257028,
		-0.002972, -0.257996, 0.966141,
		47.198460, 54.476540, 53.375702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.657200, 55.171379, 53.112862>,  <47.200542, 54.657139, 52.699406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.657200, 55.171379, 53.112862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.644360, 54.791756, 53.238251>,  <47.636658, 54.563984, 53.313484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.644360, 54.791756, 53.238251>,  <47.657200, 55.171379, 53.112862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.644360, 54.791756, 53.238251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993225, -0.065334, -0.096104,
		0.111688, 0.308264, 0.944722,
		-0.032097, -0.949054, 0.313473,
		47.634731, 54.507038, 53.332294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.081238, 54.948685, 53.759476>,  <47.657200, 55.171379, 53.112862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.081238, 54.948685, 53.759476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.036106, 54.654709, 53.492004>,  <48.009026, 54.478321, 53.331520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.036106, 54.654709, 53.492004>,  <48.081238, 54.948685, 53.759476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.036106, 54.654709, 53.492004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993605, -0.080501, -0.079184,
		0.004366, -0.673335, 0.739324,
		-0.112834, -0.734942, -0.668678,
		48.002254, 54.434227, 53.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.442207, 54.421291, 54.013103>,  <48.081238, 54.948685, 53.759476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.442207, 54.421291, 54.013103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.443493, 54.349709, 53.619564>,  <48.444263, 54.306759, 53.383438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.443493, 54.349709, 53.619564>,  <48.442207, 54.421291, 54.013103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.443493, 54.349709, 53.619564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988897, -0.145602, 0.029717,
		-0.148569, -0.973023, 0.176503,
		0.003216, -0.178958, -0.983851,
		48.444458, 54.296021, 53.324409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.933300, 54.683544, 54.494091>,  <48.442207, 54.421291, 54.013103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.933300, 54.683544, 54.494091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.268539, 54.726051, 54.708115>,  <49.469685, 54.751556, 54.836529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.268539, 54.726051, 54.708115>,  <48.933300, 54.683544, 54.494091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.268539, 54.726051, 54.708115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260451, -0.939781, -0.221309,
		0.479323, 0.324837, -0.815310,
		0.838102, 0.106269, 0.535062,
		49.519970, 54.757931, 54.868633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.145027, 54.688816, 55.196732>,  <48.933300, 54.683544, 54.494091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.145027, 54.688816, 55.196732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.155380, 54.856422, 55.559776>,  <49.161594, 54.956985, 55.777603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.155380, 54.856422, 55.559776>,  <49.145027, 54.688816, 55.196732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.155380, 54.856422, 55.559776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832182, 0.494028, -0.251813,
		-0.553899, 0.761815, -0.335908,
		0.025887, 0.419015, 0.907610,
		49.163147, 54.982128, 55.832058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.024853, 55.462528, 55.156494>,  <49.145027, 54.688816, 55.196732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.024853, 55.462528, 55.156494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.267029, 55.289108, 55.423470>,  <49.412334, 55.185055, 55.583656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.267029, 55.289108, 55.423470>,  <49.024853, 55.462528, 55.156494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.267029, 55.289108, 55.423470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779683, 0.491468, -0.388013,
		-0.159801, 0.755309, 0.635588,
		0.605441, -0.433552, 0.667438,
		49.448662, 55.159042, 55.623699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.311077, 55.943230, 55.601036>,  <49.024853, 55.462528, 55.156494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.311077, 55.943230, 55.601036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.563217, 55.650330, 55.497910>,  <49.714500, 55.474590, 55.436035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.563217, 55.650330, 55.497910>,  <49.311077, 55.943230, 55.601036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.563217, 55.650330, 55.497910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645540, 0.678879, -0.349860,
		0.431212, 0.054103, 0.900627,
		0.630346, -0.732254, -0.257815,
		49.752319, 55.430653, 55.420567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.976753, 55.953407, 56.028351>,  <49.311077, 55.943230, 55.601036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.976753, 55.953407, 56.028351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.019703, 55.799831, 55.661514>,  <50.045471, 55.707687, 55.441410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.019703, 55.799831, 55.661514>,  <49.976753, 55.953407, 56.028351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.019703, 55.799831, 55.661514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764271, 0.621851, -0.170855,
		0.635894, -0.682563, 0.360202,
		0.107373, -0.383938, -0.917095,
		50.051914, 55.684650, 55.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.671349, 56.001675, 56.014824>,  <49.976753, 55.953407, 56.028351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.671349, 56.001675, 56.014824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.545544, 55.946308, 55.639183>,  <50.470058, 55.913086, 55.413799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.545544, 55.946308, 55.639183>,  <50.671349, 56.001675, 56.014824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.545544, 55.946308, 55.639183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773283, 0.536430, -0.338047,
		0.550557, -0.832516, -0.061677,
		-0.314515, -0.138420, -0.939107,
		50.451187, 55.904781, 55.357452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.408051, 55.993904, 56.389400>,  <50.671349, 56.001675, 56.014824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.408051, 55.993904, 56.389400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.781246, 55.863159, 56.449661>,  <52.005161, 55.784710, 56.485817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.781246, 55.863159, 56.449661>,  <51.408051, 55.993904, 56.389400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.781246, 55.863159, 56.449661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075280, 0.232092, 0.969776,
		-0.351953, -0.916129, 0.191932,
		0.932986, -0.326867, 0.150651,
		52.061142, 55.765099, 56.494858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.447517, 55.445217, 56.729607>,  <51.408051, 55.993904, 56.389400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.447517, 55.445217, 56.729607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.778870, 55.658676, 56.797722>,  <51.977680, 55.786751, 56.838593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.778870, 55.658676, 56.797722>,  <51.447517, 55.445217, 56.729607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.778870, 55.658676, 56.797722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254572, 0.087862, 0.963054,
		0.498974, -0.841128, 0.208636,
		0.828383, 0.533651, 0.170287,
		52.027386, 55.818771, 56.848808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.795170, 55.185989, 57.295586>,  <51.447517, 55.445217, 56.729607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.795170, 55.185989, 57.295586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.853294, 55.581383, 57.278717>,  <51.888168, 55.818619, 57.268597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.853294, 55.581383, 57.278717>,  <51.795170, 55.185989, 57.295586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.853294, 55.581383, 57.278717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372150, 0.094102, 0.923390,
		0.916727, -0.118490, 0.381540,
		0.145316, 0.988486, -0.042170,
		51.896889, 55.877930, 57.266068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.279106, 55.456104, 57.839184>,  <51.795170, 55.185989, 57.295586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.279106, 55.456104, 57.839184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.012596, 55.731277, 57.724068>,  <51.852688, 55.896381, 57.654999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.012596, 55.731277, 57.724068>,  <52.279106, 55.456104, 57.839184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.012596, 55.731277, 57.724068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227226, 0.180283, 0.957009,
		0.710239, 0.703029, 0.036197,
		-0.666280, 0.687930, -0.287790,
		51.812714, 55.937656, 57.637730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.449532, 56.150539, 58.170570>,  <52.279106, 55.456104, 57.839184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.449532, 56.150539, 58.170570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061714, 56.067581, 58.118454>,  <51.829025, 56.017807, 58.087185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.061714, 56.067581, 58.118454>,  <52.449532, 56.150539, 58.170570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.061714, 56.067581, 58.118454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175945, 0.219688, 0.959573,
		-0.170387, 0.953270, -0.249486,
		-0.969542, -0.207395, -0.130291,
		51.770851, 56.005363, 58.079365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.829342, 56.785488, 58.502369>,  <52.449532, 56.150539, 58.170570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.829342, 56.785488, 58.502369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.654079, 57.110016, 58.347565>,  <52.548923, 57.304733, 58.254684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.654079, 57.110016, 58.347565>,  <52.829342, 56.785488, 58.502369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.654079, 57.110016, 58.347565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859825, 0.252720, -0.443659,
		-0.262147, -0.527149, -0.808327,
		-0.438155, 0.811324, -0.387006,
		52.522633, 57.353413, 58.231464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.994476, 56.957794, 57.778015>,  <52.829342, 56.785488, 58.502369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.994476, 56.957794, 57.778015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931656, 57.305252, 57.965965>,  <52.893963, 57.513729, 58.078735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931656, 57.305252, 57.965965>,  <52.994476, 56.957794, 57.778015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.931656, 57.305252, 57.965965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864132, 0.351214, -0.360452,
		-0.478133, 0.349424, -0.805787,
		-0.157053, 0.868649, 0.469875,
		52.884541, 57.565845, 58.106926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.014023, 57.478050, 57.200466>,  <52.994476, 56.957794, 57.778015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.014023, 57.478050, 57.200466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.135487, 57.553425, 57.574051>,  <53.208366, 57.598652, 57.798203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.135487, 57.553425, 57.574051>,  <53.014023, 57.478050, 57.200466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.135487, 57.553425, 57.574051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945372, 0.062412, -0.319962,
		-0.118583, 0.980100, -0.159193,
		0.303659, 0.188439, 0.933960,
		53.226585, 57.609955, 57.854240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.457253, 58.049717, 57.193829>,  <53.014023, 57.478050, 57.200466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.457253, 58.049717, 57.193829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.572334, 57.880573, 57.537552>,  <53.641384, 57.779087, 57.743786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.572334, 57.880573, 57.537552>,  <53.457253, 58.049717, 57.193829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.572334, 57.880573, 57.537552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957032, 0.092985, -0.274670,
		0.036244, 0.901412, 0.431443,
		0.287708, -0.422860, 0.859310,
		53.658646, 57.753716, 57.795345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.948372, 58.490181, 57.579319>,  <53.457253, 58.049717, 57.193829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.948372, 58.490181, 57.579319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.008743, 58.106503, 57.674950>,  <54.044968, 57.876293, 57.732327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.008743, 58.106503, 57.674950>,  <53.948372, 58.490181, 57.579319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.008743, 58.106503, 57.674950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984602, 0.124289, -0.122924,
		0.088194, 0.253946, 0.963189,
		0.150930, -0.959199, 0.239075,
		54.054024, 57.818741, 57.746674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.574253, 58.484959, 58.004311>,  <53.948372, 58.490181, 57.579319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.574253, 58.484959, 58.004311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.503349, 58.136616, 57.820923>,  <54.460808, 57.927612, 57.710892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.503349, 58.136616, 57.820923>,  <54.574253, 58.484959, 58.004311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.503349, 58.136616, 57.820923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962818, -0.056946, -0.264080,
		0.203867, -0.488231, 0.848569,
		-0.177255, -0.870855, -0.458468,
		54.450172, 57.875359, 57.683384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.879826, 57.820225, 58.422764>,  <54.574253, 58.484959, 58.004311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.879826, 57.820225, 58.422764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.856743, 57.758301, 58.028259>,  <54.842892, 57.721146, 57.791557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.856743, 57.758301, 58.028259>,  <54.879826, 57.820225, 58.422764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.856743, 57.758301, 58.028259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990722, 0.112880, -0.075687,
		0.123045, -0.981475, 0.146856,
		-0.057708, -0.154806, -0.986258,
		54.839432, 57.711857, 57.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.516254, 57.609467, 58.096199>,  <54.879826, 57.820225, 58.422764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.516254, 57.609467, 58.096199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.378662, 57.751549, 57.748520>,  <55.296108, 57.836800, 57.539913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.378662, 57.751549, 57.748520>,  <55.516254, 57.609467, 58.096199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.378662, 57.751549, 57.748520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932631, 0.236680, -0.272364,
		0.108977, -0.904329, -0.412690,
		-0.343982, 0.355206, -0.869198,
		55.275467, 57.858112, 57.487759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.010601, 57.267334, 57.620655>,  <55.516254, 57.609467, 58.096199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.010601, 57.267334, 57.620655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.860962, 57.603935, 57.464745>,  <55.771179, 57.805897, 57.371197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.860962, 57.603935, 57.464745>,  <56.010601, 57.267334, 57.620655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.860962, 57.603935, 57.464745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926761, 0.323741, -0.190540,
		-0.034153, -0.432511, -0.900982,
		-0.374096, 0.841502, -0.389777,
		55.748734, 57.856384, 57.347813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.549774, 57.257442, 57.163509>,  <56.010601, 57.267334, 57.620655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.549774, 57.257442, 57.163509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.358337, 57.605064, 57.113388>,  <56.243477, 57.813637, 57.083313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.358337, 57.605064, 57.113388>,  <56.549774, 57.257442, 57.163509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.358337, 57.605064, 57.113388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830421, 0.401639, -0.386116,
		-0.285227, -0.288849, -0.913899,
		-0.478587, 0.869052, -0.125308,
		56.214760, 57.865780, 57.075794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.863159, 57.565052, 57.737740>,  <56.549774, 57.257442, 57.163509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.863159, 57.565052, 57.737740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.095505, 57.571350, 58.063278>,  <57.234913, 57.575127, 58.258602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.095505, 57.571350, 58.063278>,  <56.863159, 57.565052, 57.737740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.095505, 57.571350, 58.063278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768045, -0.341779, -0.541566,
		0.269631, 0.939649, -0.210618,
		0.580867, 0.015741, 0.813846,
		57.269764, 57.576073, 58.307430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.415833, 57.928154, 57.452858>,  <56.863159, 57.565052, 57.737740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.415833, 57.928154, 57.452858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.514229, 57.716896, 57.777954>,  <57.573269, 57.590141, 57.973011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.514229, 57.716896, 57.777954>,  <57.415833, 57.928154, 57.452858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.514229, 57.716896, 57.777954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906400, -0.171728, -0.385938,
		0.343402, 0.831608, 0.436467,
		0.245995, -0.528145, 0.812742,
		57.588028, 57.558453, 58.021778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.007137, 58.111546, 57.885250>,  <57.415833, 57.928154, 57.452858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.007137, 58.111546, 57.885250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.992592, 57.713726, 57.924332>,  <57.983864, 57.475033, 57.947781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.992592, 57.713726, 57.924332>,  <58.007137, 58.111546, 57.885250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.992592, 57.713726, 57.924332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977004, -0.055935, -0.205751,
		0.210095, 0.087971, 0.973715,
		-0.036365, -0.994551, 0.097700,
		57.981682, 57.415359, 57.953640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.379307, 57.780155, 58.520187>,  <58.007137, 58.111546, 57.885250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.379307, 57.780155, 58.520187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371178, 57.564018, 58.183708>,  <58.366302, 57.434338, 57.981819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371178, 57.564018, 58.183708>,  <58.379307, 57.780155, 58.520187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.371178, 57.564018, 58.183708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984977, 0.133497, -0.109544,
		0.171489, -0.830791, 0.529508,
		-0.020320, -0.540338, -0.841202,
		58.365082, 57.401917, 57.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.941128, 57.240715, 58.443832>,  <58.379307, 57.780155, 58.520187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.941128, 57.240715, 58.443832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.843277, 57.354225, 58.072968>,  <58.784569, 57.422333, 57.850449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.843277, 57.354225, 58.072968>,  <58.941128, 57.240715, 58.443832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.843277, 57.354225, 58.072968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967705, 0.011420, -0.251825,
		-0.060874, -0.958822, -0.277408,
		-0.244623, 0.283779, -0.927162,
		58.769890, 57.439358, 57.794819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.224365, 56.750790, 57.947613>,  <58.941128, 57.240715, 58.443832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.224365, 56.750790, 57.947613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.227989, 57.131927, 57.826286>,  <59.230164, 57.360611, 57.753490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.227989, 57.131927, 57.826286>,  <59.224365, 56.750790, 57.947613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.227989, 57.131927, 57.826286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941105, -0.110650, -0.319496,
		-0.337993, -0.282560, -0.897731,
		0.009057, 0.952847, -0.303317,
		59.230705, 57.417782, 57.735291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.619335, 56.879333, 57.243279>,  <59.224365, 56.750790, 57.947613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.619335, 56.879333, 57.243279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.635262, 57.212616, 57.463890>,  <59.644817, 57.412586, 57.596256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.635262, 57.212616, 57.463890>,  <59.619335, 56.879333, 57.243279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.635262, 57.212616, 57.463890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973021, 0.093207, -0.211050,
		-0.227254, 0.545053, -0.807015,
		0.039814, 0.833205, 0.551529,
		59.647205, 57.462578, 57.629349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.924530, 57.581928, 56.812218>,  <59.619335, 56.879333, 57.243279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.924530, 57.581928, 56.812218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.971092, 57.591873, 57.209373>,  <59.999031, 57.597839, 57.447666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.971092, 57.591873, 57.209373>,  <59.924530, 57.581928, 56.812218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.971092, 57.591873, 57.209373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985822, 0.118740, -0.118555,
		-0.120844, 0.992614, -0.010691,
		0.116409, 0.024866, 0.992890,
		60.006016, 57.599335, 57.507240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.420025, 58.156387, 57.126690>,  <59.924530, 57.581928, 56.812218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.420025, 58.156387, 57.126690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.440689, 57.833103, 57.361336>,  <60.453087, 57.639133, 57.502125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.440689, 57.833103, 57.361336>,  <60.420025, 58.156387, 57.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.440689, 57.833103, 57.361336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998158, 0.060493, -0.004564,
		-0.031797, 0.585774, 0.809851,
		0.051664, -0.808214, 0.586618,
		60.456188, 57.590637, 57.537323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.842255, 58.259491, 57.825684>,  <60.420025, 58.156387, 57.126690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.842255, 58.259491, 57.825684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837242, 57.883911, 57.688148>,  <60.834236, 57.658566, 57.605629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.837242, 57.883911, 57.688148>,  <60.842255, 58.259491, 57.825684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.837242, 57.883911, 57.688148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993218, 0.028066, -0.112828,
		0.115590, -0.342915, 0.932227,
		-0.012527, -0.938947, -0.343834,
		60.833485, 57.602226, 57.584999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.251110, 57.819778, 58.249405>,  <60.842255, 58.259491, 57.825684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.251110, 57.819778, 58.249405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.236542, 57.721874, 57.861847>,  <61.227802, 57.663132, 57.629311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.236542, 57.721874, 57.861847>,  <61.251110, 57.819778, 58.249405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.236542, 57.721874, 57.861847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998728, -0.042738, -0.026745,
		-0.034863, -0.968640, 0.246009,
		-0.036420, -0.244764, -0.968898,
		61.225616, 57.648445, 57.571178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.635616, 57.199051, 57.986862>,  <61.251110, 57.819778, 58.249405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.635616, 57.199051, 57.986862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.635277, 57.460571, 57.684196>,  <61.635075, 57.617481, 57.502598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.635277, 57.460571, 57.684196>,  <61.635616, 57.199051, 57.986862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.635277, 57.460571, 57.684196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992500, -0.091951, -0.080558,
		-0.122245, -0.751060, -0.648818,
		-0.000845, 0.653799, -0.756668,
		61.635025, 57.656712, 57.457195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.079910, 56.931465, 57.508465>,  <61.635616, 57.199051, 57.986862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.079910, 56.931465, 57.508465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.081673, 57.330505, 57.480827>,  <62.082729, 57.569931, 57.464245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.081673, 57.330505, 57.480827>,  <62.079910, 56.931465, 57.508465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.081673, 57.330505, 57.480827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997934, -0.008813, -0.063647,
		-0.064104, -0.068667, -0.995578,
		0.004404, 0.997601, -0.069090,
		62.082993, 57.629787, 57.460102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.204185, 57.189049, 56.794979>,  <62.079910, 56.931465, 57.508465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.204185, 57.189049, 56.794979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.334045, 57.421799, 57.093246>,  <62.411961, 57.561447, 57.272205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.334045, 57.421799, 57.093246>,  <62.204185, 57.189049, 56.794979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.334045, 57.421799, 57.093246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939110, -0.104469, -0.327350,
		-0.112578, 0.806541, -0.580361,
		0.324651, 0.581875, 0.745670,
		62.431442, 57.596363, 57.316948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.915821, 57.817665, 56.584728>,  <62.204185, 57.189049, 56.794979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.915821, 57.817665, 56.584728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.144806, 57.825630, 56.256851>,  <62.282196, 57.830410, 56.060127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.144806, 57.825630, 56.256851>,  <61.915821, 57.817665, 56.584728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.144806, 57.825630, 56.256851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488173, 0.811484, -0.321217,
		0.658769, 0.584034, 0.474265,
		0.572460, 0.019915, -0.819690,
		62.316544, 57.831604, 56.010944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.358032, 58.441833, 56.536171>,  <61.915821, 57.817665, 56.584728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.358032, 58.441833, 56.536171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.232605, 58.290707, 56.187706>,  <62.157349, 58.200031, 55.978626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.232605, 58.290707, 56.187706>,  <62.358032, 58.441833, 56.536171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.232605, 58.290707, 56.187706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484017, 0.852899, -0.195682,
		0.816947, 0.360297, -0.450315,
		-0.313569, -0.377822, -0.871163,
		62.138535, 58.177361, 55.926357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.559521, 58.844318, 55.850437>,  <62.358032, 58.441833, 56.536171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.559521, 58.844318, 55.850437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.194099, 58.683159, 55.872681>,  <61.974846, 58.586464, 55.886028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.194099, 58.683159, 55.872681>,  <62.559521, 58.844318, 55.850437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.194099, 58.683159, 55.872681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405605, 0.912597, -0.051488,
		-0.030004, -0.069593, -0.997124,
		-0.913556, -0.402894, 0.055608,
		61.920033, 58.562290, 55.889362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.979542, 58.257366, 56.079170>,  <62.559521, 58.844318, 55.850437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.979542, 58.257366, 56.079170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.939941, 57.871635, 56.177368>,  <62.916183, 57.640198, 56.236286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.939941, 57.871635, 56.177368>,  <62.979542, 58.257366, 56.079170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.939941, 57.871635, 56.177368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991448, -0.116667, -0.058475,
		0.085030, 0.237610, 0.967632,
		-0.098996, -0.964329, 0.245498,
		62.910244, 57.582336, 56.251019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.256439, 58.145958, 56.742588>,  <62.979542, 58.257366, 56.079170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.256439, 58.145958, 56.742588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.274658, 57.808823, 56.528091>,  <63.285587, 57.606541, 56.399395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.274658, 57.808823, 56.528091>,  <63.256439, 58.145958, 56.742588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.274658, 57.808823, 56.528091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998821, 0.047446, 0.010262,
		0.016794, -0.536077, 0.844002,
		0.045546, -0.842835, -0.536242,
		63.288322, 57.555973, 56.367218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.751266, 57.682137, 57.054581>,  <63.256439, 58.145958, 56.742588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.751266, 57.682137, 57.054581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.724464, 57.637386, 56.657997>,  <63.708382, 57.610538, 56.420048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.724464, 57.637386, 56.657997>,  <63.751266, 57.682137, 57.054581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.724464, 57.637386, 56.657997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997752, -0.007033, -0.066637,
		0.000482, -0.993698, 0.112093,
		-0.067005, -0.111873, -0.991461,
		63.704365, 57.603825, 56.360558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.897179, 57.092102, 56.650745>,  <63.751266, 57.682137, 57.054581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.897179, 57.092102, 56.650745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.006653, 57.365585, 56.380150>,  <64.072334, 57.529675, 56.217793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.006653, 57.365585, 56.380150>,  <63.897179, 57.092102, 56.650745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.006653, 57.365585, 56.380150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949478, -0.304360, 0.076522,
		-0.153576, -0.663251, -0.732470,
		0.273688, 0.683713, -0.676485,
		64.088760, 57.570698, 56.177204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.234444, 56.951153, 55.949837>,  <63.897179, 57.092102, 56.650745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.234444, 56.951153, 55.949837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.288559, 57.268158, 56.187698>,  <64.321030, 57.458363, 56.330414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.288559, 57.268158, 56.187698>,  <64.234444, 56.951153, 55.949837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.288559, 57.268158, 56.187698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925727, -0.315037, 0.209241,
		0.353165, 0.522178, -0.776276,
		0.135295, 0.792516, 0.594655,
		64.329147, 57.505913, 56.366096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.801414, 57.273399, 55.590805>,  <64.234444, 56.951153, 55.949837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.801414, 57.273399, 55.590805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.769676, 57.358921, 55.980263>,  <64.750633, 57.410233, 56.213940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.769676, 57.358921, 55.980263>,  <64.801414, 57.273399, 55.590805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.769676, 57.358921, 55.980263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960539, -0.244811, 0.132035,
		0.266590, 0.945703, -0.185944,
		-0.079344, 0.213805, 0.973649,
		64.745872, 57.423061, 56.272358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.533173, 57.579720, 55.762871>,  <64.801414, 57.273399, 55.590805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.533173, 57.579720, 55.762871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.362823, 57.328697, 56.023575>,  <65.260612, 57.178082, 56.179996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.362823, 57.328697, 56.023575>,  <65.533173, 57.579720, 55.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.362823, 57.328697, 56.023575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823729, -0.566932, -0.007631,
		0.374293, 0.533625, 0.758386,
		-0.425881, -0.627560, 0.651761,
		65.235062, 57.140430, 56.219105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.706703, 57.566856, 56.539097>,  <65.533173, 57.579720, 55.762871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.706703, 57.566856, 56.539097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.634834, 57.182747, 56.453690>,  <65.591713, 56.952282, 56.402443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.634834, 57.182747, 56.453690>,  <65.706703, 57.566856, 56.539097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.634834, 57.182747, 56.453690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903852, -0.246826, 0.349469,
		-0.388288, -0.130199, 0.912294,
		-0.179677, -0.960274, -0.213520,
		65.580933, 56.894665, 56.389633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.703598, 57.084515, 57.153393>,  <65.706703, 57.566856, 56.539097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.703598, 57.084515, 57.153393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.826767, 56.885494, 56.829018>,  <65.900673, 56.766083, 56.634392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.826767, 56.885494, 56.829018>,  <65.703598, 57.084515, 57.153393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.826767, 56.885494, 56.829018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859871, -0.219248, 0.461034,
		-0.407185, -0.839267, 0.360320,
		0.307931, -0.497555, -0.810936,
		65.919144, 56.736229, 56.585735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.904129, 56.469479, 57.367325>,  <65.703598, 57.084515, 57.153393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.904129, 56.469479, 57.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.135193, 56.554787, 57.052155>,  <66.273827, 56.605972, 56.863052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.135193, 56.554787, 57.052155>,  <65.904129, 56.469479, 57.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.135193, 56.554787, 57.052155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816193, -0.136625, 0.561394,
		0.012077, -0.967393, -0.252990,
		0.577654, 0.213268, -0.787929,
		66.308487, 56.618767, 56.815777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.396210, 55.954903, 57.289627>,  <65.904129, 56.469479, 57.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.396210, 55.954903, 57.289627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.542099, 56.298302, 57.145432>,  <66.629631, 56.504341, 57.058914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.542099, 56.298302, 57.145432>,  <66.396210, 55.954903, 57.289627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.542099, 56.298302, 57.145432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782503, -0.072779, 0.618379,
		0.504641, -0.507626, -0.698321,
		0.364729, 0.858498, -0.360492,
		66.651520, 56.555851, 57.037285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.156837, 55.856537, 57.336102>,  <66.396210, 55.954903, 57.289627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.156837, 55.856537, 57.336102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.056068, 56.243446, 57.323952>,  <66.995605, 56.475590, 57.316662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.056068, 56.243446, 57.323952>,  <67.156837, 55.856537, 57.336102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.056068, 56.243446, 57.323952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806293, 0.227144, 0.546165,
		0.535191, 0.113094, -0.837126,
		-0.251917, 0.967272, -0.030378,
		66.980492, 56.533627, 57.314838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.600891, 56.431381, 57.003578>,  <67.156837, 55.856537, 57.336102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.600891, 56.431381, 57.003578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.448006, 56.605858, 57.329437>,  <67.356277, 56.710545, 57.524952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.448006, 56.605858, 57.329437>,  <67.600891, 56.431381, 57.003578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.448006, 56.605858, 57.329437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923768, 0.157613, 0.349014,
		0.023837, 0.885944, -0.463179,
		-0.382210, 0.436189, 0.814650,
		67.333344, 56.736713, 57.573833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.749596, 57.185913, 57.178616>,  <67.600891, 56.431381, 57.003578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.749596, 57.185913, 57.178616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.709610, 56.971069, 57.513641>,  <67.685616, 56.842163, 57.714657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.709610, 56.971069, 57.513641>,  <67.749596, 57.185913, 57.178616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.709610, 56.971069, 57.513641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943683, 0.215648, 0.250915,
		-0.315390, 0.815481, 0.485305,
		-0.099961, -0.537110, 0.837568,
		67.679619, 56.809937, 57.764912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.013062, 57.665752, 57.704235>,  <67.749596, 57.185913, 57.178616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.013062, 57.665752, 57.704235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.051865, 57.273624, 57.773003>,  <68.075142, 57.038345, 57.814262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.051865, 57.273624, 57.773003>,  <68.013062, 57.665752, 57.704235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.051865, 57.273624, 57.773003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995250, 0.096975, -0.008557,
		-0.008283, 0.171929, 0.985075,
		0.096999, -0.980325, 0.171915,
		68.080963, 56.979527, 57.824577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.350853, 57.452656, 58.349209>,  <68.013062, 57.665752, 57.704235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.350853, 57.452656, 58.349209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.439011, 57.179459, 58.070656>,  <68.491905, 57.015541, 57.903526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.439011, 57.179459, 58.070656>,  <68.350853, 57.452656, 58.349209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.439011, 57.179459, 58.070656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941355, -0.038069, 0.335264,
		-0.255494, -0.729429, 0.634552,
		0.220394, -0.682996, -0.696378,
		68.505127, 56.974560, 57.861744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.550789, 56.628761, 58.619358>,  <68.350853, 57.452656, 58.349209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.550789, 56.628761, 58.619358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.729073, 56.822803, 58.318420>,  <68.836044, 56.939228, 58.137859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.729073, 56.822803, 58.318420>,  <68.550789, 56.628761, 58.619358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.729073, 56.822803, 58.318420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884132, -0.106943, 0.454833,
		0.140183, -0.867893, -0.476561,
		0.445712, 0.485102, -0.752341,
		68.862785, 56.968334, 58.092720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.277336, 56.580109, 58.784348>,  <68.550789, 56.628761, 58.619358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.277336, 56.580109, 58.784348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.286797, 56.852512, 58.491592>,  <69.292473, 57.015957, 58.315937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.286797, 56.852512, 58.491592>,  <69.277336, 56.580109, 58.784348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.286797, 56.852512, 58.491592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954612, 0.202044, 0.218845,
		0.296910, -0.703847, -0.645325,
		0.023649, 0.681013, -0.731890,
		69.293892, 57.056816, 58.272026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.870865, 56.505001, 58.177681>,  <69.277336, 56.580109, 58.784348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.870865, 56.505001, 58.177681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.751984, 56.883007, 58.232246>,  <69.680656, 57.109810, 58.264988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.751984, 56.883007, 58.232246>,  <69.870865, 56.505001, 58.177681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.751984, 56.883007, 58.232246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900366, 0.229826, 0.369487,
		0.317820, 0.232637, -0.919168,
		-0.297205, 0.945018, 0.136415,
		69.662819, 57.166512, 58.273170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.366188, 57.067570, 57.762001>,  <69.870865, 56.505001, 58.177681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.366188, 57.067570, 57.762001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.199478, 57.207832, 58.097466>,  <70.099457, 57.291988, 58.298744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.199478, 57.207832, 58.097466>,  <70.366188, 57.067570, 57.762001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.199478, 57.207832, 58.097466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892040, 0.335224, 0.303133,
		-0.174843, 0.874452, -0.452508,
		-0.416767, 0.350654, 0.838658,
		70.074448, 57.313030, 58.349064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.662704, 57.733006, 57.867893>,  <70.366188, 57.067570, 57.762001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.662704, 57.733006, 57.867893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.537704, 57.582787, 58.216904>,  <70.462700, 57.492657, 58.426311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.537704, 57.582787, 58.216904>,  <70.662704, 57.733006, 57.867893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.537704, 57.582787, 58.216904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866235, 0.264295, 0.424010,
		-0.389840, 0.888321, 0.242714,
		-0.312509, -0.375544, 0.872528,
		70.443954, 57.470123, 58.478661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.836327, 58.190323, 58.372654>,  <70.662704, 57.733006, 57.867893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.836327, 58.190323, 58.372654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.833473, 57.854332, 58.589684>,  <70.831764, 57.652737, 58.719902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.833473, 57.854332, 58.589684>,  <70.836327, 58.190323, 58.372654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.833473, 57.854332, 58.589684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827109, 0.299984, 0.475290,
		-0.561996, 0.452163, 0.692610,
		-0.007136, -0.839975, 0.542579,
		70.831329, 57.602341, 58.752457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.817299, 58.378025, 59.154175>,  <70.836327, 58.190323, 58.372654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.817299, 58.378025, 59.154175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.990707, 58.039471, 59.030434>,  <71.094749, 57.836338, 58.956188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.990707, 58.039471, 59.030434>,  <70.817299, 58.378025, 59.154175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.990707, 58.039471, 59.030434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852363, 0.273711, 0.445600,
		-0.292476, -0.456853, 0.840085,
		0.433514, -0.846385, -0.309351,
		71.120758, 57.785557, 58.937630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.092949, 58.044159, 59.789520>,  <70.817299, 58.378025, 59.154175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.092949, 58.044159, 59.789520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.270012, 57.981735, 59.436317>,  <71.376251, 57.944283, 59.224396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.270012, 57.981735, 59.436317>,  <71.092949, 58.044159, 59.789520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.270012, 57.981735, 59.436317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853782, 0.374332, 0.361845,
		0.274070, -0.914069, 0.298937,
		0.442653, -0.156056, -0.883009,
		71.402809, 57.934917, 59.171413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.485924, 57.532078, 59.926304>,  <71.092949, 58.044159, 59.789520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.485924, 57.532078, 59.926304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.590111, 57.790771, 59.639557>,  <71.652626, 57.945988, 59.467510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.590111, 57.790771, 59.639557>,  <71.485924, 57.532078, 59.926304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.590111, 57.790771, 59.639557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828499, 0.231511, 0.509894,
		0.495727, -0.726733, -0.475515,
		0.260470, 0.646732, -0.716863,
		71.668251, 57.984791, 59.424500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.192825, 57.529018, 59.979015>,  <71.485924, 57.532078, 59.926304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.192825, 57.529018, 59.979015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.116241, 57.862099, 59.771187>,  <72.070290, 58.061947, 59.646488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.116241, 57.862099, 59.771187>,  <72.192825, 57.529018, 59.979015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.116241, 57.862099, 59.771187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886602, 0.373811, 0.272401,
		0.421050, -0.408500, -0.809843,
		-0.191452, 0.832702, -0.519570,
		72.058807, 58.111908, 59.615314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.756439, 57.739849, 59.619759>,  <72.192825, 57.529018, 59.979015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.756439, 57.739849, 59.619759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.674141, 57.956799, 59.945580>,  <72.624763, 58.086967, 60.141071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.674141, 57.956799, 59.945580>,  <72.756439, 57.739849, 59.619759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.674141, 57.956799, 59.945580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831132, -0.342554, 0.438037,
		0.516609, 0.767127, -0.380304,
		-0.205755, 0.542377, 0.814551,
		72.612411, 58.119511, 60.189945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.894928, 57.693222, 58.933529>,  <72.756439, 57.739849, 59.619759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.894928, 57.693222, 58.933529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.578804, 57.718193, 59.177338>,  <72.389130, 57.733177, 59.323624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.578804, 57.718193, 59.177338>,  <72.894928, 57.693222, 58.933529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.578804, 57.718193, 59.177338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092067, -0.995601, -0.017397,
		0.605753, -0.069865, 0.792579,
		-0.790308, 0.062432, 0.609521,
		72.341713, 57.736923, 59.360195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.931450, 57.022373, 59.258522>,  <72.894928, 57.693222, 58.933529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.931450, 57.022373, 59.258522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.558205, 57.136383, 59.346222>,  <72.334259, 57.204788, 59.398842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.558205, 57.136383, 59.346222>,  <72.931450, 57.022373, 59.258522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.558205, 57.136383, 59.346222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284146, -0.958097, 0.036205,
		0.220386, -0.028517, 0.974996,
		-0.933108, 0.285020, 0.219254,
		72.278275, 57.221889, 59.411999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.422646, 57.357639, 59.643356>,  <72.931450, 57.022373, 59.258522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.422646, 57.357639, 59.643356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.619217, 57.240448, 59.971420>,  <73.737160, 57.170132, 60.168259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.619217, 57.240448, 59.971420>,  <73.422646, 57.357639, 59.643356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.619217, 57.240448, 59.971420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157382, 0.896340, 0.414495,
		-0.856581, -0.332772, 0.394375,
		0.491426, -0.292981, 0.820160,
		73.766647, 57.152554, 60.217468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.009033, 57.402000, 60.297539>,  <73.422646, 57.357639, 59.643356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.009033, 57.402000, 60.297539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.403015, 57.444851, 60.351761>,  <73.639404, 57.470562, 60.384293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.403015, 57.444851, 60.351761>,  <73.009033, 57.402000, 60.297539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.403015, 57.444851, 60.351761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159205, 0.867547, 0.471186,
		-0.067122, -0.485681, 0.871555,
		0.984961, 0.107129, 0.135554,
		73.698502, 57.476990, 60.392426>
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
